-- 15. Write a query in SQL to find the director's first and last name together with the title of the movie(s)
--  they directed and received the rating. 


-- Sample table: reviewer 

--      rev_id |            rev_name
-- --------+--------------------------------
--    9001 | Righty Sock
--    9002 | Jack Malvern
--    9003 | Flagrant Baronessa
--    9004 | Alec Shaw

-- Sample table: rating 

--      mov_id | rev_id | rev_stars | num_o_ratings
-- --------+--------+-----------+---------------
--     901 |   9001 |      8.40 |        263575
--     902 |   9002 |      7.90 |         20207
--     903 |   9003 |      8.30 |        202778

-- Sample table: movie 

--      mov_id |                     mov_title                      | mov_year | mov_time |    mov_lang     | mov_dt_rel | mov_rel_country
-- --------+----------------------------------------------------+----------+----------+-----------------+------------+-----------------
--     901 | Vertigo                                            |     1958 |      128 | English         | 1958-08-24 | UK
--     902 | The Innocents                                      |     1961 |      100 | English         | 1962-02-19 | SW
--     903 | Lawrence of Arabia                                 |     1962 |      216 | English         | 1962-12-11 | UK
--     904 | The Deer Hunter                                    |     1978 |      183 | English         | 1979-03-08 | UK


-- Solutions

-- Method-1

    SELECT DISTINCT d.dir_fname, d.dir_lname, m.mov_title, r.rev_stars 
    FROM movie m 
    JOIN rating r ON m.mov_id = r.mov_id 
    JOIN movie_direction md ON md.mov_id = m.mov_id 
    JOIN director d ON d.dir_id = md.dir_id 
    WHERE r.rev_stars IS NOT NULL;
