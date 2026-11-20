# code for ripple_carry_adder_tb.v
  ...
     module ripple_carry_adder_tb();
        reg [3:0]a,b;
        reg c;
        wire [3:0]s;
        wire cout;
        integer i;
        ripple_carry_adder DUT(a,b,c,s,cout);
        initial
        begin
                for(i=0;i<256;i=i+1)
                begin
                        {a,b,c}=i;
                        #10;
                end
        end
        initial
                $monitor("a=%b,b=%b,c=%b,s=%b,cout=%b",a,b,c,s,cout);
    endmodule
...
