-- QUERY 3 Print a list of all prescriptions that a particular doctor has prescribed.
-- I used Doctors.doctor_id in WHERE clause (doctor_id is unique and avoids ambiguity with names).


SELECT Prescriptions.prescription_id, Prescriptions.medication, Prescriptions.prescription_date, Doctors.doctor_id, Doctors.doctor_name
FROM Prescriptions
INNER JOIN Doctors
ON Prescriptions.doctor_id = Doctors.doctor_id
WHERE Doctors.doctor_id = 44
ORDER BY Prescriptions.prescription_date;

