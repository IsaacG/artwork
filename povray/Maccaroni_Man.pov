#include "colors.inc"

global_settings {
  assumed_gamma 2.2
  
  radiosity {             // --- Settings 1 (fast) ---
    pretrace_start 0.08
    pretrace_end   0.04
    count 30
    error_bound 0.5
    recursion_limit 2
  }
}

camera {
	angle 15
	location < 0, 4, -16 >
	look_at < 0, 0, 0 >
}

light_source { <0, 20, -10> color White * .5 }
//light_source { <0, 20, 10 > color White * .5 }
light_source { <0, 0, -10 > color White * .8 shadowless }
light_source { <0, 0, 1   > color White * .8 }

#declare maccaroni = difference {
	torus { 1, .4 }
	torus { 1, .3 }
	box { < 1.5, 1.5, 0 >, -1.5 }
	pigment { Wheat }
	finish { ambient .4 }
}

box {
	< -10, -10, 10 >, < 10, 10 , 11>
	pigment {
/*		image_map { tga "Maccaroni Man.tga" }
		translate x * 0.48 + y * 0.0279
		scale < 7.3, 5.5, 1 >*/
		White
	}
}

object { maccaroni translate y * 0.5 }
object { maccaroni rotate x * 90 translate z * 0.25 }

//Nose
sphere { z * 0.25, .2 pigment { Blue } }

//Eyes
union {
	sphere { < 1, 0.5, 0 >, .2 pigment { White } }
	sphere { < -1, 0.5, 0 >, .2 pigment { White } }
	sphere { < 0.95, 0.55, -0.2 >, .04 }
	sphere { < -1.05, 0.55, -0.2 >, .04 }
}

//Mouth
#declare i = 45;
#declare s = -i;

blob{
	threshold .5
	#while ( s < i | s = i )
		sphere { < 0, -.9, -0.1 >, .15, 2  pigment { Red } rotate z * s }
		sphere { < 0, -.9, -0.1 >, .1, 0.5  pigment { Blue } rotate z * s + 3 }
		sphere { < 0, -.9, -0.1 >, .1, 0.5  pigment { Blue } rotate z * s - 3 }
		#declare s = s + ( i / 3.2 ) ;
	#end
}

//Hair
#declare i = 75;
#declare s = -i;

#while ( s < i | s = i )
	cylinder { < 0, .9, 1 >, < 0, 1.15, 1 >, .0375 pigment { Brown } rotate y * s }
	cylinder { < 0, .9, .85 >, < 0, 1.1, .85 >, .0375 pigment { Brown } rotate y * s }
	#declare s = s + ( i / 8 ) ;
#end

//Eyebrows
#declare i = 55;
#declare s = -i;

#while ( s < i | s = i )
	cylinder {
		< 0, 0.4 0 >, < 0, 0.4, -0.125 >, .01
			pigment { Black }
			rotate z * s
			translate y * 0.5 + x * 1
		}
	cylinder {
		< 0, 0.4, 0 >, < 0, 0.4, -0.125 >, .01
			pigment { Black }
			rotate z * s
			translate y * 0.5 + x * -1
		}
	#declare s = s + ( i / 8 ) ;
#end