#include "colors.inc"
#include "shapes.inc"
#include "stones.inc"
#include "textures.inc"

camera {    //カメラの設定
  location<0, 10, -20>    //カメラを置く位置
  // location<-20, 10, -10>    //カメラを置く位置
  look_at<0, 10, 0>    //カメラで狙う位置
  angle 70    //視野角度
}

background{ color SummerSky }   //背景の設定

light_source{ <0, 20, -20> color White } //点光源の設定
// light_source{ <10, 8, 10> color White } //点光源の設定

object {    //オブジェクトの設定
    Plane_XZ    //XZ平面
    texture{    //テクスチャ指定
        pigment { checker color White color White }    //色指定
    }
}

#declare quarterNote = union {
  sphere { 
    <10, 10, 10>, 3
    pigment { color Black }
    scale <1, 0.8, 1>
  }
  cylinder {
    <12, 8, 10>, <12, 18, 10>, 0.6
  }
}

object {
  quarterNote
}