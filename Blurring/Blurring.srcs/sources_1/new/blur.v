`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.11.2018 10:35:37
// Design Name: 
// Module Name: blur
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



// 000 - box blurring
// 001 - modified sobel edge detection
// 010 - edge detection using kernel
// 011 - motion blur
// 100 - emboss

//1 = original 	(2, 2)
//2 = left 		(2, 3)
//3 = right 		(2, 1)
//4 = up 			(1, 2)
//5 = down 		(3, 2)
//6 = leftup 		(1, 3)
//7 = leftdown 	(3, 3)
//8 = rightup 	(1, 1)
//9 = rightdown 	(3, 1)


//| 8 4 6 |
//| 3 1 2 |
//| 9 5 7 |


module blur(clk, reset, sel_module,red1, green1, blue1,red2, green2, blue2,red3, green3, blue3,red4, green4, blue4,red5, green5, blue5,red6, green6, blue6,red7, green7, blue7,red8, green8, blue8, red9, green9, blue9,     // input signlas
                     done_in, done_out,       // output signals for tgb2gray
                    // val,                           // brightness values
                     red_o, green_o, blue_o);
                     
 input clk, reset, done_in;
 input [2:0] sel_module;
 //input[7:0] val;
 input[7:0] red1, green1, blue1;
 input[7:0] red2, green2, blue2;
 input[7:0] red3, green3, blue3;
 input[7:0] red4, green4, blue4;
 input[7:0] red5, green5, blue5;
 input[7:0] red6, green6, blue6;
 input[7:0] red7, green7, blue7;
 input[7:0] red8, green8, blue8;
 input[7:0] red9, green9, blue9;
 output reg done_out;
 output reg[7:0] red_o, green_o, blue_o;
  reg[31:0] red_x, green_x, blue_x;
 
 always@(posedge clk)
    begin
    if(sel_module == 3'b000) begin
        if(reset) begin
            red_o <= 0;
            green_o <= 0;
            blue_o <= 0;
            done_out <= 0;
        end else begin
            if(done_in == 1)begin
                red_x = (red1 + red2 + red3 +red4 +red5 +red6 +red7 +red8 +red9);
                blue_x = (blue1 + blue2 + blue3 + blue4 + blue5 + blue6 + blue7 + blue8 + blue9);
                green_x = (green1 + green2 + green3 + green4 + green5 + green6 + green7 + green8 + green9);
                red_x = red_x/9;
                blue_x = blue_x/9;
                green_x = green_x/9;
                red_o <= red_x;
                blue_o <= blue_x;
                green_o <= green_x;
                //$display("%d", gray);
                done_out <= 1;
            end else begin
                red_o <= 0;
                blue_o <= 0;
                green_o <= 0;
                done_out <= 0;
            end
        end
//        sobel edge detection
     
//        | 1 0 -1 |           | 1 2 1 |
//        | 2 0 -2 |           | 0 0 0 |
//        | 1 0 -1 |           |-1 -2 -1 |


//| 8 4 6 |
//| 3 1 2 |
//| 9 5 7 |
    end else if(sel_module == 3'b001) begin
            if(reset) begin
                red_o <= 0;
                green_o <= 0;
                blue_o <= 0;
                done_out <= 0;
            end else begin
                if(done_in == 1)begin                  
                    red_x = ((red8)- red6 + (2*red3) - (2*red2) + red9 - red7);
                    blue_x = ((red8) + (2*red4) + red6 - red9 - (2*red5) - red7);
//                   $display("%d", red_x);
////                    red_x = red_x/9;
////                    blue_x = blue_x/9;
////                    green_x = green_x/9;
                    if(red_x > 1024 & blue_x > 1024)begin
                        green_x = -(red_x + blue_x)/2;
                    end else if(red_x > 1024 & blue_x < 1024)begin
                        green_x = (-red_x  + blue_x)/2;
                    end else if(red_x < 1024 & blue_x < 1024)begin
                        green_x = (red_x + blue_x)/2;
                    end else begin
                        green_x = (red_x - blue_x)/2;
                    end
//                    green_x = ((red_x*red_x) + (blue_x*blue_x));
                    red_o <= green_x;
                    blue_o <= green_x;
                    green_o = green_x;
                    //$display("%d", gray);
                    done_out <= 1;
                end else begin
                    red_o <= 0;
                    blue_o <= 0;
                    green_o <= 0;
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
                red_x = ((8*red1) - red2 - red3 - red4 - red5 - red6 - red7 - red8 - red9);
//                $display("%d", red_x);
////                    red_x = red_x/9;
////                    blue_x = blue_x/9;
////                    green_x = green_x/9;
//                green_x = ((red_x*red_x) + (blue_x*blue_x));
//                 $display("%d", red_x);
                 if(red_x > 2048)begin
//                    $display("less than zero");
                    red_o <= -red_x;
                    blue_o <= -red_x;
                    green_o <= -red_x;
                 end else begin
//                    $display("greater");
                    red_o <= red_x;
                    blue_o <= red_x;
                    green_o <= red_x;
                 end
                 //$display("%d", gray);
                 done_out <= 1;
             end else begin
                 red_o <= 0;
                 blue_o <= 0;
                 green_o <= 0;
                 done_out <= 0;
             end
         end
    end else if(sel_module == 3'b011) begin
        if(done_in == 1)begin                  
            red_x = (red1  + red7 + red8);
            red_x = red_x/3;
//                $display("%d", red_x);
////                    red_x = red_x/9;
////                    blue_x = blue_x/9;
////                    green_x = green_x/9;
//                green_x = ((red_x*red_x) + (blue_x*blue_x));
                red_o <= red_x;
                blue_o <= red_x;
                green_o <= red_x;
             //$display("%d", gray);
             done_out <= 1;
         end else begin
             red_o <= 0;
             blue_o <= 0;
             green_o <= 0;
             done_out <= 0;
         end
    
    end else if(sel_module == 3'b100) begin
        if(reset) begin
            red_o <= 0;
            green_o <= 0;
            blue_o <= 0;
            done_out <= 0;
        end else begin
 // emboss
 
 // -2, -1, 0
 // -1, 1, 1
 // 0, 1, 2
 
 //| 8 4 6 |
 //| 3 1 2 |
 //| 9 5 7 |
            if(done_in == 1)begin
                red_x = (red1 + red2 - red3 - red4 + red5 + (2*red7) -(2*red8));
//                blue_x = (blue1 + blue2 + blue3 + blue4 + blue5 + blue6 + blue7 + blue8 + blue9);
//                green_x = (green1 + green2 + green3 + green4 + green5 + green6 + green7 + green8 + green9);
                if(red_x > 1280)begin
                    red_o <= 0;
                    blue_o <= 0;
                    green_o <= 0;
                end else begin
                    red_o <= red_x;
                    blue_o <= red_x;
                    green_o <= red_x;
                end
                //$display("%d", gray);
                done_out <= 1;
            end else begin
                red_o <= 0;
                blue_o <= 0;
                green_o <= 0;
                done_out <= 0;
            end
        end
    
    end else if(sel_module == 3'b101)begin
        if(reset) begin
            red_o <= 0;
            green_o <= 0;
            blue_o <= 0;
            done_out <= 0;
        end else begin
    // emboss
    
    // -0, -1, 0
    // -1, 5, -1
    // 0, -1, 0
    
    //| 8 4 6 |
    //| 3 1 2 |
    //| 9 5 7 |
        if(done_in == 1)begin
            red_x = ((5*red1) - red2 - red3 - red4 - red5);
//                blue_x = (blue1 + blue2 + blue3 + blue4 + blue5 + blue6 + blue7 + blue8 + blue9);
//                green_x = (green1 + green2 + green3 + green4 + green5 + green6 + green7 + green8 + green9);
//            $display("%d", red_x);
            if(red_x > 1280)begin
//            $display("negative");
//                $display("%d", red_x);
                red_o <= 0;
//                $display("%d", red_o);
                blue_o <= 0;
                green_o <= 0;
            end else begin
                red_o <= red_x;
                blue_o <= red_x;
                green_o <= red_x;
            end
            //$display("%d", gray);
            done_out <= 1;
        end else begin
            red_o <= 0;
            blue_o <= 0;
            green_o <= 0;
            done_out <= 0;
        end
    end
    
    end else if(sel_module == 3'b110) begin
        if(done_in == 1)begin                  
            red_x = (red8  + red4 + red6);
            red_x = red_x/3;
                red_o <= red_x;
                blue_o <= red_x;
                green_o <= red_x;
             done_out <= 1;
         end else begin
             red_o <= 0;
             blue_o <= 0;
             green_o <= 0;
             done_out <= 0;
         end
    end else begin
//| 8 4 6 | 1, 2, 1
//| 3 1 2 | 2, 4, 2
//| 9 5 7 | 1, 2, 1
         if(done_in == 1)begin                  
             red_x = (red8  + (2*red4) + red6 + (2*red3) + (4*red1) + (2*red2) + red9 + (2*red5) + (2*red7));
             red_x = red_x/16;
                 red_o <= red_x;
                 blue_o <= red_x;
                 green_o <= red_x;
              done_out <= 1;
          end else begin
              red_o <= 0;
              blue_o <= 0;
              green_o <= 0;
              done_out <= 0;
          end
     end 
end
endmodule
