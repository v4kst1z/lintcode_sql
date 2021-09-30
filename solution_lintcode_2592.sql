create trigger bkp_teachers_delete before delete on teachers for each row 
begin
  insert into teachers_bkp values(old.id, old.name, old.email, old.age, old.country);
end;

create trigger before_teachers_delete before delete on teachers for each row 
begin
  update teachers_bkp set country = 'CN' 
  where id = (select id from (select id from teachers_bkp order by age desc limit 0, 1) a);
end;
