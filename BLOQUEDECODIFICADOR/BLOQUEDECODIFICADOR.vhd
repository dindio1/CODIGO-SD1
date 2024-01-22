-- Menéndez Quimis Christian Jesús, Indio Navarrete Diego Bautista, P103, Automatización de ventas de pasajes
-- BLOQUE DECODIFICADOR, 23/12/2023.
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity BLOQUEDECODIFICADOR is
    Port ( S : in STD_LOGIC_VECTOR(3 downto 0);
           A, B, C, D : out STD_LOGIC);
end BLOQUEDECODIFICADOR;

architecture Behavioral of BLOQUEDECODIFICADOR is
begin
    process(S)
    begin
        case S is
            when "0011" =>
                A <= '1';
                B <= '0';
                C <= '0';
                D <= '0';
            when "0111" =>
                A <= '0';
                B <= '1';
                C <= '0';
                D <= '0';
            when "1001" =>
                A <= '0';
                B <= '0';
                C <= '1';
                D <= '0';
            when "1011" =>
                A <= '0';
                B <= '0';
                C <= '0';
                D <= '1';
            when others =>
                A <= '0';
                B <= '0';
                C <= '0';
                D <= '0';
        end case;
    end process;
end Behavioral;
