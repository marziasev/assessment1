-- Query 4: Add a new patient to the database, including being registered with one of the doctors.
-- The doctor where the patient is registered is specified by the doctor_id.
-- Limitation: duplicates possible since only patient_id is unique.


INSERT INTO Patients (patient_name, patient_dob, patient_address, patient_role, doctor_id)
VALUES ('Amelia Smith', '1992-04-22', '12 Baker street', 'patient', 23);
