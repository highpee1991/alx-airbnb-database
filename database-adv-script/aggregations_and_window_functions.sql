-- total bookings by each user
SELECT user_id, COUNT(*) AS total_bookings
FROM bookings
GROUP BY user_id;

-- rank property by number of bookings
SELECT 
 property_id,
 COUNT(*) AS total_bookings,
 RANK() OVER (ORDER BY COUNT(*) DESC) AS property_rank
FROM bookings
GROUP BY property_id;