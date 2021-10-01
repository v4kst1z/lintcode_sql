select t.name team, p.name player, p.scores score
from players p join teams t on p.team_id = t.id
where scores in (select max(scores) from players group by team_id);
