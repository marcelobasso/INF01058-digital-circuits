library verilog;
use verilog.vl_types.all;
entity decoder_4_16 is
    port(
        S               : out    vl_logic_vector(15 downto 0);
        A               : in     vl_logic_vector(3 downto 0)
    );
end decoder_4_16;
