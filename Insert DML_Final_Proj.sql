Use OrganTransplantation

INSERT INTO Organization(organization_name) VALUES ('Americian Medical Association');
INSERT INTO Organization(organization_name) VALUES ('British Medical Association');
INSERT INTO Organization(organization_name) VALUES ('National Transplant Organization');
INSERT INTO Organization(organization_name) VALUES ('Indian Renal Foundation');
INSERT INTO Organization(organization_name) VALUES ('Americian Transplant Foundation');
INSERT INTO Organization(organization_name) VALUES ('British Medical Association');
INSERT INTO Organization(organization_name) VALUES ('Indian Renal Foundation');
INSERT INTO Organization(organization_name) VALUES ('National Transplant Organization');
INSERT INTO Organization(organization_name) VALUES ('Americian Medical Association');
INSERT INTO Organization(organization_name) VALUES ('Americian Transplant Foundation');
INSERT INTO Organization(organization_name) VALUES ('British Medical Association');
INSERT INTO Organization(organization_name) VALUES ('Americian Transplant Foundation');
INSERT INTO Organization(organization_name) VALUES ('National Transplant Organization');
INSERT INTO Organization(organization_name) VALUES ('Americian Medical Association');
INSERT INTO Organization(organization_name) VALUES ('Indian Renal Foundation');
INSERT INTO Organization(organization_name) VALUES ('Americian Transplant Foundation');
INSERT INTO Organization(organization_name) VALUES ('Indian Renal Foundation');
INSERT INTO Organization(organization_name) VALUES ('British Medical Association');
INSERT INTO Organization(organization_name) VALUES ('National Transplant Organization');
INSERT INTO Organization(organization_name) VALUES ('Americian Medical Association');
INSERT INTO Organization(organization_name) VALUES ('Americian Medical Association'); 
INSERT INTO Organization(organization_name) VALUES ('British Medical Association'); 
INSERT INTO Organization(organization_name) VALUES ('National Transplant Organization'); 
INSERT INTO Organization(organization_name) VALUES ('Indian Renal Foundation'); 
INSERT INTO Organization(organization_name) VALUES ('Americian Transplant Organization'); 
INSERT INTO Organization(organization_name) VALUES ('British Medical Association')




/* Column encryption --------------------------------------------------*/


CREATE MASTER KEY ENCRYPTION BY PASSWORD = 'dmddfinalprojectpassword';


CREATE CERTIFICATE USER_TABLE_ENCRYPT_CERTIFICATE WITH SUBJECT = 'USER_TABLE_ENCRYPT_CERTIFICATE';


CREATE SYMMETRIC KEY USER_TABLE_ENCRYPT_KEY WITH ALGORITHM = AES_256 ENCRYPTION BY CERTIFICATE USER_TABLE_ENCRYPT_CERTIFICATE;


OPEN SYMMETRIC KEY USER_TABLE_ENCRYPT_KEY DECRYPTION BY CERTIFICATE USER_TABLE_ENCRYPT_CERTIFICATE;


/* Column encryption --------------------------------------------------*/


