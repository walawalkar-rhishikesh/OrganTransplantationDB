--VIEW Transportation_Details

Use OrganTransplantation;
Go

CREATE OR ALTER VIEW Transportation_Details AS
SELECT o.organ_bID, o.organ_bName, o.[address], o.state, o.city, o.country, o.primary_contact,
	t.transportation_ID, t.vehicle_no, c.transplant_cID
FROM OrganBank o, Transportation t, TransplantCenter c
WHERE o.organ_bID=t.organ_bID
AND t.transplant_cID=c.transplant_cID;

