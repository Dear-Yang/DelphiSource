unit DaoUnit;

interface

uses
    System.Generics.Collections, Unit2, Winapi.Messages, Vcl.Dialogs;

type
    TDao = class
    public
         //添加，该方法调用时不需要创建对象
        class procedure Add(Student: TStudent);

        //查询
        class function ListStu(): TDictionary<string, TStudent>;

        //清空
        class procedure clear();
    end;

implementation
{初始化容器类}

var                        {TKey,Tvalue}
    Students: TDictionary<string, TStudent>;


{ TDao }

class procedure TDao.Add(Student: TStudent);
begin
    if not Students.ContainsKey(Student.Id) then begin
        Students.Add(Student.Id, Student);
    end
    else begin
        ShowMessage('该信息已经存在');
    end;

end;

class procedure TDao.clear;
begin
Students.Clear;
end;

class function TDao.ListStu: TDictionary<string, TStudent>;
begin

    Result := Students;
end;

initialization
    Students := TDictionary<string, TStudent>.Create();

end.