INSERT INTO [User]([user_ID],user_fname,user_lname,user_dob,gender,user_ssn,user_address,user_city,user_state,user_country,user_post_code,user_email,user_contact_no,user_type,insurance_ID,user_blood_type,user_status) VALUES (1,'Shruti','Gautam','5/5/1994','Female',EncryptByKey(Key_GUID('USER_TABLE_ENCRYPT_KEY'), convert(varbinary,456780)),'887 Huntington Avenue','Boston','MA','United States',2115,EncryptByKey(Key_GUID('USER_TABLE_ENCRYPT_KEY'), convert(varbinary,'shrutigautam881@gmail.com')),EncryptByKey(Key_GUID('USER_TABLE_ENCRYPT_KEY'), convert(varbinary,9599990641)) ,'Recipient',88888,'B+',NULL);
INSERT INTO [User]([user_ID],user_fname,user_lname,user_dob,gender,user_ssn,user_address,user_city,user_state,user_country,user_post_code,user_email,user_contact_no,user_type,insurance_ID,user_blood_type,user_status) VALUES (2,'Emilia','Clark','2/7/1967','Female',EncryptByKey(Key_GUID('USER_TABLE_ENCRYPT_KEY'), convert(varbinary,456781)),'888 Huntington Avenue','New York','NY','United States',2116,EncryptByKey(Key_GUID('USER_TABLE_ENCRYPT_KEY'), convert(varbinary,'EmiliaClark@gmail.com')),EncryptByKey(Key_GUID('USER_TABLE_ENCRYPT_KEY'), convert(varbinary,9599990642)),'Recipient',88889,'B+','Recieved');
INSERT INTO [User]([user_ID],user_fname,user_lname,user_dob,gender,user_ssn,user_address,user_city,user_state,user_country,user_post_code,user_email,user_contact_no,user_type,insurance_ID,user_blood_type,user_status) VALUES (3,'Sansa','Stark','4/25/1966','Female',EncryptByKey(Key_GUID('USER_TABLE_ENCRYPT_KEY'), convert(varbinary,456782)),'889 Huntington Avenue','Dublin','CA','United States',2117,EncryptByKey(Key_GUID('USER_TABLE_ENCRYPT_KEY'), convert(varbinary,'sansa.stark@gmail.com')),EncryptByKey(Key_GUID('USER_TABLE_ENCRYPT_KEY'), convert(varbinary,9599990643)),'Recipient',88890,'A+',NULL);
INSERT INTO [User]([user_ID],user_fname,user_lname,user_dob,gender,user_ssn,user_address,user_city,user_state,user_country,user_post_code,user_email,user_contact_no,user_type,insurance_ID,user_blood_type,user_status) VALUES (4,'Arya','Lenard','6/17/1972','Female',EncryptByKey(Key_GUID('USER_TABLE_ENCRYPT_KEY'), convert(varbinary,456783)),'890 Huntington Avenue','Newark','NJ','United States',2118,EncryptByKey(Key_GUID('USER_TABLE_ENCRYPT_KEY'), convert(varbinary,'Arya.stark12@gmail.com')),EncryptByKey(Key_GUID('USER_TABLE_ENCRYPT_KEY'), convert(varbinary,9599990644)),'Recipient',88891,'A+',NULL);
INSERT INTO [User]([user_ID],user_fname,user_lname,user_dob,gender,user_ssn,user_address,user_city,user_state,user_country,user_post_code,user_email,user_contact_no,user_type,insurance_ID,user_blood_type,user_status) VALUES (5,'Brandon','Walker','8/26/1999','Male',EncryptByKey(Key_GUID('USER_TABLE_ENCRYPT_KEY'), convert(varbinary,456784)),'Jamaica Plane','Urbana Champagne','IL','United States',2119,EncryptByKey(Key_GUID('USER_TABLE_ENCRYPT_KEY'), convert(varbinary,'bran.stark100@gmail.com')),EncryptByKey(Key_GUID('USER_TABLE_ENCRYPT_KEY'), convert(varbinary,9599990645)),'Recipient',88892,'A-',NULL);
INSERT INTO [User]([user_ID],user_fname,user_lname,user_dob,gender,user_ssn,user_address,user_city,user_state,user_country,user_post_code,user_email,user_contact_no,user_type,insurance_ID,user_blood_type,user_status) VALUES (6,'Rickon','Grey','10/1/1960','Male',EncryptByKey(Key_GUID('USER_TABLE_ENCRYPT_KEY'), convert(varbinary,456785)),'Kumar Paradise','Clear Lakes','TX','United States',2120,EncryptByKey(Key_GUID('USER_TABLE_ENCRYPT_KEY'), convert(varbinary,'Rickon_stark10@gmail.com')),EncryptByKey(Key_GUID('USER_TABLE_ENCRYPT_KEY'), convert(varbinary,9599990646)),'Recipient',88893,'O-',NULL);
INSERT INTO [User]([user_ID],user_fname,user_lname,user_dob,gender,user_ssn,user_address,user_city,user_state,user_country,user_post_code,user_email,user_contact_no,user_type,insurance_ID,user_blood_type,user_status) VALUES (7,'Ned','Ray','7/17/1997','Male',EncryptByKey(Key_GUID('USER_TABLE_ENCRYPT_KEY'), convert(varbinary,456786)),'Shalimar Street','Amherst','MA','United States',2121,EncryptByKey(Key_GUID('USER_TABLE_ENCRYPT_KEY'), convert(varbinary,'ned.stark100@gmail.com')),EncryptByKey(Key_GUID('USER_TABLE_ENCRYPT_KEY'), convert(varbinary,9599990647)),'Recipient',88894,'B-',NULL);
INSERT INTO [User]([user_ID],user_fname,user_lname,user_dob,gender,user_ssn,user_address,user_city,user_state,user_country,user_post_code,user_email,user_contact_no,user_type,insurance_ID,user_blood_type,user_status) VALUES (8,'Cersie','Lann','8/10/1996','Female',EncryptByKey(Key_GUID('USER_TABLE_ENCRYPT_KEY'), convert(varbinary,456787)),'Daisy Park','Manhattan','NY','United States',2122,EncryptByKey(Key_GUID('USER_TABLE_ENCRYPT_KEY'), convert(varbinary,'Cersie10001@gmail.com')),EncryptByKey(Key_GUID('USER_TABLE_ENCRYPT_KEY'), convert(varbinary,9599990648)),'Recipient',88895,'B-',NULL);
INSERT INTO [User]([user_ID],user_fname,user_lname,user_dob,gender,user_ssn,user_address,user_city,user_state,user_country,user_post_code,user_email,user_contact_no,user_type,insurance_ID,user_blood_type,user_status) VALUES (9,'Jamie','Tenn','11/6/1965','Male',EncryptByKey(Key_GUID('USER_TABLE_ENCRYPT_KEY'), convert(varbinary,456788)),'Charles Street','Eureka','CA','United States',2123,EncryptByKey(Key_GUID('USER_TABLE_ENCRYPT_KEY'), convert(varbinary,'Jamie.lann@gmail.com')),EncryptByKey(Key_GUID('USER_TABLE_ENCRYPT_KEY'), convert(varbinary,9599990649)),'Recipient',88896,'B-','Recieved');
INSERT INTO [User]([user_ID],user_fname,user_lname,user_dob,gender,user_ssn,user_address,user_city,user_state,user_country,user_post_code,user_email,user_contact_no,user_type,insurance_ID,user_blood_type,user_status) VALUES (10,'John','Snow','2/19/1980','Male',EncryptByKey(Key_GUID('USER_TABLE_ENCRYPT_KEY'), convert(varbinary,456789)),'53 Wait street','Austin','TX','United States',2124,EncryptByKey(Key_GUID('USER_TABLE_ENCRYPT_KEY'), convert(varbinary,'john.snow@gmail.com')),EncryptByKey(Key_GUID('USER_TABLE_ENCRYPT_KEY'), convert(varbinary,9599990650)),'Recipient',88897,'O+',NULL);
INSERT INTO [User]([user_ID],user_fname,user_lname,user_dob,gender,user_ssn,user_address,user_city,user_state,user_country,user_post_code,user_email,user_contact_no,user_type,insurance_ID,user_blood_type,user_status) VALUES (11,'Tywin','Dan','4/18/1963','Male',EncryptByKey(Key_GUID('USER_TABLE_ENCRYPT_KEY'), convert(varbinary,456790)),'54 Darling street','Chicago','IL','United States',2125,EncryptByKey(Key_GUID('USER_TABLE_ENCRYPT_KEY'), convert(varbinary,'tyrion.lanniester@gmail.com')),EncryptByKey(Key_GUID('USER_TABLE_ENCRYPT_KEY'), convert(varbinary,9599990651)),'Donor',88898,'O+','Donated');
INSERT INTO [User]([user_ID],user_fname,user_lname,user_dob,gender,user_ssn,user_address,user_city,user_state,user_country,user_post_code,user_email,user_contact_no,user_type,insurance_ID,user_blood_type,user_status) VALUES (12,'Robert','Jacob','12/15/1971','Male',EncryptByKey(Key_GUID('USER_TABLE_ENCRYPT_KEY'), convert(varbinary,456791)),'55 Mission main','Dallas','TX','United States',2126,EncryptByKey(Key_GUID('USER_TABLE_ENCRYPT_KEY'), convert(varbinary,'robert.bar@gmail.com')),EncryptByKey(Key_GUID('USER_TABLE_ENCRYPT_KEY'), convert(varbinary,9599990652)),'Donor',88899,'O+',NULL);
INSERT INTO [User]([user_ID],user_fname,user_lname,user_dob,gender,user_ssn,user_address,user_city,user_state,user_country,user_post_code,user_email,user_contact_no,user_type,insurance_ID,user_blood_type,user_status) VALUES (13,'Rose','Jim','12/5/1974','Female',EncryptByKey(Key_GUID('USER_TABLE_ENCRYPT_KEY'), convert(varbinary,456792)),'56 Bolyston Park','Lowell','MA','United States',2127,EncryptByKey(Key_GUID('USER_TABLE_ENCRYPT_KEY'), convert(varbinary,'rosekajack@gmail.com')),EncryptByKey(Key_GUID('USER_TABLE_ENCRYPT_KEY'), convert(varbinary,9599990653)),'Donor',88900,'A+',NULL);
INSERT INTO [User]([user_ID],user_fname,user_lname,user_dob,gender,user_ssn,user_address,user_city,user_state,user_country,user_post_code,user_email,user_contact_no,user_type,insurance_ID,user_blood_type,user_status) VALUES (14,'Ran','Tran','9/14/1994','Male',EncryptByKey(Key_GUID('USER_TABLE_ENCRYPT_KEY'), convert(varbinary,456793)),'100 Fenway Park','Jersey City','NJ','United States',2128,EncryptByKey(Key_GUID('USER_TABLE_ENCRYPT_KEY'), convert(varbinary,'Ran019@gmail.com')),EncryptByKey(Key_GUID('USER_TABLE_ENCRYPT_KEY'), convert(varbinary,9599990654)),'Donor',88901,'A+',NULL);
INSERT INTO [User]([user_ID],user_fname,user_lname,user_dob,gender,user_ssn,user_address,user_city,user_state,user_country,user_post_code,user_email,user_contact_no,user_type,insurance_ID,user_blood_type,user_status) VALUES (15,'Tim','Bin','6/13/1974','Male',EncryptByKey(Key_GUID('USER_TABLE_ENCRYPT_KEY'), convert(varbinary,456794)),'101 Jan Street','El Monte','LA','United States',2129,EncryptByKey(Key_GUID('USER_TABLE_ENCRYPT_KEY'), convert(varbinary,'tim.tam@gmail.com')),EncryptByKey(Key_GUID('USER_TABLE_ENCRYPT_KEY'), convert(varbinary,9599990655)),'Donor',88902,'A+','Donated');
INSERT INTO [User]([user_ID],user_fname,user_lname,user_dob,gender,user_ssn,user_address,user_city,user_state,user_country,user_post_code,user_email,user_contact_no,user_type,insurance_ID,user_blood_type,user_status) VALUES (16,'Jim','Bim','8/20/1997','Male',EncryptByKey(Key_GUID('USER_TABLE_ENCRYPT_KEY'), convert(varbinary,456795)),'102 Feb Street','Chico','CA','United States',2130,EncryptByKey(Key_GUID('USER_TABLE_ENCRYPT_KEY'), convert(varbinary,'jim.bim@gmail.com')),EncryptByKey(Key_GUID('USER_TABLE_ENCRYPT_KEY'), convert(varbinary,9599990656)),'Donor',88903,'AB+',NULL);
INSERT INTO [User]([user_ID],user_fname,user_lname,user_dob,gender,user_ssn,user_address,user_city,user_state,user_country,user_post_code,user_email,user_contact_no,user_type,insurance_ID,user_blood_type,user_status) VALUES (17,'Manel','Ballard','12/24/1997','Male',EncryptByKey(Key_GUID('USER_TABLE_ENCRYPT_KEY'), convert(varbinary,456796)),'111 Cox Street','Hollywood','FL','United States',2131,EncryptByKey(Key_GUID('USER_TABLE_ENCRYPT_KEY'), convert(varbinary,'manel100@gmail.com')),EncryptByKey(Key_GUID('USER_TABLE_ENCRYPT_KEY'), convert(varbinary,9599990657)),'Donor',88904,'AB+',NULL);
INSERT INTO [User]([user_ID],user_fname,user_lname,user_dob,gender,user_ssn,user_address,user_city,user_state,user_country,user_post_code,user_email,user_contact_no,user_type,insurance_ID,user_blood_type,user_status) VALUES (18,'Alessandro','Marinis','7/12/1960','Female',EncryptByKey(Key_GUID('USER_TABLE_ENCRYPT_KEY'), convert(varbinary,456797)),'99 Parkstreet','Avalon','LA','United States',2132,EncryptByKey(Key_GUID('USER_TABLE_ENCRYPT_KEY'), convert(varbinary,'alessandro111@gmail.com')),EncryptByKey(Key_GUID('USER_TABLE_ENCRYPT_KEY'), convert(varbinary,9599990658)),'Donor',88905,'AB+','Donated');
INSERT INTO [User]([user_ID],user_fname,user_lname,user_dob,gender,user_ssn,user_address,user_city,user_state,user_country,user_post_code,user_email,user_contact_no,user_type,insurance_ID,user_blood_type,user_status) VALUES (19,'Nyasa','Roy','4/2/1993','Female',EncryptByKey(Key_GUID('USER_TABLE_ENCRYPT_KEY'), convert(varbinary,456798)),'100 Parkstreet','California city','CA','United States',2133,EncryptByKey(Key_GUID('USER_TABLE_ENCRYPT_KEY'), convert(varbinary,'Nyasa101@gmail.com')),EncryptByKey(Key_GUID('USER_TABLE_ENCRYPT_KEY'), convert(varbinary,9599990659)),'Donor',88906,'A+',NULL);
INSERT INTO [User]([user_ID],user_fname,user_lname,user_dob,gender,user_ssn,user_address,user_city,user_state,user_country,user_post_code,user_email,user_contact_no,user_type,insurance_ID,user_blood_type,user_status) VALUES (20,'Jack','Jill','12/20/1962','Female',EncryptByKey(Key_GUID('USER_TABLE_ENCRYPT_KEY'), convert(varbinary,456799)),'101 Parkstreet','Cape Coral','FL','United States',2134,EncryptByKey(Key_GUID('USER_TABLE_ENCRYPT_KEY'), convert(varbinary,'jack.jill@gmail.com')),EncryptByKey(Key_GUID('USER_TABLE_ENCRYPT_KEY'), convert(varbinary,9599990660)),'Donor',88907,'A+','Donated');
INSERT INTO [User]([user_ID],user_fname,user_lname,user_dob,gender,user_ssn,user_address,user_city,user_state,user_country,user_post_code,user_email,user_contact_no,user_type,insurance_ID,user_blood_type,user_status) VALUES (20001,'Fiona','Gabriel','5/5/1994','Male',EncryptByKey(Key_GUID('USER_TABLE_ENCRYPT_KEY'), convert(varbinary,456800)),'P.O. Box 603, 4235 Lorem St.','Allentown','PE','United States',2135,EncryptByKey(Key_GUID('USER_TABLE_ENCRYPT_KEY'), convert(varbinary,'gabriel.879@gmail.com')),EncryptByKey(Key_GUID('USER_TABLE_ENCRYPT_KEY'), convert(varbinary,9599990661)),'Donor',88908,'B+',NULL);
INSERT INTO [User]([user_ID],user_fname,user_lname,user_dob,gender,user_ssn,user_address,user_city,user_state,user_country,user_post_code,user_email,user_contact_no,user_type,insurance_ID,user_blood_type,user_status) VALUES (20002,'William','Kirk','5/6/1993','Male',EncryptByKey(Key_GUID('USER_TABLE_ENCRYPT_KEY'), convert(varbinary,456801)),'Ap #676-859 Lobortis St.','Joliet','IL','United States',2136,EncryptByKey(Key_GUID('USER_TABLE_ENCRYPT_KEY'), convert(varbinary,'william.384@gmail.com')),EncryptByKey(Key_GUID('USER_TABLE_ENCRYPT_KEY'), convert(varbinary,9599990662)),'Donor',88909,'A+',NULL);
INSERT INTO [User]([user_ID],user_fname,user_lname,user_dob,gender,user_ssn,user_address,user_city,user_state,user_country,user_post_code,user_email,user_contact_no,user_type,insurance_ID,user_blood_type,user_status) VALUES (20003,'Erasmus','Keefe','5/7/1989','Male',EncryptByKey(Key_GUID('USER_TABLE_ENCRYPT_KEY'), convert(varbinary,456802)),'P.O. Box 403, 4141 Duis St.','Springfield','MO','United States',2137,EncryptByKey(Key_GUID('USER_TABLE_ENCRYPT_KEY'), convert(varbinary,'erasmus.390@gmail.com')),EncryptByKey(Key_GUID('USER_TABLE_ENCRYPT_KEY'), convert(varbinary,9599990663)),'Donor',88910,'O+',NULL);
INSERT INTO [User]([user_ID],user_fname,user_lname,user_dob,gender,user_ssn,user_address,user_city,user_state,user_country,user_post_code,user_email,user_contact_no,user_type,insurance_ID,user_blood_type,user_status) VALUES (20004,'Cody','Ulla','5/8/1987','Male',EncryptByKey(Key_GUID('USER_TABLE_ENCRYPT_KEY'), convert(varbinary,456803)),'734-2637 Semper. Avenue','St. Petersburg','FL','United States',2138,EncryptByKey(Key_GUID('USER_TABLE_ENCRYPT_KEY'), convert(varbinary,'Ulla.01@gmail.com')),EncryptByKey(Key_GUID('USER_TABLE_ENCRYPT_KEY'), convert(varbinary,9599990664)),'Donor',88911,'A+','Donated');
INSERT INTO [User]([user_ID],user_fname,user_lname,user_dob,gender,user_ssn,user_address,user_city,user_state,user_country,user_post_code,user_email,user_contact_no,user_type,insurance_ID,user_blood_type,user_status) VALUES (20005,'Otto','Daquan','5/9/1985','Female',EncryptByKey(Key_GUID('USER_TABLE_ENCRYPT_KEY'), convert(varbinary,456804)),'Ap #825-1121 Sem Ave','Kenosha','WI','United States',2139,EncryptByKey(Key_GUID('USER_TABLE_ENCRYPT_KEY'), convert(varbinary,'otto.29@gmail.com')),EncryptByKey(Key_GUID('USER_TABLE_ENCRYPT_KEY'), convert(varbinary,9599990665)),'Recipient',88912,'A+',NULL);
INSERT INTO [User]([user_ID],user_fname,user_lname,user_dob,gender,user_ssn,user_address,user_city,user_state,user_country,user_post_code,user_email,user_contact_no,user_type,insurance_ID,user_blood_type,user_status) VALUES (20006,'Cathleen','Whilemina','2/10/1994','Female',EncryptByKey(Key_GUID('USER_TABLE_ENCRYPT_KEY'), convert(varbinary,456805)),'Ap #515-6541 Dui, Road','Racine','WI','United States',2140,EncryptByKey(Key_GUID('USER_TABLE_ENCRYPT_KEY'), convert(varbinary,'Cathleen@gmail.com')),EncryptByKey(Key_GUID('USER_TABLE_ENCRYPT_KEY'), convert(varbinary,9599990666)),'Recipient',88913,'A+',NULL);
INSERT INTO [User]([user_ID],user_fname,user_lname,user_dob,gender,user_ssn,user_address,user_city,user_state,user_country,user_post_code,user_email,user_contact_no,user_type,insurance_ID,user_blood_type,user_status) VALUES (20007,'Stone','Myra','1/11/1994','Female',EncryptByKey(Key_GUID('USER_TABLE_ENCRYPT_KEY'), convert(varbinary,456806)),'Ap #397-7173 Posuere Av.','North Las Vegas','NE','United States',2141,EncryptByKey(Key_GUID('USER_TABLE_ENCRYPT_KEY'), convert(varbinary,'myra.047@gmail.com')),EncryptByKey(Key_GUID('USER_TABLE_ENCRYPT_KEY'), convert(varbinary,9599990667)),'Recipient',88914,'AB+',NULL);
INSERT INTO [User]([user_ID],user_fname,user_lname,user_dob,gender,user_ssn,user_address,user_city,user_state,user_country,user_post_code,user_email,user_contact_no,user_type,insurance_ID,user_blood_type,user_status) VALUES (20008,'Todd','Andrew','2/12/1984','Male',EncryptByKey(Key_GUID('USER_TABLE_ENCRYPT_KEY'), convert(varbinary,456807)),'5288 Maecenas Avenue','Los Angeles','CA','United States',2142,EncryptByKey(Key_GUID('USER_TABLE_ENCRYPT_KEY'), convert(varbinary,'andrew.todd@gmail.com')),EncryptByKey(Key_GUID('USER_TABLE_ENCRYPT_KEY'), convert(varbinary,9599990668)),'Recipient',88915,'A+','Recieved');
INSERT INTO [User]([user_ID],user_fname,user_lname,user_dob,gender,user_ssn,user_address,user_city,user_state,user_country,user_post_code,user_email,user_contact_no,user_type,insurance_ID,user_blood_type,user_status) VALUES (20009,'Charity','Reese','1/13/1984','Male',EncryptByKey(Key_GUID('USER_TABLE_ENCRYPT_KEY'), convert(varbinary,456808)),'6791 Pellentesque, Ave','Montpelier','VR','United States',2143,EncryptByKey(Key_GUID('USER_TABLE_ENCRYPT_KEY'), convert(varbinary,'charity.09@gmail.com')),EncryptByKey(Key_GUID('USER_TABLE_ENCRYPT_KEY'), convert(varbinary,9599990669)),'Recipient',88916,'O-',NULL);
INSERT INTO [User]([user_ID],user_fname,user_lname,user_dob,gender,user_ssn,user_address,user_city,user_state,user_country,user_post_code,user_email,user_contact_no,user_type,insurance_ID,user_blood_type,user_status) VALUES (20010,'Micah','Malachi','2/14/1988','Male',EncryptByKey(Key_GUID('USER_TABLE_ENCRYPT_KEY'), convert(varbinary,456809)),'P.O. Box 756, 5246 Ultricies St.','Joliet','IL','United States',2144,EncryptByKey(Key_GUID('USER_TABLE_ENCRYPT_KEY'), convert(varbinary,'Micah@gmail.com')),EncryptByKey(Key_GUID('USER_TABLE_ENCRYPT_KEY'), convert(varbinary,9599990670)),'Recipient',88917,'O+',NULL);
INSERT INTO [User]([user_ID],user_fname,user_lname,user_dob,gender,user_ssn,user_address,user_city,user_state,user_country,user_post_code,user_email,user_contact_no,user_type,insurance_ID,user_blood_type,user_status) VALUES (20011,'Travis','Baxter','3/15/1984','Female',EncryptByKey(Key_GUID('USER_TABLE_ENCRYPT_KEY'), convert(varbinary,456810)),'P.O. Box 590, 4075 Augue Rd.','Tacoma','AK','United States',2145,EncryptByKey(Key_GUID('USER_TABLE_ENCRYPT_KEY'), convert(varbinary,'travis.bax@gmail.com')),EncryptByKey(Key_GUID('USER_TABLE_ENCRYPT_KEY'), convert(varbinary,9599990671)),'Recipient',88918,'AB-',NULL);
INSERT INTO [User]([user_ID],user_fname,user_lname,user_dob,gender,user_ssn,user_address,user_city,user_state,user_country,user_post_code,user_email,user_contact_no,user_type,insurance_ID,user_blood_type,user_status) VALUES (20012,'Lane','Magee','7/16/1989','Male',EncryptByKey(Key_GUID('USER_TABLE_ENCRYPT_KEY'), convert(varbinary,456811)),'P.O. Box 811, 7581 Nec, Av.','Hattiesburg','MS','United States',2146,EncryptByKey(Key_GUID('USER_TABLE_ENCRYPT_KEY'), convert(varbinary,'lane.34@gmail.com')),EncryptByKey(Key_GUID('USER_TABLE_ENCRYPT_KEY'), convert(varbinary,9599990672)),'Recipient',88919,'A+','Recieved');
INSERT INTO [User]([user_ID],user_fname,user_lname,user_dob,gender,user_ssn,user_address,user_city,user_state,user_country,user_post_code,user_email,user_contact_no,user_type,insurance_ID,user_blood_type,user_status) VALUES (20013,'Carol','Chandler','1/17/1977','Female',EncryptByKey(Key_GUID('USER_TABLE_ENCRYPT_KEY'), convert(varbinary,456812)),'921-8190 Aliquet Street','Hattiesburg','MS','United States',2147,EncryptByKey(Key_GUID('USER_TABLE_ENCRYPT_KEY'), convert(varbinary,'carol019@gmail.com')),EncryptByKey(Key_GUID('USER_TABLE_ENCRYPT_KEY'), convert(varbinary,9599990673)),'Recipient',88920,'B-','Recieved');
INSERT INTO [User]([user_ID],user_fname,user_lname,user_dob,gender,user_ssn,user_address,user_city,user_state,user_country,user_post_code,user_email,user_contact_no,user_type,insurance_ID,user_blood_type,user_status) VALUES (20014,'Simone','Aubrey','2/16/1989','Male',EncryptByKey(Key_GUID('USER_TABLE_ENCRYPT_KEY'), convert(varbinary,456813)),'518-9077 Sed St.','Gillette','WY','United States',2148,EncryptByKey(Key_GUID('USER_TABLE_ENCRYPT_KEY'), convert(varbinary,'aubrey.019@gmail.com')),EncryptByKey(Key_GUID('USER_TABLE_ENCRYPT_KEY'), convert(varbinary,9599990674)),'Donor',88921,'A+',NULL);
INSERT INTO [User]([user_ID],user_fname,user_lname,user_dob,gender,user_ssn,user_address,user_city,user_state,user_country,user_post_code,user_email,user_contact_no,user_type,insurance_ID,user_blood_type,user_status) VALUES (20015,'Nathan','Elvis','5/19/1984','Female',EncryptByKey(Key_GUID('USER_TABLE_ENCRYPT_KEY'), convert(varbinary,456814)),'665-4153 Nam St.','Glendale','AR','United States',2149,EncryptByKey(Key_GUID('USER_TABLE_ENCRYPT_KEY'), convert(varbinary,'elvis.nathan@gmail.com')),EncryptByKey(Key_GUID('USER_TABLE_ENCRYPT_KEY'), convert(varbinary,9599990675)),'Donor',88922,'B+',NULL);
INSERT INTO [User]([user_ID],user_fname,user_lname,user_dob,gender,user_ssn,user_address,user_city,user_state,user_country,user_post_code,user_email,user_contact_no,user_type,insurance_ID,user_blood_type,user_status) VALUES (20016,'Dale','Samson','5/20/1974','Male',EncryptByKey(Key_GUID('USER_TABLE_ENCRYPT_KEY'), convert(varbinary,456815)),'442-9685 Nibh Rd.','Tallahassee','FL','United States',2150,EncryptByKey(Key_GUID('USER_TABLE_ENCRYPT_KEY'), convert(varbinary,'samson.98@gmail.com')),EncryptByKey(Key_GUID('USER_TABLE_ENCRYPT_KEY'), convert(varbinary,9599990676)),'Donor',88923,'O-',NULL);
INSERT INTO [User]([user_ID],user_fname,user_lname,user_dob,gender,user_ssn,user_address,user_city,user_state,user_country,user_post_code,user_email,user_contact_no,user_type,insurance_ID,user_blood_type,user_status) VALUES (20017,'Xandra','Nash','5/21/1995','Male',EncryptByKey(Key_GUID('USER_TABLE_ENCRYPT_KEY'), convert(varbinary,456816)),'3090 Aliquet, St.','Hattiesburg','MS','United States',2151,EncryptByKey(Key_GUID('USER_TABLE_ENCRYPT_KEY'), convert(varbinary,'xandra01@gmail.com')),EncryptByKey(Key_GUID('USER_TABLE_ENCRYPT_KEY'), convert(varbinary,9599990677)),'Donor',88924,'O+',NULL);
INSERT INTO [User]([user_ID],user_fname,user_lname,user_dob,gender,user_ssn,user_address,user_city,user_state,user_country,user_post_code,user_email,user_contact_no,user_type,insurance_ID,user_blood_type,user_status) VALUES (20018,'Callum','Yuri','5/22/1984','Female',EncryptByKey(Key_GUID('USER_TABLE_ENCRYPT_KEY'), convert(varbinary,456817)),'125-4302 Sit Av.','Salt Lake City','Utah','United States',2152,EncryptByKey(Key_GUID('USER_TABLE_ENCRYPT_KEY'), convert(varbinary,'yuri.cutiee@gmail.com')),EncryptByKey(Key_GUID('USER_TABLE_ENCRYPT_KEY'), convert(varbinary,9599990678)),'Donor',88925,'AB-',NULL);
INSERT INTO [User]([user_ID],user_fname,user_lname,user_dob,gender,user_ssn,user_address,user_city,user_state,user_country,user_post_code,user_email,user_contact_no,user_type,insurance_ID,user_blood_type,user_status) VALUES (20019,'Madaline','Tyler','12/23/1992','Female',EncryptByKey(Key_GUID('USER_TABLE_ENCRYPT_KEY'), convert(varbinary,456818)),'Ap #190-7662 Lacus. Rd.','Oklahoma City','OK','United States',2153,EncryptByKey(Key_GUID('USER_TABLE_ENCRYPT_KEY'), convert(varbinary,'tyler.76@gmail.com')),EncryptByKey(Key_GUID('USER_TABLE_ENCRYPT_KEY'), convert(varbinary,9599990679)),'Donor',88926,'O+','Donated');
INSERT INTO [User]([user_ID],user_fname,user_lname,user_dob,gender,user_ssn,user_address,user_city,user_state,user_country,user_post_code,user_email,user_contact_no,user_type,insurance_ID,user_blood_type,user_status) VALUES (20020,'Todd','Benjamin','3/24/1991','Female',EncryptByKey(Key_GUID('USER_TABLE_ENCRYPT_KEY'), convert(varbinary,456819)),'4307 Eros. Street','Tacoma','WA','United States',2154,EncryptByKey(Key_GUID('USER_TABLE_ENCRYPT_KEY'), convert(varbinary,'todd.89@gmail.com')),EncryptByKey(Key_GUID('USER_TABLE_ENCRYPT_KEY'), convert(varbinary,9599990680)),'Donor',88927,'AB-',NULL);
INSERT INTO [User]([user_ID],user_fname,user_lname,user_dob,gender,user_ssn,user_address,user_city,user_state,user_country,user_post_code,user_email,user_contact_no,user_type,insurance_ID,user_blood_type,user_status) VALUES (21,'Shlok','Kapoor','5/5/1994','Female',EncryptByKey(Key_GUID('USER_TABLE_ENCRYPT_KEY'), convert(varbinary,454780)),'887 Huntington Avenue','Boston','MA','United States',2115,EncryptByKey(Key_GUID('USER_TABLE_ENCRYPT_KEY'), convert(varbinary,'Shlok881@gmail.com')),EncryptByKey(Key_GUID('USER_TABLE_ENCRYPT_KEY'), convert(varbinary,9595690641)),'Donor',85868,'B+',NULL); 
INSERT INTO [User]([user_ID],user_fname,user_lname,user_dob,gender,user_ssn,user_address,user_city,user_state,user_country,user_post_code,user_email,user_contact_no,user_type,insurance_ID,user_blood_type,user_status) VALUES (22,'Preet','Singh','12/5/1967','Female',EncryptByKey(Key_GUID('USER_TABLE_ENCRYPT_KEY'), convert(varbinary,457581)),'888 Fenway Avenue','New York','NY','United States',2116,EncryptByKey(Key_GUID('USER_TABLE_ENCRYPT_KEY'), convert(varbinary,'PreetClark@gmail.com')),EncryptByKey(Key_GUID('USER_TABLE_ENCRYPT_KEY'), convert(varbinary,9599996742)),'Donor',85689,'O+',NULL); 
INSERT INTO [User]([user_ID],user_fname,user_lname,user_dob,gender,user_ssn,user_address,user_city,user_state,user_country,user_post_code,user_email,user_contact_no,user_type,insurance_ID,user_blood_type,user_status) VALUES (23,'Sanju','Ajmane','6/27/1966','Female',EncryptByKey(Key_GUID('USER_TABLE_ENCRYPT_KEY'), convert(varbinary,487782)),'9 Copley Avenue','Dublin','CA','United States',2117,EncryptByKey(Key_GUID('USER_TABLE_ENCRYPT_KEY'), convert(varbinary,'Sanju.02@gmail.com')),EncryptByKey(Key_GUID('USER_TABLE_ENCRYPT_KEY'), convert(varbinary,9599990983)),'Donor',88690,'A+',NULL); 
INSERT INTO [User]([user_ID],user_fname,user_lname,user_dob,gender,user_ssn,user_address,user_city,user_state,user_country,user_post_code,user_email,user_contact_no,user_type,insurance_ID,user_blood_type,user_status) VALUES (20021,'Sam','Roy','8/3/1993','Male',EncryptByKey(Key_GUID('USER_TABLE_ENCRYPT_KEY'), convert(varbinary,456980)),'887 Hurtington Hill','Boston','MA','United States',2115,EncryptByKey(Key_GUID('USER_TABLE_ENCRYPT_KEY'), convert(varbinary,'Roy1@gmail.com')),EncryptByKey(Key_GUID('USER_TABLE_ENCRYPT_KEY'), convert(varbinary,9599993451)),'Recipient',88578,'B+',NULL); 
INSERT INTO [User]([user_ID],user_fname,user_lname,user_dob,gender,user_ssn,user_address,user_city,user_state,user_country,user_post_code,user_email,user_contact_no,user_type,insurance_ID,user_blood_type,user_status) VALUES (20022,'Rishiraj','Macharwala','7/12/1977','Male',EncryptByKey(Key_GUID('USER_TABLE_ENCRYPT_KEY'), convert(varbinary,498781)),'23 Shillman Hall ','New York','NY','United States',2116,EncryptByKey(Key_GUID('USER_TABLE_ENCRYPT_KEY'), convert(varbinary,'Rishiraj@gmail.com')),EncryptByKey(Key_GUID('USER_TABLE_ENCRYPT_KEY'), convert(varbinary,9594750642)),'Recipient',84889,'O+',NULL); 
INSERT INTO [User]([user_ID],user_fname,user_lname,user_dob,gender,user_ssn,user_address,user_city,user_state,user_country,user_post_code,user_email,user_contact_no,user_type,insurance_ID,user_blood_type,user_status) VALUES (20023,'Shiv','Singhania','4/2/1956','Male',EncryptByKey(Key_GUID('USER_TABLE_ENCRYPT_KEY'), convert(varbinary,456982)),'98 West Village','Dublin','CA','United States',2117,EncryptByKey(Key_GUID('USER_TABLE_ENCRYPT_KEY'), convert(varbinary,'Singhania@gmail.com')),EncryptByKey(Key_GUID('USER_TABLE_ENCRYPT_KEY'), convert(varbinary,9599990643)),'Recipient',86790,'A+',NULL); 




