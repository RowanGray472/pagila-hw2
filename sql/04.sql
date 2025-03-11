/*
 * Select the titles of all films that the customer with customer_id=1 has rented more than 1 time.
 *
 * HINT:
 * It's possible to solve this problem both with and without subqueries.
 */
SELECT title
FROM film
WHERE film_id IN (
SELECT film_id
FROM rental
JOIN inventory USING (inventory_id)
WHERE customer_id = 1
GROUP BY film_id
HAVING count(film_id) > 1
)
