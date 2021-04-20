
-- Write a query in SQL to find the name and year of the movies.
 select mov_title, mov_year
 from movie;
    
     
-- Write a query in SQL to find the year when the movie American Beauty released.
select mov_year
from movie
where mov_title = 'American Beauty';


-- Write a query in SQL to find the movie which was released in the year 1999 
select mov_title
from movie
where mov_year=1999;

--  Write a query in SQL to find the movies which was released before 1998
select mov_title 
 from movie
 where mov_year = '1998';

--  Write a query in SQL to return the name of all reviewers and name of movies together in a single list 
 select reviewer.rev_name  
 from reviewer
 union 
 (select movie.mov_title
from movie);

--  Write a query in SQL to find the name of all reviewers who have rated 7 or more stars to their rating 

 select reviewer.rev_name
 from reviewer, rating
 where rating.rev_id = reviewer.rev_id
 and rating.rev_star >= 7
 and reviewer.rev_name is not null;

-- Write a query in SQL to find the titles of all movies that have no ratings.

 select mov_title
 from movie
 where mov_id not in (
 select mov_id 
 from rating
);


  -- Write a query in SQL to find the name of all reviewers who have rated their ratings with a NULL value 
 select rev_id, rev_name
 from reviewer
 where rev_name is null;

--  Write a query in SQL to find the name of movie and director (first and last names) who directed a movie that casted a role for 'Eyes Wide Shut'.
select dir_fname, dir_lname, mov_title
from  director 
natural join movie_direction
natural join movie
natural join movie_cast
where role IS  not null
and mov_title='Eyes Wide Shut';

