program Project2;

{$APPTYPE CONSOLE}

{$R *.res}

uses
    System.SysUtils;

{
   ��1-100������ 1+2+3+4...+100=5050
   i =1   1+0=1
   i=2    2+1=3
   i=3    3+3=6
   i=4    4+6=10
}

procedure Sum();
var
    i, SumNum: Integer;
begin
    SumNum := 0;
    for i := 1 to 100 do begin
        SumNum := i + SumNum;
    end;
    Writeln(SumNum);
end;


{
 ��ӡ1-100������7�ı�����������  ���� �� �ܺ�
}

procedure Counter();
var
    i: Integer;
    {���}
    SumNum: Integer;
    {�������}
    Amount: Integer;
begin
    SumNum := 0;
    Amount := 0;

    for i := 1 to 100 do begin
        if (i mod 7) = 0 then begin
            SumNum := i + SumNum;
            Amount := Amount + 1;
        end;
    end;
    Writeln(SumNum, ',', Amount);
end;


{
����ˮ�ɻ�����3λ���������λ�ϵ����������͵���������
���磺 153 = 1*1*1 + 3*3*3 + 5*5*5}

procedure NarcissisticNumber();
var
    NarcissisticNum: Integer;
    {��λ��}
    Hundreds: Integer;
    {ʮλ��}
    TenPeople: Integer;
    {��λ��}
    OnePlace: Integer;

begin

    for NarcissisticNum := 100 to 999 do begin
        {NarcissisticNum := 153;  // 253/100 2...53/10 5...3}
        Hundreds := NarcissisticNum div 100;
        TenPeople := (NarcissisticNum mod 100) div 10;
        OnePlace := (NarcissisticNum mod 100) mod 10;
        {Writeln(Hundreds, ',', TenPeople, ',', OnePlace);}

        if (Hundreds * Hundreds * Hundreds + TenPeople * TenPeople * TenPeople + OnePlace * OnePlace * OnePlace) = NarcissisticNum then begin
            Writeln(NarcissisticNum);
        end;

    end;

end;


{
 �˷���
}

procedure MultiplicationTable();
var
    {��}
    row: Integer;
    {��}
    col: Integer;
begin
    for row := 1 to 9 do begin
        for col := 1 to row do begin
            // #$09 �Ʊ��
            Write(col, 'X', row, '=', (row * col),#$09);
        end;
        Writeln('');
    end;

end;

begin
    MultiplicationTable();
    Readln;
end.

