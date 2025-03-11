/*
 * This problem is the same as 05.sql,
 * but instead of using the NOT IN operator, you are to use a LEFT JOIN.
 */

SELECT DISTINCT a.last_name, a.first_name
FROM actor a
LEFT JOIN film_actor fa ON a.actor_id = fa.actor_id
LEFT JOIN film f ON fa.film_id = f.film_id AND f.rating = 'R'
WHERE f.film_id IS NULL
ORDER BY a.last_name, a.first_name;
