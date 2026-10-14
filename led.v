`timescale 1ns / 1ns
module led (
    input  wire a_btn,
    input  wire b_btn,
    output reg  lt_led,
    output reg  eq_led,
    output reg  gt_led
);
    wire a = ~a_btn;
    wire b = ~b_btn;

    always @(*) begin
       
       lt_led = 1'b1;
       eq_led = 1'b1;
       gt_led = 1'b1;

       if(a < b) begin
          lt_led = 1'b0;
       end else if (a == b) begin
          eq_led = 1'b0;
        end else begin
          gt_led = 1'b0;
        end
    end
endmodule