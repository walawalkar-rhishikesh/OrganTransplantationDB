--VIEW waiting_Time 
Use OrganTransplantation;
Go

CREATE OR ALTER VIEW waiting_Time AS
SELECT d.donor_ID, d.donor_type, r.recipient_ID,
		r.organ_requested, o.organ_type, w.waiting_time, w.registration_date
FROM Donor d, Recipient r,WaitingList w, Organ o
WHERE d.donor_ID=o.donor_ID
AND r.recipient_ID=w.recipient_ID;