select c.name from courses c, teachers t where created_at > (
  select min(c.created_at) from courses c join teachers t on t.id = c.teacher_id and t.name = 'Southern Emperor' 
) and c.teacher_id = t.id and t.name != 'Southern Emperor';
