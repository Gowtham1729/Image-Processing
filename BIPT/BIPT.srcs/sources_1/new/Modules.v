`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.10.2018 19:28:11
// Design Name: 
// Module Name: Modules
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


module Modules( clk, reset, sel_module,red, green, blue, // input signlas
                     done_in, done_out,       // output signals for tgb2gray
                     val,                           // brightness values
                     red_o, green_o, blue_o);          //output signals for brightness

//sel_module = 01 (increase brightness)
//sel_module = 10 (decrease brightness)
//sel_module = 00 (rgb2gray)

 input clk, reset, done_in;
 input [2:0] sel_module;
 input[7:0] val = 0;
 input[7:0] red, green, blue;
 output reg done_out;
 output reg[7:0] red_o, green_o, blue_o;
 reg[8:0] red_x, green_x, blue_x;

 always @(posedge clk)
    begin
        if(sel_module == 3'b000) begin
            if(reset) begin
                red_o <= 0;
                green_o <= 0;
                blue_o <= 0;
                done_out <= 0;
            end else begin
                if(done_in == 1)begin
                    red_o <= (red >> 2) + (red >> 5) + (green >> 1) + (green >> 4)+ (blue >> 4) + (blue >> 5);
                    green_o <= (red >> 2) + (red >> 5) + (green >> 1) + (green >> 4)+ (blue >> 4) + (blue >> 5);
                    blue_o <= (red >> 2) + (red >> 5) + (green >> 1) + (green >> 4)+ (blue >> 4) + (blue >> 5);
                    //$display("%d", gray);
                    done_out <= 1;
                end else begin
                    red_o <= 0;
                    blue_o <= 0;
                    green_o <= 0;
                    done_out <= 0;
                end
        end 
        end else if(sel_module == 3'b001) begin
            if(reset) begin
                red_o <= 0;
                green_o <= 0;
                blue_o <= 0;
                done_out <= 0;
            end else begin
                if(done_in == 1)begin
                    red_x = red + val;
                    green_x = green + val;
                    blue_x = blue + val;
                    if(red_x > 255)begin
                        red_o <= 255;
                    end else begin
                        red_o <= red_x;
                    end
                    if(green_x > 255)begin
                        green_o <= 255;
                    end else begin
                        green_o <= green_x;
                    end
                    if(blue_x > 255)begin
                        blue_o <= 255;
                    end else begin
                        blue_o <= blue_x;
                    end
                    done_out <= 1;
//                    $display("red-%d;blue-%d;green-%d", red, blue, green);
//                    $display("red_o-%d;blue_o-%d;green_o-%d", red_o, blue_o, green_o);
                end else begin
                    red_o <= 0;
                    green_o <= 0;
                    blue_o <= 0;
                    done_out <= 0;
                end
            end
        end else if(sel_module == 3'b010) begin
            if(reset) begin
                red_o <= 0;
                green_o <= 0;
                blue_o <= 0;
                done_out <= 0;
            end else begin
                if(done_in == 1)begin
                    red_x = red - val;
                    green_x = green - val;
                    blue_x = blue - val;
                    if(red_x > 255)begin
                        red_o = 0;
                    end else begin
                        red_o = red_x;
                    end
                    if(green_x > 255)begin
                        green_o = 0;
                    end else begin
                        green_o = green_x;
                    end
                    if(blue_x > 255)begin
                        blue_o = 0;
                    end else begin
                        blue_o = blue_x;
                    end
                    done_out <= 1;
                end else begin
                    red_o <= 0;
                    green_o <= 0;
                    blue_o <= 0;
                    done_out <= 0;
                end
            end
        end 
        else if(sel_module == 3'b011) begin
			if(reset) begin
                red_o <= 0;
				green_o <= 0;
				blue_o <= 0;
                done_out <= 0;
            end
            else begin
                if(done_in == 1)begin
                    red_o <= 255 - red;
					green_o <= 255 - green;
					blue_o <= 255 - blue;
                    done_out <= 1;
                end 
                else begin
                    red_o <= 0;
					green_o <= 0;
					blue_o <= 0;
                    done_out <= 0;
                end
		   end
        end else if(sel_module == 3'b100) begin
            if(reset) begin
                red_o <= 0;
                green_o <= 0;
                blue_o <= 0;
                done_out <= 0;
            end
            else begin
                if(done_in == 1)begin
                    red_o <= 0;
                    green_o <= green;
                    blue_o <= blue;
                    done_out <= 1;
                end 
                else begin
                    red_o <= 0;
                    green_o <= 0;
                    blue_o <= 0;
                    done_out <= 0;
                end
           end
        end else if(sel_module == 3'b101) begin
            if(reset) begin
                red_o <= 0;
                green_o <= 0;
                blue_o <= 0;
                done_out <= 0;
            end
            else begin
                if(done_in == 1)begin
                    red_o <= red;
                    green_o <= 0;
                    blue_o <= blue;
                    done_out <= 1;
                end 
                else begin
                    red_o <= 0;
                    green_o <= 0;
                    blue_o <= 0;
                    done_out <= 0;
                end
           end
        end else if(sel_module == 3'b110) begin
            if(reset) begin
                red_o <= 0;
                green_o <= 0;
                blue_o <= 0;
                done_out <= 0;
            end
            else begin
                if(done_in == 1)begin
                    red_o <= red;
                    green_o <= green;
                    blue_o <= 0;
                    done_out <= 1;
                end 
                else begin
                    red_o <= 0;
                    green_o <= 0;
                    blue_o <= 0;
                    done_out <= 0;
                end
           end
        end else if(sel_module == 3'b111) begin
            if(reset) begin
                red_o <= 0;
                green_o <= 0;
                blue_o <= 0;
                done_out <= 0;
            end
            else begin
                if(done_in == 1)begin
                    red_o <= red;
                    green_o <= green;
                    blue_o <= blue;
                    done_out <= 1;
                end 
                else begin
                    red_o <= 0;
                    green_o <= 0;
                    blue_o <= 0;
                    done_out <= 0;
                end
           end
        end
        
    end

endmodule
