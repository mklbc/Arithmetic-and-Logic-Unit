library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL; -- unsigned işlemler için kütüphane

entity ADD_Module is
    Port (
        A : in STD_LOGIC_VECTOR (3 downto 0); -- 4-bit giriş A
        B : in STD_LOGIC_VECTOR (3 downto 0); -- 4-bit giriş B
        SUM : out STD_LOGIC_VECTOR (3 downto 0) -- 4-bit sonuç
    );
end ADD_Module;

architecture Behavioral of ADD_Module is
begin
    SUM <= A + B; -- Toplama işlemi
end Behavioral;
