---  存储过程 IN 参数（二） ---

create procedure GetTeacherByAge(in teacherAge int)
begin
  select * from teachers where age = teacherAge;
end;

call GetTeacherByAge(21);