INSERT INTO OrganBank(organ_bID,organ_bName,address,city,state,Country,post_code,primary_contact) VALUES (10001,'Ante Foundation','P.O. Box 841, 8333 Imperdiet Rd.','Birmingham','AL','UNITED STATES',36560,5917724818);
INSERT INTO OrganBank(organ_bID,organ_bName,address,city,state,Country,post_code,primary_contact) VALUES (10002,'Semper Foundation','Ap #504-7005 Ipsum St.','South Bend','IN','UNITED STATES',60828,8501336764);
INSERT INTO OrganBank(organ_bID,organ_bName,address,city,state,Country,post_code,primary_contact) VALUES (10003,'Proin Foundation','1868 Consectetuer Street','Lincoln','NE','UNITED STATES',83412,5708433319);
INSERT INTO OrganBank(organ_bID,organ_bName,address,city,state,Country,post_code,primary_contact) VALUES (10004,'Turpis In Foundation','Ap #987-7416 Sodales. Avenue','Austin','TX','UNITED STATES',29333,6904835498);
INSERT INTO OrganBank(organ_bID,organ_bName,address,city,state,Country,post_code,primary_contact) VALUES (10005,'Mauris Suspendisse Foundation','413-3227 Phasellus Av.','Rockford','IL','UNITED STATES',81943,7346302820);
INSERT INTO OrganBank(organ_bID,organ_bName,address,city,state,Country,post_code,primary_contact) VALUES (10006,'Eu Foundation','Ap #378-1874 Lectus Rd.','South Bend','IN','UNITED STATES',46641,5472147722);
INSERT INTO OrganBank(organ_bID,organ_bName,address,city,state,Country,post_code,primary_contact) VALUES (10007,'Sit Foundation','267-1171 Mi St.','Worcester','MA','UNITED STATES',31385,5132893000);
INSERT INTO OrganBank(organ_bID,organ_bName,address,city,state,Country,post_code,primary_contact) VALUES (10008,'Aliquam Foundation','484-5668 Turpis. Rd.','Lincoln','NE','UNITED STATES',66278,7175738474);
INSERT INTO OrganBank(organ_bID,organ_bName,address,city,state,Country,post_code,primary_contact) VALUES (10009,'Nulla Eu Neque Foundation','Ap #166-803 Mattis. St.','Spokane','WA','UNITED STATES',83864,9959187739);
INSERT INTO OrganBank(organ_bID,organ_bName,address,city,state,Country,post_code,primary_contact) VALUES (10010,'Semper Auctor Foundation','4156 Ipsum Ave','Fairbanks','AK','UNITED STATES',99510,6726476414);
INSERT INTO OrganBank(organ_bID,organ_bName,address,city,state,Country,post_code,primary_contact) VALUES (10011,'Consequat Enim Diam Associates','735-178 Et Av.','New Haven','CT','UNITED STATES',93849,7019823921);
INSERT INTO OrganBank(organ_bID,organ_bName,address,city,state,Country,post_code,primary_contact) VALUES (10012,'Pede Ultrices A Associates','Ap #663-1238 Mi. Ave','Fort Wayne','IN','UNITED STATES',44461,4583051267);
INSERT INTO OrganBank(organ_bID,organ_bName,address,city,state,Country,post_code,primary_contact) VALUES (10013,'Donec Vitae Erat Associates','Ap #687-1361 Ipsum St.','Austin','TX','UNITED STATES',88322,6453133391);
INSERT INTO OrganBank(organ_bID,organ_bName,address,city,state,Country,post_code,primary_contact) VALUES (10014,'Tincidunt Vehicula Associates','300-6090 Nisi. Rd.','Vancouver','WA','UNITED STATES',16769,5641496998);
INSERT INTO OrganBank(organ_bID,organ_bName,address,city,state,Country,post_code,primary_contact) VALUES (10015,'Nec Associates','4323 Commodo Ave','Cambridge','MA','UNITED STATES',27414,7481379908);
INSERT INTO OrganBank(organ_bID,organ_bName,address,city,state,Country,post_code,primary_contact) VALUES (10016,'Aliquam Arcu Associates','P.O. Box 239, 236 Aenean Ave','Baton Rouge','LA','UNITED STATES',86447,8116137718);
INSERT INTO OrganBank(organ_bID,organ_bName,address,city,state,Country,post_code,primary_contact) VALUES (10017,'Lobortis Quis Pede Associates','455-5751 Iaculis Rd.','Baton Rouge','LA','UNITED STATES',70210,8455516364);
INSERT INTO OrganBank(organ_bID,organ_bName,address,city,state,Country,post_code,primary_contact) VALUES (10018,'Mauris Sagittis Placerat Associates','2397 Ante Rd.','Mobile','AL','UNITED STATES',36731,6924471434);
INSERT INTO OrganBank(organ_bID,organ_bName,address,city,state,Country,post_code,primary_contact) VALUES (10019,'Erat Associates','8067 Vel, Ave','St. Petersburg','FL','UNITED STATES',40151,8802984495);
INSERT INTO OrganBank(organ_bID,organ_bName,address,city,state,Country,post_code,primary_contact) VALUES (10020,'Amet Diam Eu Associates','705-5248 Nisl Avenue','Sioux City','IA','UNITED STATES',90512,7829494757);
INSERT INTO OrganBank(organ_bID,organ_bName,address,city,state,Country,post_code,primary_contact) VALUES (10021,'Anny Foundation','P.O. Box 841, 8333 Imperdiet Rd.','Birmingham','AL','USA',36380,5917454818); 
INSERT INTO OrganBank(organ_bID,organ_bName,address,city,state,Country,post_code,primary_contact) VALUES (10022,'Semp Foundation','Ap #504-702 sum St.','South Bend','IN','USA',60898,8501336674); 
INSERT INTO OrganBank(organ_bID,organ_bName,address,city,state,Country,post_code,primary_contact) VALUES (10023,'Pro Foundation','1863 Consect Street','Birmingham','AL','USA',834103,5708433099); 
INSERT INTO OrganBank(organ_bID,organ_bName,address,city,state,Country,post_code,primary_contact) VALUES (10024,'Tulip In Foundation','Ap #987-7416 Sodal. Avenue','South Bend','IN','USA',29983,6949835498); 
INSERT INTO OrganBank(organ_bID,organ_bName,address,city,state,Country,post_code,primary_contact) VALUES (10025,'Maurt Suspendisse Foundation','413-37 Phase Av.','Rockford','IL','USA',81443,7346389820); 
INSERT INTO OrganBank(organ_bID,organ_bName,address,city,state,Country,post_code,primary_contact) VALUES (10026,'Uri Foundation','Ap #378-187 Lotus Rd.','Rockford','IL','USA',46637,5472149822); 

