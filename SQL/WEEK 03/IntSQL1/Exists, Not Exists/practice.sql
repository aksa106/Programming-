

-- Exists 
        -- TRUE when subquery returns atleast one row


-- Not Exists
    -- TRUE when subquery returns zero rows




--Task: Display the names of all teams that do not have any players.

--Tables: teams, players


select name 
from teams t 
where not exists(
    select 1
    from players p
    where p.team_id = t.team_id
)

