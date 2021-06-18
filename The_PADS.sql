SELECT  CONCAT(Name, CONCAT('(',LEFT(Occupation, 1),')')) FROM OCCUPATIONS ORDER BY Name;

-- SELECT CONCAT(NAME,
--               CASE 
--                 WHEN occupation = "Doctor" THEN "(D)" 
--                 WHEN occupation = "Professor" THEN "(P)" 
--                 WHEN occupation = "Singer" THEN "(S)" 
--                 WHEN occupation = "Actor" THEN "(A)"
--               END)
-- FROM OCCUPATIONS ORDER BY NAME;

SELECT "There are a total of", COUNT(Occupation), CONCAT(LOWER(Occupation),"s.") 
FROM OCCUPATIONS 
GROUP BY Occupation
ORDER BY COUNT(Occupation) ASC, Occupation ASC;