INSERT INTO OrganBankLink(organization_ID,organ_bID) VALUES (1,10001);
INSERT INTO OrganBankLink(organization_ID,organ_bID) VALUES (2,10002);
INSERT INTO OrganBankLink(organization_ID,organ_bID) VALUES (3,10003);
INSERT INTO OrganBankLink(organization_ID,organ_bID) VALUES (4,10004);
INSERT INTO OrganBankLink(organization_ID,organ_bID) VALUES (5,10005);
INSERT INTO OrganBankLink(organization_ID,organ_bID) VALUES (6,10006);
INSERT INTO OrganBankLink(organization_ID,organ_bID) VALUES (7,10007);
INSERT INTO OrganBankLink(organization_ID,organ_bID) VALUES (8,10008);
INSERT INTO OrganBankLink(organization_ID,organ_bID) VALUES (9,10009);
INSERT INTO OrganBankLink(organization_ID,organ_bID) VALUES (10,10010);
INSERT INTO OrganBankLink(organization_ID,organ_bID) VALUES (11,10011);
INSERT INTO OrganBankLink(organization_ID,organ_bID) VALUES (12,10012);
INSERT INTO OrganBankLink(organization_ID,organ_bID) VALUES (13,10013);
INSERT INTO OrganBankLink(organization_ID,organ_bID) VALUES (14,10014);
INSERT INTO OrganBankLink(organization_ID,organ_bID) VALUES (15,10015);
INSERT INTO OrganBankLink(organization_ID,organ_bID) VALUES (16,10016);
INSERT INTO OrganBankLink(organization_ID,organ_bID) VALUES (17,10017);
INSERT INTO OrganBankLink(organization_ID,organ_bID) VALUES (18,10018);
INSERT INTO OrganBankLink(organization_ID,organ_bID) VALUES (19,10019);
INSERT INTO OrganBankLink(organization_ID,organ_bID) VALUES (20,10020);


INSERT INTO Recipient(recipient_ID,organ_requested) VALUES (1,'Lung');
INSERT INTO Recipient(recipient_ID,organ_requested) VALUES (2,'Heart');
INSERT INTO Recipient(recipient_ID,organ_requested) VALUES (3,'Eyes');
INSERT INTO Recipient(recipient_ID,organ_requested) VALUES (4,'Kidney');
INSERT INTO Recipient(recipient_ID,organ_requested) VALUES (5,'Liver');
INSERT INTO Recipient(recipient_ID,organ_requested) VALUES (6,'Heart');
INSERT INTO Recipient(recipient_ID,organ_requested) VALUES (7,'Eyes');
INSERT INTO Recipient(recipient_ID,organ_requested) VALUES (8,'Liver');
INSERT INTO Recipient(recipient_ID,organ_requested) VALUES (9,'Heart');
INSERT INTO Recipient(recipient_ID,organ_requested) VALUES (10,'Eyes');
INSERT INTO Recipient(recipient_ID,organ_requested) VALUES (20005,'Lung');
INSERT INTO Recipient(recipient_ID,organ_requested) VALUES (20006,'Heart');
INSERT INTO Recipient(recipient_ID,organ_requested) VALUES (20007,'Eyes');
INSERT INTO Recipient(recipient_ID,organ_requested) VALUES (20008,'Liver');
INSERT INTO Recipient(recipient_ID,organ_requested) VALUES (20009,'Kidney');
INSERT INTO Recipient(recipient_ID,organ_requested) VALUES (20010,'Heart');
INSERT INTO Recipient(recipient_ID,organ_requested) VALUES (20011,'Eyes');
INSERT INTO Recipient(recipient_ID,organ_requested) VALUES (20012,'Liver');
INSERT INTO Recipient(recipient_ID,organ_requested) VALUES (20013,'Heart');
INSERT INTO Recipient(recipient_ID,organ_requested) VALUES (11,'Lung'); 
INSERT INTO Recipient(recipient_ID,organ_requested) VALUES (12,'Heart'); 
INSERT INTO Recipient(recipient_ID,organ_requested) VALUES (13,'Eyes'); 
INSERT INTO Recipient(recipient_ID,organ_requested) VALUES (20014,'Kidney'); 
INSERT INTO Recipient(recipient_ID,organ_requested) VALUES (20015,'Liver'); 
INSERT INTO Recipient(recipient_ID,organ_requested) VALUES (20016,'Heart'); 
INSERT INTO Recipient(recipient_ID,organ_requested) VALUES (20021,'Kidney'); 
INSERT INTO Recipient(recipient_ID,organ_requested) VALUES (20022,'Liver'); 
INSERT INTO Recipient(recipient_ID,organ_requested) VALUES (20023,'Heart');




INSERT INTO TransplantCenter(transplant_cID,transplant_cname,success_rate,total_beds,available_beds,total_rooms,available_rooms,organization_ID) VALUES ('MA021','Purus Inc.',99.99,100,50,200,67,1);
INSERT INTO TransplantCenter(transplant_cID,transplant_cname,success_rate,total_beds,available_beds,total_rooms,available_rooms,organization_ID) VALUES ('CA980','Nullam Vitae Associates',99.95,101,51,300,68,2);
INSERT INTO TransplantCenter(transplant_cID,transplant_cname,success_rate,total_beds,available_beds,total_rooms,available_rooms,organization_ID) VALUES ('IL022','Mauris Inc.',99.98,102,52,350,69,3);
INSERT INTO TransplantCenter(transplant_cID,transplant_cname,success_rate,total_beds,available_beds,total_rooms,available_rooms,organization_ID) VALUES ('MA067','Urna Incorporated',99.99,103,53,400,70,4);
INSERT INTO TransplantCenter(transplant_cID,transplant_cname,success_rate,total_beds,available_beds,total_rooms,available_rooms,organization_ID) VALUES ('LA025','Netus Et Limited',99.97,206,54,350,71,5);
INSERT INTO TransplantCenter(transplant_cID,transplant_cname,success_rate,total_beds,available_beds,total_rooms,available_rooms,organization_ID) VALUES ('UT180','Pede Ac Urna Institute',98.99,207,55,450,65,6);
INSERT INTO TransplantCenter(transplant_cID,transplant_cname,success_rate,total_beds,available_beds,total_rooms,available_rooms,organization_ID) VALUES ('FL560','Aliquet Diam Limited',94.99,208,56,200,66,7);
INSERT INTO TransplantCenter(transplant_cID,transplant_cname,success_rate,total_beds,available_beds,total_rooms,available_rooms,organization_ID) VALUES ('CA910','Torquent Limited',90.99,209,57,300,76,8);
INSERT INTO TransplantCenter(transplant_cID,transplant_cname,success_rate,total_beds,available_beds,total_rooms,available_rooms,organization_ID) VALUES ('NE110','Id LLC',98.99,210,58,350,77,9);
INSERT INTO TransplantCenter(transplant_cID,transplant_cname,success_rate,total_beds,available_beds,total_rooms,available_rooms,organization_ID) VALUES ('FL670','Augue Scelerisque Mollis Consulting',93.99,211,59,400,69,10);
INSERT INTO TransplantCenter(transplant_cID,transplant_cname,success_rate,total_beds,available_beds,total_rooms,available_rooms,organization_ID) VALUES ('OK901','Lectus Ante Dictum LLC',93.97,300,60,350,70,11);
INSERT INTO TransplantCenter(transplant_cID,transplant_cname,success_rate,total_beds,available_beds,total_rooms,available_rooms,organization_ID) VALUES ('AZ765','Eu Neque Pellentesque Associates',98,309,61,450,71,12);
INSERT INTO TransplantCenter(transplant_cID,transplant_cname,success_rate,total_beds,available_beds,total_rooms,available_rooms,organization_ID) VALUES ('UT890','Et PC',96.98,310,62,212,72,13);
INSERT INTO TransplantCenter(transplant_cID,transplant_cname,success_rate,total_beds,available_beds,total_rooms,available_rooms,organization_ID) VALUES ('MA120','Vulputate Inc.',98.99,311,63,213,73,14);
INSERT INTO TransplantCenter(transplant_cID,transplant_cname,success_rate,total_beds,available_beds,total_rooms,available_rooms,organization_ID) VALUES ('TX420','Aenean Industries',95.99,312,64,214,74,15);
INSERT INTO TransplantCenter(transplant_cID,transplant_cname,success_rate,total_beds,available_beds,total_rooms,available_rooms,organization_ID) VALUES ('IL010','Suspendisse Foundation',99.99,216,65,300,75,16);
INSERT INTO TransplantCenter(transplant_cID,transplant_cname,success_rate,total_beds,available_beds,total_rooms,available_rooms,organization_ID) VALUES ('NJ900','Fermentum LLP',90.99,217,66,450,76,17);
INSERT INTO TransplantCenter(transplant_cID,transplant_cname,success_rate,total_beds,available_beds,total_rooms,available_rooms,organization_ID) VALUES ('MA320','Cum Sociis Foundation',96.99,218,67,300,77,18);
INSERT INTO TransplantCenter(transplant_cID,transplant_cname,success_rate,total_beds,available_beds,total_rooms,available_rooms,organization_ID) VALUES ('NJ220','In Associates',97.99,215,68,300,78,19);
INSERT INTO TransplantCenter(transplant_cID,transplant_cname,success_rate,total_beds,available_beds,total_rooms,available_rooms,organization_ID) VALUES ('IL090','Hendrerit Foundation',98.81,200,15,200,50,20);
INSERT INTO TransplantCenter(transplant_cID,transplant_cname,success_rate,total_beds,available_beds,total_rooms,available_rooms,organization_ID) VALUES ('MA721','Puru Inc.',98.99,100,50,201,62,21); 
INSERT INTO TransplantCenter(transplant_cID,transplant_cname,success_rate,total_beds,available_beds,total_rooms,available_rooms,organization_ID) VALUES ('CA900','Null Vitae Associates',99.95,100,51,301,62,22); 
INSERT INTO TransplantCenter(transplant_cID,transplant_cname,success_rate,total_beds,available_beds,total_rooms,available_rooms,organization_ID) VALUES ('IL042','Maurey Inc.',99.98,101,52,350,69,23); 
INSERT INTO TransplantCenter(transplant_cID,transplant_cname,success_rate,total_beds,available_beds,total_rooms,available_rooms,organization_ID) VALUES ('MA167','Urna Incorporated',99.99,102,53,400,70,24); 
INSERT INTO TransplantCenter(transplant_cID,transplant_cname,success_rate,total_beds,available_beds,total_rooms,available_rooms,organization_ID) VALUES ('LA045','Nexus Limited',90.97,204,54,350,71,25); 
INSERT INTO TransplantCenter(transplant_cID,transplant_cname,success_rate,total_beds,available_beds,total_rooms,available_rooms,organization_ID) VALUES ('UT170','Pedi Ax Urna Institute',98.99,207,55,450,65,26); 
 




