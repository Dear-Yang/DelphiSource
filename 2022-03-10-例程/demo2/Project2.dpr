program Project2;

{$APPTYPE CONSOLE}

{$R *.res}

uses
    System.SysUtils;

{1.返回值:通过result}
function Add(Number1: Integer; Number2: Integer): Integer; overload;
begin
    Result := Number1 + Number2;
    Exit;
    Writeln('*************');
end;



{函数重载：使用overload关键字标识，函数名相同，参数列表不同}
function Add(Num1: Double; Num2: Double): Double; overload;
begin
    Result := Num1 + Num2;
    Exit;
end;

function DivFun(): Integer; forward;
{2.通过引用获取运算结果}

function Sub(Num1: Integer; Num2: Integer; var sum: Integer): Integer;
begin
    DivFun();
    sum := Num1 - Num2;
    Exit;
end;

function DivFun(): Integer;
begin

end;

{3.返回值 out}
function Mul(Num1: Integer; Num2: Integer; out sum: Integer): Integer;
begin
    sum := Num1 * Num2;
    Exit;
end;


{4.返回值：通过函数名称}
function GetResultByFunNname(): Integer;
begin
    GetResultByFunNname := 1 + 2;
end;

var
    sum: Integer;


begin
    //Mul(300, 200, sum);
    //sum := Add(100, 200);
    //Writeln(sum);
    //Writeln(GetResultByFunNname);
    Writeln(Add(100.3, 200));
    Readln;
end.

