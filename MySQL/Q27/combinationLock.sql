CREATE PROCEDURE combinationLock()
BEGIN
	/* Write your SQL here. Terminate each statement with a semicolon. */
    SELECT ROUND(EXP(SUM(LOG(CHAR_LENGTH(characters))))) AS combinations
    FROM discs;
END