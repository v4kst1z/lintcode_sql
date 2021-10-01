select t.name name, ifnull(sum(c.student_count), 0) student_count from 
teachers t left join courses c 
on t.id = c.teacher_id group by name having student_count < 3000 order by student_count, name; 
