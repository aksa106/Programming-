
-- SOME / ANY : Greater than at least one value 


-- ALL : Greater than every value



-- Database: FLIS
-- Table: matches

-- Task: Display the match_num and host_team_score of matches where the host team scored more goals than at least one guest team scored in any match.



-----------------------------------------------------------------------------------------

select match_num, host_team_score
from matches
where host_team_score > ANY(
    select guest_team_score
    from matches
)

-----------------------------------------------------------------------------------------


-- Task: Display the match_num and guest_team_score of matches where the guest team scored fewer goals than at least one host team scored across all matches.



-----------------------------------------------------------------------------------------

-- select match_num, guest_team_score
-- from matches 
-- where guest_team_score < SOME( 
--     select host_team_score
--     from  matches
-- )


-----------------------------------------------------------------------------------------



select match_num , guest_team_score
from matches 
where guest_team_score > ALL(

    select host_team_score
    from matches
)


