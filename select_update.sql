SELECT min("ΔιάρκειαΠαραμονής") AS "ΕλάχιστηΔιάρκειαΠαραμονής"
FROM "ΕΠΙΣΚΕΨΗΠΟΛΙΤΗ"
WHERE "ΗμερομηνίαΕισόδου"<21 AND "ΛεπτόΕισόδου">659;
UPDATE "ΕΠΙΣΚΕΨΗΠΟΛΙΤΗ"
SET "ΔιάρκειαΠαραμονής"=5
WHERE "ΗμερομηνίαΕισόδου" BETWEEN 21 AND 30;