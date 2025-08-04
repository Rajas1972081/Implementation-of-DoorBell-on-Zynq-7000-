library IEEE;
-- Removed STD_LOGIC_1164 since we're using 'bit'
entity Door_Bell is
    Port (
        power_switch : in  bit;  -- Using bit type
        button_press : in  bit;  -- Using bit type
        bell_sound   : out bit   -- Using bit type
    );
end Door_Bell;

architecture Behavioral of Door_Bell is
begin
    process(power_switch, button_press)
    begin
        if (power_switch = '1' and button_press = '1') then
            bell_sound <= '1';
        else
            bell_sound <= '0';  -- Correct assignment with <=
        end if;
    end process;
end Behavioral;