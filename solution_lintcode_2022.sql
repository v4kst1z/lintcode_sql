select name, date_add(created_at, INTERVAL 1 year) new_created from courses;
