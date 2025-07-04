-- Original Query
SELECT 
    b.booking_id,
    b.start_date,
    b.end_date,
    b.total_price,
    u.first_name,
    u.last_name,
    p.location,
    p.price_per_night,
    pay.payment_date,
    pay.payment_method
FROM 
    bookings b
JOIN users u ON b.user_id = u.user_id
JOIN properties p ON b.property_id = p.property_id
JOIN payments pay ON b.booking_id = pay.booking_id;



-- Optimized version (optional)
SELECT 
    b.booking_id,
    CONCAT(u.first_name, ' ', u.last_name) AS full_name,
    p.location,
    pay.payment_method
FROM 
    bookings b
JOIN users u ON b.user_id = u.user_id
JOIN properties p ON b.property_id = p.property_id
LEFT JOIN payments pay ON b.booking_id = pay.booking_id;
