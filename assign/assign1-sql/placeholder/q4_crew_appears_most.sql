SELECT peo.name AS name, pre.num_appearances AS num_appearances
FROM (SELECT p.person_id, COUNT(*) AS num_appearances
        FROM people p JOIN crew c ON p.person_id = c.person_id
        GROUP BY p.person_id
        ORDER BY num_appearances DESC
        LIMIT 20) pre JOIN people peo ON pre.person_id = peo.person_id
ORDER BY num_appearances DESC;