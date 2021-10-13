#include "colors.inc"
#include "shapes.inc"
#include "stones.inc"
#include "textures.inc"

camera {    //カメラの設定
  // location<-20, 10, -10>    //カメラを置く位置
  // look_at<20, 10, 10>    //カメラで狙う位置

  // location<0, 10, -30>    //カメラを置く位置
  // look_at<0, 10, 50>    //カメラで狙う位置

  location<20, 10, -10>    //カメラを置く位置
  look_at<-20, 10, 10>    //カメラで狙う位置

  angle 70    //視野角度
}

background{ color SummerSky }   //背景の設定

light_source{ <0, 20, -20> color White } //点光源の設定
light_source{ <0, 3, -50> color White } //点光源の設定

object {    //オブジェクトの設定
    Plane_XZ    //XZ平面
    texture{    //テクスチャ指定
        pigment { checker color White color White }    //色指定
    }
}

#declare human = union {
  difference {
    sphere {  //hear
      <0, 15, 0>, 2.3
      pigment { color NeonPink }
    }
    box {
      <-10, 15, -10>, <10, 0, 0>
      pigment { color NeonPink }
    }
  }
  cone {  //hear
    <0, 14, 2>, 0.7
    <0, 8+4*sin(clock), 8>, 3
    pigment { color NeonPink }
  }
  sphere {  //head
    <0, 15, 0>, 2
    pigment { color Flesh }
  }
  cone {  //nose
    <0, 14.5, -1.9>, 0.1
    <0, 14.1, -1.9>, 0.2
    pigment { color Flesh }
  }
  superellipsoid {  //arm left
    <0.25, 0.25>
    pigment { color Red }
    scale <0.5, 3, 0.5>
    rotate <0, -70, -45>
    translate <3, 12.5, 1.3>
  }
  superellipsoid {  //arm right
    <0.25, 0.25>
    pigment{ color Red }
    scale <0.5, 3, 0.5>
    rotate <-45, 0, -110>
    translate <-3, 12.5, 1.3>
  }
  superellipsoid {  //chest
    <0.6, 0.5>
    pigment{ color Flesh }
    scale <1.5, 1, 1.5>
    translate <0, 12, 0>
  }
  superellipsoid {  //dress up
    <0.7, 0.7>
    pigment{ color Red }
    scale <1.7, 3, 1.7>
    translate <0, 10, 0>
  }
  cone {  //doress bottom inner
    <0, 9, 0>, 2
    <0, 4, 0>, 5
    pigment { checker color Red, color Red * 0.4 } 
  }
  difference {  //doress bottom outer
    cone { 
      <0, 9, 0>, 2.3
      <0, 1, 0>, 7
      open
      pigment { color Red }
    }
    box {
      <-10, 0, -10>, <10, 20, 1>
      pigment { color Red }
    }
    cone {
      <0, 9, 0>, 1
      <0, 1, 0>, 6.5
      pigment { color Red }
    }
  }
  cylinder {  //leg left
    <-1.5, 0, 0>, <-1.5, 5, 0>, 0.5 // center of one end, center of other end, radius
    pigment { color Flesh }
  }
  cylinder {  //leg right
    <1.5, 0, 0>, <1.5, 5, 0>, 0.5 // center of one end, center of other end, radius
    pigment { color Flesh }
  }
}

object {
  human
}

