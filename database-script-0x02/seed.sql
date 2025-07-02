-- USERS
INSERT INTO users (user_id, first_name, last_name, email, password_hash, phone_number, role)
VALUES
('11111111-1111-1111-1111-111111111111', 'John', 'Doe', 'john@example.com', 'hashed_pw1', '1234567890', 'guest'),
('22222222-2222-2222-2222-222222222222', 'Alice', 'Smith', 'alice@example.com', 'hashed_pw2', '0987654321', 'host');

-- PROPERTIES
INSERT INTO properties (property_id, host_id, description, location, price_per_night)
VALUES
('aaaaaaa1-aaaa-aaaa-aaaa-aaaaaaaaaaaa', '22222222-2222-2222-2222-222222222222', 'Cozy 2BR apartment near the beach', 'Lagos', 75.00),
('aaaaaaa2-aaaa-aaaa-aaaa-aaaaaaaaaaaa', '22222222-2222-2222-2222-222222222222', 'Modern studio in city center', 'Abuja', 90.00);

-- BOOKINGS
INSERT INTO bookings (booking_id, property_id, user_id, start_date, end_date, total_price, status)
VALUES
('bbbbbbb1-bbbb-bbbb-bbbb-bbbbbbbbbbbb', 'aaaaaaa1-aaaa-aaaa-aaaa-aaaaaaaaaaaa', '11111111-1111-1111-1111-111111111111', '2025-08-01', '2025-08-05', 300.00, 'confirmed'),
('bbbbbbb2-bbbb-bbbb-bbbb-bbbbbbbbbbbb', 'aaaaaaa2-aaaa-aaaa-aaaa-aaaaaaaaaaaa', '11111111-1111-1111-1111-111111111111', '2025-08-10', '2025-08-12', 180.00, 'pending');

-- PAYMENTS
INSERT INTO payments (payment_id, booking_id, payment_date, payment_method)
VALUES
('ccccccc1-cccc-cccc-cccc-cccccccccccc', 'bbbbbbb1-bbbb-bbbb-bbbb-bbbbbbbbbbbb', '2025-07-20', 'credit_card');

-- REVIEWS
INSERT INTO reviews (review_id, property_id, user_id, rating, comment)
VALUES
('ddddddd1-dddd-dddd-dddd-dddddddddddd', 'aaaaaaa1-aaaa-aaaa-aaaa-aaaaaaaaaaaa', '11111111-1111-1111-1111-111111111111', 4.5, 'Great stay, friendly host!');

-- MESSAGES
INSERT INTO messages (message_id, sender_id, recipient_id, message_body)
VALUES
('eeeeeee1-eeee-eeee-eeee-eeeeeeeeeeee', '11111111-1111-1111-1111-111111111111', '22222222-2222-2222-2222-222222222222', 'Hi Alice, is the apartment available from Aug 1-5?');
