select 
    b.booking_id,
    b.property_id,
    b.booking_date,
    u.user_id,
    u.name as user_name
from bookings as b
inner join users as u on b.user_id = u.user_id;

select 
    p.property_id,
    p.property_name,
    r.review_id,
    r.rating,
    r.comment
from properties as p
left join reviews as r on p.property_id = r.property_id;

select 
    u.user_id,
    u.name as user_name,
    b.booking_id,
    b.property_id,
    b.booking_date
from users as u
full outer join bookings as b on u.user_id = b.user_id;
