# Airbnb Clone – Database Schema

This project defines the relational database schema for an Airbnb clone backend system. It models the core entities and their relationships to support essential functionalities such as property listings, user management, bookings, reviews, messaging, and payments.

## 📂 Directory
`ERD/` — Contains:
- `schema.sql`: SQL file defining the structure of the database.
- `normalization.md`: Explanation of normalization steps (up to 3NF).
- `airbnb_erd.png`: Visual Entity Relationship Diagram (ERD).
- `README.md`: This file.

## 🧱 Tables Overview

- **users** – Stores user information (guest, host, admin).
- **properties** – Listings created by hosts.
- **bookings** – Reservations made by users.
- **payments** – Records of payments per booking.
- **reviews** – Ratings/comments left by users.
- **messages** – Direct messages between users.

## 🔒 Constraints & Indexes

- Primary and foreign keys are used to ensure data integrity.
- Constraints like `CHECK` validate roles, booking status, and payment methods.
- Indexes improve performance on frequently queried foreign key columns.

## 🧠 Normalization

The schema is normalized up to **Third Normal Form (3NF)** to eliminate redundancy and ensure consistency. Example: `total_price` is kept in the `bookings` table while `payments` references only what is necessary, avoiding duplication of amount values.

## 🛠️ Tools

- PostgreSQL syntax
- ERD created with Draw.io

## ✍️ Author

Taiwo Oluwaseun Ipadeola  
[GitHub: highpee1991](https://github.com/highpee1991)

