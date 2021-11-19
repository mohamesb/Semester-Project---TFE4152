

module PIXEL_ARRAY(
   input logic      read1,
   input logic      read2,
   input logic      VBN1,
   input logic      RAMP,
   input logic      RESET,
   input logic      ERASE,
   input logic      EXPOSE,
   output tri[7:0]  p1,
   output tri[7:0]  p2,
   output tri[7:0]  p3,
   output tri[7:0]  p4
);
//
//parameter real dv_p1 = 0.01;

//parameter real dv_p2 = 0.5;

//parameter real dv_p3 = 0.13;

//parameter real dv_p4 = 0.53;

//PIXEL_SENSOR  #(.dv_pixel(dv_p1))  ps1(anaBias1, anaRamp, anaReset, erase,expose, READ1,p1);PIXEL_SENSOR  #(.dv_pixel(dv_p2))  ps2(anaBias1, anaRamp, anaReset, erase,expose, READ1,p2); PIXEL_SENSOR  #(.dv_pixel(dv_p3))  ps3(anaBias1, anaRamp, anaReset, erase,expose, READ2,p3); PIXEL_SENSOR  #(.dv_pixel(dv_p4))  ps4(anaBias1, anaRamp, anaReset, erase,expose, READ2,p4);



endmodule
