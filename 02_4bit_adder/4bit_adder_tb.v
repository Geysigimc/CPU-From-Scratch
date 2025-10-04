`timescale 1ns/1ps

module bit_4_adder_tb;

    reg [3:0]a_tb;
    reg [3:0]b_tb;
    reg cin_tb;
    wire[3:0]s_tb;
    wire cout_tb;

    adder_4_bits b4a_tb (

        .a(a_tb),
        .b(b_tb),
        .cin(cin_tb),
        .cout(cout_tb),
        .s(s_tb)
    );

    initial begin

        $dumpfile("4bit_adder_test.vcd");
        $dumpvars(0, b4a_tb);


        $display("----TEST BEGIN---");

        a_tb = 4'd5; b_tb = 4'd2; cin_tb = 1'b0; #10;

        a_tb = 4'd8; b_tb = 4'd2; cin_tb = 1'b0; #10;


        $display("Time=%0t ----TEST END----",$time);
        #10;
        $finish;


    end

    initial begin

        $monitor("Time=%0t | Inputs: a = %d , b = %d , cin = %b |Outputs: s = %d , cout = %b ",
        $time, a_tb , b_tb , cin_tb , s_tb , cout_tb);
        
    end


endmodule