`include "sram.sv"
`include "testbench_464.sv"

module MyDesign (input wire reset_b,
                input wire go,
                input wire clock,
                output wire busy,
                input in_data,
                input in_weight,
                output write_data
                output write_enable
                output write_addr
                );

reg input_m;
reg weight_m;
reg result1, result2, result3, result4;

always@(posedge clock)
    begin
    input_m = in_data;
    weight_m = in_weight;

    result1= ~(input_m[0]^weight_m[0]) + ~(input_m[1]^weight_m[1] + ~(input_m[2]^weight_m[2])
           + ~(input_m[4]^weight_m[3]) + ~(input_m[5]^weight_m[4] + ~(input_m[6]^weight_m[5])
           + ~(input_m[8]^weight_m[6]) + ~(input_m[9]^weight_m[7] + ~(input_m[10]^weight_m[8]);

    result2= ~(input_m[1]^weight_m[0]) + ~(input_m[2]^weight_m[1] + ~(input_m[3]^weight_m[2])
           + ~(input_m[5]^weight_m[3]) + ~(input_m[6]^weight_m[4] + ~(input_m[7]^weight_m[5])
           + ~(input_m[9]^weight_m[6]) + ~(input_m[10]^weight_m[7] + ~(input_m[11]^weight_m[8]);

    result3= ~(input_m[4]^weight_m[0]) + ~(input_m[5]^weight_m[1] + ~(input_m[6]^weight_m[2])
           + ~(input_m[8]^weight_m[3]) + ~(input_m[9]^weight_m[4] + ~(input_m[10]^weight_m[5])
           + ~(input_m[12]^weight_m[6]) + ~(input_m[13]^weight_m[7] + ~(input_m[14]^weight_m[8]);

    result4= ~(input_m[5]^weight_m[0]) + ~(input_m[6]^weight_m[1] + ~(input_m[7]^weight_m[2])
           + ~(input_m[9]^weight_m[3]) + ~(input_m[10]^weight_m[4] + ~(input_m[11]^weight_m[5])
           + ~(input_m[13]^weight_m[6]) + ~(input_m[14]^weight_m[7] + ~(input_m[15]^weight_m[8]);

    // flip values and shove into SRAM
    // Write into output SRAM
    end


endmodule