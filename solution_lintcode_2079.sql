select t.name teacher_name, ifnull(sum(c.student_count), 0) student_count from
teachers t left join courses c
on t.id = c.teacher_id group by t.name; 
