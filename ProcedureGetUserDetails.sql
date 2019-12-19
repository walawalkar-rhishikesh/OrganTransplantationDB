--Procedure to Display All User Details

USE OrganTransplantation
GO
CREATE OR ALTER PROCEDURE [GetAllUsersDetails] 
AS 
BEGIN 
	OPEN SYMMETRIC KEY USER_TABLE_ENCRYPT_KEY DECRYPTION BY CERTIFICATE USER_TABLE_ENCRYPT_CERTIFICATE;
	SELECT user_fname,user_lname, CONVERT(int, DecryptByKey(user_ssn)) as ssn, CONVERT(varchar, DecryptByKey(user_email)) as email,CONVERT(bigint, DecryptByKey(user_contact_no)) as contact_no FROM [User]
END;

Exec GetAllUsersDetails;