INSERT INTO Donor(donor_ID,donor_type) VALUES (11,'Cadaver');
INSERT INTO Donor(donor_ID,donor_type) VALUES (12,'Living');
INSERT INTO Donor(donor_ID,donor_type) VALUES (13,'Living');
INSERT INTO Donor(donor_ID,donor_type) VALUES (14,'Living');
INSERT INTO Donor(donor_ID,donor_type) VALUES (15,'Deceased');
INSERT INTO Donor(donor_ID,donor_type) VALUES (16,'Living');
INSERT INTO Donor(donor_ID,donor_type) VALUES (17,'Cadaver');
INSERT INTO Donor(donor_ID,donor_type) VALUES (18,'Deceased');
INSERT INTO Donor(donor_ID,donor_type) VALUES (19,'Living');
INSERT INTO Donor(donor_ID,donor_type) VALUES (20,'Living');
INSERT INTO Donor(donor_ID,donor_type) VALUES (20001,'Cadaver');
INSERT INTO Donor(donor_ID,donor_type) VALUES (20002,'Living');
INSERT INTO Donor(donor_ID,donor_type) VALUES (20003,'Living');
INSERT INTO Donor(donor_ID,donor_type) VALUES (20004,'Deceased');
INSERT INTO Donor(donor_ID,donor_type) VALUES (20014,'Cadaver');
INSERT INTO Donor(donor_ID,donor_type) VALUES (20015,'Cadaver');
INSERT INTO Donor(donor_ID,donor_type) VALUES (20016,'Living');
INSERT INTO Donor(donor_ID,donor_type) VALUES (20017,'Cadaver');
INSERT INTO Donor(donor_ID,donor_type) VALUES (20018,'Living');
INSERT INTO Donor(donor_ID,donor_type) VALUES (20019,'Cadaver');
INSERT INTO Donor(donor_ID,donor_type) VALUES (20020,'Deceased');
INSERT INTO Donor(donor_ID,donor_type) VALUES (21,'Living'); 
INSERT INTO Donor(donor_ID,donor_type) VALUES (22,'Living'); 
INSERT INTO Donor(donor_ID,donor_type) VALUES (23,'Cadaver'); 






INSERT INTO TransplantCenterLink(organization_ID,transplant_cID) VALUES (1,'MA021');
INSERT INTO TransplantCenterLink(organization_ID,transplant_cID) VALUES (2,'CA980');
INSERT INTO TransplantCenterLink(organization_ID,transplant_cID) VALUES (3,'IL022');
INSERT INTO TransplantCenterLink(organization_ID,transplant_cID) VALUES (4,'MA067');
INSERT INTO TransplantCenterLink(organization_ID,transplant_cID) VALUES (5,'LA025');
INSERT INTO TransplantCenterLink(organization_ID,transplant_cID) VALUES (6,'UT180');
INSERT INTO TransplantCenterLink(organization_ID,transplant_cID) VALUES (7,'FL560');
INSERT INTO TransplantCenterLink(organization_ID,transplant_cID) VALUES (8,'CA910');
INSERT INTO TransplantCenterLink(organization_ID,transplant_cID) VALUES (9,'NE110');
INSERT INTO TransplantCenterLink(organization_ID,transplant_cID) VALUES (10,'FL670');
INSERT INTO TransplantCenterLink(organization_ID,transplant_cID) VALUES (11,'OK901');
INSERT INTO TransplantCenterLink(organization_ID,transplant_cID) VALUES (12,'AZ765');
INSERT INTO TransplantCenterLink(organization_ID,transplant_cID) VALUES (13,'UT890');
INSERT INTO TransplantCenterLink(organization_ID,transplant_cID) VALUES (14,'MA120');
INSERT INTO TransplantCenterLink(organization_ID,transplant_cID) VALUES (15,'TX420');
INSERT INTO TransplantCenterLink(organization_ID,transplant_cID) VALUES (16,'IL010');
INSERT INTO TransplantCenterLink(organization_ID,transplant_cID) VALUES (17,'NJ900');
INSERT INTO TransplantCenterLink(organization_ID,transplant_cID) VALUES (18,'MA320');
INSERT INTO TransplantCenterLink(organization_ID,transplant_cID) VALUES (19,'NJ220');
INSERT INTO TransplantCenterLink(organization_ID,transplant_cID) VALUES (20,'IL090');
INSERT INTO TransplantCenterLink(organization_ID,transplant_cID) VALUES (21,'MA721'); 
INSERT INTO TransplantCenterLink(organization_ID,transplant_cID) VALUES (22,'CA900'); 
INSERT INTO TransplantCenterLink(organization_ID,transplant_cID) VALUES (23,'MA167'); 
INSERT INTO TransplantCenterLink(organization_ID,transplant_cID) VALUES (24,'LA045'); 
INSERT INTO TransplantCenterLink(organization_ID,transplant_cID) VALUES (25,'UT170'); 
INSERT INTO TransplantCenterLink(organization_ID,transplant_cID) VALUES (26,'IL042'); 






INSERT INTO Pharmacy(pharmacy_name,address,city,post_code,country) VALUES ('CVS Corporation','234 Huntington Avenue','Boston',20115,'UNITED STATES');
INSERT INTO Pharmacy(pharmacy_name,address,city,post_code,country) VALUES ('Giant Eagle Pharmacy','78 Darling Street','Dallas',75001,'UNITED STATES');
INSERT INTO Pharmacy(pharmacy_name,address,city,post_code,country) VALUES ('Fred''s Inc.','987 Alphonsus Street','New Jersey',70012,'UNITED STATES');
INSERT INTO Pharmacy(pharmacy_name,address,city,post_code,country) VALUES ('BI-LO Inc','09 Smith Street','Tampa',33601,'UNITED STATES');
INSERT INTO Pharmacy(pharmacy_name,address,city,post_code,country) VALUES ('Omnicare','456 Salem Street','New Hampshire',30322,'UNITED STATES');
INSERT INTO Pharmacy(pharmacy_name,address,city,post_code,country) VALUES ('Safeway','1630 Tremont Street','Chicago',60007,'UNITED STATES');
INSERT INTO Pharmacy(pharmacy_name,address,city,post_code,country) VALUES ('Costco Pharmacies','300 Longwood Ave','Seattle',98101,'UNITED STATES');
INSERT INTO Pharmacy(pharmacy_name,address,city,post_code,country) VALUES ('Hy-vee Inc','75 Francis Street','Seattle',98102,'UNITED STATES');
INSERT INTO Pharmacy(pharmacy_name,address,city,post_code,country) VALUES ('Shopko Store Inc.','301 Centre Street','Houston',77001,'UNITED STATES');
INSERT INTO Pharmacy(pharmacy_name,address,city,post_code,country) VALUES ('Walgreens','400 Washington Street','Miami',33101,'UNITED STATES');
INSERT INTO Pharmacy(pharmacy_name,address,city,post_code,country) VALUES ('Target','294 Harvard Street','Austin',78652,'UNITED STATES');
INSERT INTO Pharmacy(pharmacy_name,address,city,post_code,country) VALUES ('Publix Pharmacies','1345 Boylston Street','Denver',80019,'UNITED STATES');
INSERT INTO Pharmacy(pharmacy_name,address,city,post_code,country) VALUES ('Medicine Shopee International','198 Fenway Street','Austin',78435,'UNITED STATES');
INSERT INTO Pharmacy(pharmacy_name,address,city,post_code,country) VALUES ('Kroger Company','172 Park Street','Boston',20101,'UNITED STATES');
INSERT INTO Pharmacy(pharmacy_name,address,city,post_code,country) VALUES ('Safeway','676 Mission Park','Dallas',75004,'UNITED STATES');
INSERT INTO Pharmacy(pharmacy_name,address,city,post_code,country) VALUES ('Walgreens','290 Almond Street','Chicago',60034,'UNITED STATES');
INSERT INTO Pharmacy(pharmacy_name,address,city,post_code,country) VALUES ('Fred''s Inc.','456 Queensberry Street','Tampa',33789,'UNITED STATES');
INSERT INTO Pharmacy(pharmacy_name,address,city,post_code,country) VALUES ('CVS Corporation','345 Kelton Street','Boston',20987,'UNITED STATES');
INSERT INTO Pharmacy(pharmacy_name,address,city,post_code,country) VALUES ('Giant Eagle Pharmacy','32 Roxburry Street','Denver',80020,'UNITED STATES');
INSERT INTO Pharmacy(pharmacy_name,address,city,post_code,country) VALUES ('Shopko Store Inc.','890 Daisy Street','Chicago',60056,'UNITED STATES');
INSERT INTO Pharmacy(pharmacy_name,address,city,post_code,country) VALUES ('Safeway','676 Mission Park','Dallas',75004,'USA'); 
INSERT INTO Pharmacy(pharmacy_name,address,city,post_code,country) VALUES ('Walgreens','290 Almond Street','Chicago',60034,'USA'); 
INSERT INTO Pharmacy(pharmacy_name,address,city,post_code,country) VALUES ('Fred''s Inc.','456 Queensberry Street','Tampa',33789,'USA'); 
INSERT INTO Pharmacy(pharmacy_name,address,city,post_code,country) VALUES ('CVS Corporation','345 Kelton Street','Boston',20987,'USA'); 
INSERT INTO Pharmacy(pharmacy_name,address,city,post_code,country) VALUES ('Giant Eagle Pharmacy','32 Roxburry Street','Denver',80020,'USA'); 
INSERT INTO Pharmacy(pharmacy_name,address,city,post_code,country) VALUES ('Shopko Store Inc.','890 Daisy Street','Chicago',60056,'USA'); 






INSERT INTO Prescription(pharmacy_ID,transplant_cID,user_ID) VALUES (1,'MA021',4);
INSERT INTO Prescription(pharmacy_ID,transplant_cID,user_ID) VALUES (2,'CA980',6);
INSERT INTO Prescription(pharmacy_ID,transplant_cID,user_ID) VALUES (3,'IL022',7);
INSERT INTO Prescription(pharmacy_ID,transplant_cID,user_ID) VALUES (4,'MA067',8);
INSERT INTO Prescription(pharmacy_ID,transplant_cID,user_ID) VALUES (5,'LA025',10);
INSERT INTO Prescription(pharmacy_ID,transplant_cID,user_ID) VALUES (6,'UT180',12);
INSERT INTO Prescription(pharmacy_ID,transplant_cID,user_ID) VALUES (7,'FL560',13);
INSERT INTO Prescription(pharmacy_ID,transplant_cID,user_ID) VALUES (8,'CA910',14);
INSERT INTO Prescription(pharmacy_ID,transplant_cID,user_ID) VALUES (9,'NE110',16);
INSERT INTO Prescription(pharmacy_ID,transplant_cID,user_ID) VALUES (10,'FL670',17);
INSERT INTO Prescription(pharmacy_ID,transplant_cID,user_ID) VALUES (11,'OK901',19);
INSERT INTO Prescription(pharmacy_ID,transplant_cID,user_ID) VALUES (12,'AZ765',20001);
INSERT INTO Prescription(pharmacy_ID,transplant_cID,user_ID) VALUES (13,'UT890',20002);
INSERT INTO Prescription(pharmacy_ID,transplant_cID,user_ID) VALUES (14,'MA120',20003);
INSERT INTO Prescription(pharmacy_ID,transplant_cID,user_ID) VALUES (15,'TX420',20005);
INSERT INTO Prescription(pharmacy_ID,transplant_cID,user_ID) VALUES (16,'IL010',20006);
INSERT INTO Prescription(pharmacy_ID,transplant_cID,user_ID) VALUES (17,'NJ900',20007);
INSERT INTO Prescription(pharmacy_ID,transplant_cID,user_ID) VALUES (18,'MA320',20009);
INSERT INTO Prescription(pharmacy_ID,transplant_cID,user_ID) VALUES (19,'NJ220',20010);
INSERT INTO Prescription(pharmacy_ID,transplant_cID,user_ID) VALUES (20,'IL090',20011);
INSERT INTO Prescription(pharmacy_ID,transplant_cID,user_ID) VALUES (21,'MA721',21); 
INSERT INTO Prescription(pharmacy_ID,transplant_cID,user_ID) VALUES (22,'CA900',22); 
INSERT INTO Prescription(pharmacy_ID,transplant_cID,user_ID) VALUES (23,'MA167',23); 
INSERT INTO Prescription(pharmacy_ID,transplant_cID,user_ID) VALUES (24,'LA045',20021); 
INSERT INTO Prescription(pharmacy_ID,transplant_cID,user_ID) VALUES (25,'UT170',20022); 
INSERT INTO Prescription(pharmacy_ID,transplant_cID,user_ID) VALUES (26,'IL042',20023); 






