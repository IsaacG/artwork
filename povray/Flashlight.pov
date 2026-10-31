#include "colors.inc"

light_source {
	< 0, 25, -50 >
	White
	shadowless//casts no shadow
}

camera {
	location < 15, 0, -40 >
	look_at 0
}


union { //Flashlight ignore the words union, in this picture they do nothing
//the picture would look the same if they were to be removed

	cylinder {//Handle
		0, x * 12, 3
		pigment { rgb 0.75 }
	}

	union {//Bulb Holder
		cone {
			x *  0, 3
			x * -3, 5
			open
			pigment { rgb 0.75 }
		}
		cone {
			x *  0, 3
			x * -3, 1.5
			open
			pigment { rgb 0.75 }
		}
		cylinder {
			x * -3, x * -4, 5 
			open
			pigment { rgb 0.75 }
		}
	}
    
    union {//Bulb
    	light_source {
    		x * -1,
    		White * 0.5
    	}
    }
    
	union {//Switch
		box {
			< 1.5, 3.5, -1 >, < 5, 2, 1 >
			pigment { Black }
		}
		cylinder {
			< 3.25, 3.5, 1 >, < 3.25, 3.5, -1 >, 0.5
			pigment { Black }
		}
	}
	translate x * 10
}

union {//Tripod
	cylinder {
		x * 16, < 16, -8, 0 >, 1
		pigment { Black }
		finish { reflection 0.9 }
	}
	cylinder {
		< 16, -8, 0 >, < 6, -33, -5 >, 1
		pigment { Black }
		finish { reflection 0.9 }
	}
	cylinder {
		< 16, -8, 0 >, < 26, -33, -5 >, 1
		pigment { Black }
		finish { reflection 0.9 }
	}
	cylinder {
		< 16, -8, 0 >, < 16, -33, 5 >, 1
		pigment { Black }
		finish { reflection 0.9 }
	}
}

union { // Walls
	plane {
		x, -8
		pigment { Yellow * 2 }
	}

	plane {
		-z, -25
		pigment { Yellow }
	}
}
//shine on objects