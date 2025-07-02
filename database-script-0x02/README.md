# Airbnb Clone – Sample Data Seeding

This file contains SQL statements to populate the Airbnb clone database with sample data for testing and development purposes.

## 📄 File

- `seed.sql`: Inserts sample rows into all key tables (`users`, `properties`, `bookings`, `payments`, `reviews`, `messages`).

## 🧪 Purpose

The data represents realistic user flows:

- Guests booking properties hosted by users
- Payment records linked to bookings
- User reviews
- Private messaging between users

## 🧰 Tables Covered

- `users`
- `properties`
- `bookings`
- `payments`
- `reviews`
- `messages`

## 🧪 How to Test Locally

1. Ensure you have PostgreSQL and pgAdmin installed.
2. Create a database (e.g., `airbnb_clone`) in pgAdmin.
3. Run `schema.sql` to set up the database structure.
4. Run `seed.sql` to populate the tables with sample data.
5. Browse the data visually via pgAdmin or use queries like:

```sql
SELECT * FROM users;
SELECT * FROM bookings;
```
