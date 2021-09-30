create trigger t_teachers before delete on teachers for each row 
begin
  update courses set teacher_id = 0 where old.id = teacher_id;
end;
