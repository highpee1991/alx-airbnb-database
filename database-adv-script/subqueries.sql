-- Non-Correlated Subquery – Properties with Avg Rating > 4.0
SELECT 
FROM properties IN (
    SELECT property_id
    FROM reviews
    GROUP BY property_id
    HAVING AVG(rating) > 4.0
)


-- Correlated Subquery – Users with More Than 3 Bookings
SELECT * 
FROM users u
WHERE (
    SELECT COUNT(*)
    FROM bookings b
    WHERE b.user_id = u.user_id
)