/*What are the email addresses of all the customers who live in California?*/

SELECT district, customer.email FROM address
INNER JOIN customer 
ON address.address_id = customer.customer_id
WHERE district = 'California'


/* Get a list of all the films that the actor Nick Whalberg has starred in. */

SELECT title, actor.actor_id, first_name, last_name FROM film_actor
INNER JOIN actor 
ON film_actor.actor_id = actor.actor_id
INNER JOIN film
ON film_actor.film_id = film.film_id
WHERE actor.actor_id = 2