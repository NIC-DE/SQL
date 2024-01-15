SELECT "Covid19Από" AS "Ημερομηνία",
COUNT("Covid19Από") AS "ΠλήθοςΝέωνΚρουσμάτων"
FROM "ΠΟΛΙΤΗΣ"
WHERE "Covid19Από" IS NOT NULL
GROUP BY "Covid19Από"
HAVING COUNT("Covid19Από")=(SELECT count("Covid19Από")
                            FROM "ΠΟΛΙΤΗΣ"
							GROUP BY "Covid19Από"
							ORDER BY  count("Covid19Από") DESC 
							LIMIT 1
							    );