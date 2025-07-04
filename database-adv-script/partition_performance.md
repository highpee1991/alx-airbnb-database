# 🧩 Partitioning Performance Report – Booking Table

## 🎯 Objective
To optimize query performance on the `bookings` table by implementing **table partitioning** using the `start_date` column.

---

## ⚙️ Implementation

1. **Renamed** the original `bookings` table.
2. **Created a new partitioned** `bookings` table by `RANGE (start_date)`.
3. Created **4 quarterly partitions** for the year 2025:
   - `bookings_2025_q1`: Jan – Mar
   - `bookings_2025_q2`: Apr – Jun
   - `bookings_2025_q3`: Jul – Sep
   - `bookings_2025_q4`: Oct – Dec
4. **Copied data** from the old table to the partitioned table.

---

## 🔍 Testing Query Performance

### 🧪 Query Example:

```sql
EXPLAIN ANALYZE
SELECT * FROM bookings
WHERE start_date BETWEEN '2025-07-01' AND '2025-07-31';
