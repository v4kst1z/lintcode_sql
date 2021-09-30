create trigger t_members before delete on members for each row
begin
  insert into reminders(id, message, memberId) values(
    old.id, 
    concat('Delete members {[id=', old.id, '] [name=', ifnull(old.name, 'null'), '] [email=', ifnull(old.email, 'null'), '] [',
    'birthDate=', old.birthDate, '}'),
    old.id
  );
end;
