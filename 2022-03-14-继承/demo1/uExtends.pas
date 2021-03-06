unit uExtends;

interface

type
    {定义一个类}
    TAnimal = class
    private
        FTizhong: Integer;
    protected
        Name: string;

    public         {定义一个构造方法}
        {重载：方法名相同，参数列表不同}
        constructor Create(FTizhong: Integer);

         {定义属性}
        property Tizhong: Integer read FTizhong write FTizhong;

        {声明一个虚方法}
        procedure GetName(); virtual;

    end;

    {定义一个派生 狗 类}
    TDog = class(TAnimal)
    public
        constructor Create();
        {重写、覆盖父类中的虚方法}
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
    Writeln('动物类的方法');
end;



{ TDog }

constructor TDog.Create;
begin
    Writeln('狗类');
    //直接调用父类方法
    inherited Create(1001);
end;

procedure TDog.GetName;
begin
    inherited;
    Writeln('TDog.GetName的方法')

end;

end.

