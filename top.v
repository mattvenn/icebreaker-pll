`default_nettype none

module top (
	input  clk,
    output led,

);

    SB_PLL40_CORE #(.FEEDBACK_PATH("SIMPLE"),
                    .PLLOUT_SELECT("GENCLK"),
                    .DIVR(4'b0000),
                    .DIVF(7'b1010011),
                    .DIVQ(3'b101),
                    .FILTER_RANGE(3'b001)
            )
            uut
            (
                    .REFERENCECLK(clk),
                    .PLLOUTCORE(led),
                    .RESETB(1'b1),
                    .BYPASS(1'b0)
              );

endmodule
