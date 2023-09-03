SELECT CAST(premiered/10*10 AS TEXT) || 's' AS decade, 
        ROUND(AVG(r.rating), 2) AS avg_rating, 
        MAX(r.rating) AS top_rating, 
        MIN(r.rating) AS min_rating, 
        COUNT(*) AS num_releases
    FROM titles t JOIN ratings r ON t.title_id = r.title_id
    WHERE t.premiered IS NOT NULL
    GROUP BY t.premiered/10 * 10
    ORDER BY avg_rating DESC, decade ASC;