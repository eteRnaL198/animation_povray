#include"colors.inc"    //�F�Ɋւ���C���N���[�h�t�@�C��
#include"shapes.inc"    //�`��Ɋւ���C���N���[�h�t�@�C��
#include"metals.inc"    //�����Ɋւ���C���N���[�h�t�@�C��

camera {    //�J�����̐ݒ�
    location<20, 30, -40>    //�J������u���ʒu
    look_at<0, 0, 0>    //�����Y�ő_���ʒu
    angle 30    //����p�x
}

background{ color SummerSky }   //�w�i�̐ݒ�

//light_source{ <0, 10, -10> color White }    //�_�����̐ݒ�
light_source{ <10, 10, 10> color White } //�_�����̐ݒ�

object {    //�I�u�W�F�N�g�̐ݒ�
    Plane_XZ    //XZ����
    texture{
        pigment { checker color Gray color Gray }    //�F�ݒ�
    }
}

#declare MyCounter = -5;    //�ϐ��錾
union{
#while(MyCounter <= 5)  //���[�v�J�n
    object {
        Sphere
        texture{T_Silver_3D}
        translate<2*clock*0.5+1, abs(3*clock*0.5+2), 4*clock*0.5+3> //���s�ړ�
    }
#declare MyCounter = MyCounter + 0.5;   //�J�E���^�C���N�������g
#end    //���[�v�I���    
}
