SELECT ti.primary_title, ti_.votes
    FROM titles ti 
    JOIN (SELECT t.title_id AS title_id, SUM(r.votes) AS votes
            FROM titles t
            JOIN ratings r ON t.title_id = r.title_id
            JOIN crew c ON t.title_id = c.title_id
            JOIN people p ON c.person_id = p.person_id
            WHERE p.name LIKE '%Cruise%' AND p.born = 1962
            GROUP BY t.title_id
            ORDER BY votes DESC
            LIMIT 10) ti_ ON ti.title_id = ti_.title_id
    ORDER BY ti_.votes DESC;