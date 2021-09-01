CREATE PROCEDURE netIncome()
BEGIN
	/* Write your SQL here. Terminate each statement with a semicolon. */
    SELECT YEAR(date) AS year, 
    QUARTER(date) AS quarter,
    SUM(profit) - SUM(loss) AS net_profit 
    FROM accounting
    GROUP BY year, quarter
    ORDER BY year, quarter;
END