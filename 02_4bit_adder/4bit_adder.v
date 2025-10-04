module  adder_4_bits(

    input wire [3:0]a,
    input wire [3:0]b,
    input wire cin,
    output wire [3:0]s,
    output wire cout

    );

    //Ripple-Carry Chain.

    wire c1 , c2 , c3;


    full_adder fa0 (
        .A    (a[0]),
        .B    (b[0]),
        .S    (s[0]),
        .Cin  (cin),    
        .Cout (c1)

    );

    full_adder fa1 (
        .A    (a[1]),
        .B    (b[1]),
        .S    (s[1]),
        .Cin  (c1),    
        .Cout (c2) 
    );
    
    full_adder fa2 (
        .A    (a[2]),
        .B    (b[2]),
        .S    (s[2]),
        .Cin  (c2),    
        .Cout (c3)
    );

    full_adder fa3 (
        .A    (a[3]),
        .B    (b[3]),
        .S    (s[3]),
        .Cin  (c3),    
        .Cout (cout)

    );
endmodule