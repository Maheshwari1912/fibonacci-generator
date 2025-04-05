module fibonacci(
  input clk,
  input rst,
  output reg [31:0] fib);
  reg [31:0] prev1;
  reg [31:0] prev2;
  always@(posedge clk or posedge rst);
  if(rst) begin
    prev1=32'd0;
    prev2=32'd1;
    fib=32'd0;
  end
  else begin
    fib=prev1 + prev2;
    prev2 = prev1;
    prev1 = fib;
  end
  end
endmodule
