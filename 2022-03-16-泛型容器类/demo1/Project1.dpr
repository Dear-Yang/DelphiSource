program Project1;

{$APPTYPE CONSOLE}

{$R *.res}

uses
    System.SysUtils,
    System.Generics.Collections;

{*------------------------------------------------------------------------------
  delphi2010�﷨�ֲ�

  1. ���ͣ�
      �㷺����������

  2. ���ã�
      ��1�������ڳ����е���������ǿ��ת��
      ��2����������ʹ���������͸����

  3. ʹ��
    <T>

  4.���͵�ʹ�ó���
      ��������


-------------------------------------------------------------------------------}

type
    TStringArr = array of string;

    TNumberArr = array of Integer;

    TArrayss<T> = array of T;



    Tstudent<T> = class
    end;

var
    StringArr: TStringArr;
    NumberArr: TNumberArr;
    Arrayss: TArrayss<Integer>;


var
    I: Integer;
    Ss:TArray<string>;

begin
    StringArr := ['aa', 'bb'];
    NumberArr := [11, 22, 33];
    Arrayss := [55, 22, 44];
    for I := Low(Arrayss) to High(Arrayss) do
        writeln(Arrayss[I]);

    Tstudent<string>.Create;

    readln;

end.

