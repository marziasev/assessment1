
-- Query 6 Print a list of all doctors at the hospital with biggest size (number of beds).


SELECT Doctors.doctor_id, Doctors.doctor_name, Hospitals.hospital_name, Hospitals.hospital_size 
FROM Doctors
LEFT JOIN Hospitals
ON Hospitals.hospital_id = Doctors.hospital_id
WHERE Hospitals.hospital_size = (SELECT MAX(Hospitals.Hospital_size) FROM Hospitals)
ORDER BY hospital_size DESC;
