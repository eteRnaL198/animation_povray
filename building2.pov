#include "colors.inc"
#include "shapes.inc"
#include "stones.inc"
#include "textures.inc"
#include "skies.inc"

camera {
 location <10,10,-10>
 look_at <0,0,0>
 angle 90
}
background{ color SummerSky }
light_source { <0,10,-10> color White }
 
//building��union  
#declare building2 = union{
#declare a = 0.5;
#while (a <= 9)
  difference{
   box{
    <-2,0,-2>,<2,0.5,2>
    pigment{color Yellow}}                                            
   
   box{<-0.25,-0.1,-2.1>,<0.25,0.6,2.1>}
   box{<-2.1,-0.1,-0.25>,<2.1,0.6,0.25>}
   
   box{<-2.1,-0.1,-2.1>,<-1.75,0.6,-1.75>}
   box{<-2.1,-0.1,2.1>,<-1.75,0.6,1.75>}
   box{<2.1,-0.1,-2.1>,<1.75,0.6,-1.75>}
   box{<2.1,-0.1,2.1>,<1.75,0.6,1.75>}
   translate<0,a,0>
  } 
#declare a=a+1;
#end
 difference{
  box{
   <-1.99,0,-1.99>,<1.99,10,1.99>
   pigment{color Green}}
  box{<0,9.5,-2>,<2,11,2>}
 } 
}
//�����܂�

// object{building}
   