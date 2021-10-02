select c.name from courses c join teachers t on c.teacher_id = t.id and t.age <= 20;
