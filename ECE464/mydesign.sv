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

output reg [11:0] dut_sram_read_address;
output reg [11:0] dut_wmem_read_address;

input [15:0] sram_dut_read_data;
input [15:0] wmem_dut_read_data;

reg [15:0] input_m = 16'bx;
reg [15:7] weight_m = 9'bx;
reg [3:0] result1 = 4'bx;
reg [3:0] result2 = 4'bx;
reg [3:0] result3 = 4'bx;
reg [3:0] result4 = 4'bx;

reg r1, r2, r3, r4;




//======================================================================//

always @(posedge clk)
    begin
    if(!reset_b)
        begin
            dut_busy <= 0;
            dut_sram_write_enable <= 1'b0;
            // dut_sram_write_address <= 12'b0;
            dut_sram_write_data <= 16'b0;

            dut_wmem_read_address = 4'b0;
            dut_sram_read_address = 4'b0;

        end
    else
        begin
            if(dut_run)
                begin
                dut_busy <=1;
                end
        end
    end

always @(*)
    begin

        input_m = sram_dut_read_data;
        weight_m = wmem_dut_read_data;

    result1 = {3'b0, (input_m[0]~^ weight_m[7])} + {3'b0, (input_m[1]~^weight_m[8])} + {3'b0, (input_m[2]~^weight_m[9])}
           + {3'b0, (input_m[4]~^weight_m[10])} + {3'b0, (input_m[5]~^weight_m[11])} + {3'b0, (input_m[6]~^weight_m[12])}
           + {3'b0, (input_m[8]~^weight_m[13])} + {3'b0, (input_m[9]~^weight_m[14])} + {3'b0, (input_m[10]~^weight_m[15])};

    result2 = {3'b0, (input_m[1]~^weight_m[7])} + {3'b0, (input_m[2]~^weight_m[8])} + {3'b0, (input_m[3]~^weight_m[9])}
           + {3'b0, (input_m[5]~^weight_m[10])} + {3'b0, (input_m[6]~^weight_m[11])} + {3'b0, (input_m[7]~^weight_m[12])}
           + {3'b0, (input_m[9]~^weight_m[13])} + {3'b0, (input_m[10]~^weight_m[14])} + {3'b0, (input_m[11]~^weight_m[15])};

    result3 = {3'b0, (input_m[4]~^weight_m[7])} + {3'b0, (input_m[5]~^weight_m[8])} + {3'b0, (input_m[6]~^weight_m[9])}
           + {3'b0, (input_m[8]~^weight_m[10])} + {3'b0, (input_m[9]~^weight_m[11])} + {3'b0, (input_m[10]~^weight_m[12])}
           + {3'b0, (input_m[12]~^weight_m[13])} + {3'b0, (input_m[13]~^weight_m[14])} + {3'b0, (input_m[14]~^weight_m[15])};

    result4 = {3'b0, (input_m[5]~^weight_m[7])} + {3'b0, (input_m[6]~^weight_m[8])} + {3'b0, (input_m[7]~^weight_m[9])}
           + {3'b0, (input_m[9]~^weight_m[10])} + {3'b0, (input_m[10]~^weight_m[11])} + {3'b0, (input_m[11]~^weight_m[12])}
           + {3'b0, (input_m[13]~^weight_m[13])} + {3'b0, (input_m[14]~^weight_m[14])} + {3'b0, (input_m[15]~^weight_m[15])};


    // r1 = result1[3]|(result1[2] & result1[0])}|(result1[2] & result1[1])};
    // r2 = result2[3]|(result2[2] & result2[0])}|(result2[2] & result2[1])};
    // r3 = result3[3]|(result3[2] & result3[0])}|(result3[2] & result3[1])};
    // r4 = result4[3]|(result4[2] & result4[0])}|(result4[2] & result4[1])};
    if(dut_run)
        begin
        dut_sram_write_enable = 1'b1;
        dut_sram_write_address = 1'b0;


            if(result1>=5)
                dut_sram_write_data[0] = 1'b1;
            else
                dut_sram_write_data[0] = 1'b0;

            if(result2>=5)
                dut_sram_write_data[1] = 1'b1;
            else
                dut_sram_write_data[1] = 1'b0;

            if(result3>=5)
                dut_sram_write_data[2] = 1'b1;
            else
                dut_sram_write_data[2] = 1'b0;

            if(result4>=5)
                dut_sram_write_data[3] = 1'b1;
            else
                dut_sram_write_data[3] = 1'b0;

            dut_busy = 0;
            dut_sram_write_enable = 0;
        end


    // dut_sram_write_enable = 1'b1;
    // dut_sram_write_address = 1'b0;

	// dut_busy = 0;
    end
endmodule