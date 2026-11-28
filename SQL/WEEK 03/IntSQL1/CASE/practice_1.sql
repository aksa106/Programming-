-- Using the matches table, write an SQL query to display each match number, the guest team's score, and its performance category.

-- Classify the performance as follows:
-- - Excellent: Guest team scored 3 or more goals.
-- - Average: Guest team scored 1 or 2 goals.
-- - Poor: Guest team scored 0 goals.
-- Name the new calculated column performance


select match_num , guest_team_score ,

case 
    when guest_team_score >= 3
    then 'Excellent'

    when guest_team_score >= 1 and guest_team_score >= 2
    then 'Average'



    else 'Poor'

end as Performance

from matches


















