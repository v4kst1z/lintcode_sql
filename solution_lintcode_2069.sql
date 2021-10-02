select c.name, t.student_count from courses c join 
(
  select teacher_id, max(student_count) student_count from courses group by teacher_id
) t on c.teacher_id = t.teacher_id and c.student_count = t.student_count;
