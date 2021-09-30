
select s.student_name, s.phone, e.hometown, e.address from students s left join 
enrollments e on s.id = e.student_id;
