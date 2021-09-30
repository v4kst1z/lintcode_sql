select g1.name from 
  group_members g1 left join group_members g2 
on 
  g1.group_leader_id	 = g2.id where g1.score > g2.score; 
