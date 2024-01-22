-- Menéndez Quimis Christian Jesús, Indio Navarrete Diego Bautista, P103, Automatización de ventas de pasajes
-- COMPUERTAS LOGICAS, 23/12/2023.
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity COMPUERTA_LOGICA is
    Port ( M1, M2, M3, M4 : in STD_LOGIC;
           C0, C1, C2 : out STD_LOGIC);
end COMPUERTA_LOGICA;

architecture BLOQUE_LOGICO of COMPUERTA_LOGICA is
begin
    process (M1, M2, M3, M4)
    begin
        
        C2 <= (not M4 and not M3 and not M2 and not M1) 
						or (M4 and not M3 and not M2 and not M1);
        C1 <= (not M4 and not M3 and M2 and not M1);
        C0 <= (not M4 and not M3 and not M2 and M1) 
						or (not M4 and not M3 and M2 and not M1) 
						or (M4 and not M3 and not M2 and not M1);

    end process;
end BLOQUE_LOGICO;
