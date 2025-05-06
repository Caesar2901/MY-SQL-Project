use mysql_project29;

-- to list all doctor and thier specialization ---
 SELECT DoctorName, Specialization
FROM Doctor;

--- to find to billing amount for a specific patient---

select sum(amount) as TotalAmount from billing 
where PatientID= '365';

---  to get all procedure performed on specific appointment e.g.(appointmentID = '160') ---

SELECT 	procedurename from 
medical_procedures 
where appointmentID= '160';


--- LIST ALL UNIQUE DOCTOR SPECIALIZATION ---

select distinct specialization 
from doctor;

--- to find a doctor with specific specialization e.g.(cardiology)---

select doctorname, doctorcontact
from doctor
where specialization= "cardiology";