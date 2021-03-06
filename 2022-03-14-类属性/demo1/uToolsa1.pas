unit uToolsa1;

{声明区域}
interface

uses
    Unit1;

var
    Name: string;


type
    TPerson = class
        {字段、域}
    private
        FName: string;
        FAge: Integer;
        {声明一个函数，用于获取字段值}
        function GetAge(): Integer;
        procedure SetAge(FAge: Integer);
    public        
        {属性: property}
        property Name: string read FName write FName;
        {该属性是只读属性}
        property Age: Integer read GetAge write SetAge;
    end;

    TSutdent = class
    public
        procedure Demo1();

    end;

{实现区域}
implementation


{初始化区域}
{ TPerson }

function TPerson.GetAge: Integer;
begin
    Result := Self.FAge;
end;

procedure TPerson.SetAge(FAge: Integer);
begin
    Self.FAge := FAge;
end;

{ TSutdent }

procedure TSutdent.Demo1;
begin
    Writeln(TPerson.FName);
end;

initialization


{销毁区域}
finalization

end.

