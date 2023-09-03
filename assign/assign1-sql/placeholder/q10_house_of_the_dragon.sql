WITH distinct_titles AS (
    SELECT DISTINCT a.title AS title
        FROM titles t
        JOIN akas a ON t.title_id = a.title_id
        WHERE t.type = 'tvSeries' AND t.primary_title = 'House of the Dragon'
        ORDER BY a.title
),
distinct_titles_rownum AS (
    SELECT title, ROW_NUMBER() OVER (ORDER BY title) AS rn FROM distinct_titles
),
result (title, rn) AS (
    SELECT title, rn FROM distinct_titles_rownum WHERE rn = 1
    UNION ALL
    SELECT r.title || ', ' || d.title, d.rn
        FROM result r JOIN distinct_titles_rownum d ON r.rn + 1 = d.rn
)
SELECT title FROM result ORDER BY rn DESC LIMIT 1;