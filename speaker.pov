#include "colors.inc"
#include "shapes.inc"
#include "stones.inc"
#include "textures.inc"

// camera {    //カメラの設定
//   location<0, 10, -40>    //カメラを置く位置
//   look_at<0, 20, 40>    //カメラで狙う位置
//   angle 120    //視野角度
// }

background{ color SummerSky }   //背景の設定

light_source{ <0, 50, -100> color White } //点光源の設定

object {    //オブジェクトの設定
    Plane_XZ    //XZ平面
    texture{    //テクスチャ指定
        pigment { checker color White color White }    //色指定
    }
}

#declare building = union {
  difference {
    cone {
      <0, 15, -20>, 10
      <0, 5, 10>, 3
      pigment { color Gray25 }
    }
    sphere {
      <0, 15, -20>, 9
      pigment { color White }
    }
  }
  sphere {
    <0, 12, -11>, 4
    pigment { color Black }
  }
}

object {
  building
}