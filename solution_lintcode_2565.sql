create trigger t_teachers before update on teachers for each row 
begin 
  SET new.country = 'CN';
end;
