--*********************************************** To create the datebase **************************************************

--create database clinicmanagementsystem;


/*use clinicmanagementsystem 
create table Patients (
	PatientID int primary key,
	Pfirstname varchar (max) ,
	Plastname varchar(max),
	Pgender varchar(max), 
	Age int,
	Phonenumber nvarchar(max),
	Paddress text
	);
create table Treatments ( 
	TreatmentID int primary key, 
	TreatmentType varchar(max)
	);
create table Equipment (
	EquipID int primary key,
	Euipname varchar(max),
  	RequestedDate date  
 	);
create table Medicines (
	MedicineID int primary key,
 	Medicinename varchar(max),
 	AvailableQuantity varchar(max),
 	Descripttion text,
 	RequestDate varchar(max)
 	);   
create table Checkup (
	CheckID int primary key,
 	patientid int foreign key references Patients(PatientID), 
 	Complains text,
 	Findings text,
 	treatmentid int foreign key references Treatments(TreatmentID),
 	medicineid int foreign key references Medicines(MedicineID),
 	quantity int,
 	checkupdate date,
 	equipid int foreign key references Equipment(EquipID)
 	);
	*/


/*
use clinicmanagementsystem;

-- *******************************************************insertion **************************************************
--____________________________________ to insert the info of the patient __________________________________________


INSERT INTO Patients VALUES (1562,'ali', 'mohamed','m',21, 01001001,'kfer elshiehk');
INSERT INTO Patients VALUES (1456,'zayn', 'ahmed','m',23, 0111100,'kfer elshiehk');
INSERT INTO Patients VALUES (1789,'aya', 'mohamed','f',25, 01001111,'cairo');
INSERT INTO Patients VALUES (1426,'noha', 'ahmad','f',28, 01011000,'alexandria');
INSERT INTO Patients VALUES (4635, 'mohamed', 'ali','m',21, 01018012,'alexandria');
INSERT INTO Patients VALUES (6327, 'zeynap', 'mohamed','f',31, 01187510,'cairo');
INSERT INTO Patients VALUES (9723,'ali', 'mohamed','m',21, 0105100,'kfer elshiehk');
INSERT INTO Patients VALUES (3654, 'ahmed', 'ali','m',31, 0180100,'alexandria');
INSERT INTO Patients VALUES (8756, 'salma', 'ali','f',29, 01789100,'cairo');
INSERT INTO Patients VALUES (8136,'omar', 'eslam','m',24, 01897560,'cairo');
INSERT INTO Patients VALUES (1784,'zayna', 'mohamed','f',27, 0189100,'alexandria');
INSERT INTO Patients VALUES (1897,'nada', 'esmail','m',27, 0189756,'kfer elshiehk');
INSERT INTO Patients VALUES (1875,'hana', 'fawzy','f',24, 0118972,'kfer elshiehk');
INSERT INTO Patients VALUES (5689,'amr', 'medhat','m',25, 0179325,'alexandria');
INSERT INTO Patients VALUES (1876,'habiba', 'mohamed','f',25, 01789655,'cairo');

--_________________________________________to insert the info of the equipment ______________________________


INSERT INTO Equipment VALUES (489,'Autoclave','2020-05-10')
INSERT INTO Equipment VALUES (487,'Audiometer','2020-08-10')
INSERT INTO Equipment VALUES (481,'pulse oximeter','2020-07-10')
INSERT INTO Equipment VALUES (483,'AED','2020-01-10')
INSERT INTO Equipment VALUES (484,'microscope','2020-02-10')

--______________________to inserttype of the treatment ________________________________________________________


INSERT INTO Treatments VALUES (456,'Radiation therapy')
INSERT INTO Treatments VALUES (785,'Immunotherapy')
INSERT INTO Treatments VALUES (852,'Vaccine therapy')
INSERT INTO Treatments VALUES (369,'Stem cell transplantation')
INSERT INTO Treatments VALUES (753,'Blood transfusion')

--__________________________________to insert the medicines__________________________________


INSERT INTO Medicines VALUES (78,'Biseptol','3 time aday','For infectious diseases','2020-05-10')
INSERT INTO Medicines VALUES (56,'Ciclobenzaprina','2 time aday','To relieve muscle','2020-05-10')
INSERT INTO Medicines VALUES (52,'Curam','2 time aday','Extensive antibiotic','2020-05-10')
INSERT INTO Medicines VALUES (92,'Diclofenaco','4 time aday','Analgesic and anti-inflammatory','2020-05-10')
INSERT INTO Medicines VALUES (53,'Disflatyl','4 time aday','Digestive problems','2020-05-10')


--_______________________________to insert the check up ___________________________________

INSERT INTO Checkup VALUES (1, 1456,'comlain 1', 'finding 1',456,78,3,'2020-05-10',489);
INSERT INTO Checkup VALUES (2, 1876,'comlain 2', 'finding 2',852,52,1,'2020-06-10',483);
INSERT INTO Checkup VALUES (3, 1562,'comlain 5', 'finding 4',753,56,2,'2020-07-10',487);
INSERT INTO Checkup VALUES (4, 1789,'comlain 1', 'finding 3',369,92,1,'2020-01-10',484);
INSERT INTO Checkup VALUES (5, 1426,'comlain 3', 'finding 2',785,78,2,'2020-09-10',483);
INSERT INTO Checkup VALUES (6, 4635,'comlain 4', 'finding 5',852,52,3,'2020-05-10',484);
INSERT INTO Checkup VALUES (7, 6327,'comlain 5', 'finding 4',785,56,2,'2020-01-10',483);
INSERT INTO Checkup VALUES (8, 3654,'comlain 2', 'finding 1',456,53,4,'2020-05-10',489);
INSERT INTO Checkup VALUES (9, 8756,'comlain 3', 'finding 2',456,92,1,'2020-02-10',487);
INSERT INTO Checkup VALUES (10, 1784,'comlain 4','finding 5',753,78,3,'2020-05-10',481);
INSERT INTO Checkup VALUES (11, 1875,'comlain 1','finding 1',369,56,1,'2020-04-10',484);
INSERT INTO Checkup VALUES (12, 8136,'comlain 2','finding 5',456,53,3,'2020-05-10',483);
INSERT INTO Checkup VALUES (13, 9723,'comlain 3','finding 4',852,92,2,'2020-03-10',487);
INSERT INTO Checkup VALUES (14, 5689,'comlain 4','finding 3',369,78,1,'2020-06-10',481);
INSERT INTO Checkup VALUES (15, 1897,'comlain 5','finding 5',785,53,3,'2020-08-10',489);

--***********************************************************************************************************

--_______________________________20 different function________________________________________


SELECT checkupdate from Checkup where year(checkupdate) = 2020;
SELECT checkupdate from Checkup where MONTH(checkupdate)  = 5;
select checkupdate from Checkup where day(checkupdate) = 10;
SELECT AVG(Age) AS AverageAge FROM Patients;
SELECT min(Age) AS mingeAge FROM Patients;
SELECT max(Age) AS maxAge FROM Patients;
SELECT DATEPART(year, checkupdate) AS DatePartInt  from Checkup;
SELECT DATEPART(DAY, checkupdate) AS DatePartInt  from Checkup;
SELECT DATEPART(MONTH, checkupdate) AS DatePartInt  from Checkup;
SELECT DATENAME(year, checkupdate) AS DatePartString from Checkup;
SELECT DATENAME(MONTH, checkupdate) AS DatePartString from Checkup;
SELECT DATENAME(DAY, checkupdate) AS DatePartString from Checkup;
SELECT UPPER(Pfirstname) from Patients;
SELECT lower(Pgender) from Patients;
SELECT difference(Pfirstname,Plastname) from Patients;
SELECT LEN(Medicinename) from Medicines;
SELECT REVERSE(Medicinename) from Medicines;
SELECT STR(MedicineID) from Medicines;
SELECT concat(Pfirstname,Plastname) from Patients;
SELECT DATEDIFF(MONTH, RequestDate,RequestedDate)  from Medicines ,Equipment;
SELECT ISDATE(RequestDate) from Medicines;
SELECT ISNUMERIC(AvailableQuantity) from Medicines;
SELECT ISNULL(Null, Complains) from Checkup;
SELECT DISTINCT quantity FROM Checkup;


--********************************************************************************************************



--____________________ 3 types of subquery ___________________________

--___________________ using ( EXPRESSION ) in the impelemntation of sub query__________________

select patientid from Patients 
	where Pfirstname = 'zayn';

--___________________ using ( IN ) in the impelemntation of sub query__________________
select CheckID from Checkup
	where patientid in (
		select patientid from Patients
			where patientid > 6000
		);
--___________________ using ( ANY ) in the impelemntation of sub query__________________

select CheckID from Checkup
	where patientid = any(
		select patientid from Patients
			where patientid < 6000
	);
--****************************************************************************************************

--________________________________ count query _______________________________________


select Pfirstname , count(Plastname) 
from Patients
group by Pfirstname
having count(PatientID)>1;


select Pfirstname, COUNT(Age) 
	from Patients 
	group by Pfirstname
having count(Age)<25;


--*********************************************************************************************************************

--__________________________________5 DIFFERENT TYPE OF JOINS ______________________________________________


SELECT Medicines.MedicineID,CheckuP.Complains
	FROM Medicines
	INNER JOIN CheckuP
	ON Medicines.MedicineID=CheckuP.medicineid;

SELECT Medicines.Medicinename,CheckuP.medicineid
	FROM Medicines
	LEFT JOIN CheckuP 
	ON Medicines.MedicineID=CheckuP.medicineid
	ORDER BY Medicines.Medicinename;

SELECT Checkup.CheckID, Patients.Pfirstname, Patients.Plastname
	FROM Checkup
	RIGHT JOIN Patients
	ON Checkup.patientid = Patients.PatientID
	ORDER BY Checkup.CheckID

SELECT Treatments.TreatmentType, Checkup.CheckID
	FROM Treatments
	FULL OUTER JOIN Checkup
	ON Checkup.treatmentid = Treatments.TreatmentID
	ORDER BY Treatments.TreatmentType

SELECT A.Medicinename as Medicinename1, B.Medicinename as Medicinename2 , A.Descripttion
	FROM Medicines A, Medicines B
	WHERE A.MedicineID <> B.MedicineID
	AND A.Descripttion = B.Descripttion
	ORDER BY A.Descripttion


--*************************************************************************************************************

--________________________________ UPDATES _____________________________

UPDATE Patients
SET Phonenumber = 0101011
WHERE PatientID = 1456;
UPDATE Patients
SET Phonenumber = 0101100
WHERE PatientID = 1875;
UPDATE Patients
SET Phonenumber = 0179325
WHERE PatientID = 5689;
UPDATE Patients
SET Phonenumber = 0118972
WHERE PatientID = 1875;
UPDATE Patients
SET Phonenumber = 0189756
WHERE PatientID = 1897;

***********************************************************************************************************************

--________________________________ DELETE STATEMENT____________________________


DELETE FROM Checkup WHERE PatientID = 1426;
DELETE FROM Checkup WHERE MedicineID =56;
DELETE FROM Checkup WHERE TreatmentID =456;
DELETE FROM Checkup WHERE PatientID =1784;
DELETE FROM Checkup WHERE CheckID =9;
*/










 




















































