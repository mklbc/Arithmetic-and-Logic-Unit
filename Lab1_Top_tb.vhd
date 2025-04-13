library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Lab1_Top_tb is
end Lab1_Top_tb;

architecture Behavioral of Lab1_Top_tb is
    -- Test edilecek modülü çağır
    component Lab1_Top
        Port (
            A : in STD_LOGIC;
            B : in STD_LOGIC;
            LED : out STD_LOGIC
        );
    end component;

    -- Test sinyalleri
    signal A, B : STD_LOGIC;
    signal LED : STD_LOGIC;
begin
    -- Test edilen modül ile bağlantı
    UUT: Lab1_Top
        Port map (
            A => A,
            B => B,
            LED => LED
        );

    -- Test vektörleri
    process
    begin
        -- Test 1: A=0, B=0
        A <= '0'; B <= '0';
        wait for 10 ns;
        -- Test 2: A=0, B=1
        A <= '0'; B <= '1';
        wait for 10 ns;
        -- Test 3: A=1, B=0
        A <= '1'; B <= '0';
        wait for 10 ns;
        -- Test 4: A=1, B=1
        A <= '1'; B <= '1';
        wait for 10 ns;

        wait;
    end process;
end Behavioral;
