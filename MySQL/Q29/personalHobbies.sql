CREATE PROCEDURE personalHobbies()
BEGIN
	/* Write your SQL here. Terminate each statement with a semicolon. */
    SELECT name FROM people_hobbies
    where (hobbies like '%sports%') and (hobbies like '%reading%')
    ORDER BY name;
END