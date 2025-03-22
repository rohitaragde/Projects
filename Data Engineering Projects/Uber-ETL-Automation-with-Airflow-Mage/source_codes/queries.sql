# Find the Top 10 Pickup Locations based on the Number of Trips
SELECT 
    pickup_latitude,
    pickup_longitude,
    COUNT(*) AS trip_count FROM 
    `uberdata-417718.uber_data_engineering_yt.tbl_analytics`
GROUP BY 
    pickup_latitude,
    pickup_longitude
ORDER BY 
    trip_count DESC
LIMIT 
    10;

#Find the total number of trips by passenger count


SELECT 
    passenger_count,
    COUNT(*) AS total_trips
FROM 
    `uberdata-417718.uber_data_engineering_yt.tbl_analytics`
GROUP BY 
    passenger_count
ORDER BY 
    passenger_count;

# Find the average fare amount by hour of the day
SELECT 
    EXTRACT(HOUR FROM TIMESTAMP(tpep_pickup_datetime)) AS pickup_hour,
    AVG(fare_amount) AS average_fare_amount
FROM 
    `uberdata-417718.uber_data_engineering_yt.tbl_analytics`
GROUP BY 
    pickup_hour
ORDER BY 
    pickup_hour;

