--Procedure to Add Donor

USE OrganTransplantation
GO
CREATE OR ALTER PROCEDURE AddDonor
	@user_ID int,
	@user_fname nvarchar(50),
	@user_lname nvarchar(50),
	@user_dob Date,
	@user_gender nvarchar(10),
	@user_ssn nvarchar(50),
	@user_address nvarchar(50),
	@user_city nvarchar(50),
	@user_state char(2),
	@user_country nvarchar(50),
	@user_post_code int,
	@user_email nvarchar(50),
	@user_contact_no BIGint,
	@insurance_ID nvarchar(50),
	@user_blood_type nvarchar(50),
	@user_status nvarchar(50),
	@donor_type nvarchar(50)

AS
BEGIN

	INSERT INTO [USER] VALUES(@user_ID, @user_fname, @user_lname, @user_dob, @user_gender, EncryptByKey(Key_GUID('USER_TABLE_ENCRYPT_KEY'), convert(varbinary,@user_ssn)), @user_address, @user_city, @user_state, @user_country, @user_post_code, EncryptByKey(Key_GUID('USER_TABLE_ENCRYPT_KEY'), convert(varbinary,@user_email)),
							  EncryptByKey(Key_GUID('USER_TABLE_ENCRYPT_KEY'), convert(varbinary, @user_contact_no)), 'Donor', @insurance_ID, @user_blood_type, @user_status);

	INSERT INTO Donor VALUES(@user_ID, @donor_type);
END
