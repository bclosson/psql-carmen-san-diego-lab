-- Clue #3: We have new news on the classes Carmen attended – our gumshoes tell us she's moved on
-- to a different country, a country where people speak only the language she was learning. Find out which
--  nearby country speaks nothing but that language.

SELECT country.name 
FROM
country
INNER JOIN countrylanguage ON (country.code = countrycode)
WHERE country.region = 'Southern Europe' 
AND countrylanguage.language = 'Italian' 
AND 1 = (SELECT COUNT(language)
FROM countrylanguage
WHERE countrycode = country.code);

