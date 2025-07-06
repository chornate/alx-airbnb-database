CREATE PARTITION FUNCTION bookingDateRangePF (DATE)
AS RANGE RIGHT FOR VALUES 
('2023-01-01', '2023-04-01', '2023-07-01', '2023-10-01');

CREATE PARTITION SCHEME bookingDateRangePS
AS PARTITION bookingDateRangePF
ALL TO ([PRIMARY]);

CREATE TABLE bookings_partitioned
(
    booking_id INT PRIMARY KEY,
    user_id INT,
    property_id INT,
    start_date DATE,
    end_date DATE,
    booking_date DATE
) ON bookingDateRangePS(start_date);
