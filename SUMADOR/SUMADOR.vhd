-- Menéndez Quimis Christian Jesús, Indio Navarrete Diego Bautista, P103, Automatización de ventas de pasajes
-- SUMADOR, 23/12/2023.
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
entity SUMADOR is
    Port ( C2, C1, C0 : in STD_LOGIC;
           B : in STD_LOGIC_VECTOR (2 downto 0);
           S2, S1, S0 : out STD_LOGIC;
           Vuelto : out STD_LOGIC_VECTOR (2 downto 0));
end SUMADOR;
architecture SUMADOR1 of SUMADOR is
    signal A : STD_LOGIC_VECTOR (2 downto 0);
    signal BorrowIn : STD_LOGIC;
    signal Sum : STD_LOGIC_VECTOR (2 downto 0);
    signal BorrowOut : STD_LOGIC;
begin
    process (C2, C1, C0, B)
        variable TempSum : STD_LOGIC_VECTOR (3 downto 0);
    begin
        A <= B;
        BorrowIn <= '0';

        for i in 0 to 2 loop
            TempSum(i + 1) := A(i) xor not B(i) xor BorrowIn;
        end loop;

        Sum <= TempSum(2 downto 0);
        BorrowOut <= not TempSum(3);
    end process;

    process (Sum, B)
    begin
        case Sum is
            when "001" =>
                Vuelto <= "100";
            when "011" =>
                Vuelto <= "010";
            when "100" =>
                Vuelto <= "001";
            when others =>
                Vuelto <= "000";
        end case;
    end process;

    process (B)
    begin
        if B = "000" then
            S2 <= '0';
            S1 <= '0';
            S0 <= '0';
        else
            S2 <= Sum(2);
            S1 <= Sum(1);
            S0 <= Sum(0);
        end if;
    end process;

end SUMADOR1;
