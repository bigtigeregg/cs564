CREATE VIEW a as
SELECT 
	H.weekdate, SUM(S.WeeklySales) as WS
FROM 
	Sales S,  Holidays H 
WHERE 
    H.IsHoliday like 'TRUE' and S.weekdate = H.weekdate
GROUP BY H.weekdate;

CREATE VIEW tmp as
SELECT 
	avg(WS) as storeavg
FROM 
	a;

CREATE VIEW b as
SELECT 
	H.weekdate, SUM(S.WeeklySales) as bWS
FROM 
	Sales S,  Holidays H 
WHERE 
    H.IsHoliday like 'FALSE' and S.weekdate = H.weekdate
GROUP BY H.weekdate;

SELECT 
	count(b.bWS)
FROM 
	b, tmp
WHERE 
	b.bWS > tmp.storeavg;