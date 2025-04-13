library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL; -- Numerik işlemler için gerekli kütüphane

entity FLO_Module is
    Port (
        A : in STD_LOGIC_VECTOR (7 downto 0); -- 8-bit giriş
        B : in STD_LOGIC_VECTOR (7 downto 0); -- 8-bit giriş
        SUM : out STD_LOGIC_VECTOR (7 downto 0) -- 8-bit sonuç
    );
end FLO_Module;

architecture Behavioral of FLO_Module is
    signal A_unsigned, B_unsigned : UNSIGNED (7 downto 0); -- Ara sinyaller
    signal SUM_unsigned : UNSIGNED (7 downto 0); -- Toplama sonucu
begin
    -- Girişleri UNSIGNED tipe dönüştür
    A_unsigned <= unsigned(A);
    B_unsigned <= unsigned(B);

    -- Toplama işlemini gerçekleştir
    SUM_unsigned <= A_unsigned + B_unsigned;

    -- Sonucu tekrar STD_LOGIC_VECTOR tipine dönüştür
    SUM <= std_logic_vector(SUM_unsigned);
end Behavioral;
