/*
 * Count the number of movies that contain each type of special feature.
 * Order the results alphabetically be the special_feature.
 */

WITH unnested_features AS (
  SELECT
    film_id,
    unnest(special_features) AS special_features
  FROM film
)
SELECT
  special_features,
  COUNT(*) AS count
FROM unnested_features
GROUP BY special_features
ORDER BY special_features;
