--student1 Sim Yoke Shin TP059851--
--question1--
SELECT c.customer_id,c.first_name,c.last_name,ca.province_or_state
  FROM Customer c ,Customer_Address ca
  WHERE c.first_name LIKE '%d' AND c.mailing_address_id=ca.mailing_address_id AND ca.province_or_state ='Sarawak';

--question2--
SELECT AVG(salary) AS average_salary 
FROM Pilot 
WHERE flying_hrs>20000

--question3--
SELECT p.pilot_id, p.first_name, p.last_name,age,p.flying_hrs,p.flying_hrs,ac.company_name AS Airline_Company_Name
FROM Pilot p, Flight_Pilots fp, Flight f,Airline_Company ac
WHERE fp.pilot_id=p.pilot_id AND f.flight_id=fp.flight_id AND f.company_id=ac.company_id AND ac.company_name ='Spark Airways'
GROUP BY p.pilot_id, p.first_name, p.last_name,age,p.flying_hrs,p.flying_hrs,ac.company_name;

--question4--
SELECT fb.booking_date,fb.flight_id AS flight_Number,c.last_name
FROM Flight_Booking fb, Customer c
WHERE fb.total_price-fb.amount_paid_so_far=0 AND fb.customer_Id=c.customer_id
GROUP BY  fb.booking_date,fb.flight_id,c.last_name