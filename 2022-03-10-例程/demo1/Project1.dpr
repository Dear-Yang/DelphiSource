program Project1;

{$APPTYPE CONSOLE}

{$R *.res}

uses
    System.SysUtils;

{
���̣�
    ��ĳһ�����ܵĴ���Ƭ���з�װ
    1.����:
        ��1������    ��2������
        ���̺ͺ��������������޷���ֵ

    2.���ã�
        ��1�����������ͻ����
        ��2����ߴ����ظ�������
        ��3����ߴ����ά����

    3.ʹ�ã�
        ��1������
        // ����
        procedure Demo1();
        begin
        end;

        // ����
        function Demo2(): Integer;
        begin

        end;

        ����
}

{��ֵ}
procedure Add(A: Integer; B: Integer);
begin
    Writeln(A, B);
    A := 101;
end;

{���ݲ����������̶�}
// const ������ֻ���Ի�ȡֵ���޷��ı�ֵ
procedure Demo1(const Number: array of Integer);
begin

end;

{*------------------------------------------------------------------------------
  �����Ķ���

  @return
-------------------------------------------------------------------------------}
function Demo2(var A: Integer; B: Integer): Integer;
begin
    Writeln(A, B);
    A := 101;
    Result := 0;
end;


{���ò���Ĭ��ֵ}
procedure Demo3(a: Integer; b: Integer = 100);
begin
    Writeln(a, ',', b);
end;

var
    x: Integer;
    y: Integer;


const
    //Age = 100;
    Age: Integer = 100; //����������ֵ




begin
    x := 300;
    y := 3;

    Demo2(x, y);
    Writeln('------', x);

    Add(x, y);
    Writeln('***********', x);
    Readln;

end.

