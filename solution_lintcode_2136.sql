select c.created_at course_date, t.country teacher_country from courses c inner join teachers t on c.teacher_id = t.id;
