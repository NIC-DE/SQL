CREATE TABLE "ΕΠΙΣΚΕΨΗΠΟΛΙΤΗ2" (
"ΚωδικόςΠολίτη" TEXT (20) NOT NULL,
"ΚωδικόςΚαταστήματος" TEXT (20) NOT NULL,
"ΗμερομηνίαΕισόδου" INTEGER NOT NULL,
"ΛεπτόΕισόδου" INTEGER NOT NULL,
"ΔιάρκειαΠαραμονής" INTEGER NOT NULL
CHECK(("ΔιάρκειαΠαραμονής" > 0) AND
("ΛεπτόΕισόδου" + "ΔιάρκειαΠαραμονής" <= 779)),
PRIMARY KEY ("ΚωδικόςΠολίτη", "ΗμερομηνίαΕισόδου",
"ΛεπτόΕισόδου"),
FOREIGN KEY("ΚωδικόςΠολίτη") REFERENCES
"ΠΟΛΙΤΗΣ"("ΚωδικόςΠολίτη") ON UPDATE CASCADE,,
FOREIGN KEY("ΚωδικόςΚαταστήματος") REFERENCES
ΚΑΤΑΣΤΗΜΑ("ΚωδικόςΚαταστήματος") ON UPDATE CASCADE,
FOREIGN KEY("ΗμερομηνίαΕισόδου", "ΛεπτόΕισόδου") REFERENCES
"ΧΡΟΝΟΣΦΡΑΓΙΔΑ2"("Ημερομηνία", "Λεπτό") ON UPDATE CASCADE,
);