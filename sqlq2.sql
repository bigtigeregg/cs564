SELECT 
	S.Dept, Sum(S.WeeklySales / ST.Size)
FROM 
	sales S, stores ST
WHERE 
	ST.store = S.store
GROUP BY S.Dept
ORDER BY Sum(S.WeeklySales / ST.Size) DESC LIMIT 10;