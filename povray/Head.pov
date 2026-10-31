#include "colors.inc"

camera {
	location <.0, .5, -4>
	look_at 0
}

light_source {
	<1, -3, -20>, 1.8
}

/*
light_source {
	<20, 0, -00>, 1
}
*/

// Face
sphere {
	0, 1
	scale <1, 1.3, 1>
	pigment{Tan}
}


// Eyes
union { 
	// Irus
	union {
		sphere {
			<.35, .4, -.73>, .2
		}
		sphere {
			<-.35, .4, -.73>, .2
		}                  
		pigment{ForestGreen}
	}      
	// Pupil
	union {
		sphere {
			<.41, .43, -.9>, .05
		}
		sphere {
			<-.41, .43, -.9>, .05
		}                  
		pigment{Black}
	}
}        

// Eyebrows??
union {                              
	cylinder {
		<.35, .6, -.7>, <.35, .67, -.7>, .2
	}
	cylinder {
		<-.35, .6, -.7>, <-.35, .67, -.7>, .2
	}
	pigment{
		gradient x
		color_map {
			[0 Tan]
			[1 color Brown]
			
		//Brown  
		}
	}                         
}

// Nose
sphere {
	<0, 0, -.9>, .2
	pigment{ Tan }
	scale <1, 1.3, 1>
}

// Mouth
sphere {
	<0, -.6, -1.>, .2
	pigment{ Red }
	scale <1.4, .8, .8>
}       

// Ears
union {
	sphere {
		<1, .3, 0>, .2
	}
	sphere {
		<-1, .3, 0>, .2
	}
	pigment{ Tan }
}

// Hat
union {
	cylinder {
		<0, 1, 0>, <0, 1.1, 0>, 1.1
	}
 	cylinder {
 		<0, 1.09, 0>, <0, 1.4, 0>, .8
 	}                           
 	pigment{ Brown }
}

text {
	ttf "brush.ttf" "Y. Good"
	.1, 0
	pigment{ White } 
	scale .3
	translate <-.5, 1., -1.5>
}

// Neck
cylinder {
	<0, -.9, .3>, <0, -1.2, 0.3>, .7
	pigment{ Tan }
}