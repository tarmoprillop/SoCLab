library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity gain is
    generic(
        n : integer := 18;     --Dividend width
        m : integer := 5       --Divisor width
    );
    
    port(
        clk, n_reset : in std_logic;
        signal_in  : in std_logic_vector(n-1 downto 0);
        gain_in    : in std_logic_vector(m-1 downto 0);
        input_ready: in std_logic;
        
        signal_out : out std_logic_vector(n-1 downto 0) := (others => '0');
        output_ready : out std_logic := '0'
    );
end gain;

architecture Behavioral of gain is
    type state_type is (idle, sign, divide,divide2, sign2,result_ready);
    signal state_next, state : state_type := idle;
    signal quot_next, quot : unsigned(n-1 downto 0) := (others => '0');
    signal remainder_next, remainder : signed(n-1 downto 0) := (others => '0');
    signal in_latch_next, in_latch : signed(n-1 downto 0) := (others => '0');
    signal s_next, s : std_logic := '0';
    signal count_next, count : signed(m+1 downto 0) := (others => '0');
    signal gain_next, gain : signed(m+1 downto 0) := (others => '0');
    signal gain_pos_next, gain_pos : unsigned(m+1 downto 0) := (others => '0');
begin
    process(clk,  n_reset)
    begin
        if n_reset = '0' then
            quot <= (others => '0');
            in_latch <= (others => '0');
            remainder <= (others => '0');
            count <= (others => '0');
            gain <= (others => '0');
            gain_pos <= (others => '0');
            s <= '0';
            state <= idle;
        elsif rising_edge(clk) then
            quot <= quot_next;
            remainder <= remainder_next;
            in_latch <= in_latch_next;
            state <= state_next;
            count <= count_next;
            s <= s_next;
            gain <= gain_next;
            gain_pos <= gain_pos_next;
        end if;
    end process;
    
    process(signal_in, gain_in, input_ready, quot, remainder, state, in_latch,s, count,gain,gain_pos)
    begin
        quot_next <= quot;
        remainder_next <= remainder;
        state_next <= state;
        in_latch_next <= in_latch;
        s_next <= s;
        count_next <= count;
        gain_next <= gain;
        gain_pos_next <= gain_pos;
        case state is
            when idle =>
                output_ready <= '0';
                if input_ready = '1' then
                    quot_next <= (others => '0');
                    remainder_next <= (others => '0');
                    s_next <= signal_in(n-1);
                    gain_pos_next(4 downto 0) <= unsigned(gain_in);
                    in_latch_next <= signed(signal_in);
                    state_next <= sign;
                    count_next <= to_signed(17,m+2);
                end if;
            when sign =>
                if s = '1' then
                    in_latch_next <= not((in_latch)) + 1;
                end if;
                gain_next <= (not(signed(gain_pos)) + 1);
                state_next <= divide;
            when divide =>
                if count >=0 then
                    if in_latch(to_integer(count)) = '1' then
                        remainder_next <= (remainder SLL 1 ) or "000000000000000001";
                    else
                        remainder_next <= (remainder SLL 1 );
                    end if;
                    state_next <= divide2;
                else
                    state_next <= sign2;
                end if;
            when divide2 =>
                if unsigned(remainder) >= gain_pos then
                        remainder_next <= remainder + gain;  -- gain is negative number
                        quot_next(to_integer(count))<= '1';
                end if;
                state_next <= divide;
                count_next <= count - 1;
            when sign2 =>
                if s = '1' then
                    quot_next <= not(quot) + 1;
                else
                    quot_next <= quot + 1;
                end if;
                state_next <= result_ready;
            when result_ready =>   
                state_next <= idle;
                output_ready <= '1';
         end case;
         signal_out <= std_logic_vector(quot);
    end process;
end Behavioral;

