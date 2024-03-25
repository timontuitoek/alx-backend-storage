/*
Task: Create a stored procedure ComputeAverageWeightedScoreForUsers that computes and stores the average weighted score for all students
*/

-- Create stored procedure ComputeAverageWeightedScoreForUsers
DELIMITER //
CREATE PROCEDURE ComputeAverageWeightedScoreForUsers ()
BEGIN
    DECLARE done INT DEFAULT FALSE;
    DECLARE user_id_var INT;
    DECLARE cur CURSOR FOR SELECT id FROM users;
    DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = TRUE;
    
    -- Loop through all users
    OPEN cur;
    read_loop: LOOP
        FETCH cur INTO user_id_var;
        IF done THEN
            LEAVE read_loop;
        END IF;
        
        -- Call ComputeAverageWeightedScoreForUser for each user
        CALL ComputeAverageWeightedScoreForUser(user_id_var);
    END LOOP;
    CLOSE cur;
END;
//
DELIMITER ;
