/*
Enter your query here.
*/

SELECT CITY, LENGTH(CITY) FROM STATION ORDER BY LENGTH(CITY), CITY ASC LIMIT 1;

SELECT CITY, LENGTH(CITY) FROM STATION ORDER BY LENGTH(CITY) DESC LIMIT 1;

/*select top 1 CITY, len(CITY) from STATION order by len(CITY), CITY asc; 
select top 1 CITY, len(CITY) from STATION order by len(CITY) desc;*/