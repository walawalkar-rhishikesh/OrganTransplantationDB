--Fucntion for Match Run

USE OrganTransplantation
GO

CREATE OR ALTER FUNCTION MatchRun(@organ_id int) 
RETURNS int
AS
BEGIN

	DECLARE @recipient int;
	DECLARE @donor_id int;
	DECLARE @donor_city nvarchar(50);
    DECLARE @organ nvarchar(50);
	DECLARE @life_span int;
	DECLARE @time_left int;
	DECLARE @org_reg datetime;
	DECLARE @blood_type nvarchar(50);

	--Retrive organ type, life span, registration Date and donor id

	SELECT @organ = o.organ_type, @life_span = o.organ_lifeSpan, @org_reg = o.registration_date, @donor_id = o.donor_ID
		FROM Organ o
		WHERE o.organ_ID = @organ_id and o.recipient_ID is NULL;

	IF(@donor_id IS NULL)
	BEGIN
		RETURN NULL;
	END
	--Retriving Donor Blood type to match with Recipient's Blood type
	SELECT @blood_type = user_blood_type, @donor_city = user_city FROM [User] WHERE [user_id] =  @donor_id;

	--Checking remaining life span  of Organ
	SET @time_left = DATEPART(HOUR, dateadd(HOUR, @life_span, @org_reg) - GETDATE());

	IF(@time_left<=0)
	BEGIN
		RETURN NULL;
	END

	--Query to Find appropriate Recipient for the Organ
	Select @recipient = recipient_ID
	from 
		(
			Select TOP(1) w.recipient_id 'recipient_id', (dateadd(DAY, w.waiting_time, w.registration_date) - GETDATE()) [priority]
			From WaitingList w
				INNER JOIN
					(
						SELECT *
						FROM Recipient r 
							INNER JOIN [User] u 
							on r.recipient_ID = u.[user_id]
							WHERE r.organ_requested = @organ 
								and u.user_blood_type = @blood_type
					) res 
				ON w.recipient_ID = res.recipient_ID
				WHERE (
						(@time_left <= 5 AND res.user_city = @donor_city)
					  OR @time_left > 5 
					 )AND dateadd(DAY, w.waiting_time, w.registration_date) > GETDATE()
						Order BY [priority]
		) subQ

	 --Throw exception "No match found" if @rec is null
	IF(@recipient IS NULL)
	BEGIN
		RETURN NULL;
	END

	RETURN (@recipient);
END
----------------------------------------------------------------------------------------------------------------