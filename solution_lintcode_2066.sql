select * from courses where student_count > (
  select c.student_count  from courses c join teachers t on c.teacher_id = t.id order by age desc limit 0, 1
) and teacher_id != (select id from teachers order by age desc limit 0, 1);
