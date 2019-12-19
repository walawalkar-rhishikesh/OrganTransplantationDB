--Trigger for new Appointment

USE OrganTransplantation
GO

CREATE OR ALTER TRIGGER NewAppointtment ON Appointment
AFTER INSERT
AS
BEGIN

	SELECT [user_id], appointment_startTime, appointment_endTime, transplant_cID FROM inserted I;

END
----------------------------------------------------------------------------------------------------------------