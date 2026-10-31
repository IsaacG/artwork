#include "colors.inc"
//#include ".inc"


background { rgb 1 * .70 }

camera {
	location -z * 200
	look_at 0
	angle 50 
}

light_source { -z * 200 rgb 1 }

difference {

//////////////////////////////////////////////////////////////////////////////////////////////////////////

	union { // Existing Parts
		
		box { // Disk
			< -50, -50, -1 >, < 50, 50, 1 >
			pigment { SteelBlue * 1.5 }
			hollow	
		}

	}
	
//////////////////////////////////////////////////////////////////////////////////////////////////////////

	union { // Non - existing Parts

		box { // Bottom left corner
			z * -2, < 5, 15, 2 >
			rotate z * 45
			translate < -45, -55, 0 >
		}
		
		box { // Top left hole
			< -47, 42, -2 > , < -42.5, 37.5, 2 >
		}

		union { // Read only switch hole
			box { // Top layer 
				< 47, 42, -2 > , < 42.5, 37.5, 2 >
			}

			box { // Back layer
				< 47, 46.5, -0.8 > , < 42.5, 37.5, 2 >
			}
		}
	}

	box { // Read only switch
		< 47, 42, -0.8 > , < 42.5, 37.5, 1 >
		pigment { Black }
	}

	box { // Label
		< 40, 45, -1 >, < -40, 0, -1.01 >
		pigment { Tan * 2 }
	}

	difference { // Disc Cover
		
		box { 
			< 25, -10, -1 >, < -30, -50, -1.01 >
			pigment { Silver }
		}
		
		box {
			< -5, -15, -0.9 >, < -20, -45, -1.1 >
		}
	}
}

