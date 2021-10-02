select a.course_name, a.student_count, a.teacher_name from (
  select c.name course_name, c.student_count student_count, t.name teacher_name from 
  teachers t, courses c 
  where t.id = c.teacher_id and c.student_count = (select max(student_count) from courses)
) a;
