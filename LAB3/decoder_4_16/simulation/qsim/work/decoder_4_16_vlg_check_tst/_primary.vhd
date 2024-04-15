library verilog;
use verilog.vl_types.all;
entity decoder_4_16_vlg_check_tst is
    port(
        S               : in     vl_logic_vector(15 downto 0);
        sampler_rx      : in     vl_logic
    );
end decoder_4_16_vlg_check_tst;
