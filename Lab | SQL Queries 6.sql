#IMPORT THE DATA REQUIERED
CREATE TABLE FILM_2020
(title Varchar(3000),
description varchar(3000),
release_year INT,
language_id INT,
rental_rate decimal,
length INT,
rating VARCHAR(10),
special_features VARCHAR(3000)
);

#1. Add the new films to the database.
select * from sakila.film_2020;
Insert into film (title, description, release_year, language_id, rental_rate, length, rating, special_features)
VALUES (Select title, description, release_year, language_id, rental_rate, length, rating, special_features) FROM Sakila.film_2020);

#2. Update inventory.

update film set rental_duration = 3, rental_rate = 2.99, replacement_cost = 8.99;

update inventory set store_id = 1;

insert into inventory(film_id, store_id)
select film_id, 2 from film
where release_year = 2020;