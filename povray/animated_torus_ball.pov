#include "colors.inc"  

camera {
	location < -5, 3, -15>
	look_at < 0, 0, 0>
}

light_source { <   0,  7, -7 > color White shadowless }
light_source { <   0,  0,  0 > color White }
light_source { < 0.5,  0,  0 > color White }
light_source { <  -6, -6,  0 > color White*.75 shadowless }


plane{
	< 0, 1, 0 >, -7
	pigment { color Gray50 }
}
plane{
	< 0, 0, -1>, -7
	pigment { color Gray50 }
}

#declare toru = torus{
	5.0, 0.5
	pigment { color Blue }
}

#declare toru2 = torus{
	5.0, 0.5
	rotate z*90
	pigment { color Blue }
}

union
{
	object { toru2 rotate y*45 }
	object { toru2 rotate y*-45 }
	object { toru rotate x*-45 }
	object { toru rotate x*45 }
	object { toru rotate x*90 }
	object { toru rotate y*90 }
	object { toru rotate z*-45 }
	object { toru rotate z*45 }
	object { toru rotate z*90 }
	finish { ambient .4}
	rotate y*-clock*90
}

sphere{
	<0,0,0> 4.5
	pigment { color White filter .63 }
}