-- Task: Display the names of all players who belong to teams located in either 'Mumbai' or 'Delhi'.

-- Use a subquery with IN. These city names are illustrative; substitute cities from your database if necessary.


-- teams(team_id, name, city, playground, jersey_home_color, jersey_away_color)
--players(player_id, name, dob, jersey_no, team_id)


select name 
from players 
where team_id IN (
    select team_id
    from teams 
    where city in('London','Moscow')
)





select name 
from players 
where team_id NOT IN (
    select team_id
    from teams 
    where city in('London','Moscow')
)





