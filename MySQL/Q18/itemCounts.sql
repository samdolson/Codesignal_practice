CREATE PROCEDURE itemCounts()
BEGIN
	/* Write your SQL here. Terminate each statement with a semicolon. */
    SELECT item_name, item_type, count(*) as "item_count"
    FROM availableItems
    GROUP BY item_name, item_type
    ORDER BY item_type ASC, item_name ASC;
END