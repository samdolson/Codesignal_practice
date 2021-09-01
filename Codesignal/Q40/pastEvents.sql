CREATE PROCEDURE pastEvents()
BEGIN
	/* Write your SQL here. Terminate each statement with a semicolon. */
    SET @recent = (SELECT MAX(event_date) FROM Events);
	SELECT name, event_date
    FROM Events
    WHERE DATEDIFF(@recent, event_date) <= 7
    AND event_date != @recent
    ORDER BY event_date DESC;
END