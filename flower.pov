#include "colors.inc"
#include "shapes.inc"
#include "stones.inc"
#include "textures.inc"
#include "skies.inc"

// camera {
//  location <0,7,7>
//  look_at <0,0,0>
//  angle 90
// }
background{ color SummerSky }
light_source { <0,10,-10> color White }



#declare blue_flower = union{
 #declare petal = union{
  object{
  cylinder{<0,0,3.5>,<0,0.1,3.5>,2}
  pigment {color Blue}
  scale<0.8,1,1>
  rotate<-20,0,0>
  }
  }
 object{ petal rotate<0,0,0>}
 object{ petal rotate<0,45,0>}
 object{ petal rotate<0,90,0>}
 object{ petal rotate<0,135,0>}
 object{ petal rotate<0,180,0>}
 object{ petal rotate<0,225,0>}
 object{ petal rotate<0,270,0>}
 object{ petal rotate<0,315,0>}
 object{cylinder{<0,0.4,0>,<0,0.8,0>,1.8}
 pigment {color Black}
 }
}

#declare red_flower = union{
 #declare petal = union{
  object{
  cylinder{<0,0,3.5>,<0,0.1,3.5>,2}
  pigment {color Red}
  scale<0.8,1,1>
  rotate<-20,0,0>
  }
  }
 object{ petal rotate<0,0,0>}
 object{ petal rotate<0,45,0>}
 object{ petal rotate<0,90,0>}
 object{ petal rotate<0,135,0>}
 object{ petal rotate<0,180,0>}
 object{ petal rotate<0,225,0>}
 object{ petal rotate<0,270,0>}
 object{ petal rotate<0,315,0>}
 object{cylinder{<0,0.4,0>,<0,0.8,0>,1.8}
 pigment {color Black}
 }
}

#declare yellow_flower = union{
 #declare petal = union{
  object{
  cylinder{<0,0,3.5>,<0,0.1,3.5>,2}
  pigment {color Yellow}
  scale<0.8,1,1>
  rotate<-20,0,0>
  }
  }
 object{ petal rotate<0,0,0>}
 object{ petal rotate<0,45,0>}
 object{ petal rotate<0,90,0>}
 object{ petal rotate<0,135,0>}
 object{ petal rotate<0,180,0>}
 object{ petal rotate<0,225,0>}
 object{ petal rotate<0,270,0>}
 object{ petal rotate<0,315,0>}
 object{cylinder{<0,0.4,0>,<0,0.8,0>,1.8}
 pigment {color Black}
 }
}

object{
 blue_flower
}
object{
 red_flower
 translate<-8,0,-6>
}
object{
 yellow_flower
 translate<8,0,-6>
}