create  database HMS
use hms
create table patienttable
(PatientID varchar(20),
Fname varchar(20),	
Lname varchar(20),
Contact int,
Age	int
)

insert into patienttable 
 values('P0001','John','Doe',123-456-7890,35),
		('P0002','Jane','Smith',987-654-3210,25),
		('P0003','michael','johson',555-555-555,62),
		('P0004','David','Lee',111-222-3333,33),	
		('P0005','Sarah','Brown',444-555-6666,21),
		('P0006','John','Doe',777-888-9999,28),
		('P0007','Jane','Smith'	,333-222-1111,30),
		('P0008','Michael','Johnson',666-777-8888,41),
		('P0009','David','Lee',999-888-7777,41),
		('P0010','Sarah','Brown',222-333-4444,60)

select * from patienttable

create table Doctortable
(DoctorID varchar(20),Fname varchar(20),Lname varchar(20),
Speciality varchar(20),	ContactEmail varchar(30)	
)

insert into Doctortable
values('D0001','Dr. John','Doe','General Physician','john.doe@example.com'),
('D0002','Dr. Jane','Smith','Pediatrician','jane.smith@example.com'),
('D0003','Dr. Michael',	'Johnson','Cardiologist','michael.j@example.com')

select * from Doctortable

create table  Appointment
(AppointmentID varchar(30),	PatientID varchar(30),	DoctorID varchar(30),
Dates datetime ,	EndTime datetime,	Status varchar(20),
)


iNSERT INTO Appointment 
VALUES
('A0001', 'P0001', 'D0001', '2023-11-07 10:00', '2023-11-07 11:15', 'Scheduled'),
('A0002', 'P0002', 'D0002', '2023-11-08 11:00', '2023-11-08 12:06', 'Completed'),
('A0003', 'P0003', 'D0003', '2023-11-09 12:00', '2023-11-09 13:21', 'Cancelled'),
('A0004', 'P0002', 'D0001', '2023-11-10 13:00', '2023-11-10 14:17', 'Scheduled'),
('A0005', 'P0005', 'D0002', '2023-11-11 14:00', '2023-11-11 15:45', 'Completed'),
('A0006', 'P0006', 'D0003', '2023-11-12 15:00', '2023-11-12 16:15', 'Cancelled'),
('A0007', 'P0007', 'D0001', '2023-11-13 16:00', '2023-11-13 17:09', 'Scheduled'),
('A0008', 'P0008', 'D0002', '2023-11-14 17:00', '2023-11-14 18:29', 'Completed'),
('A0009', 'P0004', 'D0003', '2023-11-15 18:00', '2023-11-15 19:11', 'Cancelled'),
('A0010', 'P0010', 'D0001', '2023-11-16 19:00', '2023-11-16 20:05', 'Scheduled')

select * from Appointment

create table PatientsAttendAppointments 
(PatientID varchar(20),	AppointmentID varchar(20)		
)

insert into PatientsAttendAppointments
values
('P0001','A0001'),
('P0002','A0002'),
('P0003','A0003'),
('P0004','A0004'),
('P0005','A0005'),
('P0006','A0006'),
('P0007','A0007'),
('P0008','A0008'),
('P0009','A0009'),
('P0010','A0010'),
('P0001','A0004'),
('P0002','A0005'),
('P0003','A0006')


select * from PatientsAttendAppointments

create table MedicalHistory
(HistoryID varchar(20),	PatientID varchar(20),	Dates datetime,	Condition varchar(20),
Surgeries varchar(20),	Medication varchar(20)
)


insert into MedicalHistory
values('H0001','P0001','01-11-2023 08:00','Hypertension','Appendectomy','Lisinopril'),
('H0002','P0002','02-11-2023 09:00','Diabetes','None','Metformin'),
('H0003','P0003','03-11-2023 10:00','Asthma','Tonsillectomy','Albuterol'),
('H0004','P0004','04-11-2023 11:00','Migraine',	'Appendectomy',	'Ibuprofen'),
('H0005','P0005','05-11-2023 12:00','Diabetes'	,'None','Insulin'),
('H0006','P0006','06-11-2023 13:00','Asthma','Tonsillectomy','Albuterol'),
('H0007','P0007','07-11-2023 14:00','Hypertension',	'Appendectomy','Lisinopril'),
('H0008','P0008','08-11-2023 15:00','Diabetes','None','Metformin'),
('H0009','P0009','09-11-2023 16:00','Asthma','Tonsillectomy','Albuterol'),
('H0010','P0010','10-11-2023 17:00'	,'Migraine','Appendectomy',	'Ibuprofen')

