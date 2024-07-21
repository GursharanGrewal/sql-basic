Create DATABASE Patient_Diagnosis;

USE Patient_Diagnosis;

CREATE TABLE Patient(
DATE_ DATE,
Patient_Id VARCHAR(20),
Patient_Name VARCHAR(25), 
Age INT,
Weight INT, 
Gender VARCHAR(10),
Location VARCHAR(20), 
Phone_Number INT,
Disease VARCHAR(25), 
Doctor_Name VARCHAR(25),
Doctor_Id INT
)

SELECT COUNT(*) FROM PATIENT;

SELECT Patient_Id, Patient_Name, Gender, Disease, AGE FROM PATIENT order by age desc limit 1;

Select NOW() Patient_Id , Patient_Name from Patient;

(Select ucase(Patient_Name) FROM Patient order by DATE_ ASC LIMIT 1)
UNION
(Select ucase(Patient_Name) FROM Patient order by DATE_ desc LIMIT 1);

Select Patient_Name, length(Patient_Name) FROM PATIENT;

Select Patient_Name, mid(Gender,1,1) FROM PATIENT;

Select concat(Patient_Name,' ',Doctor_Name) FROM PATIENT;

Select Log10(Age) FROM PATIENT;

Select extract(Year From Date_) FROM PATIENT;

Select ISNULL(Patient_Name=Doctor_Name) from PATIENT;
Select IFNULL('NULL' , 'Patient_Name' );

Select If(Age>40, 'Yes' , 'No') from PATIENT;

SELECT Doctor_Name,COUNT(*) AS Occurrence FROM PATIENT GROUP BY Doctor_Name HAVING COUNT(*)>1
