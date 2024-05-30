`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.05.2024 21:29:29
// Design Name: 
// Module Name: speed_measure
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

module speed_measure(
    input logic clk,           // 12 MHz clock
    input logic sensor_a,
    input logic sensor_b,
    output logic [6:0] seg1,
    output logic [6:0] seg2,
    output logic [6:0] seg3,
    output logic [6:0] seg4,
    output logic dot            //Точка на UL2
);

    logic [23:0] count = 24'd0;
    logic [23:0] time_counted = 24'd0;
    logic sensor_a_last = 0;
    logic sensor_b_last = 0;
    logic in_process = 0;

    // Счетчик времени
    always_ff @(posedge clk) begin
        //if (rst) begin
            //count <= 24'd0;
            //time_counted <= 24'd0;
            //sensor_a_last <= 0;
            //sensor_b_last <= 0;
            //in_process <= 0;
        sensor_a_last <= sensor_a;
        sensor_b_last <= sensor_b;
        if (sensor_a && !sensor_a_last) begin
            in_process <= 1;
            count <= 24'd0;
        end else if (sensor_b && !sensor_b_last && in_process) begin
            in_process <= 0;
            time_counted <= count;
        end else if (in_process) begin
            count <= count + 1;
        end
    end

    // Вычисление скорости
    logic [13:0] speed_calc;
    always_comb begin
        if (time_counted != 0) //12 MHz * 300 mm
            speed_calc = (36_000_000 / time_counted);
        else
            speed_calc = 0;
    end

    // Дисплей
    SevenSegmentDisplay display (
        .clk(clk),
        .value(speed_calc),
        .seg1(seg1),
        .seg2(seg2),
        .seg3(seg3),
        .seg4(seg4),
        .dot(dot)
    );

endmodule

module SevenSegmentDisplay(
    input logic clk,
    input logic [13:0] value,    
    output logic [6:0] seg1,
    output logic [6:0] seg2,
    output logic [6:0] seg3,
    output logic [6:0] seg4,
    output logic dot
);

    logic [3:0] digit[3:0];    

    always_comb begin
        digit[3] = value % 10;
        digit[2] = (value / 10) % 10;
        digit[1] = (value / 100) % 10;
        digit[0] = (value / 1000) % 10;
       
    end
   

    function logic [6:0] select_seg (input logic [3:0] digit);
        case (digit)
            4'h0: select_seg = 7'b0111111;
            4'h1: select_seg = 7'b0000110;
            4'h2: select_seg = 7'b1011011;
            4'h3: select_seg = 7'b1001111;
            4'h4: select_seg = 7'b1100110;
            4'h5: select_seg = 7'b1101101;
            4'h6: select_seg = 7'b1111101;
            4'h7: select_seg = 7'b0000111;
            4'h8: select_seg = 7'b1111111;
            4'h9: select_seg = 7'b1101111;
            default: select_seg = 7'b0000000;
        endcase
    endfunction

    always_comb begin
        seg1 = select_seg(digit[0]);
        seg2 = select_seg(digit[1]);
        seg3 = select_seg(digit[2]);
        seg4 = select_seg(digit[3]);
        dot = 1;
    end
    
endmodule    
    
    
//        case (digit[0])
//            4'h0: seg1 = 7'b0111111;
//            4'h1: seg1 = 7'b0000110;
//            4'h2: seg1 = 7'b1011011;
//            4'h3: seg1 = 7'b1001111;
//            4'h4: seg1 = 7'b1100110;
//            4'h5: seg1 = 7'b1101101;
//            4'h6: seg1 = 7'b1111101;
//            4'h7: seg1 = 7'b0000111;
//            4'h8: seg1 = 7'b1111111;
//            4'h9: seg1 = 7'b1101111;
//            default: seg1 = 7'b0000000;
//        endcase

//        case (digit[1])
//            4'h0: seg2 = 7'b0111111;
//            4'h1: seg2 = 7'b0000110;
//            4'h2: seg2 = 7'b1011011;
//            4'h3: seg2 = 7'b1001111;
//            4'h4: seg2 = 7'b1100110;
//            4'h5: seg2 = 7'b1101101;
//            4'h6: seg2 = 7'b1111101;
//            4'h7: seg2 = 7'b0000111;
//            4'h8: seg2 = 7'b1111111;
//            4'h9: seg2 = 7'b1101111;
//            default: seg2 = 7'b0000000;
//        endcase

//        case (digit[2])
//            4'h0: seg3 = 7'b0111111;
//            4'h1: seg3 = 7'b0000110;
//            4'h2: seg3 = 7'b1011011;
//            4'h3: seg3 = 7'b1001111;
//            4'h4: seg3 = 7'b1100110;
//            4'h5: seg3 = 7'b1101101;
//            4'h6: seg3 = 7'b1111101;
//            4'h7: seg3 = 7'b0000111;
//            4'h8: seg3 = 7'b1111111;
//            4'h9: seg3 = 7'b1101111;
//            default: seg3 = 7'b0000000;
//        endcase
        
//        case (digit[3])
//            4'h0: seg4 = 7'b0111111;
//            4'h1: seg4 = 7'b0000110;
//            4'h2: seg4 = 7'b1011011;
//            4'h3: seg4 = 7'b1001111;
//            4'h4: seg4 = 7'b1100110;
//            4'h5: seg4 = 7'b1101101;
//            4'h6: seg4 = 7'b1111101;
//            4'h7: seg4 = 7'b0000111;
//            4'h8: seg4 = 7'b1111111;
//            4'h9: seg4 = 7'b1101111;
//            default: seg4 = 7'b0000000;
//        endcase


