create view v_teachers as (
  select c.teacher_id, t.name, t.email, t.age, t.country, c.student_count from 
  v_courses c left join teachers t on c.teacher_id = t.id
);
