library verilog;
use verilog.vl_types.all;
entity decoder_4_16_vlg_sample_tst is
    port(
        A               : in     vl_logic_vector(3 downto 0);
        sampler_tx      : out    vl_logic
    );
end decoder_4_16_vlg_sample_tst;
