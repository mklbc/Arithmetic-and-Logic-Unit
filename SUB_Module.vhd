library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity SUB_Module is
    Port (
        A : in STD_LOGIC_VECTOR (3 downto 0); -- 4-bit giriş A
        B : in STD_LOGIC_VECTOR (3 downto 0); -- 4-bit giriş B
        DIFF : out STD_LOGIC_VECTOR (3 downto 0) -- 4-bit sonuç
    );
end SUB_Module;

architecture Behavioral of SUB_Module is
begin
    DIFF <= A - B; -- Çıkarma işlemi
end Behavioral;
