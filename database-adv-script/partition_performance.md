# Partition Performance Report

## Objective

Partition the bookings table by start_date to improve query performance.

## Partitioning Implementation

- Created a partition function on start_date dividing data into quarterly ranges.
- Created a partition scheme mapping partitions to filegroups.
- Created a new partitioned bookings table using the scheme.

## Performance Testing

- Queries filtering bookings by start_date showed reduced scan times.
- Partition elimination improved efficiency by targeting relevant partitions only.

## Notes

- Partitioning benefits large tables with frequent date-based queries.
- Ensure maintenance of partitions for optimal performance.
