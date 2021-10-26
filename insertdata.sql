
/* done*/
INSERT INTO [dbo].[Airline_Company]
           ([company_id]
           ,[company_name])
     VALUES
           ('EA1709','Echo Airline'),
		   ('SA1865','Spark Airways'),
		   ('PA2098','Peak Airways'),
		   ('CA8760','Core Airways');

/*done */
INSERT INTO [dbo].[Customer]
           ([customer_Id],[first_name],[last_name],[mailing_address_id])
     VALUES
           ('C100001','Kai Dong','Ng','CA000001'),
		   ('C100002','Yoke Shin','Sim','CA000002'),
		   ('C100003','Muhamma d Shah','Bin Allahin','CA000003'),
		   ('C100004','Lamri See','Brian','CA000004'),
		   ('C100005','Bon','James','CA000005'),
		   ('C100006','Jia Xin','Yap','CA000006'),
		   ('C100007','bin Muhamad','Adam','CA000007'),
		   ('C100008','David','Leong','CA000008'),
		   ('C100009','Poh Keng','Sim','CA000009'),
		   ('C100010','Berhad','Kim','CA000010'),
		   ('C100011','Wikiam','Sim','CA000011'),
		   ('C100012','Lee Hod','Tan','CA000012'),
		   ('C100013','Shqo Wei','Chong','CA000013');


/* done*/
INSERT INTO [dbo].[Flight]
           ([flight_id],[no_business_seats],[no_economy_seats],[company_id])
     VALUES
           ('AF001','280','100','EA1709'),
		   ('AF002','300','140','SA1865'),
		   ('AF003','400','200','PA2098'),
		   ('AF004','350','170','CA8760'),
		   ('AF005','290','110','SA1865'),
		   ('AF006','300','210','EA1709'),
		   ('AF007','280','100','EA1709'),
		   ('AF008','300','140','SA1865'),
		   ('AF009','400','200','PA2098'),
		   ('AF010','350','170','CA8760');

/*done*/
INSERT INTO [dbo].[Customer_Address]
           ([mailing_address_id],[street],[city],[province_or_state],[postal_code],[country])
     VALUES
           ('CA000001','8 Kompleks Jln Sultan','Kuala Lumpur','Wilayah Persekutuan','50000','Malaysia'),
		   ('CA000002','36 A Jln Ss2/10 Ss2','Petaling Jaya','Selangor','47300','Malaysia'),
		   ('CA000003','1 17 Jln Sulaiman ','Kajang','Selangor','43000','Malaysia'),
		   ('CA000004',' No. 1 Jalan Ronggeng 5 Taman Skudai Baru ','Johor Bahru ','Johor','81300','Malaysia'),
		   ('CA000005','21St Floor Ambank Group Jln Raja Chulan','Kuala Lumpur ','Wilayah Persekutuan','50200','Malaysia'),
		   ('CA000006','17 Jln Hilltop 5','Miri','Sarawak','98000','Malaysia'),
		   ('CA000007','56 Palm Residence,Jln Ensing Timur，Tmn Stapok','Kucing','Sarawak','932500','Malaysia'),
		   ('CA000008','H01 Along Jln Diwarta, Bintulu City Centre','Bintulu','Sarawak','97000','Malaysia'),
		   ('CA000009','107,Jln Green','Kucing','Sarawak','931500','Malaysia'),
		   ('CA000010','7V4P Tmn Guan Soon','Tawau','Sabah','91000','Malaysia'),
		   ('CA000011','23,Jln Bakawali 42,Johor Jaya','Johor Bahru','Johor','81100','Malaysia'),
		   ('CA000012','4,Jln Pandan Damai 2/31,Tmn Pandan Damai','Kuantan','Pahang','25150','Malaysia'),
		   ('CA000013','1,Tanah Merah','Tanah Merah','Kelantan','17500','Malaysia');


