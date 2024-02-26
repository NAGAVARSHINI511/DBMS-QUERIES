-- 1. List the titles of all movies directed by‘Hitchcock'.

select Mov_title
from MOVIES
where Dir_id IN (select Dir_id
from DIRECTOR
where Dir_name = 'hitchcock');



-- 2. Find the movie names where one or more actors acted in two or more movies.

select Mov_title,Act_name,role from movies JOIN MOVIE_CAST on MOVIE_CAST.Mov_id=MOVIES.Mov_id
   JOIN actor on MOVIE_CAST.Act_id=actor.Act_id 
      where actor.Act_id IN(select Act_id from MOVIE_CAST group by Act_id having count(*)>1)

--alternte query:
select Mov_title
from MOVIES m, MOVIE_CAST mc
where m.Mov_id=mc.Mov_id and mc.Act_id IN (select Act_id
from MOVIE_CAST
group by Act_id
having COUNT (Act_id)>1)
group by Mov_title;



-- 3. List all actors who acted in a movie before 2000 and also in a movie after 2015(use JOIN operation).

select Act_name, Mov_title, Mov_year
from ACTOR a JOIN MOVIE_CAST c ON a.Act_id=c.Act_id JOIN MOVIES m ON
Mov_id=m.Mov_id
where m.Mov_year NOT BETWEEN 2000 and 2015;




-- 4. Find the title of movies and number of stars for each movie that has at least one rating and find the highest
--  number of stars that movie received. Sort the result by movie title.

select Mov_title, MAX(Rev_stars)
from MOVIES INNER JOIN RATING using(Mov_id)
group by Mov_title
having MAX(Rev_stars)>0
order by Mov_title;



-- 5. Update rating of all movies directed by ‘Steven Spielberg' to5.

update RATING
set Rev_stars=5
where Mov_id IN(select Mov_id
from MOVIES
where Dir_id IN( select Dir_id
from DIRECTOR
where Dir_name = 'stevenspielberg'));
