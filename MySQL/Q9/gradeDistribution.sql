CREATE PROCEDURE gradeDistribution()
BEGIN
	/* Write your SQL here. Terminate each statement with a semicolon. */
    Select Name, ID from Grades 

    WHERE

    (Final > 

    (Midterm1*0.25)+(Midterm2*0.25)+(Final*0.50)) AND

    (Final > (Midterm1*0.5)+(Midterm2*0.5))

    ORDER BY substring(Name, 1, 3), ID;
END