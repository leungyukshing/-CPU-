`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/05/22 16:34:40
// Design Name: 
// Module Name: clock_div
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


module clock_div(
    input clk, // 100MHz ϵͳĬ��Ƶ��
    output reg clk_sys = 0 // 1Hz�������ʼ��Ϊ0
    );
    
    reg [25:0] div_counter = 0; // ��ʼ��Ϊ0
    
    always @(posedge clk) begin
            if (div_counter == 50000) begin
                clk_sys <= ~clk_sys; //��ƽ����
                div_counter <= 0;
            end else begin
            div_counter <= div_counter + 1;
            end
        end
        // $display("div_counter: ", div_counter, "  clk_sys: ", clk_sys);
endmodule
