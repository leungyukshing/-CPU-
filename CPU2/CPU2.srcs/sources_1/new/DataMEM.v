`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/06/14 20:43:19
// Design Name: 
// Module Name: DataMEM
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module DataMEM(
    input mRD,
    input mWR,
    input [31:0]DAddr,
    input [31:0]DataIn,
    output reg[31:0] DataOut
    );
    // �������ݴ洢��
    reg [7:0] memory[0:63];
    integer i;
    // Initialize the DataMEM
    initial begin
        for(i = 0; i <64; i=i+1)
            memory[i] <= 0;
    end
    initial begin
        DataOut <= 0;
    end
    
    always @(mRD or mWR) begin
        // Read
        if (mRD) begin
              DataOut[31:24] = memory[DAddr];
              DataOut[23:16] = memory[DAddr+1];
              DataOut[15:8] = memory[DAddr+2];
              DataOut[7:0] = memory[DAddr+3];
        end
        
        // Write
        if (mWR) begin
                memory[DAddr] <= DataIn[31:24];
                memory[DAddr+1] <= DataIn[23:16];
                memory[DAddr+2] <= DataIn[15:8];
                memory[DAddr+3] <= DataIn[7:0];
                DataOut <= 0;
        end
    end
endmodule
