#include "colors.inc"

camera {
	location <8, 1, -8>
	look_at 0
}

light_source {
	z * -20, 1
}

light_source {
	x * 20, 1
}

cylinder {
	<-5, 0, 0>,
	x * 5,
	0.25
	texture {
		pigment {Orange}
	}
}

cylinder {
	<0, 0, 0>,
	x * 5.0001,
	0.24999
	texture {
		pigment {Tan}
	}
}

cone {
	x * -5, 0.25,
	x * - 6, 0.1
	pigment {Tan}
}

cone {
	x * -6, 0.1,
	x * -6.125, 0.08
	texture {
		pigment {Orange}
	}
}

cylinder {
	x * -5,
	x * 5.001,
	0.1
	texture {
		pigment {Orange}
	}
}
