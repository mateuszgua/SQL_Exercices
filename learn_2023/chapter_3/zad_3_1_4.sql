SELECT DEALERSHIP_ID,
	COUNT(*) AS SUM_SALES
FROM SALES
WHERE CHANNEL != 'internet'
GROUP BY DEALERSHIP_ID
ORDER BY SUM_SALES DESC
LIMIT 5;