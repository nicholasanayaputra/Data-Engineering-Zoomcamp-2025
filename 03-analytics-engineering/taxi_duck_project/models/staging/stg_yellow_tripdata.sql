-- models/staging/stg_green_tripdata.sql

with source_data as (
    select * from read_csv_auto('C:\data-engineer-2025\03-analytics-engineering\taxi_duck_project\dataset\yellow_tripdata_2019-01.csv')
)

select * from source_data
