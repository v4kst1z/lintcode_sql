select * from courses where student_count > (
  select if(count(*) >  0 , max(c.student_count),0) from 
  courses c join teachers t on 
  c.teacher_id = t.id and t.name = 'Western Venom'
);
