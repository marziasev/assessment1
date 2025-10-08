-- Query 1. Print a list of all doctors based at a particular hospital.
-- For this instance, WHERE Hospitals.hospital.id = 34.
-- Alternative:
-- e.g: WHERE Hospitals.hospital_name = 'Mitchell and Sons Hospital'


SELECT Doctors.doctor_id, Doctors.doctor_name, Hospitals.hospital_id, Hospitals.hospital_name
FROM Doctors
INNER JOIN Hospitals
ON Doctors.hospital_id = Hospitals.hospital_id
WHERE Hospitals.hospital_id = 34
ORDER BY Doctors.doctor_name;

