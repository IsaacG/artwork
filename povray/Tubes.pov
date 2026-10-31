#include "colors.inc"

#declare steps = 6;
#declare clk = 6;

#declare Grid = 1;

background { Gray20 }

camera {
   location y * 25
   look_at 0
}

light_source {
   y * 1000, 1.25
}

union {

   
   cylinder {
      < -4, 0, -3 >, < -4, 0, 2 >, 1
      open
   }


   union {
      
      intersection {
         torus {
            2, 1
         }
         box {
            y * 1.1, < -  3.1, -1.1, 3.1 >
         }
         box {
            y * 1.1, < -3.1, -1.1, 3.1>
            rotate y * -45
         }
      }
  
      union {
         cylinder {
            0, < 4, 0, 0 >, 1
            open
            translate < 0, 0, 2 >
         }
         union {
            intersection {
               torus {
                  2, 1
               }
               union {
                  box {
                     y * 1.1, < 3.1, -1.1, 3.1 >
                  }
                  box {
                     y * 1.1, < 3.1, -1.1, 3.1>
                     rotate y * 45
                  }
               }
            }
            union {
	            cylinder {
   	            z * 2, < 4, 0, 2 >, 1
   	            open
      	      }
      	      union {
      	      	intersection {
      	      		torus {
      	      			5, 1
	      	      	}
   	   	      	box {
      		      		y * -1.1, < 6.1, 1.1, 6.1 >
      		      	}
      		      }
      		      cylinder {
      		      	0, x * -5, 1
      		      	open
	         	      #if ( clk >= steps - 5.75 )	rotate y * -90 / 4	translate < 5, 0, -2.5 > / 4	#end
   	   	         #if ( clk >= steps - 5.50 )	rotate y * -90 / 4	translate < 5, 0, -2.5 > / 4	#end
   		            #if ( clk >= steps - 5.25 )	rotate y * -90 / 4	translate < 5, 0, -2.5 > / 4	#end
	      	         #if ( clk >= steps - 5.00 )	rotate y * -90 / 4	translate < 5, 0, -2.5 > / 4	#end
      		      }
         	      #if ( clk >= steps - 4.75 )	translate < 4, 0, -3 > / 4	#end
      	         #if ( clk >= steps - 4.50 )	translate < 4, 0, -3 > / 4	#end
   	            #if ( clk >= steps - 4.25 )	translate < 4, 0, -3 > / 4	#end
	               #if ( clk >= steps - 4.00 )	translate < 4, 0, -3 > / 4	#end
      	      }
               #if ( clk >= steps - 3.75 )	rotate y * 135 / 4   #end
               #if ( clk >= steps - 3.50 )	rotate y * 135 / 4     #end
               #if ( clk >= steps - 3.25 )	rotate y * 135 / 4   #end
               #if ( clk >= steps - 3.00 )	rotate y * 135 / 4     #end
            }
            #if ( clk >= steps - 2.75 ) translate x * 4 / 4	#end
            #if ( clk >= steps - 2.50 ) translate x * 4 / 4	#end
            #if ( clk >= steps - 2.25 ) translate x * 4 / 4	#end
            #if ( clk >= steps - 2.00 ) translate x * 4 / 4	#end
         }

         #if ( clk >= steps - 1.75 ) rotate y * -45 / 4	#end
         #if ( clk >= steps - 1.50 ) rotate y * -45 / 4	#end
         #if ( clk >= steps - 1.25 ) rotate y * -45 / 4	#end
         #if ( clk >= steps - 1.00 ) rotate y * -45 / 4	#end
      }
      
      #if ( clk >= steps - 0.75 ) translate < -2, 0, 2 > / 4	#end
      #if ( clk >= steps - 0.50 ) translate < -2, 0, 2 > / 4	#end
      #if ( clk >= steps - 0.25 ) translate < -2, 0, 2 > / 4	#end
      #if ( clk >= steps - 0.00 ) translate < -2, 0, 2 > / 4	#end
   }                                                               
         
      
   pigment { Gray65 }
}

#if ( Grid )
	#declare j = 10;
	#declare step = 1;
	#declare i = -j;
	#declare holeSize = 0.25;

	#while ( i <= j )
	   cylinder {
			< i, 0, -j >, < i, 0, j >, 0.1
			pigment { Red }
	   }
   	#declare i = i + step;
	#end

	#declare i = -j;
	#while ( i <= j )
	   cylinder {
	      < -j, 0, i >, < j, 0, i >, 0.1
	      pigment { Red }
	   }
	   #declare i = i + step;
	#end


	#declare gX = 0;
	#while ( gX <= j )
		#declare gY = 0;
		#while ( gY <= j )
			sphere {
				< gX, 0, gY >, holeSize
				pigment { Black }
			}
			#declare gY = gY + step * 5;
		#end
		#declare gX = gX + step * 5;
	#end

	#declare gX = 0;
	#while ( gX >= -j )
		#declare gY = 0;
		#while ( gY <= j )
			sphere {
				< gX, 0, gY >, holeSize
				pigment { Black }
			}
			#declare gY = gY + step * 5;
		#end
		#declare gX = gX - step * 5;
	#end

	#declare gX = 0;
	#while ( gX <= j )
		#declare gY = 0;
		#while ( gY >= -j )
			sphere {
				< gX, 0, gY >, holeSize
				pigment { Black }
			}
			#declare gY = gY - step * 5;
		#end
		#declare gX = gX + step * 5;
	#end

	#declare gX = 0;
	#while ( gX >= -j )
		#declare gY = 0;
		#while ( gY >= -j )
			sphere {
				< gX, 0, gY >, holeSize
				pigment { Black }
			}
			#declare gY = gY - step * 5;
		#end
		#declare gX = gX - step * 5;
	#end
#end