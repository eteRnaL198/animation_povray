//　クジラのオブジェクト
#include "colors.inc" //色に関するインクルードファイル
#include "shapes.inc" //形状に関するインクルードファイル
#include "metals.inc" //金属に関するインクルードファイル

// camera {       //カメラの設定
//  location <10,15,-55>       //カメラを置く位置
//  look_at <0,0,0>           //レンズで狙う位置
//  angle 70                  //視野角度
// }   

// background{color Black}   //背景の設定

// light_source{ <0,10,-10> color White }    //点光源の設定
// light_source{ <5,0,-10> color White }     //点光源の設定       
                     
#declare whale2 = difference{
  box{
    <-30,-20,-10>,<30,5,5>
    pigment{color SlateBlue}
    }  
  sphere{<10,25,0>,30
    pigment{color SlateBlue}    
  }
  box{<1,10,-15>,<50,-2,10>
    pigment{color SlateBlue}
  }
  box{<-30,-20,-10.3>,<30,-10,10>
    pigment{color White}    
  }
  sphere{<-10,-3,-10>,1
    pigment{color Black}    
  }
}
