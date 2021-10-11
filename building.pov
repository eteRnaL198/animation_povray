#include "colors.inc"
#include "shapes.inc"
#include "stones.inc"
#include "textures.inc"

// camera {    //カメラの設定
//   location<-60, 70, -40>    //カメラを置く位置
//   look_at<100, 70, 40>    //カメラで狙う位置
//   angle 120    //視野角度
// }

// background{ color SummerSky }   //背景の設定

// light_source{ <0, 100, -100> color White } //点光源の設定

// object {    //オブジェクトの設定
//     Plane_XZ    //XZ平面
//     texture{    //テクスチャ指定
//         pigment { checker color White color White }    //色指定
//     }
// }

#declare building = union {
  box {
    <0, 0, 0>, <50, 150+5, 50>
    pigment { color NavyBlue }
  }

  #declare col = 0;
  #while (col < 6)
    #declare row = 0;
    #while (row < 3)
      box {
        <0, 0, 0>, <10, 20, 10>
        pigment { color Yellow }
        translate <5+15*row, 5+25*col, -1>
      }
    #declare row = row + 1;
    #end
  #declare col = col + 1;
  #end

  #declare col = 0;
  #while (col < 6)
    #declare row = 0;
    #while (row < 3)
      box {
        <0, 0, 0>, <10, 20, 10>
        pigment { color Yellow }
        translate <41, 5+25*col, 5+15*row>
      }
    #declare row = row + 1;
    #end
  #declare col = col + 1;
  #end

  #declare col = 0;
  #while (col < 6)
    #declare row = 0;
    #while (row < 3)
      box {
        <0, 0, 0>, <10, 20, 10>
        pigment { color Yellow }
        translate <-1, 5+25*col, 5+15*row>
      }
    #declare row = row + 1;
    #end
  #declare col = col + 1;
  #end

  #declare col = 0;
  #while (col < 6)
    #declare row = 0;
    #while (row < 3)
      box {
        <0, 0, 0>, <10, 20, 10>
        pigment { color Yellow }
        translate <5+15*row, 5+25*col, 41>
      }
    #declare row = row + 1;
    #end
  #declare col = col + 1;
  #end
}

// object {
//   building
// }