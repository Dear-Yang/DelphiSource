program Project1;

{$APPTYPE CONSOLE}

{$R *.res}


{*------------------------------------------------------------------------------

  ��̬��
        ��װ���̳С���̬
        һ�������Զ�����̬���ڣ����磺������-���ࡢè��Ĺ�ϵ

        ǰ�᣺
          ������߱��̳У���������ʵ�������ֹ�ϵ��һ��

        ���֣�
            ������ջ�ָ�����������

  ���ã�
      ��ߴ����ظ��ԣ��������ǶԴ�����н��� �������֮�䲻Ҫ����ֱ�ӵ�������ϵ��
      ��ϣ�


-------------------------------------------------------------------------------}

uses
    System.SysUtils,
    Unit1 in 'Unit1.pas';

 //����ת�ͣ���������������ת���ɸ������������
procedure ShowAnimalRun(Aniaml: TAnimal);
var
    Dog: TDog;
begin
  //����ʱ����������
    Aniaml.Run;
    if Assigned(Dog) then begin
        Writeln('�ǿ�ֵ');
    end;
    //����ת�ͣ��Ѹ�����������ת�����������������
    //Writeln(Aniaml.ClassName);

    if Aniaml.ClassName = 'TDog' then begin

        //ǿ������ת��
        Dog := TDog(Aniaml);
        Dog.LookDoor;
    end;

    //�ж�һ�������Ƿ��һ�����ͼ���
    if Aniaml is TDog then begin
        Dog := Aniaml as TDog;

        Dog.LookDoor;
    end;
    Writeln('����ת���ɹ�');

end;

//var
//    Aniaml: TAnimal;
//    ColorDog: IColor;



begin
    //Aniaml := TCat.Create;    //����ָ�������һ������
    //ColorDog := tdog.Create;  //�ӿڲ���ֱ�ӵ��ö��󣬵����Ե���ʵ�ֶ���
    //Aniaml.Run;
    ShowAnimalRun(TDog.Create);
    Readln;
end.

