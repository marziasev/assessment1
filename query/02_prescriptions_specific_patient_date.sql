-- Query 2 Print a list of all prescriptions for a particular patient, ordered by the prescription date.
-- For this example, WHERE Patients.patient_id = 230
-- Alternative:
-- WHERE Patients.patient_name = 'add a patient_name'

SELECT Prescriptions.prescription_id, Prescriptions.medication, Prescriptions.prescription_date, Patients.patient_id, Patients.patient_name
FROM Prescriptions
INNER JOIN Patients
ON Prescriptions.patient_id = Patients.patient_id
WHERE Patients.patient_id = 230
ORDER BY Prescriptions.prescription_date;
