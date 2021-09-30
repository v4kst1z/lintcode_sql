create trigger t_members after insert on members for each row 
begin
  if isnull(new.birthDate) then
    insert into  reminders(id, message, memberId) 
    values(null, concat('Hi ', new.name, ', please update your date of birth.'), new.id);
  end if;
end;
