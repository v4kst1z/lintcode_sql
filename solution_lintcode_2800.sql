create procedure youngTeachers()
begin
  declare avg_age int default 0;
  declare active_avg_age int default 0;
  declare young_id int default 0;
  declare active_id int default 0;

  create or replace view v_active_teachers as 
    select teacher_id from courses group by teacher_id having count(*) >= 2;

  set active_avg_age = (
    select avg(age) from teachers where id in (select teacher_id from v_active_teachers)
  );
 
  set avg_age = (select avg(age) from teachers);
  while active_avg_age > avg_age do 
    set active_id = (
      select id from teachers 
        where id in (select teacher_id from v_active_teachers)
      order by age desc, name limit 1
    );

    set young_id = (
      select id from teachers 
        where id not in (select teacher_id from v_active_teachers)
      order by age, name limit 1
    );
    update courses set teacher_id = young_id where teacher_id = active_id;

    set active_avg_age = (select avg(age) from teachers where id in 
    (select teacher_id from v_active_teachers));
  end while;
  drop view v_active_teachers;
end;
