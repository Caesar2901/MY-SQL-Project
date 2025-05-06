use mysql_project29;

-- Get the patient email who has a specific invoice (e.g., Invoice = 100-1007)--

SELECT Email
FROM Patient
WHERE PatientID = (
    SELECT PatientID
    FROM Billing
    WHERE Invoice = '100-10007'
);

--- to find specialization of doctor who have appointment with specific patient e.g.(patientID ='678')---

SELECT Specialization
FROM Doctor
WHERE DoctorID = (
    SELECT DoctorID
    FROM Appointment
    WHERE PatientID = 678
    LIMIT 1
);
--- to find doctor with least appointment ---
SELECT DoctorName
FROM Doctor
WHERE DoctorID = (
    SELECT DoctorID
    FROM Appointment
    GROUP BY DoctorID
    ORDER BY COUNT(*) ASC
    LIMIT 1
);
--- to get details of most expensive billing amount ---
SELECT InvoiceId, Items, Amount
FROM Billing
WHERE Amount = (
    SELECT MAX(Amount)
    FROM Billing
);

--- list of all patient who have never made an appointment ---
SELECT CONCAT(FirstName, ' ', LastName) AS PatientName
FROM Patient
WHERE PatientID NOT IN (
    SELECT PatientID
    FROM Appointment
);