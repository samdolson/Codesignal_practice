CREATE PROCEDURE expressionsVerification()
BEGIN
	/* Write your SQL here. Terminate each statement with a semicolon. */
    SELECT * FROM expressions
    WHERE CASE
        WHEN operation = "+" THEN a + b
        WHEN operation = "-" THEN a - b
        WHEN operation = "*" THEN a * b
        ELSE a/b
    END = c
    ORDER BY id;
END