-- Step 1: Rename the original table
ALTER TABLE bookings RENAME TO bookings_old;

-- Step 2: Create the parent bookings table (partitioned)
CREATE TABLE bookings (
    booking_id UUID NOT NULL,
    property_id UUID NOT NULL,
    user_id UUID NOT NULL,
    start_date DATE NOT NULL,
    end_date DATE NOT NULL,
    total_price DECIMAL(10, 2) NOT NULL,
    status VARCHAR(10) CHECK (status IN ('pending', 'confirmed', 'canceled')),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (booking_id, start_date),
    FOREIGN KEY (property_id) REFERENCES properties(property_id),
    FOREIGN KEY (user_id) REFERENCES users(user_id)
) PARTITION BY RANGE (start_date);

-- Step 3: Create partition tables (example for 2025)
CREATE TABLE bookings_2025_q1 PARTITION OF bookings
    FOR VALUES FROM ('2025-01-01') TO ('2025-04-01');

CREATE TABLE bookings_2025_q2 PARTITION OF bookings
    FOR VALUES FROM ('2025-04-01') TO ('2025-07-01');

CREATE TABLE bookings_2025_q3 PARTITION OF bookings
    FOR VALUES FROM ('2025-07-01') TO ('2025-10-01');

CREATE TABLE bookings_2025_q4 PARTITION OF bookings
    FOR VALUES FROM ('2025-10-01') TO ('2026-01-01');

-- Step 4: Copy data from old table into new partitioned table
INSERT INTO bookings (
    booking_id, property_id, user_id, start_date, end_date,
    total_price, status, created_at
)
SELECT
    booking_id, property_id, user_id, start_date, end_date,
    total_price, status, created_at
FROM bookings_old;


