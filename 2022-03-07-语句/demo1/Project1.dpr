program Project1;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;
{*------------------------------------------------------------------------------
  1.���ʽ
      ������ͺϷ���ʶ����ɵ�����
      ���֣� ����������������

  2.��� ��
      �ؼ��ֺͲ���ָ�����
      ����
          ѡ�����
              if

              case

          ѭ�����
-------------------------------------------------------------------------------}
begin
  //if����ʽ

  //1.��׼��ʽ
  if 1<2 then
  begin
    //���ж���������ʱ��ִ�еĴ���
    Writeln('��һ����');
  end;

  //2.��д��ʽ��ǰ��ֻ��Ҫִ��һ�д���
  if 1<2 then
      Writeln('��һ����');

  if True then
  begin
     Writeln('��һ����');
  end;


  //�������
  if True then
  begin
    Writeln('��һ����:java');
  end
  else
  begin
    Writeln('��һ����:Python');
  end;


  //��д
  if True then
      Writeln('��һ����:java')
  else
      Writeln('��һ���ԣ�Python');


  Readln;
end.
