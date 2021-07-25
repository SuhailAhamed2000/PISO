// Code your design here
module piso(clk,rst,ld,in,q);
  input clk,rst,ld;
  input [3:0]in;
  output reg q;
  reg [3:0]qp;
  always @(posedge clk)
      begin
        if (rst)
          begin
          q=0;
          qp=0;
          end
        else if(ld)
          begin
            qp=in[3:0];
            q=qp[0];
          end
        else
          begin 
            qp={1'b0,qp[3:1]};
          q=qp[0];
          end
      end
endmodule
