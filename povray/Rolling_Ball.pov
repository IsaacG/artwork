#include "colors.inc"
camera {
	location <1, 1, -7>
	look_at 0
	angle 45
}
light_source { <0, 2.5, -2.5> White*1.5 }

plane {y,-1.5
	pigment {checker Green, White}
}

sphere { <0,0,0>, 1
	pigment { White filter 1 }
	normal{
		bumps 2 scale 1
	}
	finish {
		ambient 1
		diffuse .1
		reflection .2
		specular 1
		roughness .001
	}
	interior{
		ior 1.5
		fade_distance 5
		fade_power 1
		caustics 1
	}
}

