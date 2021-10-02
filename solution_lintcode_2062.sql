select c.id id, c.name course_name, t.name teacher_name from courses c join teachers t on 
c.teacher_id = t.id and t.name = 'Eastern Heretic';
