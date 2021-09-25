--- 存储过程 IN 参数（一）---

create procedure GetTeacherByCountry(in countryName varchar(255))
begin
  select * from teachers where country = countryName;
end;
call GetTeacherByCountry('CN');
