create trigger t_recording before insert on recording for each row 
begin
  declare stu_id int default 0;
  declare com_id int default 0;
  select count(*) into stu_id from students where id = new.student_id;
  select count(*) into com_id from companies where id = new.company_id;
  if stu_id = 0 then 
    set new.student_id = 0;
  end if;
  if com_id = 0 then 
    set new.company_id = 0;
  end if;
end;
