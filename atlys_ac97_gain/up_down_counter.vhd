library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;


entity udcounter is
       generic ( WIDTH : integer := 5);  
   port (CLK, UP, DOWN, RESET : in std_logic;  
   Q    : out unsigned(WIDTH-1 downto 0)  );
end entity udcounter; 

architecture udcounter_a of udcounter is
  signal cnt : unsigned(WIDTH-1 downto 0);
  signal up1, dw1    : std_logic;

      begin  
    process(RESET, CLK)  
      begin
        if RESET = '0' then  
            cnt <= "11111";
       elsif rising_edge(CLK) then  
            if (UP='1' and up1='0' and DOWN='0' and cnt < 31) then
                 cnt <= cnt + 1;   
            elsif (DOWN='1' and dw1='0' and UP='0'and cnt > 0) then  
                cnt <= cnt - 1;   
           --else  leave cnt unchanged
           end if;
          up1 <= UP;
          dw1 <= DOWN;
       end if;  
    end process;   
    Q <= cnt; 
    end architecture udcounter_a;