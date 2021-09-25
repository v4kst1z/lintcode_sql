---  创建批量插入数据的存储过程 ---

create procedure addTeachers()
begin
  declare t_name varchar(255);
  declare t_email varchar(255);
  declare idx int default 1;
  declare t_age int;
  while idx <= 30000 do
    set t_age = 26 + (idx % 20);
    set t_name = concat('teacher', idx);
    set t_email = concat(t_name, '@chapter.com');
	  insert into teachers values (idx, t_name, t_email, t_age, '');
	  set idx = idx + 1;
  end while;
end;
