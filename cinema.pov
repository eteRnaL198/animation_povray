#include "shapes.inc" //形状に関するインクルードファイル
#include "colors.inc"
#include "shapes.inc"
#include "stones.inc"
#include "textures.inc"
#include "skies.inc"

#include "human.pov"
#include "quaterNote.pov"
#include "tuplet.pov"
#include "building.pov"
#include "building2.pov"
#include "building3.pov"
#include "flower.pov"
#include "whale.pov"

camera {    //カメラの設定
  //location<-15, 310, -270>    //カメラを置く位置
  //look_at<450, 310, 100>    //カメラで狙う位置
  //angle 80    //視野角度
  #declare a = -270-clock*10 +100-clock*10;
  #declare b = 450 -15-((120-15)*clock/100);
  location<-15-((120-15)*clock/100) +0.325*a*a/(a*a+b*b), 310, -270-clock*10 -0.325*b*b/(a*a+b*b)>    //カメラを置く位置
  look_at<450, 310, 100-clock*10>    //カメラで狙う位置
  angle 80    //視野角度

  // location<-120, 310, -270>    //カメラを置く位置
  // look_at<450, 310, 30>    //カメラで狙う位置
  // angle 80    //視野角度
}

// background{ color BrightGold }   //背景の設定
background{ color Coral }   //背景の設定
light_source{ <0, 400, -500> color Gray } //点光源の設定
light_source{ <0, 1000, -200> color Gray } //点光源の設定
light_source{ <-500, 1000, -100> color Gray } //点光源の設定

object {
  human
  translate <0, 300, -250-clock*10>
}

object {
  whale
  scale 2.5
  translate <0, 140, -265-clock*10>
}

union {  // mirror
  object {
    box {
      <-2000, 0, 170>, <2000, 2000, 200>
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

#declare i = 0;
#while (i < 10)
  #if(-255-(clock)*2+i*5 < -255-clock*10)
    #if(mod(i, 3) < 1)
      object {
        tuplet
        scale 0.9
        translate <-1, 312+sin(clock+i)*2, -255-(clock)*2+i*5-clock*10>
      }
    #else
      object {
        quarterNote
        scale 0.9
        translate <-1, 312+sin(clock+i)*2, -255-(clock)*2+i*5-clock*10>
      }
    #end
  #end
  #declare i = i + 1;
#end

#declare i = 0;
#while (i < 10)
  #declare j = 0;
  #while (j < 15)
    #declare k = 0;
    #while (k < 3)
      #declare s = seed(i+j+k);
      #declare r = rand(s);

      #if(mod(int(rand(s)*10), 3) < 1)
        object {
          building3
          scale 2
          translate <300+i*100, k*300+(1-rand(s))*500-i*10, 350-j*100>
        }
      #end #if(mod(int(rand(s)*10), 3) < 2)
        #if(mod(int(rand(s)*10), 3) > 0)
          object {
            building2
            scale <10, 13, 10>
            translate <300+i*100, k*300+(1-rand(s))*500-i*10, 350-j*100>
          }
        #end
      #end #if(mod(int(rand(s)*10), 3) < 3)
        #if(mod(int(rand(s)*10), 3) > 1)
          object {
            building
            scale 1.5
            translate <300+i*300, k*300+(1-rand(s))*500-i*10, 350-j*100>
          }
        #end
      #end
      #declare k = k + 1;
    #end
    #declare j = j + 1;
    #end

  #declare i = i + 1;
#end


#declare i = 0; 
#while(i <= 500)
  #declare s = seed(i);
  object{
    red_flower
    scale ln(3+clock/50)/8
    rotate<rand(s)*360+clock/50*360 , rand(s)*360+clock/50*360 , rand(s)*360+90+clock/50*360>
    translate < 0 - 40*clock*rand(s) , 310 + 100*clock/50*(rand(s)-0.2) , -253 + 100*clock/10*clock/50+80*clock/50*(0.7-rand(s))*30-clock*10> 
  }
  #if(mod(i, 6) < 1)
    object{
      blue_flower
      scale ln(3+clock/50)/8
      rotate<rand(s)*360+clock/50*360 , rand(s)*360+clock/50*360 , rand(s)*360+90+clock/50*360>
      translate < 0 - 40*clock*rand(s) , 310 + 100*clock/50*(rand(s)-0.2) , -253 + 100*clock/10*clock/50+80*clock/50*(0.7-rand(s))*30-clock*10> 
    }
    object{
      yellow_flower
      scale ln(3+clock/50)/8
      rotate<rand(s)*360+clock/50*360 , rand(s)*360+clock/50*360 , rand(s)*360+90+clock/50*360>
      translate < 0 - 40*clock*rand(s) , 310 + 100*clock/50*(rand(s)-0.2) , -253 + 100*clock/10*clock/50-80*clock/50*(0.7-rand(s))*30-clock*10> 
    }
  #end
  #declare i = i + 1;
#end