truncate table MedicalHistory
select * from MedicalHistory

create table PatientsFillHistory 			
(PatientID varchar(20),	HistoryID varchar(20),DateFilled datetime	
)
INSERT INTO PatientsFillHistory
VALUES
('P0001', 'H0001', '2023-11-04 08:30'),
('P0002', 'H0002', '2023-11-05 09:45'),
('P0003', 'H0003', '2023-11-06 10:30'),
('P0004', 'H0004', '2023-11-07 11:15'),
('P0005', 'H0005', '2023-11-08 12:45'),
('P0006', 'H0006', '2023-11-09 13:30'),
('P0007', 'H0007', '2023-11-10 14:15'),
('P0008', 'H0008', '2023-11-11 15:45'),
('P0009', 'H0009', '2023-11-12 16:30'),
('P0010', 'H0010', '2023-11-13 17:15')

select * from PatientsFillHistory

create table Medication_Cost	
(Medication varchar(20),Cost_in$ int	)			

insert into Medication_Cost
values('Lisinopril'	,10),
('Metformin',15),
('Albuterol',12),
('Ibuprofen',8),
('Insulin',	20)

use HMS

select * from patienttable
select * from Doctortable
select * from Appointment
select * from PatientsAttendAppointments
select * from PatientsFillHistory
select * from MedicalHistory
select * from Medication_Cost

-----1	Find the names of patients who have attended appointments scheduled by Dr. John Doe.
select * from patienttable
select * from Appointment

select concat(p.Fname,' ',p.lname)  ' Name of patient' from patienttable p
join Appointment a on p.PatientID=a.PatientID
where a.DoctorID='D0001'


---2 .Calculate the average age of all patients.
select * from patienttable

select Fname,Lname ,avg(age) 'Average_age' from patienttable
group by fname,lname


----3.Create a stored procedure to get the total number of appointments for a given patient.
select * from Appointment
create procedure appointments 
as 
Begin
select p.Fname,p.Lname,a.PatientID,count(a.patientID) 'Total_appointment' from patienttable p
join Appointment a on p.patientID=a.PatientID
group by p.Fname,p.Lname,a.PatientID
order by a.PatientID
end
Execute appointments 



----4.Find the names of patients along with their appointment details and the corresponding doctor's name

select * from patienttable
select * from Doctortable
select * from Appointment

select concat(p.Fname,' ',p.Lname) 'Patient_name',p.age as 'Age of patient',d.Fname 'Doctor_name'from  patienttable p
join Appointment a on p.PatientID=a.PatientID
join Doctortable d on d.DoctorID=a.DoctorID


----5.Find the patients who have a medical history of diabetes and 
-----their next appointment is scheduled within the next 7 days.

select * from patienttable
select * from Doctortable
select * from Appointment
select * from MedicalHistory

select concat(p.fname,' ',p.lname) 'name of patient',m.Condition from patienttable p
join MedicalHistory m on p.PatientID=m.PatientID
join Appointment a on p.PatientID=a.PatientID
where m.condition='Diabetes' and DATEDIFF(day,a.Dates,a.Endtime)<=7


----6.Find patients who have multiple appointments scheduled.


select * from patienttable
select * from Appointment

select concat(p.Fname,' ',p.lname) 'Patient name',count(a.patientID) 'No of Appointment' from patienttable p
join  Appointment a  on p.PatientID=a.PatientID
group by  concat(p.Fname,' ',p.lname)
having count(*)>1
order  by [No of Appointment] desc


---7.Calculate the average duration of appointments for each doctor.

select * from Doctortable
select * from Appointment

select d.fname, d.DoctorID,avg(datediff(MINUTE,a.dates,a.endtime))'Average_appointments_time' from Appointment a 
join doctortable d on  a.DoctorID=d.DoctorID
group by d.fname,d.DoctorID



-----8.	Find Patients with Most Appointments
select * from patienttable
select * from Appointment


select   concat(p.fname,' ',p.lname) 'patient_name',count(a.patientid)'most_appointments' from patienttable p
join Appointment a on p.PatientID=a.PatientID
group by concat(p.fname,' ',p.lname)
order by most_appointments desc 

--- NOTE******  Most Appointments person is jane smith is 3 appointment


----9 .Calculate the total cost of medication for each patient.

select * from patienttable
select * from MedicalHistory
select * from Medication_Cost

select p.fname,m.patientID,mc.cost_in$ 'Total_cost_of_medication_in_$' from MedicalHistory m
join Medication_Cost mc on m.Medication=mc.medication
join patienttable p on m.PatientID=p.PatientID
order by Total_cost_of_medication_in_$ desc






















