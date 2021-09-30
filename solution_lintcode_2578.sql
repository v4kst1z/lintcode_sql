create trigger t_member after update on members for each row 
begin
  declare old_val varchar(255) default '';
  declare new_val varchar(255) default '';

  if old.name != new.name then 
    set old_val = concat(old_val, '[name=', old.name, ']');
    set new_val = concat(new_val, '[name=', new.name, ']');
  end if;

  if old.email != new.email then 
    if old_val = '' then 
      set old_val = concat(old_val, '[email=', old.email, ']');
      set new_val = concat(new_val, '[email=', new.email, ']');
    else 
      set old_val = concat(old_val, ' [email=', old.email, ']');
      set new_val = concat(new_val, ' [email=', new.email, ']');
    end if;
  end if;

  if old.birthDate != new.birthDate then 
    if old_val = '' then 
      set old_val = concat(old_val, '[birthDate=', old.birthDate, ']');
      set new_val = concat(new_val, '[birthDate=', new.birthDate, ']');
    else 
      set old_val = concat(old_val, ' [birthDate=', old.birthDate, ']');
      set new_val = concat(new_val, ' [birthDate=', new.birthDate, ']');
    end if;
  end if;

  insert into reminders(id, message, memberId) values(
    null,
    concat('Update {', old_val, ' } To {', new_val, ' }'),
    old.id
  );
end;
