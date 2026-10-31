#include "colors.inc"
//#include "shapes.pov"
#include "chars.inc"


background { Black }
camera {
	location < 0, 0, -25 >
	sky < 0.8, 1, 0 >
	look_at  < 0, 0,   0 >
	angle 63
}

light_source {
	< 0, 0, -500 >
	White * 1.25
}

light_source {
	< -12, 5, -5 >
	White * 0.5
}

#declare hexgon = prism {
   0, 1, 7,
   < 1, 0 >, < cos( pi / 3), sin( pi / 3) >, < -cos( pi / 3), sin ( pi / 3) >, < -1, 0 >,
   < -cos( pi / 3), -sin ( pi / 3) >, < cos( pi / 3), -sin ( pi / 3) >, < 1, 0 >
   scale < 1.15 / 2, 1, 1.15 / 2 >
   rotate x * -sqrt( 3 ) / 2
}

intersection { //barrel + wood tip

	difference {
		object {//barrel
			hexgon
			rotate z * 90
			rotate x * 30
			scale < 24, 2, 2 >
			translate x * 10
			pigment { rgb ( MandarinOrange + Orange ) / 2 }
			finish { ambient 0.4 }
		}
		text { 
			ttf "timrom.ttf" "EAGLE USA HB  2", 
			0.3, 0 
			translate < -2, -0.4, -1.2 > 
			scale < 1.25, 1.25, 1 >
			pigment { Black }
		}
	}

	cone {//wood Tip
		< 10, 0, 0 >, 5,
		< -13, 0 >, 0.4
		pigment { Tan }
	}
	rotate x * 8
}



union {
	cone { //lead Point
		< -13, 0, 0 >, 0.4
		< -14.5, 0, 0 >, 0.1
		pigment { Red }
	}
	sphere {
		< -14.5, 0, 0 >, 0.1
		scale < 1.5, 1, 1 >
		pigment { Black }
	}
}
		

#declare Ring = torus {
	1, 0.16
	hollow off
	scale < 1, 1/4*3.2, 1 >
	rotate < 2, 2, 0 > * 45 
	pigment { Silver }
}

union { //Eraser holder
	cylinder {
		< 10, 0, 0 >, < 13.5, 0, 0 >, 1.125
		pigment { Silver * 0.9 }
	}
	object {
		Ring
		translate x * ( 10 + 1 * 0.32 )
	}
	object {
		Ring
		translate x * ( 10 + 2 * 0.32 )
	}
	object {
		Ring
		translate x * ( 10 + 3 * 0.32 )
	}
	object {
		Ring
		translate x * ( 10 + 7 * 0.32 )
	}
	object {
		Ring
		translate x * ( 10 + 8 * 0.32 )
	}
	object {
		Ring
		translate x * ( 10 + 9 * 0.32 )
	}
}


difference {
   superellipsoid {
   < 1, 0.1 >
   rotate x * 90
   rotate z * 90
   scale < 1.5 / 2, 1, 1 >
   translate x * 14.5
   } 
	torus {
		1.125, 0.125
		rotate < 90, 90, 0 >
		translate x * 13.5
	}
	pigment { Pink * 1.6 }
	finish  { ambient 0.25 diffuse 0.25 }
}