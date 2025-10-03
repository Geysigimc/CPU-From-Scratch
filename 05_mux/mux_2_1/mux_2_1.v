module mux_2_1 (

    input wire CH0,
    input wire CH1,
    input wire Sel,
    output wire Out

);

assign Out = (~Sel & CH0) | (Sel & CH1);



endmodule