CREATE PROCEDURE movieDirectors()
BEGIN
	/* Write your SQL here. Terminate each statement with a semicolon. */
    SELECT director FROM moviesInfo
    WHERE year > 2000
    GROUP BY director
    HAVING SUM(oscars) > 2
    ORDER BY director ASC;
END