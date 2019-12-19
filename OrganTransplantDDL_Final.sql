--Creating Database and Tables for Organ Procurement and Transplantation

DROP DATABASE IF EXISTS [OrganTransplantation];
CREATE DATABASE OrganTransplantation;

USE OrganTransplantation
GO
------------------------------------------------------------------------------------------------
--Table for Organization
CREATE TABLE [Organization]
(
    organization_ID int not null IDentity(1,1),
    organization_name nvarchar(50),
	CONSTRAINT Organization_PK primary key ([organization_ID])
);

------------------------------------------------------------------------------------------------
--Table for User
CREATE TABLE [User]
(
    [user_ID] int not null unique,
    user_fname nvarchar(50),
    user_lname nvarchar(50),
    user_dob Date,
    gender nvarchar(20),
    user_ssn varbinary(160),
    user_address nvarchar(150),
    user_city nvarchar(50),
    user_state nvarchar(50),
    user_country nvarchar(20),
    user_post_code int,
    user_email varbinary(160),
    user_contact_no varbinary(160),
    user_type nvarchar(50) not null,
    insurance_ID int not null,
    user_blood_type nvarchar(50),
    user_status nvarchar(50),
	CONSTRAINT User_PK primary key ([user_ID]),
	CONSTRAINT CHK_User_Type CHECK (user_type ='Donor' OR user_type='Recipient'),
	CONSTRAINT CHK_User_Status CHECK (user_status ='Donated' OR user_status='Received' OR user_status = null )
);


------------------------------------------------------------------------------------------------
--Table for Organ Bank
CREATE TABLE [OrganBank]
(
    organ_bID int not null unique,
    organ_bName nvarchar(50),
    [address] nvarchar(150),
    city nvarchar(50),
    [state] nvarchar(50),
    country nvarchar(50),
    post_code int,
    primary_contact BigInt,
	CONSTRAINT OrganBank_PK primary key (organ_bID)
);

------------------------------------------------------------------------------------------------
--Table for OrganBank OrganizationLink
CREATE TABLE [OrganBankLink]
(
    link_ID int not null IDentity(1,1),
    organization_ID int,
    organ_bID int,
	CONSTRAINT OrganBankLink_PK primary key (link_ID),
	CONSTRAINT OrganBankLink_FK foreign key (organization_ID) REFERENCES Organization (organization_ID),
	CONSTRAINT OrganBankLink_FK1 foreign key (organ_bID) REFERENCES OrganBank (organ_bID)
);
------------------------------------------------------------------------------------------------
--Table for Donor
CREATE TABLE [Donor]
(
    donor_ID int not null unique,
    donor_type nvarchar(50),
	CONSTRAINT Donor_FK foreign key (donor_ID) REFERENCES [User] ([user_ID]),
	CONSTRAINT CHK_Donor_type CHECK (donor_type ='Living' OR donor_type='Deceased' OR donor_type = 'Cadaver' )
);
------------------------------------------------------------------------------------------------
--Table for Recipient
CREATE TABLE [Recipient]
(
    recipient_ID int not null unique,
    organ_requested nvarchar(50),
	CONSTRAINT Recipient_FK foreign key ([recipient_ID]) REFERENCES [User] ([user_ID]),
	CONSTRAINT CHK_Organ_Requested CHECK (organ_requested ='Kidney' OR organ_requested='Liver' OR organ_requested = 'Heart' OR organ_requested = 'Eyes' OR organ_requested = 'Lung')
);
------------------------------------------------------------------------------------------------
--Table for Transplant Center
CREATE TABLE [TransplantCenter]
(
    transplant_cID nvarchar(20) not null unique,
    transplant_cName nvarchar(150),
    success_rate float,
    total_beds int not null,
    available_beds int,
    total_rooms int not null,
    available_rooms int,
    organization_ID int not null,
	CONSTRAINT TransplantCenter_PK primary key (transplant_cID),
   CONSTRAINT TransplantCenter_FK foreign key (organization_ID) REFERENCES [Organization] (organization_ID)
);
------------------------------------------------------------------------------------------------
--Table for Transplant Center Organization Link
CREATE TABLE [TransplantCenterLink]
(
    link_ID int not null IDentity(1,1),
    organization_ID int,
    transplant_cID nvarchar(20),
	CONSTRAINT TransplantCenterLink_PK primary key (link_ID),
	CONSTRAINT TransplantCenterLink_FK foreign key (organization_ID) REFERENCES Organization (organization_ID),
	CONSTRAINT TransplantCenterLink_FK1 foreign key (transplant_cID) REFERENCES TransplantCenter (transplant_cID)
);
------------------------------------------------------------------------------------------------
--Table for Pharmacy
CREATE TABLE [Pharmacy]
(
    pharmacy_ID int not null IDentity(1,1),
    pharmacy_name nvarchar(150),
    [address] nvarchar(150),
    city nvarchar(50),
    post_code int,
    country nvarchar(50),
	CONSTRAINT Pharmacy_PK primary key (pharmacy_ID)
);
------------------------------------------------------------------------------------------------
--Table for Prescription
CREATE TABLE [Prescription]
(
    prescription_ID int not null IDentity(1,1),
    pharmacy_ID int not null,
    transplant_cID nvarchar(20),
    [user_ID] int,
	CONSTRAINT Prescription_PK primary key (prescription_ID),
	CONSTRAINT Prescription_FK foreign key (pharmacy_ID) REFERENCES Pharmacy (pharmacy_ID),
	CONSTRAINT Prescription_FK1 foreign key (transplant_cID) REFERENCES TransplantCenter (transplant_cID),
	CONSTRAINT Prescription_FK2 foreign key ([user_ID]) REFERENCES [User] ([user_ID])
);
------------------------------------------------------------------------------------------------

