select t.name teacher_name, ifnull(count(c.student_count), 0) course_count from teachers t left join courses c 
on t.id = c.teacher_id group by teacher_name order by course_count desc, teacher_name;
