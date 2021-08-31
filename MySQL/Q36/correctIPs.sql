CREATE PROCEDURE correctIPs()
BEGIN
	/* Write your SQL here. Terminate each statement with a semicolon. */
    SELECT * FROM ips
    WHERE length(SUBSTRING_INDEX(ip, '.', -2)) > 3
    AND IS_IPV4(ip)
    ORDER BY id;
END