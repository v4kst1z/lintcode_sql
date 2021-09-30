create trigger t_teachers before delete on teachers for each row 
begin
  insert into teachers_bkp values(old.id, old.name, old.email, old.age, old.country);
end;
