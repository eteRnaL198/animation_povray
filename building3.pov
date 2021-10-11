#include "colors.inc" //�F�Ɋւ���C���N���[�h�t�@�C��
#include "shapes.inc" //�`��Ɋւ���C���N���[�h�t�@�C��
#include "metals.inc" //�����Ɋւ���C���N���[�h�t�@�C��

camera {       //�J�����̐ݒ�
 location <10,15,-55>       //�J������u���ʒu
 look_at <0,0,0>           //�����Y�ő_���ʒu
 angle 70                  //����p�x
}   

background{color SummerSky}   //�w�i�̐ݒ�  

light_source{ <0,10,-10> color White }    //�_�����̐ݒ�
light_source{ <5,0,-10> color White }     //�_�����̐ݒ�

#declare building3 = union {
 box{<0,10,0>,<10,-12,7>
 pigment{color Gray15}
 scale 2
 }

 box{<2,5,0>,<5,8,-0.1>
 pigment{color Orange}
 scale 1.5
 }
 box{<8,5,0>,<11,8,0>
 pigment{color DimGray}
 scale 1.5
 }
 box{<8,2,0>,<11,-1,0>
 pigment{color DimGray}
 scale 1.5
 }
 box{<8,-4,0>,<11,-7,0>
 pigment{color DimGray}
 scale 1.5
 }
 box{<8,-10,0>,<11,-13,-0.1>
 pigment{color DimGray}
 scale 1.5
 }
 box{<2,2,0>,<5,-1,0>
 pigment{color Orange}
 scale 1.5
 }
 box{<2,-4,0>,<5,-7,0>
 pigment{color Orange}
 scale 1.5
 }
 box{<2,-10,0>,<5,-13,0>
 pigment{color Orange}
 scale 1.5
 }
}