module mux_2_1_tb;

    reg CH0_test;
    reg CH1_test;
    reg Sel_test;
    wire Out_test;

    
    mux_2_1 mux_test(.CH0(CH0_test) , .CH1(CH1_test) , .Sel(Sel_test) , .Out(Out_test));

    initial begin
        $dumpfile("mux_test.vcd");
        $dumpvars(0, mux_2_1_tb);

       

        $display("Tiempo=%0t ---INICIO DE LA SIMULACION---", $time);

        CH0_test = 0; CH1_test = 0; Sel_test = 0; #10;

        CH0_test = 1; CH1_test = 0; Sel_test = 0; #10;

        CH0_test = 0; CH1_test = 1; Sel_test = 0; #10;

        CH0_test = 0; CH1_test = 0; Sel_test = 1; #10;

        CH0_test = 0; CH1_test = 1; Sel_test = 1; #10;

        CH0_test = 1; CH1_test = 0; Sel_test = 1; #10;

        #10;
        $display("Tiempo=%t | El selector es %b | La Salida es %b" , $time , Sel_test , Out_test);

        #10;
        $finish;













    end

endmodule