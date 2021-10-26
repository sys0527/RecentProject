USE [IDB assignment new]
--Ng Kai Dong TP061557

--Question 1
SELECT
fa.full_name AS [Name],
f.position AS [Position],
fa.salary AS [Salary]
FROM Flight_Attendant fa, Flight_FA f
WHERE (fa.salary != 2800 AND fa.salary != 3500) AND f.flight_attendant_id=fa.flight_attendant_id
GROUP BY fa.full_name,f.position,fa.salary


--Question 2
SELECT
c.first_name,
c.last_name,
fb.[status] AS [Status]
FROM Customer c, Flight_Booking fb
WHERE fb.[status] = 'Booked' AND c.customer_id=fb.customer_Id;


--Question 3--
SELECT
fa.full_name AS [flight attendant’s full name],
f.position AS [flight attendant’s position],
p.first_name AS [Pilot's first name],
p.last_name AS [Pilot's last name]
FROM Flight_Attendant fa, Flight_FA f, Pilot p, Flight_Pilots fp, Flight ff
WHERE p.pilot_id = fp.pilot_id AND fp.flight_id =ff.flight_id AND p.first_name = 'Mikael' AND p.last_name = 'Tinnason' AND fa.flight_attendant_id = f.flight_attendant_id AND f.flight_id=ff.flight_id


--Question 4
SELECT
c.first_name,
c.last_name,
a.province_or_state
FROM Customer c, Customer_Address a
WHERE (a.province_or_state != 'Sarawak' AND a.province_or_state !='Sabah' AND a.province_or_state !='Pahang' AND a.province_or_state !='Negeri Sembilan' AND a.province_or_state !='Perak' AND a.province_or_state !='Wilayah Persekutuan Kuala Lumpur') AND c.mailing_address_id=a.mailing_address_id
GROUP BY c.first_name, c.last_name, a.province_or_state