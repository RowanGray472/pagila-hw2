/*
 * Create a report that shows the total revenue per month and year.
 *
 * HINT:
 * This query is very similar to the previous problem,
 * but requires an additional JOIN.
 */

SELECT 
    EXTRACT(YEAR FROM rental_date)::int AS "Year",
    EXTRACT(MONTH FROM rental_date)::int AS "Month",
    SUM(amount) AS "Total Revenue"
FROM 
    rental
JOIN payment USING (rental_id)
GROUP BY 
    ROLLUP(EXTRACT(YEAR FROM rental_date)::int, EXTRACT(MONTH FROM rental_date)::int)
ORDER BY 
    "Year", "Month";
