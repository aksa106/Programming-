
--            CASE : CASE ALLOWS US TO IMPLEMENT IF-ELSE LOGIC IN SQL 


---------------------------------------------------------------------

-- SELECT

--     column_name,

--     CASE

--         WHEN condition1 THEN result1

--         WHEN condition2 THEN result2

--         ELSE result3

--     END AS new_column

-- FROM table_name;

---------------------------------------------------------------------


select match_num , host_team_score,

    case 
        when host_team_score >= 3
        then 'High'

        when host_team_score >= 1 
        then 'Medium'

        else 'Low'

    end as score_category

from matches


-- CASE RETURNS A NEW CALCULATED COLUMN IN THE QUERY RESULT


------------------------------------------------------------------
















