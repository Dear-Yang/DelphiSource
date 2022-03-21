unit Unit2;

interface

type
    TStudent = class
    private
        Fname: string;
        FAge: Integer;
    public
        property Name: string read Fname write Fname;
        property Age: Integer read FAge write FAge;
        constructor Create; overload;
        constructor Create(FName: string; FAge: Integer); overload;
    end;

implementation

{ TStudent }

constructor TStudent.Create;
begin

end;

constructor TStudent.Create(FName: string; FAge: Integer);
begin
    Self.Fname := FName;
    Self.FAge := FAge;
end;

end.

