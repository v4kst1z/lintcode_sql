select name from (
select t.name, avg(c.student_count) student_count from courses c, teachers t 
where c.teacher_id = t.id group by t.id
) a where a.student_count > (select avg(student_count) from courses);
