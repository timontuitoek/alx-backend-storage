/*
Task: Create a function SafeDiv that divides the first number by the second number, or returns 0 if the second number is 0
*/

-- Create function SafeDiv
DELIMITER //
CREATE FUNCTION SafeDiv(a INT, b INT)
RETURNS DECIMAL(10,2)
BEGIN
    IF b = 0 THEN
        RETURN 0;
    ELSE
        RETURN a / b;
    END IF;
END;
//
DELIMITER ;
