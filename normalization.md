# Normalization

# Airbnb Clone – Database Normalization Steps

This document outlines the normalization process applied to the Airbnb Clone database, with specific design decisions made to ensure data integrity, eliminate redundancy, and improve relational structure.

---

## 🔹 Step 1: Unnormalized Data (UNF)

At the initial design stage, raw data included mixed information about users, properties, bookings, and payments in the same logical table.

Example:

| user_id | full_name | property_id | property_name | host_id | booking_id | start_date | end_date | total_price | payment_method | payment_date |
|---------|-----------|-------------|----------------|---------|------------|------------|----------|--------------|----------------|---------------|
| U001    | Taiwo     | P001        | Cozy Apt       | U001    | B001       | 2023-08-01 | 2023-08-05 | 400          | Credit Card    | 2023-07-30     |

🔸 This design:
- Mixed multiple entities in a single structure
- Had **redundant fields** like `property_name` and `host_id` both pointing to user information
- Lacked separation of concerns

---

## 🔹 Step 2: First Normal Form (1NF)

### Action:
- Separated data into individual tables for `User`, `Property`, `Booking`, and `Payment`.
- Ensured that each field contains only atomic values (no arrays or nested data).

✅ Resulting Tables:
- `User(user_id, full_name, email, password, role, created_at)`
- `Property(property_id, host_id, description, location, price_per_night, availability, created_at)`
- `Booking(booking_id, user_id, property_id, start_date, end_date, total_price, created_at)`
- `Payment(payment_id, booking_id, payment_method, payment_date)`

---

## 🔹 Step 3: Second Normal Form (2NF)

All our tables are uniquely identified by single-column primary keys (UUIDs). Therefore:
- No composite keys exist
- No partial dependencies are possible

✅ All non-key attributes in each table are fully dependent on the primary key.

---

## 🔹 Step 4: Third Normal Form (3NF)

### Main Objective: Eliminate transitive dependencies.

#### Key Adjustments:
- 🔥 **Removed `amount` from the `Payment` table** because `Booking.total_price` already stores the total payment amount for each booking. Keeping `amount` in both places was redundant and could lead to inconsistencies.
- 🔥 **Removed `name` from the `Property` table**. This field was originally meant to hold a property label, but:
  - Every property is already tied to a `host_id`, which links to the `User` table where the host’s `full_name` is stored.
  - Having a `name` field in `Property` didn’t offer functional value for the current schema and could lead to name duplication or confusion.

---

## ✅ Final Outcome

The final database design is:
- Fully normalized up to **3NF**
- Free of unnecessary duplication
- Scalable, secure, and efficient

These changes ensure better data integrity, reduce the risk of anomalies, and simplify future development.




