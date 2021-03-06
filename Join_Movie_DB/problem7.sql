-- 7. Write a query in SQL to list all the movies with year and genres. 

-- Sample table: movie

--  mov_id |                     mov_title                      | mov_year | mov_time |    mov_lang     | mov_dt_rel | mov_rel_country
-- --------+----------------------------------------------------+----------+----------+-----------------+------------+-----------------
--     901 | Vertigo                                            |     1958 |      128 | English         | 1958-08-24 | UK
--     902 | The Innocents                                      |     1961 |      100 | English         | 1962-02-19 | SW
--     903 | Lawrence of Arabia                                 |     1962 |      216 | English         | 1962-12-11 | UK
--     904 | The Deer Hunter                                    |     1978 |      183 | English         | 1979-03-08 | UK


-- Sample table: genres

-- gen_id |      gen_title
-- --------+----------------------
--    1001 | Action
--    1002 | Adventure
--    1003 | Animation
--    1004 | Biography
--    1005 | Comedy

-- Sample table: movie_genres

--      mov_id | gen_id
-- --------+--------
--     922 |   1001
--     917 |   1002
--     903 |   1002
--     912 |   1003

-- Solutions

-- Method-1

    SELECT m.mov_title, m.mov_year, g.gen_title FROM movie m JOIN movie_genres mg ON m.mov_id = mg.mov_id JOIN genres g ON g.gen_id = mg.gen_id

-- Method-2

    -- SELECT mov_title, mov_year, gen_title
    -- FROM movie
    -- NATURAL JOIN movie_genres
    -- NATURAL JOIN genres;

