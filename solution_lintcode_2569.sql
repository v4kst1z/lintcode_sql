create trigger before_courses_insert before insert on courses for each row 
begin
  declare t_id int default 0;
  select count(*) into t_id from teachers where id = new.teacher_id;
  if t_id = 0 then 
    set new.teacher_id = 0;
    set new.created_at = null;
  end if;
end;
