create trigger t_teachers before insert on teachers for each row 
begin
  insert into teachers_bkp values(new.id, new.name, new.email, new.age, new.country);
end;
