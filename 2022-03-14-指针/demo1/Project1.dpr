program Project1;

{$APPTYPE CONSOLE}

{$R *.res}

uses
    System.SysUtils;

{*------------------------------------------------------------------------------
  1.ָ�룺
      һ���洢���ڴ��ַ�ı���

  2.ָ�����ã�
      Ч�ʸ�

  3.ָ��ʹ��
      ����ָ��
            ������ȷ����������

      ������ָ��
            û���������ͣ�����ָ���κε�ַ

      @   ��ȡ��ַ
      ^   ����ָ��


-------------------------------------------------------------------------------}

type
    {����һ���������͵�ָ��}
    TFuncationParameter = function(const value: Integer): string;

//����
function One(const value: Integer): string;
begin
    Result := IntToStr(value);
end;

{����ָ�������ʹ��}
function DynamicFunction(f: TFuncationParameter; const value: Integer): string;
begin
    Result := f(value);
end;

var
    {�����ͱ���}
    i: Integer;


var
    {����һ��֤�����͵�ָ��}
    PInt: ^Integer;

    //����ϵͳ��װ�õ�����ָ��
    pint2: PInteger;
    //������ָ��
    Void: Pointer;


begin
    i := 100;            {����ת16�����ַ���}
    Writeln(Integer(@i).ToHexString);
    // 004258A4
    PInt := Pointer($004258A4);
    Writeln(PInt^);

    //��ʼ���������ڴ�ռ�
    New(pint2);
    pint2^ := 100;
    Writeln(Integer(@pint2).ToHexString);
    //�ͷ�
    Dispose(pint2);
     //ͨ�����ַ�ʽ�ܹ�����һ��ָ����С�Ŀռ��ָ��
    GetMem(Void, 1024);
    //�ͷ�
    FreeMem(Void);

    //PInt := @i;
    //i := 100;

    DynamicFunction(One,100);
    Readln;
end.