--Table for Medical Staff
CREATE TABLE [MedicalStaff]
(
	staff_ID int not null IDentity(1000,1),
	staff_fname nvarchar(150),
	staff_lname nvarchar(150),
	staff_contact_no bigint,
	staff_designation nvarchar(50),
	schedule varchar(25),
	staff_department nvarchar(50),
	transplant_cID nvarchar(20),
	CONSTRAINT MedicalStaff_PK primary key (staff_ID),
	CONSTRAINT MedicalStaff_FK foreign key (transplant_cID) REFERENCES TransplantCenter (transplant_cID),
CONSTRAINT CHK_Schedule CHECK (schedule ='Morning' OR schedule ='Evening' OR schedule = 'Afternoon' OR schedule = 'Night')

);
------------------------------------------------------------------------------------------------
--Table for Appointment
CREATE TABLE [Appointment]
(
	appointment_ID int not null IDentity(900010,1),
	staff_ID int not null,
	appointment_startTime DateTime,
	appointment_endTime DateTime,
	[user_ID] int not null,
	purpose nvarchar(200),
	transplant_cID nvarchar(20),
	CONSTRAINT Appointment_PK primary key (appointment_ID),
	CONSTRAINT Appointment_FK foreign key (transplant_cID) REFERENCES TransplantCenter (transplant_cID),
	CONSTRAINT Appointment_FK1 foreign key (staff_ID) REFERENCES MedicalStaff (staff_ID),
	CONSTRAINT Appointment_FK2 foreign key ([user_ID]) REFERENCES [User] ([user_ID])
);
------------------------------------------------------------------------------------------------
--Table for Medical History
CREATE TABLE [MedicalHistory]
(
	report_ID int identity(1,1) not null,
	appointment_ID int,
	vaccinations_undertaken varchar(150),
	CONSTRAINT MedicalHistory_PK primary key (report_ID),
	CONSTRAINT MedicalHistory_FK foreign key (appointment_ID) REFERENCES Appointment (appointment_ID),
);
------------------------------------------------------------------------------------------------
--Table for User Record
CREATE TABLE [UserRecord]
(
	record_ID int identity(1,1) not null,
	report_ID int,
	[user_ID] int,
	CONSTRAINT UserRecord_PK primary key (record_ID),
	CONSTRAINT UserRecord_FK foreign key (report_ID) REFERENCES MedicalHistory (report_ID),
	CONSTRAINT UserRecord_FK1 foreign key ([user_ID]) REFERENCES [User] ([user_ID])
);
------------------------------------------------------------------------------------------------
--Table for Organ
CREATE TABLE [Organ]
(
	organ_ID int not null  identity(5000,1),
	donor_ID int not null,
	organ_type nvarchar(50),
	organ_lifeSpan int,
	organ_bID int,
	recipient_ID int,
	registration_date DateTime,
	CONSTRAINT Organ_PK primary key (organ_ID),
	CONSTRAINT Organ_FK foreign key (donor_ID) REFERENCES Donor(donor_ID),
	CONSTRAINT Organ_FK1 foreign key (recipient_ID) REFERENCES Recipient(recipient_ID),
	CONSTRAINT Organ_FK2 foreign key ([organ_bID]) REFERENCES OrganBank ([organ_bID]),
	CONSTRAINT CHK_Organ_Type CHECK (organ_type ='Kidney' OR organ_type='Liver' OR organ_type = 'Heart' OR organ_type = 'Eyes' )
);
------------------------------------------------------------------------------------------------
--Table for Waiting List
CREATE TABLE [WaitingList]
(
	[recipient_ID] int not null unique,
	waiting_time int,
	registration_date DateTime,
	CONSTRAINT WaitingList_FK foreign key ([recipient_ID]) REFERENCES Recipient ([recipient_ID])
);
------------------------------------------------------------------------------------------------
--Table for Feedback
CREATE TABLE [Feedback]
(
	feedback_ID int not null identity(54135,1),
	[user_ID] int not null,
	appointment_ID int not null,
	rating nvarchar(50),
	operation_status varchar(50),
	recipientHealth_state nvarchar(50),
	organization_ID int not null,
	CONSTRAINT Feedback_PK primary key (feedback_ID),
	CONSTRAINT Feedback_FK foreign key ([user_ID]) REFERENCES [User] ([user_ID]),
	CONSTRAINT Feedback_FK1 foreign key (appointment_ID) REFERENCES Appointment (appointment_ID),
	CONSTRAINT Feedback_FK2 foreign key (organization_ID) REFERENCES Organization (organization_ID),
	CONSTRAINT CHK_RecipientHealth_State CHECK (recipientHealth_state ='Recovered' OR recipientHealth_state='Deteriorating' OR recipientHealth_state = 'Improving' )
);
------------------------------------------------------------------------------------------------
--Table for Transportation
CREATE TABLE [Transportation]
(
	transportation_ID int not null identity(30001,1),
	transport_type nvarchar(50),
	organ_ID int not null,
	transplant_cID nvarchar(20) not null,
	organ_bID int not null,
	vehicle_no nvarchar(50),	
	CONSTRAINT Transportation_PK primary key (transportation_ID),
	CONSTRAINT Transportation_FK foreign key (organ_ID) REFERENCES Organ (organ_ID),
	CONSTRAINT Transportation_FK1 foreign key (transplant_cID) REFERENCES TransplantCenter (transplant_cID),
	CONSTRAINT Transportation_FK2 foreign key ([organ_bID]) REFERENCES OrganBank ([organ_bID])
);
------------------------------------------------------------------------------------------------

--Creating Index
create NonClustered index USER_ID_INDEX on [User] (user_ID ASC);
create NonClustered index DONOR_ID_INDEX on Donor (donor_ID ASC);
create NonClustered index RECIPIENT_ID_INDEX on Recipient (recipient_ID ASC);

------------------------------------------------------------------------------------------------
