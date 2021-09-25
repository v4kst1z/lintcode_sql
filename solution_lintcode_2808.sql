--- 存储过程 OUT 参数（一） ---

create procedure GetTeacherByCountry(in teacherCountry varchar(255), out total int)
begin
  select count(name) into total from teachers where country = teacherCountry;
end;

call GetTeacherByCountry('CN',@total);
select @total;
