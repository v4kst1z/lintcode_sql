create view v_courses as (
  select id, name, student_count from courses where teacher_id not in (
    select id from teachers where country in ('USA', 'JP')
  )
);
