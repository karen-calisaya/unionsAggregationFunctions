/* Microdesafio 1 */
/* A */
select title, genres.name from series, genres

select series.title, genre_id, genres.name 
from series 
inner join genres on series.genre_id = genres.id


select movies.id, movies.title, genres.name 
from movies 
left join genres 
on movies.genre_id = genres.id

/*paso 1 b*/

select title, actors.first_name, actors.last_name 
from episodes, actors

select episodes.title, actors.first_name, actors.last_name 
from episodes
inner join actor_episode on episode_id = episodes.id
inner join actors on actor_id = actors.id

/* en la anterior cruzamos tres tablas diferentes */


/* Microdesafio 2 */

select distinct actors.first_name, actors.last_name
from actors 
inner join actor_movie on actors.id = actor_id
inner join movies on movies.id = movie_id
where title like "La Guerra%"

/*Microdesafio 3 */
select movies.title, COALESCE(genres.name,"no tiene género") 
from movies 
left join genres on genre_id = genres.id

/* Microdesafio 4 */
select series.title, datediff(series.end_date, series.release_date) as duracion 
from series

/* Microdesafio 5 */
/* A */
select first_name 
from actors
where length (first_name) >= 6
order by first_name 

/* opcion b */
select actors.first_name, actors.last_name 
from actors 
where char_length(actors.first_name) > 6
order by actors.first_name 

/* B */
select count(*) from episodes

/* C */
select series.title, count(*) as temporadas, seasons.serie_id  from series
inner join seasons on serie_id = series.id
group by title

/*opcion b */
select series.title, count(*) as "cantidad"
from series 
inner join seasons on seasons.serie_id = series.id
group by series.id

/* D */
select genres.name, count(movies.genre_id) as peliculas 
from genres
inner join movies on genres.id = movies.genre_id 
group by genres.name
having count(*) >= 3


