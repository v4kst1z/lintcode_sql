select student_id from exams where is_pass = 0 group by student_id having count(student_id) = (
    select count(student_id) num from exams  where is_pass = 0 group by student_id 
    order by num desc limit 1
);
