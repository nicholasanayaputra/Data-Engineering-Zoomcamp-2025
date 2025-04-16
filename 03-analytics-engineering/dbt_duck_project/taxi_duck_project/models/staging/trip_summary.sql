with combined_data as (
    select * from {{ ref('combined_tripdata') }}
)
select
    count(*) as total_trips,
    sum(cast(fare_amount as numeric)) as total_fare,
    sum(cast(tip_amount as numeric)) as total_tips,
    sum(cast(fare_amount as numeric) + cast(tip_amount as numeric)) as total_revenue,
    avg(cast(trip_distance as numeric)) as avg_trip_distance
from combined_data