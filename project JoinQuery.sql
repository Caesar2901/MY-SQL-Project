use mysql_project29;

--- Find all procedures with related appointment date and patient name ---
SELECT 
    Medical_Procedures.ProcedureName, 
    Appointment.Appointment_Date, 
    CONCAT(Patient.FirstName, ' ', Patient.LastName) AS PatientName
FROM Medical_Procedures
JOIN Appointment ON Medical_Procedures.AppointmentID = Appointment.AppointmentID
JOIN Patient ON Appointment.PatientID = Patient.PatientID;

--- to List all doctors with the number of appointments they have --
SELECT 
    Doctor.DoctorName, 
    COUNT(Appointment.AppointmentID) AS Number_Of_Appointments
FROM Doctor
LEFT JOIN Appointment ON Doctor.DoctorID = Appointment.DoctorID
GROUP BY Doctor.DoctorID;

--- to find all the patient who have procedure performed ---
SELECT DISTINCT 
    CONCAT(Patient.FirstName, ' ', Patient.LastName) AS PatientName
FROM Medical_Procedures
JOIN Appointment ON medical_procedures.AppointmentID = Appointment.AppointmentID
JOIN Patient ON Appointment.PatientID = Patient.PatientID;

--- to find the list of doctors and total number of appointments they have attended ---
SELECT 
    Doctor.DoctorName,
    COUNT(Appointment.AppointmentID) AS TotalAppointments
FROM Doctor
LEFT JOIN Appointment ON Doctor.DoctorID = Appointment.DoctorID
GROUP BY Doctor.DoctorID, Doctor.DoctorName;

--- to List All Procedures with Related Doctor and Patient Names ---
SELECT 
    medical_procedures.ProcedureName,
    CONCAT(Patient.FirstName, ' ', Patient.LastName) AS PatientName,
    Doctor.DoctorName AS DoctorName
FROM medical_procedures
JOIN Appointment ON medical_procedures.AppointmentID = Appointment.AppointmentID
JOIN Patient ON Appointment.PatientID = Patient.PatientID
JOIN Doctor ON Appointment.DoctorID = Doctor.DoctorID;
