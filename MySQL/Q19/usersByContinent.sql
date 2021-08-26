CREATE PROCEDURE usersByContinent()
BEGIN
	/* Write your SQL here. Terminate each statement with a semicolon. */
    select continent, sum(users) as "users"
    FROM countries
    GROUP BY continent
    ORDER BY users DESC;
END