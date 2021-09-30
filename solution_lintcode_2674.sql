create view v_courses_teachers as (
  select c.*, t.name teacher_name, t.email teacher_email from courses c left join teachers t on c.teacher_id = t.id
);
