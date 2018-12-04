`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.11.2018 10:50:20
// Design Name: 
// Module Name: blur_tb
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


module blur_tb();

 reg clk, reset, done_in;
 reg [2:0] sel_module;
 reg[7:0] val;
 reg[7:0] red1, green1, blue1;
 reg[7:0] red2, green2, blue2;
 reg[7:0] red3, green3, blue3;
 reg[7:0] red4, green4, blue4;
 reg[7:0] red5, green5, blue5;
 reg[7:0] red6, green6, blue6;
 reg[7:0] red7, green7, blue7;
 reg[7:0] red8, green8, blue8;
 reg[7:0] red9, green9, blue9;
 wire done_out;
 wire[7:0] red_o, green_o, blue_o;

blur tb( clk, reset, sel_module,red1, green1, blue1,red2, green2, blue2,red3, green3, blue3,red4, green4, blue4,red5, green5, blue5,red6, green6, blue6,red7, green7, blue7,red8, green8, blue8, red9, green9, blue9,     // input signlas
                     done_in, done_out,       // output signals for tgb2gray
                //     val,                           // brightness values
                     red_o, green_o, blue_o);
                     
                     
`define read_fileName1 "C:\\Users\\Gowtham\\Desktop\\gray.bmp"
`define read_fileName2 "C:\\Users\\Gowtham\\Desktop\\left.bmp"
`define read_fileName3 "C:\\Users\\Gowtham\\Desktop\\right.bmp"
`define read_fileName4 "C:\\Users\\Gowtham\\Desktop\\up.bmp"
`define read_fileName5 "C:\\Users\\Gowtham\\Desktop\\down.bmp"
`define read_fileName6 "C:\\Users\\Gowtham\\Desktop\\leftup.bmp"
`define read_fileName7 "C:\\Users\\Gowtham\\Desktop\\leftdown.bmp"
`define read_fileName8 "C:\\Users\\Gowtham\\Desktop\\rightup.bmp"
`define read_fileName9 "C:\\Users\\Gowtham\\Desktop\\rightdown.bmp"

 localparam ARRAY_LEN = 500*1024;
 
 reg[7:0] data1[0: ARRAY_LEN];
 reg[7:0] data2[0: ARRAY_LEN];
 reg[7:0] data3[0: ARRAY_LEN];
 reg[7:0] data4[0: ARRAY_LEN];
 reg[7:0] data5[0: ARRAY_LEN];
 reg[7:0] data6[0: ARRAY_LEN];
 reg[7:0] data7[0: ARRAY_LEN];
 reg[7:0] data8[0: ARRAY_LEN];
 reg[7:0] data9[0: ARRAY_LEN]; 
 
 integer size, start_pos, width, height, bitcount;
 
 
 
 task readBMP;
     integer fileID1, fileID2, fileID3, fileID4, fileID5, fileID6, fileID7, fileID8, fileID9;
 //    integer i;
     begin
         fileID1 = $fopen(`read_fileName1, "rb");
         fileID2 = $fopen(`read_fileName2, "rb");
         fileID3 = $fopen(`read_fileName3, "rb");
         fileID4 = $fopen(`read_fileName4, "rb");
         fileID5 = $fopen(`read_fileName5, "rb");
         fileID6 = $fopen(`read_fileName6, "rb");
         fileID7 = $fopen(`read_fileName7, "rb");
         fileID8 = $fopen(`read_fileName8, "rb");
         fileID9 = $fopen(`read_fileName9, "rb");
         $display("%d", fileID1);
         if(fileID1 == 0) begin
             $display("Error: Please check file path");
             $finish;
         end else begin
             $fread(data1, fileID1);
             $fclose(fileID1);
             
             $fread(data2, fileID2);
             $fclose(fileID2);
            
             $fread(data3, fileID3);
             $fclose(fileID3);
                          
             $fread(data4, fileID4);
             $fclose(fileID4);
             
             $fread(data5, fileID5);
             $fclose(fileID5);
             
             $fread(data6, fileID6);
             $fclose(fileID6);
             
             $fread(data7, fileID7);
             $fclose(fileID7);
             
             $fread(data8, fileID8);
             $fclose(fileID8);
                                       
             $fread(data9, fileID9);
             $fclose(fileID9);
                                                    
                                                    
             size = {data1[5],data1[4],data1[3],data1[2]};
             $display("size - %d", size);
             start_pos = {data1[13],data1[12],data1[11],data1[10]};
             $display("startpos : %d", start_pos);
             width = {data1[21],data1[20],data1[19],data1[18]};
             height = {data1[25],data1[24],data1[23],data1[22]};
             $display("width - %d; height - %d",width, height );
         
             bitcount = {data1[29],data1[28]};
         
             if(bitcount != 24) begin
                 $display("Error: Please check the image file. It may be corrupted");
             end
         
             if(width%4)begin
                 $display("width is not suitable");
                 $finish;
             end
 //            for(i = start_pos; i<size;i = i+1)begin
 //                $display("%h", data[i]);
 //            end
        end
     end
 endtask
 // Image read complete

 

 integer i, j;
 localparam RESULT_ARRAY_LEN = 5000*1024;
 
 reg[7:0] result[0:RESULT_ARRAY_LEN - 1];
 
 
 always @(posedge clk) begin
    if(sel_module == 2'b00)begin
        if(reset) begin
            j <= 8'd0;
        end else begin
            if(done_out) begin
                result[j] <= blue_o;
                result[j+1] <= green_o;
                result[j+2] <= red_o;
                j <= j+3;
                //$display("%d, %d", gray, result[j]);
            end
        end
    end else begin
        if(reset) begin
            j <= 8'd0;
        end else begin
            if(done_out) begin
                //$display("done_out, %d", done_out);
                //$display("something");
                result[j] <= blue_o;
                result[j+1] <= green_o;
                result[j+2] <= red_o;
                j <= j+3;
//                $display("j-%d", j);
//                $display("blue-%d;green-%d;red-%d;", result[j],result[j+1],result[j+2]);
            end
        end    
    end
 end
 

 
//Image Write Start
 
 `define write_filename "C:\\Users\\Gowtham\\Desktop\\result.bmp"
 
task writeBMP;
integer fileID, k;
 begin
     fileID = $fopen(`write_filename, "wb");
     
     for(k = 0; k < start_pos; k = k+1)begin
         $fwrite(fileID, "%c", data1[k]);
     end
     
     for(k = start_pos; k<size; k = k+1)begin
         $fwrite(fileID, "%c", result[k - start_pos]);
     end
     
     $fclose(fileID);
     $display("Result.bmp is generated \n");
 end
endtask
 
 //Image Write ends
 
 
 
 
 
// 1 = original 	(2, 2)
// 2 = left         (2, 3)
// 3 = right         (2, 1)
// 4 = up             (1, 2)
// 5 = down         (3, 2)
// 6 = leftup         (1, 3)
// 7 = leftdown     (3, 3)
// 8 = rightup     (1, 1)
// 9 = rightdown     (3, 1)
 
 
// | 8 4 6 |
// | 3 1 2 |
// | 9 5 7 |




always begin
     #5 clk = ~clk;
end

initial begin
    clk = 1;
    reset = 1;
    done_in = 0;
    sel_module = 3'b000;
    val = 50;
    
    red1 = 8'd0;
    green1 = 8'd0;
    blue1 = 8'd0;
    
    readBMP;
    
    #10;
    reset = 0;
 
    for(i = start_pos; i < size; i = i+3)begin
        red1 = data1[i+2];
        green1 = data1[i+1];
        blue1 = data1[i];
        
        red2 = data2[i+2];
        green2 = data2[i+1];
        blue2 = data2[i];
        
        red3 = data3[i+2];
        green3 = data3[i+1];
        blue3 = data3[i];
        
        red4 = data4[i+2];
        green4 = data4[i+1];
        blue4 = data4[i];
        
        red5 = data5[i+2];
        green5 = data5[i+1];
        blue5 = data5[i];
        
        red6 = data6[i+2];
        green6 = data6[i+1];
        blue6 = data6[i];
        
        red7 = data7[i+2];
        green7 = data7[i+1];
        blue7 = data7[i];
        
        red8 = data8[i+2];
        green8 = data8[i+1];
        blue8 = data8[i];
        
        
        red9 = data9[i+2];
        green9 = data9[i+1];
        blue9 = data9[i];
        
        #10;
        done_in = 1;
    end
    
    #10;
    done_in  = 1'b0;
    
    #10;
    writeBMP;
    
    
    #10;
    $stop;

end

endmodule

