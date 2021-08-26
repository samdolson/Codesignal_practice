CREATE PROCEDURE nullIntern()
BEGIN
	/* Write your SQL here. Terminate each statement with a semicolon. */
    SELECT COUNT(*) AS "number_of_nulls" FROM departments 
    WHERE description IS NULL OR
    trim(description) IN ('-', 'null', 'nil');
END