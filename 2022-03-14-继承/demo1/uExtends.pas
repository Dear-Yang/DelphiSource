unit uExtends;

interface

type
    {����һ����}
    TAnimal = class
    private
        FTizhong: Integer;
    protected
        Name: string;

    public         {����һ�����췽��}
        {���أ���������ͬ�������б�ͬ}
        constructor Create(FTizhong: Integer);

         {��������}
        property Tizhong: Integer read FTizhong write FTizhong;

        {����һ���鷽��}
        procedure GetName(); virtual;

    end;

    {����һ������ �� ��}
    TDog = class(TAnimal)
    public
        constructor Create();
        {��д�����Ǹ����е��鷽��}
        procedure GetName(); override;
    end;

implementation

{ TAnimal }

constructor TAnimal.Create(FTizhong: Integer);
begin
    Self.FTizhong := FTizhong;
end;

procedure TAnimal.GetName;
begin
    Writeln('������ķ���');
end;



{ TDog }

constructor TDog.Create;
begin
    Writeln('����');
    //ֱ�ӵ��ø��෽��
    inherited Create(1001);
end;

procedure TDog.GetName;
begin
    inherited;
    Writeln('TDog.GetName�ķ���')

end;

end.

