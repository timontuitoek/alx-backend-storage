/*
Task: Create a stored procedure ComputeAverageScoreForUser that computes and stores the average score for a student
*/

-- Create stored procedure ComputeAverageScoreForUser
DELIMITER //
CREATE PROCEDURE ComputeAverageScoreForUser (
    IN p_user_id INT
)
BEGIN
    DECLARE avg_score DECIMAL(10,2);
    
    -- Compute average score for the student
    SELECT AVG(score) INTO avg_score FROM corrections WHERE user_id = p_user_id;
    
    -- Update or insert average score for the student
    INSERT INTO average_scores (user_id, score) VALUES (p_user_id, avg_score)
    ON DUPLICATE KEY UPDATE score = avg_score;
END;
//
DELIMITER ;
