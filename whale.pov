//　クジラのオブジェクト
#include "colors.inc" //色に関するインクルードファイル
#include "shapes.inc" //形状に関するインクルードファイル

camera {       //カメラの設定
location <-200, 50,10>       //カメラを置く位置
look_at <200,50,10>           //レンズで狙う位置
// location <-200, 160,10>       //カメラを置く位置
// look_at <200,50,10>           //レンズで狙う位置
angle 70                  //視野角度
}   

background{color Black}   //背景の設定

light_source{ <0,500,-100> color White }    //点光源の設定
light_source{ <5,0,-100> color White }     //点光源の設定       

background{ color SummerSky }   //背景の設定

object {    //オブジェクトの設定
    Plane_XZ    //XZ平面
    texture{    //テクスチャ指定
        pigment { checker color White color White }    //色指定
    }
}
                     
#declare whale = union { 
    difference {
        cone {
            <0, 50, 100>, 60
            <0, 70, -20>, 15
            pigment { color SlateBlue } 
            scale <1, 0.35, 1>
            translate <0, 33, 0>
        }
        difference {
            cone {
                <0, 50, 100>, 90
                <0, 70, -20>, 20
                pigment { color SlateBlue }
                scale <1, 0.6, 1>
                translate <0, 18, 0>
            }
            box {
                <-100, 300, -25>, <100, 55, 120>                
            }
        }
    }

    difference {
        cone {
            <0, 50, 100>, 60
            <0, 70, -20>, 20
            pigment { color Gray }
            scale <1, 0.6, 1>
            translate <0, 18, 0>
        }
        box {
            <-100, 300, -25>, <100, 55, 120>                
            pigment { color Gray }
        }
    }
    sphere {    //eye
    <-30,58,30>,2
    pigment{color Black}    
    }                     
}    

object{
 whale
}         

                              