select ci.name from city as ci, country as co
where ci.countrycode = co.code and co.continent="Africa";