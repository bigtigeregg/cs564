/* Which stores had the largest and smallest overall sales during holiday weeks? */
SELECT 
	Store, sum(WeeklySales)
FROM 
	sales S, holidays H
WHERE
	S.weekdate = H.weekdate
	and H.IsHoliday like 'TRUE'
GROUP BY Store ORDER BY sum(WeeklySales) DESC limit 1;


SELECT 
	Store, sum(WeeklySales)
FROM 
	sales S, holidays H
WHERE
	S.weekdate = H.weekdate
	and H.IsHoliday like 'TRUE'
GROUP BY Store ORDER BY sum(WeeklySales) ASC limit 1;