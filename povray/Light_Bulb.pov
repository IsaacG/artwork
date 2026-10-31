#include "colors.inc"

background { ForestGreen }

camera {
	location < 0, 0, -4 >
	look_at 0
	//angle 63 //default
}

//light_source { < 0, 0, -100 > rgb 2 }

merge {
	merge{
		sphere {
			0, 1
		}
		cone {
			0, 1, y* -1., .5
		}
		cylinder {
			y* -.5, y* -1.5, .5
		}
		finish { ambient 2 }
		pigment {
			White
			transmit .1
		}
	}
	cylinder {
		y*-1.2,y*-1.8,.51
		pigment { Gold }
		finish { ambient 0.75 }
	}
	sphere {
		y*-1.8,.3
	}
	translate y * .4 + x * -.2
	scale < 1.3, 1, 1 >
}