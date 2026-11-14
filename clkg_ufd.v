`timescale 1ns/1ps
module clkg_ufd;
reg clk;
real freq,tp,duty;
initial  begin 
$value$plusargs("freq=%f",freq);
$value$plusargs("duty=%f",duty);
tp =(1000/freq); //tp in ns
clk =0; //initializing clk
 forever begin
clk=1; #(duty*tp/100.0);
clk=0; #((100-duty)*tp/100.0);
end
end
initial begin
#500;
$finish;
end
endmodule
