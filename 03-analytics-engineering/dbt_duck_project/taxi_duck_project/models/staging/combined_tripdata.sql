-- models/combined_tripdata.sql
with green_data as (
    select 
        vendorid,
        ratecodeid,
        cast(pulocationid as integer) as pickup_locationid,
        cast(dolocationid as integer) as dropoff_locationid,
        cast(trip_distance as numeric) as trip_distance,
        cast(fare_amount as numeric) as fare_amount,
        cast(tip_amount as numeric) as tip_amount,
        cast(total_amount as numeric) as total_amount,
        lpep_pickup_datetime as pickup_datetime,
        lpep_dropoff_datetime as dropoff_datetime
    from {{ ref('stg_green_tripdata') }}
),
yellow_data as (
    select 
        vendorid,
        ratecodeid,
        cast(pulocationid as integer) as pickup_locationid,
        cast(dolocationid as integer) as dropoff_locationid,
        cast(trip_distance as numeric) as trip_distance,
        cast(fare_amount as numeric) as fare_amount,
        cast(tip_amount as numeric) as tip_amount,
        cast(total_amount as numeric) as total_amount,
        tpep_pickup_datetime as pickup_datetime,
        tpep_dropoff_datetime as dropoff_datetime
    from {{ ref('stg_yellow_tripdata') }}
)
select * from green_data
union all
select * from yellow_data
