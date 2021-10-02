select id, name, c.student_count, created_at, c.teacher_id  from courses c join (
  select min(c.student_count) student_count from 
  courses c join teachers t 
  on c.teacher_id = t.id and t.name = 'Eastern Heretic' 
) t on c.student_count > t.student_count and c.teacher_id != (select id from teachers where name = 'Eastern Heretic');
