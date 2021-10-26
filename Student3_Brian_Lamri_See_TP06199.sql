--1.The highest salary of flight attendants.

SELECT 
MAX(salary) AS [Highest salary among flight attendant] 
FROM Flight_Attendant


--2.Display customer’s first name, flight booking number, booking date, flight airlines name, date of departure, time of departure, and status indicator is Canceled.  

SELECT 
Customer.first_name AS [Customer first name],
Flight_Booking.booking_no AS [Flight Booking number],
Flight_Booking.booking_date AS [Booking date],
Airline_Company.company_name AS [Flight airlines],
Flight_Booking.date_of_dep AS [Date of departure],
Flight_Booking.time_of_dep AS [Time of departure],
Flight_Booking.[status] AS [Status]
FROM Flight_Booking 
LEFT JOIN Customer 
ON Flight_Booking.customer_Id=Customer.customer_id
LEFT JOIN Flight
ON Flight_Booking.flight_id=Flight.flight_id
LEFT JOIN Airline_Company
ON Flight.company_id=Airline_Company.company_id
WHERE Flight_Booking.[status]='Cancel'


--3.List all customer’s first name and last name who did not place any booking. Sort the records by customer id in descending order.  

SELECT 
Customer.customer_id AS [Customer ID],
Customer.first_name AS [Customer first name],
Customer.last_name AS [Last name]
FROM Flight_Booking 
RIGHT JOIN Customer 
ON Flight_Booking.customer_Id=Customer.customer_id
WHERE Flight_Booking.customer_Id IS NULL
ORDER BY Customer.customer_Id DESC

--4.List all customer’s first name and last name who still have outstanding balance for their flight bookings. Sort the records based on the outstanding balance in ascending order

SELECT 
Customer.first_name AS [Customer first name],
Customer.last_name AS [Last name],
Flight_Booking.total_price-Flight_Booking.amount_paid_so_far AS [Outstanding balance]
FROM Flight_Booking 
RIGHT JOIN Customer 
ON Flight_Booking.customer_Id=Customer.customer_id
WHERE Flight_Booking.total_price-Flight_Booking.amount_paid_so_far>0
ORDER BY Flight_Booking.total_price-Flight_Booking.amount_paid_so_far ASC