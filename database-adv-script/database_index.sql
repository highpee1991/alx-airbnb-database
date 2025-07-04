-- index for fast email lookup
CREATE INDEX idx_users_email ON users(email)

-- index for users base on booking queries
CREATE INDEX idx_bookings_users ON bookings(user_id)

-- index for property based booking query
CREATE INDEX idx_bookings_property_id ON properties(property_id)

-- index to filter property by location
CREATE INDEX idx_properties_location ON properties(location)

-- index to get all listing by a specific host
CREATE INDEX idx_properties_host_id ON properties(host_id)


-- Test query performance using EXPLAIN ANALYZE
EXPLAIN ANALYZE
SELECT * FROM bookings WHERE user_id = '11111111-1111-1111-1111-111111111111';

EXPLAIN ANALYZE
SELECT * FROM users WHERE email = 'johndoe@example.com';