INSERT INTO MedicalStaff(staff_fname,staff_lname,staff_contact_no,staff_designation,schedule,staff_department,transplant_cID) VALUES ('Colin','Smith',8572587512,'Nurse','Morning','Nephrology','MA021');
INSERT INTO MedicalStaff(staff_fname,staff_lname,staff_contact_no,staff_designation,schedule,staff_department,transplant_cID) VALUES ('Victor','Solan',8572581234,'Doctor','Evening','Cardiology','CA980');
INSERT INTO MedicalStaff(staff_fname,staff_lname,staff_contact_no,staff_designation,schedule,staff_department,transplant_cID) VALUES ('Tina','Keane',8875787512,'Nurse','Afternoon','Cardiology','IL022');
INSERT INTO MedicalStaff(staff_fname,staff_lname,staff_contact_no,staff_designation,schedule,staff_department,transplant_cID) VALUES ('David','Joselit',8579876512,'Surgeon','Morning','Thoracotomy','IL022');
INSERT INTO MedicalStaff(staff_fname,staff_lname,staff_contact_no,staff_designation,schedule,staff_department,transplant_cID) VALUES ('Lee','Higgins',8572512345,'Head Nurse','Night','Cardiology','LA025');
INSERT INTO MedicalStaff(staff_fname,staff_lname,staff_contact_no,staff_designation,schedule,staff_department,transplant_cID) VALUES ('Perry','Roberts',8571985312,'Physiotherapist','Morning','Cardiology','UT180');
INSERT INTO MedicalStaff(staff_fname,staff_lname,staff_contact_no,staff_designation,schedule,staff_department,transplant_cID) VALUES ('Julia','Little',8572567393,'Doctor','Evening','Neurology','CA980');
INSERT INTO MedicalStaff(staff_fname,staff_lname,staff_contact_no,staff_designation,schedule,staff_department,transplant_cID) VALUES ('Jenni','Lomax',8598364995,'Surgeon','Evening','Thoracotomy','MA120');
INSERT INTO MedicalStaff(staff_fname,staff_lname,staff_contact_no,staff_designation,schedule,staff_department,transplant_cID) VALUES ('Eric','Malliet',8572999999,'Physiotherapist','Night','Neurology','NE110');
INSERT INTO MedicalStaff(staff_fname,staff_lname,staff_contact_no,staff_designation,schedule,staff_department,transplant_cID) VALUES ('Lewis','Biggs',8523874512,'Dietician','Morning','Neurology','FL670');
INSERT INTO MedicalStaff(staff_fname,staff_lname,staff_contact_no,staff_designation,schedule,staff_department,transplant_cID) VALUES ('Mike','Nelson',8579820384,'Surgeon','Morning','Neurology','OK901');
INSERT INTO MedicalStaff(staff_fname,staff_lname,staff_contact_no,staff_designation,schedule,staff_department,transplant_cID) VALUES ('David','Curran',8597494080,'Head Doctor','Afternoon','Opthalmology','NE110');
INSERT INTO MedicalStaff(staff_fname,staff_lname,staff_contact_no,staff_designation,schedule,staff_department,transplant_cID) VALUES ('Simon','Sheik',8572637485,'Doctor','Night','Nephrologist','NE110');
INSERT INTO MedicalStaff(staff_fname,staff_lname,staff_contact_no,staff_designation,schedule,staff_department,transplant_cID) VALUES ('Rosilla','Bachman',8576297493,'Nurse','Night','Thoracotomy','MA120');
INSERT INTO MedicalStaff(staff_fname,staff_lname,staff_contact_no,staff_designation,schedule,staff_department,transplant_cID) VALUES ('Rose','Jack',9136858282,'Physiotherapist','Evening','Nephrologist','IL010');
INSERT INTO MedicalStaff(staff_fname,staff_lname,staff_contact_no,staff_designation,schedule,staff_department,transplant_cID) VALUES ('Tim','John',9004823427,'Doctor','Afternoon','Opthalmology','NJ900');
INSERT INTO MedicalStaff(staff_fname,staff_lname,staff_contact_no,staff_designation,schedule,staff_department,transplant_cID) VALUES ('Carrie','Potter',9878927660,'Nurse','Morning','Opthalmology','MA320');
INSERT INTO MedicalStaff(staff_fname,staff_lname,staff_contact_no,staff_designation,schedule,staff_department,transplant_cID) VALUES ('James','Kutcher',9008789231,'Surgeon','Night','Opthalmology','NJ220');
INSERT INTO MedicalStaff(staff_fname,staff_lname,staff_contact_no,staff_designation,schedule,staff_department,transplant_cID) VALUES ('Ron','Wissley',9890107413,'Head Nurse','Morning','Nephrology','IL090');
INSERT INTO MedicalStaff(staff_fname,staff_lname,staff_contact_no,staff_designation,schedule,staff_department,transplant_cID) VALUES ('Harry','Kim',9820255570,'Surgeon','Night','Nephrology','IL090');
INSERT INTO MedicalStaff(staff_fname,staff_lname,staff_contact_no,staff_designation,schedule,staff_department,transplant_cID) VALUES ('Seth','Hodge',2539159992,'Physiotherapist','Morning','Thoracotomy','MA021');
INSERT INTO MedicalStaff(staff_fname,staff_lname,staff_contact_no,staff_designation,schedule,staff_department,transplant_cID) VALUES ('Alden','Nash',7811279946,'Doctor','Night','Nephrologist','CA980');
INSERT INTO MedicalStaff(staff_fname,staff_lname,staff_contact_no,staff_designation,schedule,staff_department,transplant_cID) VALUES ('Dalton','Floyd',3757106369,'Nurse','Morning','Opthalmology','IL022');
INSERT INTO MedicalStaff(staff_fname,staff_lname,staff_contact_no,staff_designation,schedule,staff_department,transplant_cID) VALUES ('Beck','Larsen',6519107442,'Surgeon','Night','Opthalmology','MA067');
INSERT INTO MedicalStaff(staff_fname,staff_lname,staff_contact_no,staff_designation,schedule,staff_department,transplant_cID) VALUES ('Norman','Mendez',9709979575,'Head Nurse','Evening','Cardiology','LA025');
INSERT INTO MedicalStaff(staff_fname,staff_lname,staff_contact_no,staff_designation,schedule,staff_department,transplant_cID) VALUES ('Derek','Marsh',2499409432,'Surgeon','Night','Neurology','UT180');
INSERT INTO MedicalStaff(staff_fname,staff_lname,staff_contact_no,staff_designation,schedule,staff_department,transplant_cID) VALUES ('Judah','Petersen',6704555635,'Physiotherapist','Morning','Thoracotomy','FL560');
INSERT INTO MedicalStaff(staff_fname,staff_lname,staff_contact_no,staff_designation,schedule,staff_department,transplant_cID) VALUES ('Garth','Berg',3592389513,'Dietician','Morning','Neurology','CA910');
INSERT INTO MedicalStaff(staff_fname,staff_lname,staff_contact_no,staff_designation,schedule,staff_department,transplant_cID) VALUES ('Jin','Jenkins',5018651533,'Surgeon','Afternoon','Neurology','NE110');
INSERT INTO MedicalStaff(staff_fname,staff_lname,staff_contact_no,staff_designation,schedule,staff_department,transplant_cID) VALUES ('Merritt','Garcia',6169670121,'Head Doctor','Evening','Neurology','FL670');
INSERT INTO MedicalStaff(staff_fname,staff_lname,staff_contact_no,staff_designation,schedule,staff_department,transplant_cID) VALUES ('Julian','Burton',3537127704,'Doctor','Afternoon','Opthalmology','OK901');
INSERT INTO MedicalStaff(staff_fname,staff_lname,staff_contact_no,staff_designation,schedule,staff_department,transplant_cID) VALUES ('Price','Hooper',3759746112,'Nurse','Morning','Nephrologist','AZ765');
INSERT INTO MedicalStaff(staff_fname,staff_lname,staff_contact_no,staff_designation,schedule,staff_department,transplant_cID) VALUES ('Porter','Paul',4006628392,'Nurse','Night','Opthalmology','UT890');
INSERT INTO MedicalStaff(staff_fname,staff_lname,staff_contact_no,staff_designation,schedule,staff_department,transplant_cID) VALUES ('Rashad','Zamora',1719247059,'Surgeon','Morning','Opthalmology','MA120');
INSERT INTO MedicalStaff(staff_fname,staff_lname,staff_contact_no,staff_designation,schedule,staff_department,transplant_cID) VALUES ('Laith','Forbes',2078834503,'Head Nurse','Night','Opthalmology','TX420');
INSERT INTO MedicalStaff(staff_fname,staff_lname,staff_contact_no,staff_designation,schedule,staff_department,transplant_cID) VALUES ('Elvis','Downs',1755763673,'Physiotherapist','Morning','Nephrology','IL010');
INSERT INTO MedicalStaff(staff_fname,staff_lname,staff_contact_no,staff_designation,schedule,staff_department,transplant_cID) VALUES ('Chase','Shepard',7501728515,'Doctor','Afternoon','Cardiology','NJ900');
INSERT INTO MedicalStaff(staff_fname,staff_lname,staff_contact_no,staff_designation,schedule,staff_department,transplant_cID) VALUES ('Benedict','Langley',4409747650,'Surgeon','Night','Neurology','MA320');
INSERT INTO MedicalStaff(staff_fname,staff_lname,staff_contact_no,staff_designation,schedule,staff_department,transplant_cID) VALUES ('Armand','Rich',7719977290,'Nurse','Morning','Thoracotomy','NJ220');
INSERT INTO MedicalStaff(staff_fname,staff_lname,staff_contact_no,staff_designation,schedule,staff_department,transplant_cID) VALUES ('Callum','Simpson',2494149231,'Doctor','Afternoon','Neurology','IL090');
INSERT INTO MedicalStaff(staff_fname,staff_lname,staff_contact_no,staff_designation,schedule,staff_department,transplant_cID) VALUES ('Coby','King',7805635545,'Surgeon','Night','Neurology','MA021');
INSERT INTO MedicalStaff(staff_fname,staff_lname,staff_contact_no,staff_designation,schedule,staff_department,transplant_cID) VALUES ('Phillip','Snyder',7076144750,'Head Nurse','Morning','Opthalmology','CA980');
INSERT INTO MedicalStaff(staff_fname,staff_lname,staff_contact_no,staff_designation,schedule,staff_department,transplant_cID) VALUES ('Ishmael','Blanchard',3577111270,'Physiotherapist','Afternoon','Nephrology','IL022');
INSERT INTO MedicalStaff(staff_fname,staff_lname,staff_contact_no,staff_designation,schedule,staff_department,transplant_cID) VALUES ('Colby','Walton',5862851613,'Doctor','Night','Cardiology','MA067');
INSERT INTO MedicalStaff(staff_fname,staff_lname,staff_contact_no,staff_designation,schedule,staff_department,transplant_cID) VALUES ('Lyle','Burton',2157205208,'Surgeon','Morning','Neurology','LA025');
INSERT INTO MedicalStaff(staff_fname,staff_lname,staff_contact_no,staff_designation,schedule,staff_department,transplant_cID) VALUES ('Colby','Leblanc',1262651656,'Nurse','Afternoon','Thoracotomy','UT180');
INSERT INTO MedicalStaff(staff_fname,staff_lname,staff_contact_no,staff_designation,schedule,staff_department,transplant_cID) VALUES ('Wing','Casey',1274962926,'Doctor','Night','Thoracotomy','FL560');
INSERT INTO MedicalStaff(staff_fname,staff_lname,staff_contact_no,staff_designation,schedule,staff_department,transplant_cID) VALUES ('Melvin','Bernard',9568014187,'Surgeon','Morning','Neurology','CA910');
INSERT INTO MedicalStaff(staff_fname,staff_lname,staff_contact_no,staff_designation,schedule,staff_department,transplant_cID) VALUES ('Garrison','Hanson',3996471738,'Physiotherapist','Afternoon','Neurology','NE110');
INSERT INTO MedicalStaff(staff_fname,staff_lname,staff_contact_no,staff_designation,schedule,staff_department,transplant_cID) VALUES ('Lance','Osborne',8415369131,'Dietician','Night','Neurology','FL670');
INSERT INTO MedicalStaff(staff_fname,staff_lname,staff_contact_no,staff_designation,schedule,staff_department,transplant_cID) VALUES ('Hector','Clarke',4195134835,'Surgeon','Morning','Opthalmology','OK901');
INSERT INTO MedicalStaff(staff_fname,staff_lname,staff_contact_no,staff_designation,schedule,staff_department,transplant_cID) VALUES ('Christian','Mathews',5264702707,'Head Doctor','Afternoon','Cardiology','AZ765');
INSERT INTO MedicalStaff(staff_fname,staff_lname,staff_contact_no,staff_designation,schedule,staff_department,transplant_cID) VALUES ('Len','Lester',4115560999,'Doctor','Night','Neurology','UT890');
INSERT INTO MedicalStaff(staff_fname,staff_lname,staff_contact_no,staff_designation,schedule,staff_department,transplant_cID) VALUES ('Yasir','Marks',2255826461,'Nurse','Morning','Thoracotomy','MA120');
INSERT INTO MedicalStaff(staff_fname,staff_lname,staff_contact_no,staff_designation,schedule,staff_department,transplant_cID) VALUES ('Nash','Lane',1783872999,'Nurse','Afternoon','Thoracotomy','TX420');
INSERT INTO MedicalStaff(staff_fname,staff_lname,staff_contact_no,staff_designation,schedule,staff_department,transplant_cID) VALUES ('Lionel','Stevens',6148450342,'Head Nurse','Night','Opthalmology','IL010');
INSERT INTO MedicalStaff(staff_fname,staff_lname,staff_contact_no,staff_designation,schedule,staff_department,transplant_cID) VALUES ('Lucian','Davis',8502393344,'Physiotherapist','Night','Opthalmology','NJ900');
INSERT INTO MedicalStaff(staff_fname,staff_lname,staff_contact_no,staff_designation,schedule,staff_department,transplant_cID) VALUES ('Herrod','Mccullough',6506624961,'Doctor','Morning','Nephrology','MA320');
INSERT INTO MedicalStaff(staff_fname,staff_lname,staff_contact_no,staff_designation,schedule,staff_department,transplant_cID) VALUES ('Igor','Ortega',8843262336,'Surgeon','Afternoon','Neurology','NJ220');
INSERT INTO MedicalStaff(staff_fname,staff_lname,staff_contact_no,staff_designation,schedule,staff_department,transplant_cID) VALUES ('Dominic','Olson',2221228641,'Head Doctor','Night','Opthalmology','IL090');
INSERT INTO MedicalStaff(staff_fname,staff_lname,staff_contact_no,staff_designation,schedule,staff_department,transplant_cID) VALUES ('Octavius','Simpson',6713759177,'Doctor','Afternoon','Neurology','NJ220');
INSERT INTO MedicalStaff(staff_fname,staff_lname,staff_contact_no,staff_designation,schedule,staff_department,transplant_cID) VALUES ('Finn','Forbes',2589292502,'Nurse','Night','Neurology','IL090');
INSERT INTO MedicalStaff(staff_fname,staff_lname,staff_contact_no,staff_designation,schedule,staff_department,transplant_cID) VALUES ('Hermoine','Granger',6502349610,'Doctor','Morning','Hepatology','MA721'); 
INSERT INTO MedicalStaff(staff_fname,staff_lname,staff_contact_no,staff_designation,schedule,staff_department,transplant_cID) VALUES ('Peter','Claw',8843232336,'Surgeon','Afternoon','Hepatology','CA900'); 
INSERT INTO MedicalStaff(staff_fname,staff_lname,staff_contact_no,staff_designation,schedule,staff_department,transplant_cID) VALUES ('Ron','Wiesely',2221118641,'Head Doctor','Night','Hepatology','MA167'); 
INSERT INTO MedicalStaff(staff_fname,staff_lname,staff_contact_no,staff_designation,schedule,staff_department,transplant_cID) VALUES ('Hagrid','Dave',6713229177,'Doctor','Afternoon','Hepatology','LA045'); 
INSERT INTO MedicalStaff(staff_fname,staff_lname,staff_contact_no,staff_designation,schedule,staff_department,transplant_cID) VALUES ('Jack','Foller',2589222502,'Nurse','Night','Hepatology','UT170'); 
INSERT INTO MedicalStaff(staff_fname,staff_lname,staff_contact_no,staff_designation,schedule,staff_department,transplant_cID) VALUES ('Hugh','jackman',2589102502,'Doctor','Morning','Hepatology','IL042'); 
INSERT INTO MedicalStaff(staff_fname,staff_lname,staff_contact_no,staff_designation,schedule,staff_department,transplant_cID) VALUES ('Jenny','Potter',6502313461,'Doctor','Morning','Cardiology','MA721'); 
INSERT INTO MedicalStaff(staff_fname,staff_lname,staff_contact_no,staff_designation,schedule,staff_department,transplant_cID) VALUES ('Nipesh','Roy',8213232336,'Surgeon','Afternoon','Cardiology','CA900'); 
INSERT INTO MedicalStaff(staff_fname,staff_lname,staff_contact_no,staff_designation,schedule,staff_department,transplant_cID) VALUES ('Rohit','Ajmane',2221008641,'Head Doctor','Night','Cardiology','MA167'); 
INSERT INTO MedicalStaff(staff_fname,staff_lname,staff_contact_no,staff_designation,schedule,staff_department,transplant_cID) VALUES ('Prince','Singh',6713229100,'Doctor','Afternoon','Cardiology','LA045'); 
INSERT INTO MedicalStaff(staff_fname,staff_lname,staff_contact_no,staff_designation,schedule,staff_department,transplant_cID) VALUES ('Manan','Upadhyay',2589222510,'Nurse','Morning','Cardiology','UT170'); 
INSERT INTO MedicalStaff(staff_fname,staff_lname,staff_contact_no,staff_designation,schedule,staff_department,transplant_cID) VALUES ('Sid','Kamni',2582212510,'Nurse','Night','Cardiology','IL042'); 
 
  
INSERT INTO MedicalStaff(staff_fname,staff_lname,staff_contact_no,staff_designation,schedule,staff_department,transplant_cID) VALUES ('Pam','Rotter',65020904961,'Doctor','Morning','Opthalmology','MA721'); 
INSERT INTO MedicalStaff(staff_fname,staff_lname,staff_contact_no,staff_designation,schedule,staff_department,transplant_cID) VALUES ('Saule','Shah',8210002336,'Surgeon','Afternoon','Opthalmology','CA900'); 
INSERT INTO MedicalStaff(staff_fname,staff_lname,staff_contact_no,staff_designation,schedule,staff_department,transplant_cID) VALUES ('Brandon','Souvelien',1111008641,'Head Doctor','Night','Opthalmology','MA167'); 
INSERT INTO MedicalStaff(staff_fname,staff_lname,staff_contact_no,staff_designation,schedule,staff_department,transplant_cID) VALUES ('Kimara','Soni',6718999100,'Doctor','Afternoon','Opthalmology','LA045'); 
INSERT INTO MedicalStaff(staff_fname,staff_lname,staff_contact_no,staff_designation,schedule,staff_department,transplant_cID) VALUES ('Vidhi','Gautam',2598922510,'Nurse','Morning','Opthalmology','UT170'); 
INSERT INTO MedicalStaff(staff_fname,staff_lname,staff_contact_no,staff_designation,schedule,staff_department,transplant_cID) VALUES ('Dhwani','Patel',2583002510,'Nurse','Night','Opthalmology','IL042'); 
 




