-- 24. Write a query in SQL to generate a report which contain the columns movie title, name of the female actor
-- , year of the movie, role, movie genres, the director, date of release, and rating of that movie.  


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

    SELECT DISTINCT *
    FROM movie
    JOIN movie_cast
    ON movie.mov_id = movie_cast.mov_id
    JOIN actor
    ON movie_cast.act_id = actor.act_id
    JOIN movie_genres
    ON movie_genres.mov_id = movie.mov_id
    JOIN genres
    ON movie_genres.gen_id = genres.gen_id
    JOIN movie_direction
    ON movie_direction.mov_id = movie.mov_id
    JOIN director
    ON movie_direction.dir_id = director.dir_id
    JOIN rating
    ON rating.mov_id = movie.mov_id
    WHERE act_gender = 'F';

-- Method-2

    -- SELECT mov_title, act_fname, act_lname, 
    -- mov_year, role, gen_title, dir_fname, dir_lname, 
    -- mov_dt_rel, rev_stars
    -- FROM movie 
    -- NATURAL JOIN movie_cast
    -- NATURAL JOIN actor
    -- NATURAL JOIN movie_genres
    -- NATURAL JOIN genres
    -- NATURAL JOIN movie_direction
    -- NATURAL JOIN director
    -- NATURAL JOIN rating
    -- WHERE act_gender='F';
