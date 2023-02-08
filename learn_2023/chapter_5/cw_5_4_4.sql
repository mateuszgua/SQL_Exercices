CREATE TEMP TABLE BLADE_CUSTOMER_SALES AS
	(SELECT JSONB_PATH_QUERY(CUSTOMER_JSON,
	'$ ? (@.sales[*].product_name == "Blade")') AS CUSTOMER_JSON
	 FROM CUSTOMER_SALES);
SELECT JSONB_PRETTY(CUSTOMER_JSON) FROM BLADE_CUSTOMER_SALES;