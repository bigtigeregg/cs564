SELECT 
	DISTINCT T.Store
FROM 
	TemporalData T
WHERE 
	NOT EXISTS(
		SELECT T2.Store
		FROM TemporalData T2
		WHERE T2.Store = T.Store AND T2.FueLPrice>4.0
		)
	AND
    EXISTS (
    	SELECT T3.Store
    	FROM TemporalData T3
    	WHERE T3.STORE=T.Store AND T3.unemploymentrate > 10
    	)
   ;
