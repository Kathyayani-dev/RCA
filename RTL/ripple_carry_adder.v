# code for ripple_carry_adder.v
...
    module ripple_carry_adder(a,b,c,s,cout);
        input [3:0]a;
        input [3:0]b;
        input c;
        output [3:0]s;
        wire w1,w2,w3;
        output cout;
      //assign c=1'b0;

        full_adder_1bit f1(a[0],b[0],c,s[0],w1);
        full_adder_1bit f2(a[1],b[1],w1,s[1],w2);
        full_adder_1bit f3(a[2],b[2],w2,s[2],w3);
        full_adder_1bit f4(a[3],b[3],w3,s[3],cout);
     endmodule
...
