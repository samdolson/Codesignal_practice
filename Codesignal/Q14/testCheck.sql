CREATE PROCEDURE testCheck()
    SELECT id, IF (given_answer IS NOT NULL, IF(given_answer=correct_answer, "correct", "incorrect"), "no answer") AS checks
    FROM answers
    ORDER BY id;
