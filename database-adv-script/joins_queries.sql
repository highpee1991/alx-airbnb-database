-- INNER JOIN	Only rows that match in both tables ---> INNER JOIN: A ∩ B
--  Table A       Table B --->  [ A ]   +   [ B ]
SELECT
    bookings.booking_id,
    bookings.start_date,
    bookings.end_date,
    bookings.total_price,
    users.first_name,
    users.last_name,
    users.email
FROM bookings
INNER JOIN users ON bookings.booking_id = users.user_id

SELECT 
    properties.property_id,
    properties.description,
    reviews.review_id,
    reviews.rating,
    reviews.comment
FROM properties
LEFT JOIN reviews ON properties.property_id = reviews.property_id

SELECT 
    users.user_id,
    users.first_name,
    users.last_name,
    users.email,
    bookings.booking_id,
    bookings.start_date,
    bookings.total_price
FROM users
FULL OUTER JOIN bookings ON users.user_id = bookings.user_id