INSERT INTO Appointment(staff_ID,appointment_startTime,appointment_endTime,user_ID,purpose,transplant_cID) VALUES (1001,'2019-02-24 3:51:30','2019-02-24 4:30:30',1,'Follow-up','MA021');
INSERT INTO Appointment(staff_ID,appointment_startTime,appointment_endTime,user_ID,purpose,transplant_cID) VALUES (1002,'2019-11-24 18:23:23','2019-11-24 18:53:23',2,'Surgery','CA980');
INSERT INTO Appointment(staff_ID,appointment_startTime,appointment_endTime,user_ID,purpose,transplant_cID) VALUES (1003,'2020-11-23 7:54:40','2020-11-23 8:30:40',3,'Surgery','IL022');
INSERT INTO Appointment(staff_ID,appointment_startTime,appointment_endTime,user_ID,purpose,transplant_cID) VALUES (1004,'2018-12-26 17:48:24','2018-12-26 18:10:24',4,'Surgery','MA067');
INSERT INTO Appointment(staff_ID,appointment_startTime,appointment_endTime,user_ID,purpose,transplant_cID) VALUES (1005,'2019-07-07 18:14:37','2019-07-07 18:45:37',5,'Surgery','LA025');
INSERT INTO Appointment(staff_ID,appointment_startTime,appointment_endTime,user_ID,purpose,transplant_cID) VALUES (1006,'2019-07-12 14:55:29','2019-07-12 15:30:29',6,'Surgery','UT180');
INSERT INTO Appointment(staff_ID,appointment_startTime,appointment_endTime,user_ID,purpose,transplant_cID) VALUES (1007,'2020-09-19 16:35:37','2020-09-19 17:00:37',7,'Surgery','FL560');
INSERT INTO Appointment(staff_ID,appointment_startTime,appointment_endTime,user_ID,purpose,transplant_cID) VALUES (1008,'2018-12-12 1:47:45','2018-12-12 1:58:45',8,'Follow-up','CA910');
INSERT INTO Appointment(staff_ID,appointment_startTime,appointment_endTime,user_ID,purpose,transplant_cID) VALUES (1009,'2020-06-15 20:50:24','2020-06-15 21:20:24',9,'Follow-up','NE110');
INSERT INTO Appointment(staff_ID,appointment_startTime,appointment_endTime,user_ID,purpose,transplant_cID) VALUES (1010,'2020-11-23 21:10:08','2020-11-23 21:40:08',10,'Follow-up','FL670');
INSERT INTO Appointment(staff_ID,appointment_startTime,appointment_endTime,user_ID,purpose,transplant_cID) VALUES (1011,'2019-06-30 19:04:25','2019-06-30 19:30:25',11,'Follow-up','OK901');
INSERT INTO Appointment(staff_ID,appointment_startTime,appointment_endTime,user_ID,purpose,transplant_cID) VALUES (1012,'2020-07-25 15:15:09','2020-07-25 15:45:09',12,'Follow-up','AZ765');
INSERT INTO Appointment(staff_ID,appointment_startTime,appointment_endTime,user_ID,purpose,transplant_cID) VALUES (1013,'2020-02-01 9:39:03','2020-02-01 10:00:03',13,'Follow-up','UT890');
INSERT INTO Appointment(staff_ID,appointment_startTime,appointment_endTime,user_ID,purpose,transplant_cID) VALUES (1014,'2019-04-17 9:30:57','2019-04-17 10:00:57',14,'Follow-up','MA120');
INSERT INTO Appointment(staff_ID,appointment_startTime,appointment_endTime,user_ID,purpose,transplant_cID) VALUES (1015,'2019-06-01 23:56:07','2019-06-02 0:10:07',15,'Surgery','TX420');
INSERT INTO Appointment(staff_ID,appointment_startTime,appointment_endTime,user_ID,purpose,transplant_cID) VALUES (1016,'2019-02-20 15:19:00','2019-02-20 15:40:00',16,'Surgery','IL010');
INSERT INTO Appointment(staff_ID,appointment_startTime,appointment_endTime,user_ID,purpose,transplant_cID) VALUES (1017,'2019-09-13 23:54:59','2019-09-14 0:00:59',17,'Surgery','NJ900');
INSERT INTO Appointment(staff_ID,appointment_startTime,appointment_endTime,user_ID,purpose,transplant_cID) VALUES (1018,'2020-05-25 1:56:03','2020-05-25 1:56:03',18,'Surgery','MA320');
INSERT INTO Appointment(staff_ID,appointment_startTime,appointment_endTime,user_ID,purpose,transplant_cID) VALUES (1019,'2019-04-20 5:50:32','2019-04-20 5:50:32',19,'Follow-up','NJ220');
INSERT INTO Appointment(staff_ID,appointment_startTime,appointment_endTime,user_ID,purpose,transplant_cID) VALUES (1020,'2018-12-13 13:24:38','2018-12-13 14:00:38',20,'Follow-up','IL090');
INSERT INTO Appointment(staff_ID,appointment_startTime,appointment_endTime,user_ID,purpose,transplant_cID) VALUES (1024,'2019-08-01 23:56:07','2019-06-02 0:11:07',21,'Surgery','MA721'); 
INSERT INTO Appointment(staff_ID,appointment_startTime,appointment_endTime,user_ID,purpose,transplant_cID) VALUES (1025,'2019-01-21 15:19:00','2019-02-20 15:30:00',22,'Surgery','CA900'); 
INSERT INTO Appointment(staff_ID,appointment_startTime,appointment_endTime,user_ID,purpose,transplant_cID) VALUES (1026,'2019-02-19 23:54:59','2019-09-14 0:00:59',23,'Surgery','IL042'); 
INSERT INTO Appointment(staff_ID,appointment_startTime,appointment_endTime,user_ID,purpose,transplant_cID) VALUES (1021,'2020-06-23 1:56:03','2020-05-25 1:52:03',20021,'Surgery','MA721'); 
INSERT INTO Appointment(staff_ID,appointment_startTime,appointment_endTime,user_ID,purpose,transplant_cID) VALUES (1022,'2019-04-28 5:50:32','2019-04-20 5:50:32',20022,'Surgery','CA900'); 
INSERT INTO Appointment(staff_ID,appointment_startTime,appointment_endTime,user_ID,purpose,transplant_cID) VALUES (1023,'2018-11-11 13:24:38','2018-12-13 14:00:38',20023,'Surgery','IL042'); 








INSERT INTO MedicalHistory(appointment_ID,vaccinations_undertaken) VALUES (900010,'Yes');
INSERT INTO MedicalHistory(appointment_ID,vaccinations_undertaken) VALUES (900011,'Yes');
INSERT INTO MedicalHistory(appointment_ID,vaccinations_undertaken) VALUES (900012,'No');
INSERT INTO MedicalHistory(appointment_ID,vaccinations_undertaken) VALUES (900013,'Yes');
INSERT INTO MedicalHistory(appointment_ID,vaccinations_undertaken) VALUES (900014,'No');
INSERT INTO MedicalHistory(appointment_ID,vaccinations_undertaken) VALUES (900015,'No');
INSERT INTO MedicalHistory(appointment_ID,vaccinations_undertaken) VALUES (900016,'Yes');
INSERT INTO MedicalHistory(appointment_ID,vaccinations_undertaken) VALUES (900017,'Yes');
INSERT INTO MedicalHistory(appointment_ID,vaccinations_undertaken) VALUES (900018,'No');
INSERT INTO MedicalHistory(appointment_ID,vaccinations_undertaken) VALUES (900019,'Yes');
INSERT INTO MedicalHistory(appointment_ID,vaccinations_undertaken) VALUES (900020,'Yes');
INSERT INTO MedicalHistory(appointment_ID,vaccinations_undertaken) VALUES (900021,'No');
INSERT INTO MedicalHistory(appointment_ID,vaccinations_undertaken) VALUES (900022,'Yes');
INSERT INTO MedicalHistory(appointment_ID,vaccinations_undertaken) VALUES (900023,'Yes');
INSERT INTO MedicalHistory(appointment_ID,vaccinations_undertaken) VALUES (900024,'No');
INSERT INTO MedicalHistory(appointment_ID,vaccinations_undertaken) VALUES (900025,'Yes');
INSERT INTO MedicalHistory(appointment_ID,vaccinations_undertaken) VALUES (900026,'Yes');
INSERT INTO MedicalHistory(appointment_ID,vaccinations_undertaken) VALUES (900027,'No');
INSERT INTO MedicalHistory(appointment_ID,vaccinations_undertaken) VALUES (900028,'Yes');
INSERT INTO MedicalHistory(appointment_ID,vaccinations_undertaken) VALUES (900029,'No');
INSERT INTO MedicalHistory(appointment_ID,vaccinations_undertaken) VALUES (900030,'No'); 
INSERT INTO MedicalHistory(appointment_ID,vaccinations_undertaken) VALUES (900031,'Yes'); 
INSERT INTO MedicalHistory(appointment_ID,vaccinations_undertaken) VALUES (900032,'No'); 
INSERT INTO MedicalHistory(appointment_ID,vaccinations_undertaken) VALUES (900033,'No'); 
INSERT INTO MedicalHistory(appointment_ID,vaccinations_undertaken) VALUES (900034,'Yes'); 
INSERT INTO MedicalHistory(appointment_ID,vaccinations_undertaken) VALUES (900035,'No'); 









