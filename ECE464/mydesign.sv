module MyDesign (dut_run,
                dut_busy,
                reset_b,
                clk,
                dut_sram_write_address,
                dut_sram_write_data,
                dut_sram_write_enable,
                dut_sram_read_address,
                sram_dut_read_data,
                dut_wmem_read_address,
                wmem_dut_read_data
                );

//======================================================================//

input dut_run;
output reg dut_busy;
input reset_b;
input clk;

output reg [11:0] dut_sram_write_address;
output reg [15:0] dut_sram_write_data;
output reg dut_sram_write_enable;

input reg [11:0] dut_sram_read_address;
input reg [11:0] dut_wmem_read_address;

input [15:0] sram_dut_read_data;
input [15:0] wmem_dut_read_data;

reg [15:0] input_m;
reg [15:0] weight_m;
reg result1;
reg result2;
reg result3;
reg result4;





//======================================================================//

always @(posedge clk)
    begin
    if(!reset_b)
        begin
            dut_busy <= 0;
            dut_sram_write_enable <= 1'b0;
            dut_sram_write_address <= 12'b0;
            dut_sram_write_data <= 16'b0;

            dut_wmem_read_address <= 0;
            dut_sram_read_address <= 0;
        end
    else
        begin
            if(dut_run)
                begin
                dut_busy <=1;
                end
        end
    end

always @(dut_busy)
    begin
    input_m = sram_dut_read_data;
    weight_m = wmem_dut_read_data;

    result1 = ~(input_m[0]^weight_m[0]) + ~(input_m[1]^weight_m[1]) + ~(input_m[2]^weight_m[2])
           + ~(input_m[4]^weight_m[3]) + ~(input_m[5]^weight_m[4]) + ~(input_m[6]^weight_m[5])
           + ~(input_m[8]^weight_m[6]) + ~(input_m[9]^weight_m[7]) + ~(input_m[10]^weight_m[8]);

    result2 = ~(input_m[1]^weight_m[0]) + ~(input_m[2]^weight_m[1]) + ~(input_m[3]^weight_m[2])
           + ~(input_m[5]^weight_m[3]) + ~(input_m[6]^weight_m[4]) + ~(input_m[7]^weight_m[5])
           + ~(input_m[9]^weight_m[6]) + ~(input_m[10]^weight_m[7]) + ~(input_m[11]^weight_m[8]);

    result3 = ~(input_m[4]^weight_m[0]) + ~(input_m[5]^weight_m[1]) + ~(input_m[6]^weight_m[2])
           + ~(input_m[8]^weight_m[3]) + ~(input_m[9]^weight_m[4]) + ~(input_m[10]^weight_m[5])
           + ~(input_m[12]^weight_m[6]) + ~(input_m[13]^weight_m[7]) + ~(input_m[14]^weight_m[8]);

    result4 = ~(input_m[5]^weight_m[0]) + ~(input_m[6]^weight_m[1]) + ~(input_m[7]^weight_m[2])
           + ~(input_m[9]^weight_m[3]) + ~(input_m[10]^weight_m[4]) + ~(input_m[11]^weight_m[5])
           + ~(input_m[13]^weight_m[6]) + ~(input_m[14]^weight_m[7]) + ~(input_m[15]^weight_m[8]);

    if(result1>=5)
        result1 = 1'b1;
    else
        result1 = 1'b0;

    if(result2>=5)
        result2 = 1'b1;
    else
        result2 = 1'b0;

    if(result3>=5)
        result3 = 1'b1;
    else
        result3 = 1'b0;

    if(result4>=5)
        result4 = 1'b1;
    else
        result4 = 1'b0;

    dut_sram_write_enable = 1'b1;
    dut_sram_write_address = 1'b0;
    dut_sram_write_data = {12'b0, result1, result2, result3, result4};
	dut_busy = 0;
    end
endmodule