--- 存储过程变量（一）---
create procedure GetTotalTeacher()
begin
  declare  totalTeacher int default 0;
  set totalTeacher = (select count(*) from teachers);
  select totalTeacher;
end
