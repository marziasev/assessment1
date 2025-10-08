
-- Query 5 Identify which doctor has made the most prescriptions.
-- I'm aware that there are more elegant approaches using HAVING subqueries.
-- However, this is MySQL skill level, and thus I chose a simple solution. 


SELECT Doctors.doctor_id, Doctors.doctor_name, COUNT(prescription_id) AS number_of_prescriptions 
FROM Prescriptions
LEFT JOIN Doctors
ON Prescriptions.doctor_id = Doctors.doctor_id
GROUP BY Doctors.doctor_id, Doctors.doctor_name
ORDER BY number_of_prescriptions DESC
LIMIT 10; 
