library verilog;
use verilog.vl_types.all;
entity mux_2_1_8b is
    port(
        Z               : out    vl_logic_vector(7 downto 0);
        S0              : in     vl_logic;
        A               : in     vl_logic_vector(7 downto 0);
        B               : in     vl_logic_vector(7 downto 0)
    );
end mux_2_1_8b;
