
# Hospital Database Project 
## Assessment 1 (MSc Health Data Science, University of Exeter)



## Table of Contents  

- [Summary](#summary)  
- [Folder Structure](#folder-structure)  
- [Project Details](#project-details)  
- [Entities Description](#entities-description)  
- [ERD Diagram](#erd-diagram)  
- [How to Use the Files](#how-to-use-the-files)  
- [Queries Overview](#queries-overview)  
- [Notes and Limitations](#notes-and-limitations)  
- [References](#references)  

------------------------------------------------------------

## Folder Structure

```text
assessment1/
├── README.md
├── data/
│   ├── doctors.csv
│   ├── hospitals.csv
│   ├── patients.csv
│   └── prescriptions.csv
├── erd/
│   └── erd_hospital_dbs_assessment1.png
├── flowchart/
│   └── example_flowchart_query1.png
├── hospital_database/
│   └── hospital_db1.sql
├── query/
│   ├── 01_doctor_in_specific_hospital.sql
│   ├── 02_prescriptions_specific_patient_date.sql
│   ├── 03_prescriptions_specific_doctor.sql
│   ├── 04_add_new_patient.sql
│   ├── 05_doctor_with_most_prescriptions.sql
│   └── 06_doctors_largest_hospitals.sql
└── tables_design/
    └── Assessment1_tables_hospital_db1_design.pdf
```
------------------------------------------------------------

## Summary

- This project concerns a relational database for a small hospital.  
- The database, *hospital_db1* (scripts contained in the `hospital_database` folder), implements four related tables (entities): **Hospitals** (the parent table), **Doctors**, **Patients**, and **Prescriptions**.  
- Each table uses the **IDs** of the hospitals, doctors, patients, and prescriptions as its **primary key**.  
- The data types used to design the entities are shown in the `tables_design` folder.  
- For the relationships between database entities, please refer to the repository’s Entity Relationship Diagram (`erd` folder).  
- The database tables were populated by loading **CSV source data** (`data` folder).  
- In addition, the repository includes **1-6 SQL files** (in the `query` folder) that can be executed in **MySQL**.  
- The `flowchart` folder contains an example flowchart illustrating the design of query 1.  
- The goal is to demonstrate the entire database workflow, from design and planning to implementation and sample queries.  


 **The programming languages and development environments used in this project are as follows:**

- **MySQL**: used to create tables, import CSV data, and run queries.  
- **Ubuntu/Linux shell**: used to execute scripts and manage the project environment.  
- **Git** and **GitHub**: used for version control, branching, committing, and storing the project online.  
- **Nano**: text editor within **MobaXterm** used to create and edit `.sql` and `README.md` files.  

------------------------------------------------------------

## Project Details

- **README.md**: Project documentation and navigation guide.  
- **data**: CSV files (`doctors.csv`, `hospitals.csv`, `patients.csv`, `prescriptions.csv`) used to populate the database.  
- **erd**: Contains `erd_hospital_dbs_assessment1.png`, a graphical overview of entities and relationships in the database.  
- **flowchart**: Contains `example_flowchart_query1.png`, a planning flowchart showing the logical steps for Query 1.  
- **hospital_database**: Contains `hospital_db1.sql`, the script to create the hospital database and its tables.  
- **query**: Six SQL files (`query 1-6`), each containing a query that addresses one of the assessment tasks.  
- **tables_design**: Contains `Assessment1_tables_hospital_db1_design.pdf`, the table design document with structures and data types.  

------------------------------------------------------------

## Entities Description  

**The `hospital_db1` has four main entities, each with the following fields:**  

- **Hospitals**: `hospital_id [PK]`, `hospital_name`, `hospital_address`, `hospital_size`, `hospital_type`, `accreditation_status`.  
- **Doctors**: `doctor_id [PK]`, `doctor_name`, `doctor_dob`, `doctor_address`, `doctor_role`, `hospital_id [FK]`.  
- **Patients**: `patient_id [PK]`, `patient_name`, `patient_dob`, `patient_address`, `patient_role`, `doctor_id [FK]`.  
- **Prescriptions**: `prescription_id [PK]`, `patient_id [FK]`, `doctor_id [FK]`, `medication`, `prescription_date`.  

------------------------------------------------------------

## ERD Diagram  

- The ERD file is located in the `erd` folder: `erd/erd_hospital_dbs_assessment1.png`.  
- Use the ERD (`erd` folder) together with the table design PDF (`tables_design` folder) to understand the schema when interpreting query results.  

**Cardinality summary:**  
- **Hospitals → Doctors**: `1 → ∞`  
- **Doctors → Patients**: `1 → ∞`  
- **Patients → Prescriptions**: `1 → ∞`  
- **Doctors → Prescriptions**: `1 → ∞`  

------------------------------------------------------------

## How to Use the Files  

1. Open MySQL on your OpenStack Ubuntu instance.  
2. Create the database structure using `hospital_database/hospital_db1.sql`.  
3. Import the CSV files from the `data` folder into the relevant tables using the LOAD DATA INFILE command.  
4. Run the SQL files in the `query` folder to reproduce the required outputs.  

------------------------------------------------------------

## Queries Overview  

- **Query 1**: List all doctors at a particular hospital. Useful for identifying staff based at one hospital site.  
- **Query 2**: List all prescriptions for a specific patient on a given date. Supports patient-level auditing and record checks.  
- **Query 3**: List all prescriptions issued by a specific doctor. Allows analysis of prescribing patterns.  
- **Query 4**: Add a new patient to the database, including registration with a doctor. Demonstrates data entry functionality.  
- **Query 5**: Identify the doctor with the highest number of prescriptions. Useful for workload and prescribing volume analysis.  
- **Query 6**: List all doctors at the hospital with the largest capacity (number of beds). Shows how to query based on hospital size.  

------------------------------------------------------------

## Notes and Limitations  

- **Query 4**: The `doctor_id` and `patient_id` fields are auto-incremented. Entering duplicate patient data may create a new record with a different ID, resulting in duplication.  
- **Query 5**: Lists the ten doctors with the highest prescription counts using `ORDER BY COUNT(*) DESC LIMIT 10`. If several doctors have the same count at the cut-off point, not all of them will be shown.  
- **Query 6**: Uses the `MAX` function instead of `ORDER BY DESC` for efficiency and clarity.  
- The dataset is simplified for the purpose of this assignment and does not represent a real hospital system.  
- **Additional branch**: The repository includes a branch called `feature_archive`, which contains unfinished database test scripts that are not part of the final project.  

------------------------------------------------------------

## References  

- marziasev (2025) *assessment1*. GitHub repository. Available at: https://github.com/marziasev/assessment1 (Accessed: 9 October 2025).  
- MySQL (2024) *MySQL 8.4 Reference Manual: 15.1.20 CREATE TABLE Statement*. Available at: https://dev.mysql.com/doc/refman/8.4/en/create-table.html (Accessed: 9 October 2025).  



