SELECT (TS_LEXIZE('english_stem',
				  UNNEST(STRING_TO_ARRAY(REGEXP_REPLACE(FEEDBACK, '[^a-zA-Z]+', ' ', 'g'),
				' '))))[1] AS TOKEN, AVG(rating) as avg_rating
FROM CUSTOMER_SURVEY
GROUP BY 1
HAVING COUNT(1) >= 3
ORDER BY 2;