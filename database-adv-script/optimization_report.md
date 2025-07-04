# 📈 Performance Analysis – Airbnb Clone Backend

## 🧠 Objective

To analyze the performance of a SQL query that retrieves bookings along with user, property, and payment details using PostgreSQL. The goal is to optimize the query and understand execution costs using `EXPLAIN ANALYZE`.

---

## 🧪 Initial Query

```sql
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
🧾 Execution Plan Summary (Before Optimization)
Used Hash Joins for all table joins.

Relied heavily on Sequential Scans for all tables.

Booking IDs were matched across 4 tables.

Execution Time: ~0.213 ms

🔍 Bottlenecks
JOIN with payments required full table scans.

No indexes were used at this stage.

Performance acceptable for small datasets, but may degrade as records grow.

✅ Optimized Query
sql
Copy
Edit
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
🔍 Improvements Made
Reduced columns selected to only relevant fields.

Used LEFT JOIN instead of JOIN to include bookings without payments.

Added indexes on:

bookings.user_id

bookings.property_id

payments.booking_id

properties.host_id

📊 Execution Plan Summary (After Optimization)
Hash Joins remained due to efficiency.

PostgreSQL automatically reordered join logic (used a Hash Right Join internally).

Still used Sequential Scans (due to small dataset size).

Execution Time: ~0.137 ms ✅

📌 Conclusion
Query is efficient and well-structured.

Joins are optimized, and response time is fast.

Indexes will make a bigger difference with large datasets.

PostgreSQL's internal planner made logical adjustments to optimize joins further.