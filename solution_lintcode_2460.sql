select height, dense_rank() over(order by height desc) Rank from players;
