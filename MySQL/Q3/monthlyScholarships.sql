CREATE PROCEDURE monthlyScholarships()
BEGIN
    /* Write your SQL here. Terminate each statement with a semicolon. */
    SELECT id, (scholarship/12) scholarship 
    FROM scholarships
    ORDER BY id ASC;
END