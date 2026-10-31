#include "colors.inc"

//This is called a comment
//POV-Ray will ignore this
//You can press return of space when ever you want, as long as it's not in middle of a word
//I generally try to keep it neat

background   { Gray80 }

camera 


{
	location          <   0,0,      -15 >
	look_at 0 // same as < 0, 0, 0 >
}

light_source {
	z * -25, // same as < 0, 0, -10 >
	White // to make the light brighter, you can write "White * 2"
}

cylinder {//barrel
	< -5, 0, 0 >, < 5, 0, 0 >, 1
	pigment { Orange }
	finish { ambient 0.3 } //makes the object brighter. play around with the number. keep it between 0 and 1
}

cylinder {//eraser holder
	< 5, 0, 0 >, x * 6 /*same as < 6, 0, 0 > */, 1.1
	pigment { Silver }
	finish { ambient 0.25 }
}

cylinder {//eraser
	x * 6, x * 7.5, 1
	pigment { Pink }
	finish { ambient 0.35 }
}

cone { //wood tip
	x * -5, 1
	x * -7, 0.5
	pigment { Tan }
	finish { ambient 0.5 }
}

cone { //lead tip
	x * -7, 0.5
	x * -9, 0
	pigment { Black }
}