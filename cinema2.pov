#include "shapes.inc" //形状に関するインクルードファイル
#include "colors.inc"
#include "shapes.inc"
#include "stones.inc"
#include "textures.inc"
#include "skies.inc"

#include "human.pov"
//#include "quaterNote.pov"
//#include "building.pov"
//#include "building2.pov"
//#include "building3.pov"
// #include "cinema.pov"
// #include "flower.pov"
// #include "tuplet.pov"
// #include "speaker.pov"
#include "whale.pov"
#include "flower.pov"

camera {    //カメラの設定
  angle 1
  // location<-8, 310, -270>    //カメラを置く位置
  // look_at<200, 310, 100>    //カメラで狙う位置
  // angle 80    //視野角度

  // angle 2
  // location<-8, 310, -270>    //カメラを置く位置
  // look_at<200, 310, 100>    //カメラで狙う位置
  
  location<-150, 350, -300>    //カメラを置く位置
  look_at<0, 300, -250>    //カメラで狙う位置
  angle 60    //視野角度

}

// background{ color BrightGold }   //背景の設定
background{ color Coral }   //背景の設定
light_source{ <0, 400, -500> color White } //点光源の設定
light_source{ <0, 1000, -200> color White } //点光源の設定
light_source{ <-500, 1000, -100> color White } //点光源の設定

object {    //オブジェクトの設定
    Plane_XZ    //XZ平面
    pigment { color Red }
    // texture{    //テクスチャ指定
    //      pigment { checker color Red }    //色指定
    // }
}
object {
  human
  translate <0, 300, -250>
}
/*object {
  quarterNote
  scale 0.2
  translate <-1, 313, -260>
} */
object {
  whale
  scale 10
  rotate <0, -90, 0>
  translate <-20, 250, 0>
}
/*
#declare i = 0;
#while (i < 10)
  declare j = 0;
  #while (j < 15)
    #declare s = seed(i+j);
    #declare r = rand(s);
    #if(mod(int(rand(s)*10), 3) < 1)
      object {
        building3
        scale 2
        translate <300+i*100, 300+(1-rand(s))*500-i*10, 350-j*100>
      }
    #end #if(mod(int(rand(s)*10), 3) < 2)
      #if(mod(int(rand(s)*10), 3) > 0)
        object {
          building2
          scale <12, 15, 12>
          translate <300+i*100, 200+(1-rand(s))*500-i*10, 350-j*100>
        }
      #end
    #end #if(mod(int(rand(s)*10), 3) < 3)
      #if(mod(int(rand(s)*10), 3) > 1)
        object {
          building
          scale 1.7
          translate <300+i*300, 170+(1-rand(s))*500-i*10, 350-j*100>
        }
      #end
    #end
    #declare j = j + 1;
    #end
  #declare i = i + 1;
#end
*/
union {  // mirror
  object {
    box {
      <-2000, 0, 300>, <2000, 2000, 310>
      finish { reflection 1.0}
    }
  }
  object {
    box {
      <-20000, 90, -10000>, <20000, 100, 10000>
      finish { reflection 1.0}
    }
  }
}

#declare seed1 = seed(12345);
#declare max_flowers = 10;
#declare num_of_flowers = 0; 

#while(num_of_flowers <= max_flowers)
 object{
  blue_flower
  scale 0.3
  rotate<rand(seed1)*360+clock*360 , rand(seed1)*360+clock*360 , rand(seed1)*360+90+clock*360>
  translate < 0 - 100*clock*rand(seed1) , 310 + 80*clock*(rand(seed1)-0.5) , -253 + 100*clock*clock-80*clock*rand(seed1)> 
 }
#declare num_of_flowers = num_of_flowers + 1;
#end


#declare max_flowers = 60;
#declare num_of_flowers = 0;

#while(num_of_flowers <= max_flowers)
 object{
  red_flower
  scale 0.4
  rotate<rand(seed1)*360+clock*360 , rand(seed1)*360+clock*360 , rand(seed1)*360+90+clock*360>
  translate < 0 - 100*clock*rand(seed1) , 310 + 80*clock*(rand(seed1)-0.5) , -253 + 100*clock*clock-80*clock*rand(seed1)> 
 }
#declare num_of_flowers = num_of_flowers + 1;
#end


#declare max_flowers = 10;
#declare num_of_flowers = 0;

#while(num_of_flowers <= max_flowers)
 object{
  yellow_flower
  scale 0.3
  rotate<rand(seed1)*360+clock*360 , rand(seed1)*360+clock*360 , rand(seed1)*360+90+clock*360>
  translate < 0 - 100*clock*rand(seed1) , 310 + 80*clock*(rand(seed1)-0.5) , -253 + 100*clock*clock-80*clock*rand(seed1)> 
 }
#declare num_of_flowers = num_of_flowers + 1;
#end