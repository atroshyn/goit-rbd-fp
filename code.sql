-- 1

DROP SCHEMA IF EXISTS pandemic;

CREATE SCHEMA IF NOT EXISTS pandemic;

USE pandemic;

SELECT * FROM infectious_cases;

-- 2

CREATE table country_code (
country_code_id INTEGER AUTO_INCREMENT Primary Key,
entity text,
code text
) as
SELECT distinct Entity, Code FROM infectious_cases;


CREATE TABLE infectious_cases_norm AS (
SELECT country_code_id, Year, Number_rabies, Number_malaria, Number_hiv, Number_tuberculosis, Number_smallpox, Number_cholera_cases
FROM infectious_cases ic
JOIN country_code cc on cc.Entity = ic.Entity AND cc.Code = ic.Code
);

SELECT COUNT(*) FROM infectious_cases;

-- 3

SELECT country_code_id,
  AVG(Number_rabies) AS avg_rabies,
  SUM(Number_rabies) AS sum_rabies,
  MIN(Number_rabies) AS min_rabies,
  MAX(Number_rabies) AS max_rabies
FROM infectious_cases_norm
WHERE Number_rabies != ''
GROUP BY country_code_id
ORDER BY avg_rabies DESC
LIMIT 10;


-- 4

SELECT 
Year, 
MAKEDATE(Year, 1) AS Date, 
STR_TO_DATE(NOW(),'%Y-%m-%d') AS Today, 
TIMESTAMPDIFF(YEAR,MAKEDATE(Year, 1), NOW()) AS YearsDiff
FROM infectious_cases
;

-- 5

DROP FUNCTION IF EXISTS CalculateYearsDiff;

DELIMITER //

CREATE FUNCTION CalculateYearsDiff(year TEXT)
RETURNS INT
DETERMINISTIC 
NO SQL
BEGIN
    DECLARE result INT;
    SET result = TIMESTAMPDIFF(YEAR,MAKEDATE(year, 1), NOW());
    RETURN result;
END //

DELIMITER ;

SELECT 
Year, 
MAKEDATE(Year, 1) AS Date, 
STR_TO_DATE(NOW(),'%Y-%m-%d') AS Today, 
CalculateYearsDiff(Year) AS YearsDiff
FROM infectious_cases
;