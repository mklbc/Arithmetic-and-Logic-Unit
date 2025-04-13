library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity SRA_Module is
    Port (
        A : in STD_LOGIC_VECTOR (3 downto 0); -- 4-bit giriş
        Y : out STD_LOGIC_VECTOR (3 downto 0) -- 4-bit sonuç
    );
end SRA_Module;

architecture Behavioral of SRA_Module is
begin
    Y <= A(3) & A(3 downto 1); -- MSB sabit kalır, diğer bitler sağa kaydırılır
end Behavioral;
