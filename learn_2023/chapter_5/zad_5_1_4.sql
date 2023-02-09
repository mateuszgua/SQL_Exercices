SELECT DISTINCT 
PLAINTO_TSQUERY('english', P1.MODEL) && 
PLAINTO_TSQUERY('english', P2.MODEL)
FROM PRODUCTS P1
LEFT JOIN PRODUCTS P2 ON TRUE
WHERE P1.PRODUCT_TYPE = 'scooter'
	AND P2.PRODUCT_TYPE = 'automobile'
	AND P1.MODEL not ilike '%Limited Edition%';