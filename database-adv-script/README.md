# Airbnb Clone - SQL JOIN Practice

## 📌 Objective

This module demonstrates how different types of SQL JOINs can be used to query a normalized relational database for the Airbnb Clone backend.

## 🔍 JOIN Types Covered

### 1. INNER JOIN

Retrieve all bookings along with the user details for each booking.

```sql
SELECT
  bookings.booking_id,
  bookings.start_date,
  bookings.total_price,
  users.first_name,
  users.email
FROM bookings
INNER JOIN users ON bookings.user_id = users.user_id;
```

2. LEFT JOIN
   Retrieve all properties with their reviews, including properties that have no reviews.

sql
Copy
Edit
SELECT
properties.property_id,
properties.description,
reviews.rating,
reviews.comment
FROM properties
LEFT JOIN reviews ON properties.property_id = reviews.property_id; 3. FULL OUTER JOIN
Retrieve all users and all bookings, even if some users haven’t booked or some bookings aren’t linked to a user.

sql
Copy
Edit
SELECT
users.user_id,
users.email,
bookings.booking_id,
bookings.total_price
FROM users
FULL OUTER JOIN bookings ON users.user_id = bookings.user_id;
💡 Why Use JOINs?
JOINs allow you to combine data across related tables, answering complex questions in a normalized database without duplicating information.

📦 Related Tables
users

properties

bookings

reviews

<!-- ....................... -->

# SQL Subqueries – Airbnb Clone

This task demonstrates the use of correlated and non-correlated subqueries in the Airbnb Clone backend.

## 🧪 Queries

- **Non-Correlated Subquery**:  
  Find properties with an average rating > 4.0.
- **Correlated Subquery**:  
  Find users who made more than 3 bookings.

These queries help filter data across related tables efficiently.
