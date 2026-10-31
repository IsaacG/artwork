#declare half_circle = difference{
  sphere{ 0, 1 }
  box { 20, < 1, 0, 1 > * -20 }
}

#declare half_torus = difference{
  torus{ 8, 1 }
  box{-10, < 1, 1, 0 >*10 }
}

#declare Ruby_Glass =
texture {
    pigment { rgbf <0.9, 0.1, 0.2, 0.8> }
    finish {
        ambient 0.1
        diffuse 0.1
        reflection .25
        ior 1.5
        specular 1
        roughness .001
    }
}

#declare bulb = merge{
  sphere{ y*25, 4 }
  cone  { y*25, 4, y*10, 9 open }
  cylinder{y*10, y*5, 9 open }
  object{ half_circle translate y*.7 scale < 9,11,9    > }  
  hollow
  texture{ Ruby_Glass }
}

#declare base = union {
  box{ 0, < 10, 10, 8> }
  box{ < 10, 8, 8> , < 0, 0, 11> }
  cylinder{ < 5, 0, 0> < 5, 10, 0> 5 }
}

#declare plug = difference{
  union {
    box{0,<.25,4,6>}
    box{x*5,<5.25,4,6>}
    cylinder{<0,2,6>,<.25,2,6>,2}
    cylinder{<5,2,6>,<5.25,2,6>,2}
  }
  cylinder{
    <-1,2,5.5>,<6,2,5.5>,1 
  }
}
//switch  ->
#declare cy = cylinder{
  z*.45 z*100 1
  translate y*10.5
}

#declare grooves = union{
  object {cy}
  object {cy rotate z*18}
  object {cy rotate z*36}
  object {cy rotate z*54}
  object {cy rotate z*72}
}

//grooved switch for nightlight
#declare nlswitch = difference{
  cylinder{
    0 <0,0,6> 10
  }
  object { grooves }
  object { grooves rotate z* 90}
  object { grooves rotate z*180}
  object { grooves rotate z*270}
}//<- switch
