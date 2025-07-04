# Index Performance Test - `bookings.user_id`

## Objective
Test the performance of querying the `bookings` table with and without an index on the `user_id` column.

---

## Test Query

```sql
SELECT * FROM bookings 
WHERE user_id = '11111111-1111-1111-1111-111111111111';
🔍 Performance Results
Metric	With Index (idx_user_id_booking)	Without Index (No Index)
Scan Type	Bitmap Index Scan	Sequential Scan
Planning Time	0.165 ms	0.630 ms
Execution Time	0.081 ms	0.029 ms

💡 Insights
The indexed query used a Bitmap Index Scan, targeting only relevant rows.

The non-indexed query used a Sequential Scan, reading all rows.

While the indexed version had a slightly higher planning time, it is more scalable for larger datasets.

Indexes should be used on columns frequently used in WHERE, JOIN, or ORDER BY clauses.

Conclusion
Although both queries performed similarly due to the small dataset size, indexes significantly improve performance on large datasets. Keeping strategic indexes like idx_user_id_booking helps reduce load and speed up read operations.