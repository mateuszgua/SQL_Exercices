CREATE TEMP TABLE CUSTOMER_POINTS AS
	(SELECT CUSTOMER_ID, POINT(LONGITUDE, LATITUDE) AS LNG_LAT_POINT
		FROM CUSTOMERS
		WHERE LONGITUDE IS NOT NULL
			AND LATITUDE IS NOT NULL);