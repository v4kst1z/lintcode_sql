select max(height) second_height from players where height < (select max(height) from players);
