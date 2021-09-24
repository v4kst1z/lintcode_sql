--- 存储过程 INOUT 参数（一）---

create procedure UpdateTeacherAge(inout age int, in inc int)
begin
  set age = age + inc;
  update teachers set age=age where name='Linghu Chong';
end
