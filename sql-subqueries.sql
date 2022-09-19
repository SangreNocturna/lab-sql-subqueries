USE sakila;
-- 1. How many copies of the film Hunchback Impossible exist in the inventory system?
SELECT  f.title, count(i.inventory_id) as number_of_copies
FROM sakila.film f
JOIN sakila.inventory i
ON f.film_id = i.film_id
WHERE f.title = 'Hunchback Impossible';


SELECT * FROM bank.loan
WHERE amount > (
  SELECT avg(amount)
  FROM bank.loan
);

-- 2. List all films whose length is longer than the average of all the films
SELECT title, length
FROM sakila.film
WHERE length > (
 SELECT avg(length)
 FROM sakila.film);

-- 3. Use subqueries to display all actors who appear in the film Alone Trip
SELECT a.first_name, a.last_name
FROM sakila.film f
JOIN sakila.film_actor fa
ON f.film_id = fa.film_id
JOIN sakila.actor a
ON fa.actor_id = a.actor_id
WHERE f.title = 'Alone Trip';

-- I do not know how to solve this exercise with subqueries

-- 4. Sales have been lagging among young families, and you wish to target all family movies for a promotion. 
-- Identify all movies categorized as family films.
SELECT f.title, c.name
FROM sakila.film f
JOIN sakila.film_category fc
ON f.film_id = fc.film_id
JOIN sakila.category c 
ON fc.category_id = c.category_id
WHERE c.name = 'Family'
;

-- 5. Get name and email from customers from Canada using subqueries. 
-- Do the same with joins. Note that to create a join, you will have to identify the correct tables with their primary keys and foreign keys, that will help you get the relevant information.









