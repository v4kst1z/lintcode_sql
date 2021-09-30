create trigger before_courses_update before update on courses for each row 
begin
  declare t_id int default 0;
  select count(*) into t_id from teachers where id = new.teacher_id;
  if t_id = 0 then 
    set new.teacher_id = old.teacher_id;
  end if;
end;
