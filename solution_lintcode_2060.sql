select t.name name from courses c join teachers t on 
  c.teacher_id = t.id and c.name = 'Big Data';
