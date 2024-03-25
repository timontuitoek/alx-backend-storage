/*
Task: Create a trigger to reset the attribute valid_email only when the email has been changed
*/

-- Create trigger to reset valid_email when email is changed
DELIMITER //
CREATE TRIGGER reset_valid_email_after_email_change
BEFORE UPDATE ON users
FOR EACH ROW
BEGIN
    IF OLD.email != NEW.email THEN
        SET NEW.valid_email = 0;
    END IF;
END;
//
DELIMITER ;
