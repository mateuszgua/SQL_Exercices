CREATE TEMP TABLE CUSTOMER_DEALERSHIP_DISTANCE AS
	(SELECT CUSTOMER_ID,
			DEALERSHIP_ID,
			C.LNG_LAT_POINT <@> D.LNG_LAT_POINT AS DISTANCE
		FROM CUSTOMER_POINTS C
		CROSS JOIN DEALERSHIP_POINTS D);