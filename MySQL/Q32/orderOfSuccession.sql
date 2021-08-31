CREATE PROCEDURE orderOfSuccession()
BEGIN
	/* Write your SQL here. Terminate each statement with a semicolon. */
    SELECT (CASE
    WHEN gender = 'F' THEN concat('Queen ', name)
    ELSE concat('King ', name)
END) AS name FROM Successors
    ORDER BY birthday ASC; 
END