SELECT 
    b.booking_id,
    b.property_id,
    b.booking_date,
    u.user_id,
    u.name AS user_name
FROM bookings AS b
INNER JOIN users AS u ON b.user_id = u.user_id;

SELECT 
    p.property_id,
    p.property_name,
    r.review_id,
    r.rating,
    r.comment
FROM properties AS p
LEFT JOIN reviews AS r ON p.property_id = r.property_id;

SELECT 
    u.user_id,
    u.name AS user_name,
    b.booking_id,
    b.property_id,
    b.booking_date
FROM users AS u
FULL OUTER JOIN bookings AS b ON u.user_id = b.user_id;
