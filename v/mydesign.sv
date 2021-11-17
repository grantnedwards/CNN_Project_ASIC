//=======================================================================//
//
//                       Single Stage
//          Binary Artifical Convolutional Neural Network
//                       Grant Edwards
//
//=======================================================================//
// This design takes in a 4x4 input matrix, and a 3x3 weight matrix, and
// performs a strided convolution between them, and outputs the results.
//=======================================================================//
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

//====================External and Declared Values=======================//

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

//==========================Internal Values=============================//

reg [3:0] result1;
reg [3:0] result2;
reg [3:0] result3;
reg [3:0] result4;
reg flag;


//=============================Main Code================================//

always @(posedge clk)
    begin

    if(dut_run)
        begin
            dut_busy <=1;
            dut_sram_write_enable <= 1'b1; //Enable write
            flag <= 1;  //This is some necessary logic for the circuit to be able to stop its functionality and provide dut_busy with a 0 within the correct clock cycle
        end

    if(flag) //this is used to provide logic participation with the testbench
        begin
            dut_busy <=0;
            dut_sram_write_enable <= 1'b0;
        end

    if(!reset_b) // within the segments of reset_b being inactive, all things are initialized to the correct addresses and busy is set to 0 to prep for convolution.
        begin
            dut_busy <= 0;
            dut_sram_write_enable <= 1'b0;
            dut_sram_write_address <= 1'b0; // set write address to 00
            dut_wmem_read_address = 4'b0;   // set weight read address to 00
            dut_sram_read_address = 4'b0;   // set input read address to 00
        end

// Perform convolution with input datastream of fixed size of 4x4 matrix
// Leading zeroes were required to provide proper adder functionality without leading ones.

    // A basic overview of the logic is an XNOR is used to evaluate -1 and 1 within calculations. You can have the same mathematical functionality by using XNOR
    //
    //    since XNOR
    //  A    B   |  D
    //  0    0   |  1
    //  0    1   |  0
    //  1    0   |  0
    //  1    1   |  1
    //

// You can see it can provide for ++ (1), -+ (0), +- (0), and -- (1) situations with values. Mathematically, you can see the accumulation of these values can indicate a positive or negative
// Which indicates the correct convolution result at each stage.

    result1 <= {3'b0, (sram_dut_read_data[0]~^ wmem_dut_read_data[0])} + {(sram_dut_read_data[1]~^wmem_dut_read_data[1])} + {(sram_dut_read_data[2]~^wmem_dut_read_data[2])}
           + { (sram_dut_read_data[4]~^wmem_dut_read_data[3])} + { (sram_dut_read_data[5]~^wmem_dut_read_data[4])} + {(sram_dut_read_data[6]~^wmem_dut_read_data[5])}
           + { (sram_dut_read_data[8]~^wmem_dut_read_data[6])} + { (sram_dut_read_data[9]~^wmem_dut_read_data[7])} + {(sram_dut_read_data[10]~^wmem_dut_read_data[8])};

    result2 <= {3'b0, (sram_dut_read_data[1]~^wmem_dut_read_data[0])} + {(sram_dut_read_data[2]~^wmem_dut_read_data[1])} + { (sram_dut_read_data[3]~^wmem_dut_read_data[2])}
           + { (sram_dut_read_data[5]~^wmem_dut_read_data[3])} + { (sram_dut_read_data[6]~^wmem_dut_read_data[4])} + { (sram_dut_read_data[7]~^wmem_dut_read_data[5])}
           + { (sram_dut_read_data[9]~^wmem_dut_read_data[6])} + { (sram_dut_read_data[10]~^wmem_dut_read_data[7])} + { (sram_dut_read_data[11]~^wmem_dut_read_data[8])};

    result3 <= {3'b0, (sram_dut_read_data[4]~^wmem_dut_read_data[0])} + { (sram_dut_read_data[5]~^wmem_dut_read_data[1])} + { (sram_dut_read_data[6]~^wmem_dut_read_data[2])}
           + { (sram_dut_read_data[8]~^wmem_dut_read_data[3])} + { (sram_dut_read_data[9]~^wmem_dut_read_data[4])} + { (sram_dut_read_data[10]~^wmem_dut_read_data[5])}
           + { (sram_dut_read_data[12]~^wmem_dut_read_data[6])} + { (sram_dut_read_data[13]~^wmem_dut_read_data[7])} + { (sram_dut_read_data[14]~^wmem_dut_read_data[8])};

    result4 <= {3'b0, (sram_dut_read_data[5]~^wmem_dut_read_data[0])} + {(sram_dut_read_data[6]~^wmem_dut_read_data[1])} + {(sram_dut_read_data[7]~^wmem_dut_read_data[2])}
           + {(sram_dut_read_data[9]~^wmem_dut_read_data[3])} + {(sram_dut_read_data[10]~^wmem_dut_read_data[4])} + { (sram_dut_read_data[11]~^wmem_dut_read_data[5])}
           + { (sram_dut_read_data[13]~^wmem_dut_read_data[6])} + { (sram_dut_read_data[14]~^wmem_dut_read_data[7])} + { (sram_dut_read_data[15]~^wmem_dut_read_data[8])};




// In this seciton, we actually evaluate and write properly computed information within the outgoing data

    // Functionality here relies on the accumulator function above
    // for example:
    // a single convolution calculation of 101 110 101 is
    //
    //                  1+0+1+1+1+0+1+0+1 = 6
    //
    //                  we treat 0 and 1 as -1 and 1
    //                  1-1+1+1+1-1+1-1+1 = 3 (A POSITIVE NUMBER)
    //
    //      ***This is why we need to evaluate when the accumulator results in a number above 5

    if(result1>=5)  // These if statements evaluate whether or not the XNOR adders are above 5, this determines if they're positive or negative
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


    end
endmodule