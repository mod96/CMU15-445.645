SELECT name, ROUND(rating, 2)
    FROM (SELECT name, rating, NTILE(10) OVER (ORDER BY rating) AS nt
            FROM (SELECT pe.name AS name, 
                        AVG(ra.rating) AS rating
                    FROM titles ti
                        JOIN ratings ra ON ra.title_id = ti.title_id
                        JOIN crew cr ON ti.title_id = cr.title_id
                        JOIN people pe ON cr.person_id = pe.person_id
                    WHERE pe.born = '1955' AND ti.type = 'movie'
                    GROUP BY pe.person_id, pe.name
                    ORDER BY AVG(ra.rating)))
    WHERE nt = 9;