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

reg [15:0] input_m;
reg [15:7] weight_m;
reg [3:0] result1;
reg [3:0] result2;
reg [3:0] result3;
reg [3:0] result4;

reg flag;




//======================================================================//

always @(posedge clk)
    begin
    if(flag)
        begin
            dut_busy <=0;
            dut_sram_write_enable <= 1'b0;
        end
    if(!reset_b)
        begin
            dut_busy <= 0;
            dut_sram_write_enable <= 1'b0;
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

    input_m <= sram_dut_read_data;
    weight_m <= wmem_dut_read_data;

    result1 <= {3'b0, (input_m[0]~^ weight_m[7])} + {3'b0, (input_m[1]~^weight_m[8])} + {3'b0, (input_m[2]~^weight_m[9])}
           + {3'b0, (input_m[4]~^weight_m[10])} + {3'b0, (input_m[5]~^weight_m[11])} + {3'b0, (input_m[6]~^weight_m[12])}
           + {3'b0, (input_m[8]~^weight_m[13])} + {3'b0, (input_m[9]~^weight_m[14])} + {3'b0, (input_m[10]~^weight_m[15])};

    result2 <= {3'b0, (input_m[1]~^weight_m[7])} + {3'b0, (input_m[2]~^weight_m[8])} + {3'b0, (input_m[3]~^weight_m[9])}
           + {3'b0, (input_m[5]~^weight_m[10])} + {3'b0, (input_m[6]~^weight_m[11])} + {3'b0, (input_m[7]~^weight_m[12])}
           + {3'b0, (input_m[9]~^weight_m[13])} + {3'b0, (input_m[10]~^weight_m[14])} + {3'b0, (input_m[11]~^weight_m[15])};

    result3 <= {3'b0, (input_m[4]~^weight_m[7])} + {3'b0, (input_m[5]~^weight_m[8])} + {3'b0, (input_m[6]~^weight_m[9])}
           + {3'b0, (input_m[8]~^weight_m[10])} + {3'b0, (input_m[9]~^weight_m[11])} + {3'b0, (input_m[10]~^weight_m[12])}
           + {3'b0, (input_m[12]~^weight_m[13])} + {3'b0, (input_m[13]~^weight_m[14])} + {3'b0, (input_m[14]~^weight_m[15])};

    result4 <= {3'b0, (input_m[5]~^weight_m[7])} + {3'b0, (input_m[6]~^weight_m[8])} + {3'b0, (input_m[7]~^weight_m[9])}
           + {3'b0, (input_m[9]~^weight_m[10])} + {3'b0, (input_m[10]~^weight_m[11])} + {3'b0, (input_m[11]~^weight_m[12])}
           + {3'b0, (input_m[13]~^weight_m[13])} + {3'b0, (input_m[14]~^weight_m[14])} + {3'b0, (input_m[15]~^weight_m[15])};

    if(dut_run)
        begin
        dut_sram_write_enable <= 1'b1;
        dut_sram_write_address <= 1'b0;


            if(result1>=5)
                dut_sram_write_data[0] <= 1'b1;
            else
                dut_sram_write_data[0] <= 1'b0;

            if(result2>=5)
                dut_sram_write_data[1] <= 1'b1;
            else
                dut_sram_write_data[1] <= 1'b0;

            if(result3>=5)
                dut_sram_write_data[2] <= 1'b1;
            else
                dut_sram_write_data[2] <= 1'b0;

            if(result4>=5)
                dut_sram_write_data[3] <= 1'b1;
            else
                dut_sram_write_data[3] <= 1'b0;

            flag <= 1;
        end

    end
endmodule