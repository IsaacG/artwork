#include "stars.inc"
#include "colors.inc"
#include "stones.inc"

background { rgb < .75, 0, .85 > }
camera {
	location < 0, 2, 30 >
	look_at  <0, 0, 0>
	angle 75
}

light_source { < 200, 200,-200> color White}
light_source { < 200,-200, 200> color White}
light_source { <-200, 200, 200> color White}
light_source { < 200, 200, 200> color White}
light_source { <-200, -200, -200> color White}
light_source { < 200, -200, -200> color White}
light_source { <-200,  200, -200> color White}
light_source { <-200, -200,  200> color White}

// Planet's ring
#declare ring = difference{ // Using this rather than disc to get a width
	cylinder{
	<0, 0.5, 0 > <0, -0.5, 0 > 17
	pigment { color Blue }
	}

	cylinder{
		<0, 0.5, 0 > <0, -0.5, 0 > 12
		pigment { color Blue }
	}
}

// %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
// <- declarations
// -> objects
// %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

// Planet
sphere{
	<0,0,0> 10
	pigment { color Yellow }
	finish { ambient 0.5 diffuse 0.4 }
}

object { ring }
union{
	object { star translate <-13,12,0> pigment{Red} }
	object { star translate < 12,-12,0> pigment{Red} }
	object { star translate < 12,11,0> pigment{Orange} }
	object { star translate < -14,-12,0> pigment{Orange} }
	finish { ambient 1 }
}