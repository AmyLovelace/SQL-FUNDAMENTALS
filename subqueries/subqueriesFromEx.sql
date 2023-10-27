-- Subqueries in the FROM part2
-- Exercise
-- There is a goals table that records the goals scored by each player in different matches.

-- PLAYER_ID NAME GOALS
-- 1 John 2
-- 1 John 1
-- 2 Mary 1
-- 2 Mary 1
-- 3 Peter 3
-- 4 Anna 1
-- They ask us for a query to calculate the total average of goals.

SELECT AVG(total_goals) as average_goals
DESDE (
    SELECT PLAYER_ID, SUM(GOALS) as total_goals
    FROM goals
    GROUP BY PLAYER_ID
) as players_goals;