/*
IDB assignment by Sim Yoke Shin, Ng Kai Dong & Brian Lamri See
SQL code for database creation.
*/
USE [newestIDB]
GO
CREATE TABLE Customer_Address(
	mailing_address_id nvarchar(20) NOT NULL PRIMARY KEY,
	street varchar(50) NOT NULL,
	city varchar(50) NOT NULL,
	province_or_state varchar(50) NOT NULL,
	postal_code varchar(20) NOT NULL,
	country varchar(50) NOT NULL,
);

CREATE TABLE Customer(
	customer_id varchar(30) NOT NULL PRIMARY KEY,
	first_name nvarchar(50) NOT NULL,
	last_name nvarchar(50) NOT NULL,
	mailing_address_id nvarchar(20) NOT NULL FOREIGN KEY REFERENCES Customer_Address(mailing_address_id),
);

CREATE TABLE Customer_hpno(
	house_phone_no varchar(20) NOT NULL PRIMARY KEY,
	customer_id varchar(30) NOT NULL FOREIGN KEY REFERENCES Customer(customer_id),
);

CREATE TABLE Customer_email(
	email nvarchar(100) NOT NULL PRIMARY KEY,
	customer_id varchar(30) NOT NULL FOREIGN KEY REFERENCES Customer(customer_id),
);

CREATE TABLE Airline_Company(
	company_id varchar(20) NOT NULL PRIMARY KEY,
	company_name nvarchar(50) NOT NULL,
);

CREATE TABLE Flight(
	flight_id varchar(20) NOT NULL PRIMARY KEY,
	no_business_seats int NOT NULL,
	no_economy_seats int NOT NULL,
	company_id varchar(20) NOT NULL FOREIGN KEY REFERENCES	Airline_Company(company_id),
);

CREATE TABLE Flight_Booking(
	booking_no varchar(20) NOT NULL PRIMARY KEY,
	booking_state varchar(50) NOT NULL,
	arrival_state varchar(50) NOT NULL,
	booking_date date NOT NULL,
	flight_id varchar(20) NOT NULL FOREIGN KEY REFERENCES Flight(flight_id),
	date_of_dep date NOT NULL,
	time_of_dep time(7) NOT NULL,
	date_of_arr date NOT NULL,
	time_of_arr time(7) NOT NULL,
	class_indicator varchar(30) NOT NULL,
	total_price money NOT NULL,
	[status] varchar(30) NOT NULL,
	amount_paid_so_far money NOT NULL,
	customer_Id varchar(30) NOT NULL FOREIGN KEY REFERENCES Customer(customer_id),
	
	CONSTRAINT chk_flight_booking_class CHECK (class_indicator in ('Business','Economy')),
	CONSTRAINT chk_flight_booking_status CHECK ([status] in ('Booked','Cancel','Scratched'))
);

CREATE TABLE FA_Address(
	address_id varchar(20) NOT NULL PRIMARY KEY,
	street varchar(200) NOT NULL,
	city varchar(50) NOT NULL,
	province_or_state varchar(50) NOT NULL,
	postal_code varchar(20) NOT NULL,
	country varchar(50) NOT NULL,
);

CREATE TABLE Flight_Attendant(
	flight_attendant_id varchar(20) NOT NULL PRIMARY KEY,
	full_name nvarchar(100) NOT NULL,
	phone_no varchar(20) NOT NULL,
	address_id varchar(20) NOT NULL FOREIGN KEY REFERENCES FA_Address(address_id),
	salary money NOT NULL,
);

CREATE TABLE Flight_FA(
	flight_id varchar(20) NOT NULL FOREIGN KEY REFERENCES Flight(flight_id),
	flight_attendant_id varchar(20) NOT NULL FOREIGN KEY REFERENCES Flight_Attendant(flight_attendant_id),
	position varchar(20) NOT NULL,

	CONSTRAINT PK_Flight_FA PRIMARY KEY (flight_id,flight_attendant_id),
	CONSTRAINT chk_flight_FA_position CHECK (position in ('Chief Purser','Purser','Cabin Crew')),
	CONSTRAINT UQ_flight_id_FA_position UNIQUE (flight_id,position) 
);

CREATE TABLE Pilot(
	pilot_id varchar(20) NOT NULL PRIMARY KEY,
	first_name nvarchar(50) NOT NULL,
	last_name nvarchar(50) NOT NULL,
	age int NOT NULL,
	yo_exp int NOT NULL,
	flying_hrs int NOT NULL,
	salary money NOT NULL,
);

CREATE TABLE Flight_Pilots(
	flight_id varchar(20) NOT NULL FOREIGN KEY REFERENCES Flight(flight_id),
	pilot_id varchar(20) NOT NULL FOREIGN KEY REFERENCES Pilot(pilot_id),
	position varchar(50) NOT NULL,
	
	CONSTRAINT PK_Flight_Pilot PRIMARY KEY (flight_id,pilot_id),
	CONSTRAINT chk_flight_pilots_position CHECK (position in ('Captain','Co-captain')),
	CONSTRAINT UQ_flight_id_pilot_position UNIQUE (flight_id,position)
);

