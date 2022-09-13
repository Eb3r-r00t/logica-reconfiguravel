LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;

ENTITY ContadorSimuladoComWhen IS
    PORT (
        ENTRADA : IN INTEGER RANGE 0 TO 15;
        SAIDA : OUT STD_LOGIC_VECTOR(1 DOWNTO 0)
    );

END ContadorSimuladoComWhen;

ARCHITECTURE logica OF ContadorSimuladoComWhen IS
BEGIN
    SAIDA <= "00" WHEN ENTRADA < 7 ELSE
        "11" WHEN ENTRADA > 10 ELSE "ZZ";
END logica;