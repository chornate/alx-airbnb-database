EXPLAIN ANALYZE
SELECT * FROM bookings WHERE user_id = 123;

CREATE INDEX idx_bookings_user_id ON bookings(user_id);
CREATE INDEX idx_bookings_property_id ON bookings(property_id);

EXPLAIN ANALYZE
SELECT * FROM bookings WHERE user_id = 123;
