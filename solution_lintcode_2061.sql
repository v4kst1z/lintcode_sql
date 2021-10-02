select c.id, c.name course_name, t.email teacher_email from courses c join teachers t on c.teacher_id = t.id;
