weights 3x3
[[1,-1,1],
[1,-1,-1],
[-1,1,1]]

inputs 4x4
[[-1,1,1,1],
[1,-1,-1,1],
[1,1,-1,-1],
[-1,1,1,-1]]

result 2x2
[[ 1, -3]
 [ 5,  3]]

note

1. Index of weight matrix, input matrix and result matrix
weight 3x3
[[w00,w01,w02],
[w10,w11,w12],
[w20,w21,w22]]

input 4x4
[[i00,i01,i02,i03],
[i10,i11,i12,i13],
[i20,i21,i22,i23],
[i30,i31,i32,i33]]

result 2x2
[[o00, o01]
 [o10, o11]]

2. Organization in SRAM
(1)weight(7 0s added)
0,0,0,0,0,0,0,w22,w21,w20,w12,w11,w10,w02,w01,w00
(2)input(no 0s added)
i33,i32,i31,i30,i23,i22,i21,i20,i13,i12,i11,i10,i03,i02,i01,i00
(3)output(12 0s added)
0,0,0,0,0,0,0,0,0,0,0,0,o11,o10,o01,o00

3. Why the golden_output is 0000000000001101?

The output is a 2x2 matrix, and we can give each value an index in the matrix. Then the index of 1, -3, 5, 3 are 00, 01, 10 and 11 respectively. According to the spec, if the output value is greater than or equal to 0, we treat it as 1, and if it's less than 0, we threat it as 0. Hence, 1(00), -3(01), (5)10, 3(11) can be transferred as 1, 0, 1, 1. Since we save values from MLB, the final result is 0000 0000 0000 1(11)1(10)0(01)1(00), and the two digits inside the brackets means index.
Hope it helps.
