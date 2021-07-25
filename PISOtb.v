// Code your testbench here
// or browse Examples
module pisotb();
  reg clk,rst,ld;
  reg in;
  wire q;
  piso m(clk,rst,ld,in,q);
  initial
    begin
      $dumpfile("pisotb.vcd");
      $dumpvars(0,pisotb);
    end
  initial
    begin
      clk=1;
      forever #5 clk=~clk;
    end
  initial
    begin
      #10 rst=1;
      #10 rst=0;ld=1;
       #10 in=1;
      #10 in=0;
      #10 in=0;
      #10 in=1;
      
      #200 $finish;
    end
endmodule