/*done*/
INSERT INTO [dbo].[FA_Address]
           ([address_id],[street],[city],[province_or_state],[postal_code],[country])
     VALUES
           ('FAA001','15 Jln 17/108 Salak South Site And Service','Kuala Lumpur','Wilayah Persekutuan','56100','Malaysia'),
		   ('FAA002','Jl Kp Sawah 44, Dki Jakarta','Dki Jakarta','Jakarta','17422','Indonesia'),
		   ('FAA003','69/13 Soi Athens Theater Phythai Road','Bangkok','Bangkok','10400','Thailand'),
		   ('FAA004','Lorong Sungai Lokan 3/3, Southtech Industrial Park, Butterworth','Pulau Penang','Penang','42000','Malaysia'),
		   ('FAA005','15 Jln 17/108 Salak South Site And Service','Kuala Lumpur ','Wilayah Persekutuan','32000','Malaysia'),
		   ('FAA006','Kg Dock,6214,Jln Pengkalan,Bukit Tengah',' Bukit Mertajam',' Penang','14000','Malaysia'),
		   ('FAA007','1,Jln Teluk Piah Kanan',' Kuala Selangor','Selangor','45000','Malaysia'),
		   ('FAA008','1 Bandung Ujung,Lubuk Linggau','Kota Lubuklinggu','Sumatera Selatan','31614','Indonesia'),
		   ('FAA009','1500,YECC,Tayuman St,353','Metro','Manila','1014','Philippines'),
		   ('FAA010','No 43 Bo Aung Gyaw Street','Yangon','Yangon','11181','Myanmar');

/*done*/
INSERT INTO [dbo].[Pilot] ([pilot_id],[first_name],[last_name],[age],[yo_exp],[flying_hrs],[salary])
     VALUES
	 ('PL001','Muhammad Alif','Bin Abdullah','25','1','1000','2000'),
	 ('PL002','Dylan','Mathew','30','5','6000','5800'),
	 ('PL003','Ramesh','A/L Shri Raam','28','4','4500','4500'),
	 ('PL004','Philip Kah Ming','Lee','40','14','30000','10000'),
	 ('PL005','Leong','Timoty','26','2','1500','2500'),
	 ('PL006','Mikael','Tinnason','29','5','5000','6000'),
	 ('PL007','Yuji','Nishida','23','1','800','2000'),
	 ('PL008','Keter','Sam','25','4','3000','5800'),
	 ('PL009','Zarad','Liew','24','2','1900','2100'),
	 ('PL010','Ong','brenda','45','20','40000','10000');


/*done*/
INSERT INTO [dbo].[Customer_email]
           ([email],[customer_id])
     VALUES
           ('kdng@gmail.com','C100001'),
		   ('simyk@yahoo.com','C100002'),
		   ('muhammadsb@gmail.com','C100003'),
		   ('brianls@gmail.com','C100004'),
		   ('jamesbon@yahoo.com','C100005'),
		   ('yapjx@gmail.com','C100006'),
		   ('AdambM@gmail.com','C100007'),
		   ('Leongd@yahoo.com','C100008'),
		   ('SimPk@gmail.com','C100009'),
		   ('Kimberhad@gmail.com','C100010'),
		   ('SimW@yahoo.com','C100011'),
		   ('TanLH@gmail.com','C100012'),
		   ('ChongSw@gmail.com','C100013');

/*done*/
INSERT INTO [dbo].[Customer_hpno]
           ([house_phone_no],[customer_id])
     VALUES
           ('03-32847268','C100001'),
		   ('03-23482736','C100002'),
		   ('03-48492834','C100003'),
		   ('03-56713296','C100004'),
		   ('03-55129463','C100005'),
		   ('03-23113219','C100006'),
		   ('03-22448890','C100007'),
		   ('03-55992444','C100008'),
		   ('03-56422992','C100009'),
		   ('03-10047829','C100010'),
		   ('03-22200044','C100011'),
		   ('03-48222005','C100012'),
		   ('03-99973822','C100013');

/*done*/
INSERT INTO [dbo].[Flight_Attendant]
           ([flight_attendant_id],[full_name] ,[phone_no] ,[address_id] ,[salary])
     VALUES
           ('FA008','James Lee','172234567','FAA001','3000'),
		   ('FA023','Ali Bin Mansur','0-21-845-0226','FAA002','3500'),
		   ('FA088','Kunlavut Phrompan','662 6121124','FAA003','2800'),
		   ('FA035','Jamie Seah','32141-7414','FAA004','2700'),
		   ('FA024','Thilak A/L Ramalingam','6052535930','FAA005','3000'),
		   ('FA009','Hor Alan','012-3332819','FAA006','3200'),
		   ('FA010','Alis Helt','323-12-4322','FAA007','3400'),
		   ('FA011','Proman Shaw','022-1238131','FAA008','2400'),
		   ('FA012','Zam Bras','9814-1231','FAA009','2800'),
		   ('FA013','Kul Naman','2937123111','FAA010','3100');


