#include "nightlight_parts.inc"

//***********************************************************************
//-> Set up -> Set up -> Set up -> Set up -> Set up -> Set up -> Set up 
#declare White   = rgb 1;
#declare Salmon  = rgb < 0.435294, 0.258824, 0.258824 >;
#declare Pink    = rgb < 0.737255, 0.560784, 0.560784 >;
#declare Gold    = rgb < 0.8     , 0.498039, 0.196078 >;

background { rgb 0.75 }

camera {
  location < 57.5, 14, 5 >
  look_at  < 0, 12, 0 >   
}

light_source { //Casts shadows; Makes look like day
  < 30, 5, 0>
  White * 0.50
}
light_source { 
  < 10, 22, 2.5> 
  color White * 0.45
}
light_source {  //Gets rid of shadows
  y * 20
  color White * 0.50
  shadowless
}

//<- Set up <- Set up <- Set up <- Set up <- Set up <- Set up <- Set up 
//%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
//-> Declares -> Declares -> Declares -> Declares -> Declares -> Declares

#declare room = union {
  
  //Floor
  plane {
    < 0, 1, 0 >, -20
    pigment { White }
  }
  
  //Far wall
  plane {
    < 1, 0, 0 >, -80 
    pigment { White }
  }
  
  //Right wall
  plane {
    < 0, 0, 1 >, 11
    pigment { White 
      filter 0.45
    }
  }
}

#declare Night_Light = union {

  //Bulb holder
  cylinder {
    < 5, 10, 1.5 >,
    < 5, 18, 1.5 >, 4.5
    open
    pigment { Pink }
    finish{
      ambient .35
    }
  }

  //Night light switch
  object {
    nlswitch
    pigment { Salmon * 1.25 }
    scale < 0.2, 0.2, 1.25>
    rotate y*180
    translate < 5, 5, -5>
    finish{
      ambient .35
    }
  } 
  
  object {
    base
    pigment { Pink } 
    finish{
      ambient .35
    }
  }  
  
  object { 
    bulb 
    scale < 0.5, 0.57, 0.6> 
    translate < 5, 19, 1.5>
    finish {
      ambient .45
    }
  }

  object { 
    plug 
    pigment { Gold } 
    translate < 2, 2, 11 > 
    finish{
      ambient .35
    }
  }
}

//<- Declares <- Declares <- Declares <- Declares <- Declares <- Declares 
//***********************************************************************
//-> Objects -> Objects -> Objects -> Objects -> Objects -> Objects 

object { room }
object { Night_Light }

//<- Objects <- Objects <- Objects <- Objects <- Objects <- Objects 
//%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
