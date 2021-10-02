select id, student_count from courses where teacher_id in (
  select teacher_id	from courses c join teachers t on c.teacher_id = t.id and t.country not in ('USA', 'UK')
);
