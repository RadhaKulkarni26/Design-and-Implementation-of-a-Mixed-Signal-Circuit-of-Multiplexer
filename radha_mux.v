module radha_mux (input i0 , input i1 , input sel , output reg y);
always @ (*)
begin
	if(sel)
		y <= i0;
	else 
		y <= i1;
end
endmodule