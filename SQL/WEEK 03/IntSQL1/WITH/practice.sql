


-- WITH CLAUSE 

--The with clause creates a temporary named result called a Common Table Expression, (CTE) which we can reference in a query.

--                  


-- WITH avg_score AS (

--     select 
--     AVG(host_team_score) AS Average 
--     from matches

-- )

-- -- we created a common table expression which is storing avg_score of host team scores , this CTE can be used in form clause


-- select match_num, host_team_score
-- from matches , avg_score
-- where host_team_score > average 

-- now we found out those teams match numbers which had average score higher than the avergae score of host team scores , which we fetched from our CTE 



-----------------------------------------------------------------------------


-- display the match_num and guest_team_Score of matches where guest team scored more than average guest-team score across all macthes 


-- WITH avg_score AS(

--     select AVG(guest_team_score) AS average 
--     from matches

-- )

-- select match_num , guest_team_score 
-- from matches , avg_score 
-- where guest_team_score > average







-- Display the match_num and host_team_score for matches where the host team scored fewer goals than the average host-team score.

-- Use a CTE named avg_host_score.


-- WITH avg_score as(

--     select avg(host_team_score) as avg
--     from matches

-- )

-- select match_num , host_team_score
-- from matches , avg_score 
-- where host_team_score < avg



-----------------------------------------------------------------------------


-- Task: Using a CTE named max_score, display the match_num and guest_team_score of matches where the guest team scored the highest number of goals across all matches.



with max_score as(

    select max(guest_team_score) as max
    from matches



)

select match_num, guest_team_score 
from matches , max_score
where guest_team_score > max 








