SELECT name, (CASE WHEN died IS NULL THEN strftime("%Y",'now','localtime') - born 
                    ELSE died - born END) AS 'age'
    FROM people
    WHERE born >= 1900
    ORDER BY age DESC, name
    LIMIT 20;