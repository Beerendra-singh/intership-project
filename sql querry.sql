# Retrieve all reaords from the movies table
select * from movies;

# Retrieve all reaords from the director table
select * from directors;

# What is the total no of movies in the dataset
select count(*) as total_movies
from movies;

# Retrieve details of selected director
select * from directors
where name in('James Cameron', 'Luc Besson','John woo');

# retrieve director whose name start with S 
select * from directors
where name like 'S%' ;

# How many Female directors are in database ? 
select count(*) as female_directors
from directors
where gender =1;

#Retrieve the name of 10th female director
select name from directors
where gender =1
order by id 
limit 1 offset 9;

# Which are the top 3 most popular movies ?
 select original_title , popularity
 From movies
 order by popularity desc
 limit 3 ;
 
 # which are the top 3 highest revenue movies ?
 select original_title , revenue
 from movies
 order by revenue desc
 limit 3 ;
 
 # which movie released after january 1,2000 has the highest rating ?
 select original_title , vote_average
 from movies
 where release_date >='2000-01-01'
 order by vote_average desc
 limit 1 ;
 
 # which movies were directed by Brenda Chapman ?
 select m.original_title
 from movies m
 join directors d 
 on m.director_id = d.id
 where d.name ='Brenda Chapman';
 
 # which director has directed the highest number of movies ?
 select d.name , count(*) as total_movies
 from movies m 
 join directors d 
 on m.director_id = d.id
 group by d.name
 order by total_movies desc
 limit 1 ;
 
 # which director has generated the highest total revenue?
 select d.name , sum(m.revenue) as total_revenue
 from movies m 
 join directors d
 on m.director_id =d.id
 group by d.name
 order by total_revenue desc
 limit 1 ;
 
 # which are the top 5 highest rated movies ?
 select original_title ,vote_average
 from movies
 order by vote_average desc
 limit 5 ;
 
 # how many movies were released each year ?
 select year (release_date) as year , count(*) as total_movies
 from movies 
 group by year 
 order by year ;
 
 # which director has the highest average movie rating ?
 select d.name , avg(m.vote_average) as avg_rating
 from movies m 
 join directors d 
 on m.director_id = d.id
 group by d.name
 order by avg_rating  desc
 limit 1 ;
 
 
 

