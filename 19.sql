SELECT "ΚωδικόςΠολίτη"
FROM "ΠΟΛΙΤΗΣ"
WHERE ("ΚωδικόςΚατοικίας") IN
(SELECT "ΚωδικόςΚατοικίας"
FROM "ΠΟΛΙΤΗΣ"
WHERE "ΚωδικόςΠολίτη"="Πολίτης08")
UNION
SELECT "ΚωδικόςΠολίτη"
FROM "ΠΟΛΙΤΗΣ"
WHERE ("ΚωδικόςΕργασίας") IN
(SELECT "ΚωδικόςΕργασίας"
FROM "ΠΟΛΙΤΗΣ"
WHERE "ΚωδικόςΠολίτη"="Πολίτης08");