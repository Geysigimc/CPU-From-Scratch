module full_adder_tb;

    reg test_A;
    reg test_B;
    reg test_Cin;

    wire test_S;
    wire test_Cout;

    //Instanciate the full adder.
    //Conect to test wires.
    full_adder adder_test(
        .A    (test_A),
        .B    (test_B),
        .Cin  (test_Cin),
        .S    (test_S),
        .Cout (test_Cout)

    );

    initial begin

        $dumpfile("test.vcd");
        $dumpvars(0 , full_adder_tb);

        {test_A, test_B, test_Cin} = 3'b000; #10;//Case 1.
        {test_A, test_B, test_Cin} = 3'b001; #10;//Case 2.
        {test_A, test_B, test_Cin} = 3'b010; #10;//Case 3.
        {test_A, test_B, test_Cin} = 3'b011; #10;//Case 4.
        {test_A, test_B, test_Cin} = 3'b100; #10;//Case 5.
        {test_A, test_B, test_Cin} = 3'b101; #10;//Case 6.
        {test_A, test_B, test_Cin} = 3'b110; #10;//Case 7.
        {test_A, test_B, test_Cin} = 3'b111; #10;//Case 8.

        #10;
        $finish;
    end


endmodule