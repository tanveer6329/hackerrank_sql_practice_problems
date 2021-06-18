select sum(ci.population) from city as ci, country as co
where ci.countrycode = co.code and co.continent = "Asia";