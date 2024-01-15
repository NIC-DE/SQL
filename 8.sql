 CREATE VIEW  "ARITHMOS_KATOIKION" AS

SELECT "ΚωδικόςΠολίτη",count("ΗμερομηνίαΕισόδου") AS "ΣΥΝΟΛΙΚΟΣΑΡΙΘΜΟΣΕΠΙΣΚΕΨΕΩΝ_ΑΝΑΠΟΛΙΤΗ"
FROM "ΕΠΙΣΚΕΨΗΠΟΛΙΤΗ"
GROUP BY "ΚωδικόςΠολίτη";

CREATE VIEW "MAXIMUM_ARITMHOS_EPISKEPSEON_ANAPOLITH" AS 

SELECT "ΚωδικόςΠολίτη",count("ΗμερομηνίαΕισόδου") AS  "ΜΕΓΙΣΤΟΣ_ΑΡΙΤΗΜΟΣ_ΕΠΙΣΚΕΨΕΩΝ"
FROM  "ARITHMOS_KATOIKION" 
GROUP BY "ΚωδικόςΠολίτη"
HAVING count("ΗμερομηνίαΕισόδου") =(SELECT max("ΜΕΓΙΣΤΟΣ_ΑΡΙΤΗΜΟΣ_ΕΠΙΣΚΕΨΕΩΝ" )
                                   FROM(SELECT count("ΗμερομηνίαΕισόδου") AS  "ΜΕΓΙΣΤΟΣ_ΑΡΙΤΗΜΟΣ_ΕΠΙΣΚΕΨΕΩΝ"
                       FROM  "ΕΠΙΣΚΕΨΗΠΟΛΙΤΗ" 
                       GROUP BY "ΚωδικόςΠολίτη"));
           
SELECT  "ΠΟΛΙΤΗΣ"."ΚωδικόςΚατοικίας", "ΜΕΓΙΣΤΟΣ_ΑΡΙΤΗΜΟΣ_ΕΠΙΣΚΕΨΕΩΝ" AS "ΠΛΗΘΟΣΕΠΙΣΚΕΨΕΩΝ"           
FROM "ΠΟΛΙΤΗΣ" ,"MAXIMUM_ARITMHOS_EPISKEPSEON_ANAPOLITH" 
WHERE "ΠΟΛΙΤΗΣ"."ΚωδικόςΠολίτη"="MAXIMUM_ARITMHOS_EPISKEPSEON_ANAPOLITH"."ΚωδικόςΠολίτη"
AND  "ΜΕΓΙΣΤΟΣ_ΑΡΙΤΗΜΟΣ_ΕΠΙΣΚΕΨΕΩΝ"=17
GROUP BY "ΚωδικόςΚατοικίας";