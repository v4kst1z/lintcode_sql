create trigger t_teachers before update on teachers for each row 
begin 
  insert into teachers_bkp values(null, old.name, old.email, old.age, old.country);
end
