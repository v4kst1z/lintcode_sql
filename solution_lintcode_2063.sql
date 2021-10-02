select c.name name from courses c join teachers t on c.teacher_id = t.id and t.country = 'USA';
