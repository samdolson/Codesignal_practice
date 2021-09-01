CREATE PROCEDURE securityBreach()
BEGIN
	/* Write your SQL here. Terminate each statement with a semicolon. */
    SELECT * 
    FROM users
    where
       attribute like BINARY concat('_%\%',first_name,'\_',second_name,'\%%')
    ORDER BY attribute;
END