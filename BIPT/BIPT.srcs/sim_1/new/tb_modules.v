`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.10.2018 20:39:49
// Design Name: 
// Module Name: tb_modules
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


module tb_modules();

 reg clk, reset, done_in;
 reg [2:0] sel_module;
 reg[7:0] val;
 reg[7:0] red, green, blue;
 wire done_out;
 wire[7:0] red_o, green_o, blue_o;

Modules tb( clk, reset, sel_module,red, green, blue,     // input signlas
                     done_in, done_out,       // output signals for tgb2gray
                     val,                           // brightness values
                     red_o, green_o, blue_o);
                     
                     
`define read_fileName "C:\\Users\\Gowtham\\Desktop\\flower.bmp"
 localparam ARRAY_LEN = 500*1024;
 
 reg[7:0] data[0: ARRAY_LEN];
 integer size, start_pos, width, height, bitcount;
 
 
 
 task readBMP;
     integer fileID;
 //    integer i;
     begin
         fileID = $fopen(`read_fileName, "rb");
         $display("%d", fileID);
         if(fileID == 0) begin
             $display("Error: Please check file path");
             $finish;
         end else begin
             $fread(data, fileID);
             $fclose(fileID);
         
             size = {data[5],data[4],data[3],data[2]};
             $display("size - %d", size);
             start_pos = {data[13],data[12],data[11],data[10]};
             $display("startpos : %d", start_pos);
             width = {data[21],data[20],data[19],data[18]};
             height = {data[25],data[24],data[23],data[22]};
             $display("width - %d; height - %d",width, height );
         
             bitcount = {data[29],data[28]};
         
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
         $fwrite(fileID, "%c", data[k]);
     end
     
     for(k = start_pos; k<size; k = k+1)begin
         $fwrite(fileID, "%c", result[k - start_pos]);
     end
     
     $fclose(fileID);
     $display("Result.bmp is generated \n");
 end
endtask
 
 //Image Write ends

always begin
     #5 clk = ~clk;
end

initial begin
    clk = 1;
    reset = 1;
    done_in = 0;
    sel_module = 3'b111;
    val = 50;
    
    red = 8'd0;
    green = 8'd0;
    blue = 8'd0;
    
    readBMP;
    
    #10;
    reset = 0;
 
    for(i = start_pos; i < size; i = i+3)begin
        red = data[i+2];
        green = data[i+1];
        blue = data[i];
        
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
