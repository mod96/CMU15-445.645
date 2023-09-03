SELECT _p.name
    FROM crew _c
    JOIN people _p ON _c.person_id = _p.person_id
    WHERE _c.category IN ('actor', 'actress') 
        AND _c.title_id IN (SELECT c.title_id
                                FROM crew c 
                                JOIN people p ON c.person_id = p.person_id
                                WHERE p.name = 'Nicole Kidman' AND p.born = 1967)
    GROUP BY _p.person_id, _p.name
    ORDER BY _p.name;