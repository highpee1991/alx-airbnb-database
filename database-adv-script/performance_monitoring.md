
# Performance Monitoring Report

## 🎯 Objective
To monitor and refine database performance by analyzing execution plans using `EXPLAIN ANALYZE`, identifying bottlenecks, implementing schema improvements (e.g., new indexes or restructuring), and measuring the resulting impact.

---

## 🔍 Step 1: Monitor Query Performance

**Query Analyzed:**

```sql
SELECT 
    b.booking_id,
    u.first_name,
    u.last_name,
    p.location,
    pay.payment_method
FROM 
    bookings b
JOIN users u ON b.user_id = u.user_id
JOIN properties p ON b.property_id = p.property_id
LEFT JOIN payments pay ON b.booking_id = pay.booking_id;
