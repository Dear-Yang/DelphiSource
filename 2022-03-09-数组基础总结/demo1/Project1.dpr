program Project1;

{$APPTYPE CONSOLE}

{$R *.res}

uses
    System.SysUtils;

{定义记录类型}
type
  {定义一个学生的记录类型,c结构体}
    TStudent = record
        Id: string;   //学号
        Name: string;   //姓名

    end;

    {数组:存储信息}
    TStudentList = array of TStudent;

var       //定义变量
    {真正存储学生信息的数组}
    StudentList: TStudentList;




{1.添加一条学生信息}
procedure AddStudent();
var
    Student: TStudent;
    ArrayLength: Integer;
    Name: string;
    {生成一个唯一标识}
    Uuid: TGUID;
begin


    {获取学生信息列表中的信息个数}
    ArrayLength := Length(StudentList);

    Writeln('您选择了添加功能,请输入学生姓名：');
    Readln(Name);

    {生成GUID唯一}
    CreateGUID(Uuid);
    Student.Id := GUIDToString(Uuid);

    {**已更改：将用户输入的学生姓名赋值给记录类型的Name变量}
    Student.Name := Name;

    {将学生信息保存到数组中，保存}
    // StudentList[ArrayLength - 1] := Student;
    Insert(Student, StudentList, ArrayLength - 1);

    {如果添加之后的元素个数大于添加之前的，则认为添加成功}
    if Length(StudentList) > ArrayLength then begin
        Writeln('添加成功！');
    end
    else begin
        Writeln('添加失败！');
    end;

end;


{3.查询所有信息}
procedure ListStudent();
var
    Student: TStudent;
begin
    Writeln('您选择了查询功能，信息列表如下：');
    for Student in StudentList do begin
        {with语句}
        with Student do begin
            Writeln('编号：', Id, #$09, '姓名：', Name);
        end;
    end;

end;


{2.删除学生信息}
procedure DeleteStudent();
var
    Student: TStudent;
    UserName: string;
    IsTrue: string;
    Indexs: Integer;
    ArrayLength: Integer;

begin
    Writeln('您选择了删除功能，请输入要删除的学生姓名：');
    Readln(UserName);
    Indexs := 0;
    {获取删除之前的数据总数}
    ArrayLength := Length(StudentList);
     {遍历数组中的所有数据}
    for Student in StudentList do begin
        with Student do begin
            if (UserName = Name) then begin
                {删除操作一般需要慎用，需二次确认}
                Writeln('您确认要删除【', Id, Name, '】的信息吗？ Y/N');
                Readln(IsTrue);
                if IsTrue = 'Y' then begin
                    Delete(StudentList, Indexs, 1);
                    {删除之后，比对元素总数，判断是否删除成功}
                    if (Length(StudentList) < ArrayLength) then begin
                        Writeln('删除成功！');
                    end
                    else begin
                        Writeln('删除失败！');
                    end;

                end;

                Exit;

            end;

        end;
        Inc(Indexs);
    end;

end;

procedure UpdateStudent();
var
    Uname: string;
    I: Integer;
    IsExist: Boolean;
begin
    {默认不存在这条信息}
    IsExist := False;
    Writeln('您选择了修改功能，请输入要修改的学生姓名：');
    Readln(Uname);
  {遍历数组，需要修改的数据}
    for I := Low(StudentList) to High(StudentList) do begin
        with StudentList[I] do begin
            if (Name = Uname) then begin
                Writeln('请输入新的姓名：');
                {重新给Uname变量赋值}
                Readln(Uname);
                Name := Uname;
                IsExist := True;
                Break;
            end;

        end;
    end;

    if not IsExist then begin
        Writeln('修改失败，查无此人');
    end;

end;


{选择菜单}
procedure ShowMenu();
begin
    Writeln('');
    Writeln('*************学生信息管理系统*************');
    Writeln('1、添加信息');
    Writeln('2、删除信息');
    Writeln('3、查询信息');
    Writeln('4、修改信息');
    Writeln('');
    Writeln('******************************************');
end;

{用户功能选择}
procedure userChoose();
var
    UserChooseIndex: Integer;
begin
    Writeln('请选择您要使用的功能：');
    {获取用户输入的编号}
    Readln(UserChooseIndex);
    {判断用户输入的编号是多少}
    case UserChooseIndex of
        1:
            begin
                AddStudent();
            end;
        2:
            begin
                DeleteStudent();
            end;
        3:
            begin
                ListStudent();
            end;
        4:
            begin
                UpdateStudent();
            end;
    else
        begin
            Writeln('请选择正确的功能编号！');
        end;

    end;
end;

begin
    {初始化学生信息列表}
    StudentList := [];
    {无限循环}
    while True do begin
        ShowMenu();
        userChoose();
    end;

    Readln;
end.

