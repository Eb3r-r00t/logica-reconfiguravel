LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;

ENTITY Codificador4Por2ComEnable IS
    PORT (
        A : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
        ENABLE : STD_LOGIC;
        Y : OUT STD_LOGIC_VECTOR(1 DOWNTO 0)
    );
END Codificador4Por2ComEnable;

ARCHITECTURE logica OF Codificador4Por2ComEnable IS
    SIGNAL X : STD_LOGIC_VECTOR(1 DOWNTO 0);
BEGIN
    WITH A SELECT
        X <= "00" WHEN "0001",
        "01" WHEN "0010",
        "10" WHEN "0100",
        "11" WHEN "1000",
        "ZZ" WHEN OTHERS;

    WITH ENABLE SELECT
        Y <= X WHEN '1',
        "ZZ" WHEN OTHERS;
END logica;