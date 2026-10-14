`timescale 1ns / 1ns

module led_tb ();

    reg  a_btn=1;
    reg  b_btn=1;
    wire lt_led;
    wire eq_led;
    wire gt_led;

    led uut(
        .a_btn(a_btn),
        .b_btn(b_btn),
        .lt_led(lt_led),
        .eq_led(eq_led),
        .gt_led(gt_led)
    );

    initial begin
       $dumpfile("led_tb.vcd");
       $dumpvars(0,led_tb);
    end
    
    
    initial begin
       #40 a_btn = 0;
       #40 a_btn = 1;
       #20 a_btn = 0;
    end

    initial begin
        #20 b_btn = 0;
        #40 b_btn = 1;
        #40 b_btn = 0;
        
        $finish;
    end

endmodule