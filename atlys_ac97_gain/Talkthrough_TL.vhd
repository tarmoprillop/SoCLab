--//////////Top Level for AC97 Talkthrough /////////////////////////////--
-- ***********************************************************************
-- FileName: Talkthrouigh_TL.vhd
-- FPGA: Xilinx Spartan 6
-- IDE: Xilinx ISE 13.1 
--
-- HDL IS PROVIDED "AS IS." DIGI-KEY EXPRESSLY DISCLAIMS ANY
-- WARRANTY OF ANY KIND, WHETHER EXPRESS OR IMPLIED, INCLUDING BUT NOT
-- LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY, FITNESS FOR A
-- PARTICULAR PURPOSE, OR NON-INFRINGEMENT. IN NO EVENT SHALL DIGI-KEY
-- BE LIABLE FOR ANY INCIDENTAL, SPECIAL, INDIRECT OR CONSEQUENTIAL
-- DAMAGES, LOST PROFITS OR LOST DATA, HARM TO YOUR EQUIPMENT, COST OF
-- PROCUREMENT OF SUBSTITUTE GOODS, TECHNOLOGY OR SERVICES, ANY CLAIMS
-- BY THIRD PARTIES (INCLUDING BUT NOT LIMITED TO ANY DEFENSE THEREOF),
-- ANY CLAIMS FOR INDEMNITY OR CONTRIBUTION, OR OTHER SIMILAR COSTS.
-- DIGI-KEY ALSO DISCLAIMS ANY LIABILITY FOR PATENT OR COPYRIGHT
-- INFRINGEMENT.
--
-- Version History
-- Version 1.0 12/06/2011 Tony Storey
-- Initial Public Release

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use work.Spar6_Parts.all;	-- include your library here with added components ac97, ac97cmd


-- Top level design entity to demonstrate commnicaton with the codec
-- on the Atlys board.
-- THESE SIGNALS NEED TO BE MAPPED IN A UCF FILE TO ROUTE THEM EXTERNALLY
-- THIS CAN BE DONE MANUALLY OR VIA PLAN AHEAD OR A SIMILAR PIN MAPPING GUI 
entity Spar6_Talkthrough_TL is
    Port ( clk : in  STD_LOGIC;
           n_reset : in  STD_LOGIC;
			  SDATA_IN : in STD_LOGIC;
			  BIT_CLK : in STD_LOGIC;
			  SOURCE : in STD_LOGIC_VECTOR(2 downto 0);
			  VOLUME : in STD_LOGIC_VECTOR(4 downto 0);
			  SYNC : out STD_LOGIC;
			  SDATA_OUT : out STD_LOGIC;
			  AC97_n_RESET : out STD_LOGIC;
              VOL_UP : in STD_LOGIC;
              VOL_DOWN : in STD_LOGIC;
              LED : out STD_LOGIC_VECTOR(4 downto 0)
			  );
end Spar6_Talkthrough_TL;


architecture arch of Spar6_Talkthrough_TL is

	signal L_bus, R_bus, L_bus_out, R_bus_out : std_logic_vector(17 downto 0);	
    signal L_gain, R_gain : std_logic_vector(17 downto 0);
	signal cmd_addr : std_logic_vector(7 downto 0);
	signal cmd_data : std_logic_vector(15 downto 0);
	signal ready : std_logic;
	signal latching_cmd : std_logic;
    signal L_div_ready,R_div_ready : std_logic;
    signal up, down : std_logic;
    signal LR_gain : std_logic_vector(4 downto 0);
begin
		
	-- INSTANTIATE BOTH THE MAIN DRIVER AND AC97 CHIP CONFIGURATION STATE-MACHINE 
	-------------------------------------------------------------------------------
	ac97_cont0 : entity work.ac97(arch)
		port map(n_reset => n_reset, clk => clk, ac97_sdata_out => SDATA_OUT, 
			ac97_sdata_in => SDATA_IN, latching_cmd => latching_cmd,
			ac97_sync => SYNC, ac97_bitclk => BIT_CLK, 
			ac97_n_reset => AC97_n_RESET, ac97_ready_sig => ready,
			L_out => L_bus, R_out => R_bus, 
			L_in => L_bus_out, R_in => R_bus_out, 
			cmd_addr => cmd_addr, cmd_data => cmd_data);
   
   debounce0 : entity work.DBounce(arch)
        port map
        (
            clk => clk,
            nreset => n_reset,
            button_in => VOL_UP,
            DB_out => up
        );
        
    debounce1 : entity work.DBounce(arch)
        port map
        (
            clk => clk,
            nreset => n_reset,
            button_in => VOL_DOWN,
            DB_out => down
        );
   
   vol_ctrl : entity work.udcounter(udcounter_a)
        port map
        (
            CLK => clk, 
            UP => up,
            DOWN => down,
            RESET => n_reset,
            std_logic_vector(Q) => LR_gain
        );
   gain0 : entity work.gain(Behavioral)
        port map
        (
            clk => clk,
            n_reset => n_reset,
            signal_in => L_bus_out,
            input_ready => ready,
            gain_in => LR_gain,
            signal_out => L_gain,
            output_ready => L_div_ready
        );
   gain1 : entity work.gain(Behavioral)
        port map
        (
            clk => clk,
            n_reset => n_reset,
            signal_in => R_bus_out,
            input_ready => ready,
            gain_in => LR_gain,
            signal_out => R_gain,
            output_ready => R_div_ready
        );
   ac97cmd_cont0 : entity work.ac97cmd(arch)
	   port map (clk => clk, ac97_ready_sig => ready, 
	   		cmd_addr => cmd_addr, cmd_data => cmd_data, 
	   		volume => "11111", source => SOURCE, 
			latching_cmd => latching_cmd);  
	 


	-- Latch output back into input for Talkthrough testing
	-- this process can be replaced with a user component for signal processing 
	-------------------------------------------------------------------------------

	process ( clk, n_reset, L_bus_out, R_bus_out)
  
	begin		
		if (clk'event and clk = '1') then
			if n_reset = '0' then
				L_bus <= (others => '0');
				R_bus <= (others => '0');
            else
                if L_div_ready = '1' then
                    L_bus <= L_gain;
                end if;
                
                if R_div_ready = '1' then
                    R_bus <= R_gain;
                end if;
            end if;
		end if;
        
        LED <= not(LR_gain);
	end process;
	

end arch;