INSERT INTO UserRecord(report_ID,user_ID) VALUES (1,1);
INSERT INTO UserRecord(report_ID,user_ID) VALUES (2,2);
INSERT INTO UserRecord(report_ID,user_ID) VALUES (3,3);
INSERT INTO UserRecord(report_ID,user_ID) VALUES (4,4);
INSERT INTO UserRecord(report_ID,user_ID) VALUES (5,5);
INSERT INTO UserRecord(report_ID,user_ID) VALUES (6,6);
INSERT INTO UserRecord(report_ID,user_ID) VALUES (7,7);
INSERT INTO UserRecord(report_ID,user_ID) VALUES (8,8);
INSERT INTO UserRecord(report_ID,user_ID) VALUES (9,9);
INSERT INTO UserRecord(report_ID,user_ID) VALUES (10,10);
INSERT INTO UserRecord(report_ID,user_ID) VALUES (11,11);
INSERT INTO UserRecord(report_ID,user_ID) VALUES (12,12);
INSERT INTO UserRecord(report_ID,user_ID) VALUES (13,13);
INSERT INTO UserRecord(report_ID,user_ID) VALUES (14,14);
INSERT INTO UserRecord(report_ID,user_ID) VALUES (15,15);
INSERT INTO UserRecord(report_ID,user_ID) VALUES (16,16);
INSERT INTO UserRecord(report_ID,user_ID) VALUES (17,17);
INSERT INTO UserRecord(report_ID,user_ID) VALUES (18,18);
INSERT INTO UserRecord(report_ID,user_ID) VALUES (19,19);
INSERT INTO UserRecord(report_ID,user_ID) VALUES (20,20);
INSERT INTO UserRecord(report_ID,user_ID) VALUES (21,21); 
INSERT INTO UserRecord(report_ID,user_ID) VALUES (22,22); 
INSERT INTO UserRecord(report_ID,user_ID) VALUES (23,23); 
INSERT INTO UserRecord(report_ID,user_ID) VALUES (24,20021); 
INSERT INTO UserRecord(report_ID,user_ID) VALUES (25,20022); 
INSERT INTO UserRecord(report_ID,user_ID) VALUES (26,20023); 








INSERT INTO Organ(donor_ID,organ_type,organ_lifespan,organ_bID,recipient_ID,registration_date) VALUES (11,'Kidney',72,10014,NULL,'2019-01-28 5:04:58');
INSERT INTO Organ(donor_ID,organ_type,organ_lifespan,organ_bID,recipient_ID,registration_date) VALUES (12,'Liver',12,10015,2,'2020-01-01 1:07:48');
INSERT INTO Organ(donor_ID,organ_type,organ_lifespan,organ_bID,recipient_ID,registration_date) VALUES (13,'Heart',4,10016,9,'2020-06-25 6:12:31');
INSERT INTO Organ(donor_ID,organ_type,organ_lifespan,organ_bID,recipient_ID,registration_date) VALUES (14,'Kidney',320,10017,20008,'2020-04-17 14:16:20');
INSERT INTO Organ(donor_ID,organ_type,organ_lifespan,organ_bID,recipient_ID,registration_date) VALUES (15,'Eyes',260,10018,20012,'2020-10-18 14:41:46');
INSERT INTO Organ(donor_ID,organ_type,organ_lifespan,organ_bID,recipient_ID,registration_date) VALUES (16,'Eyes',96,10019,NULL,'2020-11-03 6:43:42');
INSERT INTO Organ(donor_ID,organ_type,organ_lifespan,organ_bID,recipient_ID,registration_date) VALUES (17,'Eyes',48,10020,NULL,'2020-07-30 0:52:09');
INSERT INTO Organ(donor_ID,organ_type,organ_lifespan,organ_bID,recipient_ID,registration_date) VALUES (18,'Kidney',240,10008,20009,'2020-06-23 5:47:28');
INSERT INTO Organ(donor_ID,organ_type,organ_lifespan,organ_bID,recipient_ID,registration_date) VALUES (19,'Heart',3,10009,NULL,'2020-01-15 7:52:41');
INSERT INTO Organ(donor_ID,organ_type,organ_lifespan,organ_bID,recipient_ID,registration_date) VALUES (20,'Liver',2,10010,NULL,'2020-02-29 13:59:20');
INSERT INTO Organ(donor_ID,organ_type,organ_lifespan,organ_bID,recipient_ID,registration_date) VALUES (20001,'Kidney',62,10011,NULL,'2020-04-10 9:53:07');
INSERT INTO Organ(donor_ID,organ_type,organ_lifespan,organ_bID,recipient_ID,registration_date) VALUES (20002,'Heart',8,10012,NULL,'2020-01-02 13:38:46');
INSERT INTO Organ(donor_ID,organ_type,organ_lifespan,organ_bID,recipient_ID,registration_date) VALUES (20004,'Kidney',72,10016,NULL,'2019-11-30 15:51:47');
INSERT INTO Organ(donor_ID,organ_type,organ_lifespan,organ_bID,recipient_ID,registration_date) VALUES (20014,'Heart',109,10017,NULL,'2019-05-01 15:51:47');
INSERT INTO Organ(donor_ID,organ_type,organ_lifespan,organ_bID,recipient_ID,registration_date) VALUES (20015,'Liver',112,10018,NULL,'2019-02-15 15:51:47');
INSERT INTO Organ(donor_ID,organ_type,organ_lifespan,organ_bID,recipient_ID,registration_date) VALUES (20016,'Kidney',80,10019,NULL,'2019-10-14 15:51:47');
INSERT INTO Organ(donor_ID,organ_type,organ_lifespan,organ_bID,recipient_ID,registration_date) VALUES (20017,'Heart',4,10020,20013,'2020-10-18 14:41:46');
INSERT INTO Organ(donor_ID,organ_type,organ_lifespan,organ_bID,recipient_ID,registration_date) VALUES (20018,'Liver',10,10014,NULL,'2019-10-19 14:41:46');
INSERT INTO Organ(donor_ID,organ_type,organ_lifespan,organ_bID,recipient_ID,registration_date) VALUES (20019,'Kidney',70,10016,NULL,'2019-05-01 15:51:47');
INSERT INTO Organ(donor_ID,organ_type,organ_lifespan,organ_bID,recipient_ID,registration_date) VALUES (20020,'Eyes',300,10015,NULL,'2020-01-18 14:41:46');
INSERT INTO Organ(donor_ID,organ_type,organ_lifespan,organ_bID,recipient_ID,registration_date) VALUES (21,'Kidney',3,10021,NULL,'2019-12-09 11:51:47'); 
INSERT INTO Organ(donor_ID,organ_type,organ_lifespan,organ_bID,recipient_ID,registration_date) VALUES (22,'Liver',2,10022,NULL,'2019-12-09 12:51:47'); 
INSERT INTO Organ(donor_ID,organ_type,organ_lifespan,organ_bID,recipient_ID,registration_date) VALUES (23,'Heart',4,10023,NULL,'2020-12-09 14:41:46'); 




INSERT INTO Feedback(user_ID,appointment_ID,rating,operation_status,recipientHealth_state,organization_ID) VALUES (2,900010,83,'Successful','Recovered',1);
INSERT INTO Feedback(user_ID,appointment_ID,rating,operation_status,recipientHealth_state,organization_ID) VALUES (9,900011,90,'Successful','Recovered',2);
INSERT INTO Feedback(user_ID,appointment_ID,rating,operation_status,recipientHealth_state,organization_ID) VALUES (11,900012,87,'Successful','Recovered',3);
INSERT INTO Feedback(user_ID,appointment_ID,rating,operation_status,recipientHealth_state,organization_ID) VALUES (20,900015,59,'Fail','Deteriorating',6);
INSERT INTO Feedback(user_ID,appointment_ID,rating,operation_status,recipientHealth_state,organization_ID) VALUES (20008,900017,77,'Successful','Improving',9);
INSERT INTO Feedback(user_ID,appointment_ID,rating,operation_status,recipientHealth_state,organization_ID) VALUES (20012,900018,90,'Successful','Improving',10);
INSERT INTO Feedback(user_ID,appointment_ID,rating,operation_status,recipientHealth_state,organization_ID) VALUES (20013,900019,89,'Successful','Improving',11);
INSERT INTO Feedback(user_ID,appointment_ID,rating,operation_status,recipientHealth_state,organization_ID) VALUES (20014,900020,68,'Fail','Deteriorating',12);




INSERT INTO Transportation(transport_type,organ_ID,transplant_cID,organ_bID,vehicle_no) VALUES ('Roadways',5000,'MA021',10001,'RFGX9Q');
INSERT INTO Transportation(transport_type,organ_ID,transplant_cID,organ_bID,vehicle_no) VALUES ('Roadways',5001,'CA980',10002,'9ANZRF');
INSERT INTO Transportation(transport_type,organ_ID,transplant_cID,organ_bID,vehicle_no) VALUES ('Roadways',5002,'IL022',10003,'VH43MC');
INSERT INTO Transportation(transport_type,organ_ID,transplant_cID,organ_bID,vehicle_no) VALUES ('Roadways',5003,'MA067',10004,'0J16NL');
INSERT INTO Transportation(transport_type,organ_ID,transplant_cID,organ_bID,vehicle_no) VALUES ('Roadways',5004,'LA025',10005,'G29JWN');
INSERT INTO Transportation(transport_type,organ_ID,transplant_cID,organ_bID,vehicle_no) VALUES ('Roadways',5006,'FL560',10007,'V30FPF');
INSERT INTO Transportation(transport_type,organ_ID,transplant_cID,organ_bID,vehicle_no) VALUES ('Roadways',5007,'CA910',10008,'9IEV22');
INSERT INTO Transportation(transport_type,organ_ID,transplant_cID,organ_bID,vehicle_no) VALUES ('Roadways',5008,'NE110',10009,'HMA8ZW');
INSERT INTO Transportation(transport_type,organ_ID,transplant_cID,organ_bID,vehicle_no) VALUES ('Roadways',5009,'FL670',10010,'VCCDZN');
INSERT INTO Transportation(transport_type,organ_ID,transplant_cID,organ_bID,vehicle_no) VALUES ('Airways',5010,'OK901',10011,'QEY52K');
INSERT INTO Transportation(transport_type,organ_ID,transplant_cID,organ_bID,vehicle_no) VALUES ('Airways',5011,'AZ765',10012,'HVRAYK');
INSERT INTO Transportation(transport_type,organ_ID,transplant_cID,organ_bID,vehicle_no) VALUES ('Airways',5012,'UT890',10013,'0Y53BO');
INSERT INTO Transportation(transport_type,organ_ID,transplant_cID,organ_bID,vehicle_no) VALUES ('Airways',5013,'MA120',10014,'JCH7O1');
INSERT INTO Transportation(transport_type,organ_ID,transplant_cID,organ_bID,vehicle_no) VALUES ('Airways',5014,'TX420',10015,'RXXPV5');
INSERT INTO Transportation(transport_type,organ_ID,transplant_cID,organ_bID,vehicle_no) VALUES ('Airways',5015,'IL010',10016,'YMWXEY');
INSERT INTO Transportation(transport_type,organ_ID,transplant_cID,organ_bID,vehicle_no) VALUES ('Airways',5017,'MA320',10018,'2KECQ9');
INSERT INTO Transportation(transport_type,organ_ID,transplant_cID,organ_bID,vehicle_no) VALUES ('Airways',5018,'NJ220',10019,'0RH5XW');
INSERT INTO Transportation(transport_type,organ_ID,transplant_cID,organ_bID,vehicle_no) VALUES ('Airways',5020,'IL090',10020,'YUR5BQ');
INSERT INTO Transportation(transport_type,organ_ID,transplant_cID,organ_bID,vehicle_no) VALUES ('Roadways',5021,'MA721',10021,'RURPV5'); 
INSERT INTO Transportation(transport_type,organ_ID,transplant_cID,organ_bID,vehicle_no) VALUES ('Roadways',5022,'CA900',10022,'YMWXMN'); 
INSERT INTO Transportation(transport_type,organ_ID,transplant_cID,organ_bID,vehicle_no) VALUES ('Roadways',5016,'IL042',10023,'5J20DF'); 
 







INSERT INTO WaitingList(recipient_ID,waiting_time,registration_date) VALUES (1,1000,'2/18/2019 1:12');
INSERT INTO WaitingList(recipient_ID,waiting_time,registration_date) VALUES (3,1600,'11/22/2015 15:21');
INSERT INTO WaitingList(recipient_ID,waiting_time,registration_date) VALUES (4,1500,'9/28/2016 13:54');
INSERT INTO WaitingList(recipient_ID,waiting_time,registration_date) VALUES (5,1220,'6/29/2018 6:34');
INSERT INTO WaitingList(recipient_ID,waiting_time,registration_date) VALUES (6,1500,'5/18/2018 8:12');
INSERT INTO WaitingList(recipient_ID,waiting_time,registration_date) VALUES (7,1400,'3/17/2016 23:24');
INSERT INTO WaitingList(recipient_ID,waiting_time,registration_date) VALUES (8,800,'11/12/2016 23:43');
INSERT INTO WaitingList(recipient_ID,waiting_time,registration_date) VALUES (10,900,'10/3/2015 11:12');
INSERT INTO WaitingList(recipient_ID,waiting_time,registration_date) VALUES (20005,42,'5/11/2017 7:04');
INSERT INTO WaitingList(recipient_ID,waiting_time,registration_date) VALUES (20006,84,'8/13/2016 5:13');
INSERT INTO WaitingList(recipient_ID,waiting_time,registration_date) VALUES (20007,48,'9/24/2017 8:12');
INSERT INTO WaitingList(recipient_ID,waiting_time,registration_date) VALUES (20009,72,'2/10/2016 23:25');
INSERT INTO WaitingList(recipient_ID,waiting_time,registration_date) VALUES (20010,112,'4/19/2017 14:16');
INSERT INTO WaitingList(recipient_ID,waiting_time,registration_date) VALUES (20011,1200,'10/22/2016 2:43');
INSERT INTO WaitingList(recipient_ID,waiting_time,registration_date) VALUES (20021,2000,'7/12/2016 5:10');
INSERT INTO WaitingList(recipient_ID,waiting_time,registration_date) VALUES (20022,1600,'6/23/2017 8:11');
INSERT INTO WaitingList(recipient_ID,waiting_time,registration_date) VALUES (20023,1500,'5/11/2016 20:25');

