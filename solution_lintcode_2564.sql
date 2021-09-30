create trigger before_teachers_insert before insert on teachers for each row
begin                                                                                                                                          
  SET new.country = 'CN';                                                                                                                        
end; 
