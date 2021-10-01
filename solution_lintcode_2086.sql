
select v.country country, sum(c.student_count) student_count
from 
(select * from teachers where country like 'U%') v, courses c 
where c.teacher_id = v.id group by v.country having student_count between 2000 and 5000;
