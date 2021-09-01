CREATE PROCEDURE countriesInfo()
BEGIN
	/* Write your SQL here. Terminate each statement with a semicolon. */
    SELECT COUNT(name) as number, AVG(population) as average, sum(population) as total 
    FROM countries;   
END