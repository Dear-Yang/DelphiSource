program Project1;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;
{
 1.����
    �������С�Ĵ洢��Ԫ���ռ䣩�����Ŀռ��С����������ʱ���������;���

    1��������
       var ���������������ͣ�

    2����ʼ�����������ĵ�һ�θ�ֵ
      ��ֵ�� ��ֵ:= ������ֵ��

  2.�����
      ����������� + - * /������������  div(����)  mod(��ģ,������)
      �Ƚ������
      ���������

  3.���ʽ

}

var
    Age: Integer;
var
    Name:string = 'С��';

begin
    //��ʼ��
    Age := 0;

    //д��������ָ̨������
    Writeln(6/4);
    Writeln(6 div 3);
    Writeln(6 mod 4);
    //���������
    Writeln(not (1 <> 2));
    //���ȼ�
    //and; ��һ��false,ȫfalse
    Writeln((1<2)and (2<3));
    //or;  ��һ��true,ȫtrue
    Writeln((1>2)or (2<3));
    //xor; ��ͬΪfals;��ͬΪtrue
    Writeln((1<2)xor (2>3));
    Writeln('����ǣ�',1+2);


    //�ӿ���̨����һ������
    Readln;

end.
