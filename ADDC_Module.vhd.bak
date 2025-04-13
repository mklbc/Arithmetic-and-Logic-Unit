library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity ADDC_Module is
    Port (
        A : in STD_LOGIC_VECTOR (3 downto 0); -- 4-bit giriş A
        B : in STD_LOGIC_VECTOR (3 downto 0); -- 4-bit giriş B
        Carry_in : in STD_LOGIC; -- Carry (elde) girişi
        SUM : out STD_LOGIC_VECTOR (3 downto 0); -- 4-bit sonuç
        Carry_out : out STD_LOGIC -- Carry (elde) çıkışı
    );
end ADDC_Module;

architecture Behavioral of ADDC_Module is
    signal Temp : STD_LOGIC_VECTOR (4 downto 0); -- 5-bit ara değer
begin
    Temp <= ('0' & A) + ('0' & B) + Carry_in; -- Genişletilmiş toplama
    SUM <= Temp(3 downto 0); -- Sonucun alt 4 biti
    Carry_out <= Temp(4); -- Sonucun en yüksek biti (carry-out)
end Behavioral;
