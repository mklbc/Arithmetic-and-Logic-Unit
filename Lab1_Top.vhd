library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Lab1_Top is
    Port (
        A : in STD_LOGIC; -- Giriş 1
        B : in STD_LOGIC; -- Giriş 2
        LED : out STD_LOGIC -- Çıkış (LED'e bağlanacak)
    );
end Lab1_Top;

architecture Structural of Lab1_Top is
    signal Y : STD_LOGIC; -- AND_Gate modülünden gelen sinyal

    -- AND_Gate modülünü bildir
    component AND_Gate
        Port (
            A : in STD_LOGIC;
            B : in STD_LOGIC;
            Y : out STD_LOGIC
        );
    end component;
begin
    -- AND_Gate modülünü bağla
    U1: AND_Gate
        Port map (
            A => A,
            B => B,
            Y => Y
        );

    -- LED çıkışını Y sinyaline bağla
    LED <= Y;
end Structural;
