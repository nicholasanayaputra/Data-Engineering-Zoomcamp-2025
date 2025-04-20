SELECT
  "RatecodeID",
  COUNT(*) AS trip_count,
  AVG("trip_distance") AS avg_distance
FROM {{ source('yellow_taxi', 'yellow_tripdata') }}
GROUP BY "RatecodeID"
