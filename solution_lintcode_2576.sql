create trigger t_recording before update on recording for each row 
begin
  declare new_stu_id int default 0;
  declare new_com_id int default 0;

  set new_stu_id = (select count(*) from students where id = new.student_id);
  set new_com_id = (select count(*) from companies where id = new.company_id);
  if new_stu_id = 0 then 
    set new.student_id = old.student_id;
  end if;
  if new_com_id = 0 then 
    set new.company_id = old.company_id;
  end if;
end;