/*done*/
INSERT INTO [dbo].[Flight_Booking]
           ([booking_no],[booking_state],[arrival_state],[booking_date],[flight_id],[date_of_dep],[time_of_dep],[date_of_arr] ,[time_of_arr],[class_indicator] ,[total_price] ,[status],[amount_paid_so_far],[customer_Id])
     VALUES
		   ('B000001','Perak','Sabah','2021-03-05','AF001','2021-04-22','11:30','2021-04-22','13:00','Business',220,'Booked',220,'C100001'),
		   ('B000002','Negeri Sembilan','Sarawak','2021-03-04','AF002','2021-05-04','13:20','2021-05-04','14:00','Economy',100,'Booked',100,'C100002'),
		   ('B000003','Pahang','Sabah','2021-3-7','AF003','2021-4-27','15:20','2021-4-27','16:00','Business',198,'Booked',198,'C100003'),
		   ('B000004','Sabah','Negeri Sembilan','2021-3-10','AF004','2021-5-10','15:00','2021-5-10','15:30','Economy',110,'Booked',110,'C100004'),
		   ('B000005','Sarawak','Perak','2021-3-10','AF005','2021-4-11','10:00','2021-4-11','10:30','Business',200,'Cancel',0,'C100005'),
		   ('B000006','Sabah','Wilayah Persekutuan Kuala Lumpur','2021-3-11','AF006','2021-4-28','22:00','2021-4-28','22:30','Economy',119,'Scratched',80,'C100006'),
		   ('B000007','Sarawak','Perak','2021-3-11','AF007','2021-4-8','12:00','2021-4-8','12:30','Economy',110,'Booked',80,'C100007'),
		   ('B000008','Sabah','Pahang','2021-3-5','AF008','2021-4-1','17:00','2021-4-1','17:30','Business',210,'Booked',50,'C100008'),
		   ('B000009','Negeri Sembilan','Sabah','2021-3-8','AF009','2021-3-28','20:00','2021-3-28','20:45','Economy',110,'Booked',70,'C100009'),
		   ('B000010','Wilayah Persekutuan Kuala Lumpur','Sabah','2021-3-2','AF010','2021-5-28','22:00','2021-5-28','22:30','Business',200,'Cancel',0,'C100010');

/*done*/
INSERT INTO [dbo].[Flight_Pilots]
           ([flight_id]
           ,[pilot_id],[position])
     VALUES
           ('AF001','PL001','Co-captain'),
	 ('AF001','PL002','Captain'),
	 ('AF002','PL003','Co-captain'),
	 ('AF002','PL004','Captain'),
	 ('AF003','PL005','Co-captain'),
	 ('AF003','PL006','Captain'),
	 ('AF004','PL001','Co-captain'),
	 ('AF004','PL004','Captain'),
	 ('AF005','PL002','Captain'),
	 ('AF005','PL003','Co-captain'),
	 ('AF006','PL003','Co-captain'),
	 ('AF006','PL002','Captain'),
	 ('AF007','PL005','Co-captain'),
	 ('AF007','PL004','Captain'),
	 ('AF008','PL003','Co-captain'),
	 ('AF008','PL002','Captain'),
	 ('AF009','PL003','Co-captain'),
	 ('AF009','PL004','Captain'),
	 ('AF010','PL001','Co-captain'),
	 ('AF010','PL004','Captain');
/*flight_FA done*/
INSERT INTO [dbo].[Flight_FA]
           ([flight_id]
           ,[flight_attendant_id],[position])
     VALUES
     ('AF001','FA023','Chief Purser'),
	 ('AF001','FA088','Cabin Crew'),
	 ('AF002','FA012','Cabin Crew'),
	 ('AF002','FA013','Purser'),
	 ('AF003','FA023','Chief Purser'),
	 ('AF003','FA035','Cabin Crew'),
	 ('AF004','FA008','Purser'),
	 ('AF004','FA088','Cabin Crew'),
	 ('AF005','FA011','Cabin Crew'),
	 ('AF005','FA024','Purser'),
	 ('AF006','FA012','Cabin Crew'),
	 ('AF006','FA023','Chief Purser'),
	 ('AF007','FA035','Cabin Crew'),
	 ('AF007','FA013','Purser'),
	 ('AF008','FA013','Purser'),
	 ('AF008','FA010','Chief Purser'),
	 ('AF009','FA023','Chief Purser'),
	 ('AF009','FA008','Purser'),
	 ('AF010','FA010','Chief Purser'),
	 ('AF010','FA008','Purser');

GO