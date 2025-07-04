-- total bookings by each user
SELECT user_id, COUNT(*) AS total_bookings
FROM bookings
GROUP BY user_id;

-- rank properties using RANK()
SELECT 
  property_id,
  COUNT(*) AS total_bookings,
  RANK() OVER (ORDER BY COUNT(*) DESC) AS property_rank
FROM bookings
GROUP BY property_id;

-- rank properties using ROW_NUMBER()
SELECT 
  property_id,
  COUNT(*) AS total_bookings,
  ROW_NUMBER() OVER (ORDER BY COUNT(*) DESC) AS property_row_number
FROM bookings
GROUP BY property_id;
