--Trigger for New Inserted Organ

USE OrganTransplantation
GO

CREATE OR ALTER TRIGGER transplant ON Organ
AFTER INSERT
AS
BEGIN
	-- Get Match
	DECLARE @organ_ID INT;
	DECLARE @organ_type NVARCHAR(50);
	DECLARE @recipient_ID INT;
	DECLARE @staff_ID INT;
	DECLARE @inserted_recipient_ID INT;

	SELECT
        @organ_ID = I.organ_ID,
		@organ_type = I.organ_type,
		@inserted_recipient_ID = I.recipient_ID
	FROM
        inserted I

	IF (@inserted_recipient_ID IS NULL)
	BEGIN
		SET @recipient_ID = [dbo].MatchRun(@organ_ID);
	END
	ELSE
	BEGIN
		SET @recipient_ID = @inserted_recipient_ID; 
	END
	--PRINT @recipient_ID;
	
	-- If not match, return
	IF(@recipient_ID IS NOT NULL)
	BEGIN
		-- Update rec_id in organ table
		UPDATE Organ SET recipient_ID=@recipient_ID WHERE organ_ID=@organ_ID;

		-- Update user_id in user table
		UPDATE [User] SET user_status='Received' WHERE user_ID=@recipient_ID;
	
		-- Remove from waitlist
		DELETE FROM WaitingList WHERE recipient_ID=@recipient_ID;

		-- Book appointment ()

		IF(@organ_type = 'Heart')
		BEGIN
			SELECT TOP 1 @staff_ID = staff_ID FROM MedicalStaff
			WHERE (staff_designation = 'Surgeon' or staff_designation = 'Doctor') and staff_department = 'Cardiology'
			ORDER BY NEWID();
		END
		ELSE IF(@organ_type = 'Kidney')
		BEGIN
			SELECT TOP 1 @staff_ID = staff_ID FROM MedicalStaff
			WHERE (staff_designation = 'Surgeon' or staff_designation = 'Doctor') and staff_department = 'Nephrology'
			ORDER BY NEWID();
		END
		ELSE IF(@organ_type = 'Eyes')
		BEGIN
			SELECT TOP 1 @staff_ID = staff_ID FROM MedicalStaff
			WHERE (staff_designation = 'Surgeon' or staff_designation = 'Doctor') and staff_department = 'Opthalmology'
			ORDER BY NEWID();
		END
		ELSE IF(@organ_type = 'Liver')
		BEGIN
			SELECT TOP 1 @staff_ID = staff_ID FROM MedicalStaff
			WHERE (staff_designation = 'Surgeon' or staff_designation = 'Doctor') and staff_department = 'Hepatology'
			ORDER BY NEWID();
		END
	
		EXEC [dbo].BookAppointment @recipient_ID,
								   @staff_ID,
								   'Surgery';	
	END
	ELSE
	BEGIN
		PRINT 'No Recipient Found for the Inserted Organ';
		UPDATE Organ SET organ_bID = 10026 WHERE  organ_ID = @organ_ID;
	END

END
----------------------------------------------------------------------------------------------------------------