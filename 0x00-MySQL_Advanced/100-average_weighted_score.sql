/*
Task: Create a stored procedure ComputeAverageWeightedScoreForUser that computes and stores the average weighted score for a student
*/

-- Create stored procedure ComputeAverageWeightedScoreForUser
DELIMITER //
CREATE PROCEDURE ComputeAverageWeightedScoreForUser (
    IN p_user_id INT
)
BEGIN
    DECLARE total_score DECIMAL(10,2);
    DECLARE total_weight DECIMAL(10,2);
    DECLARE avg_weighted_score DECIMAL(10,2);
    
    -- Compute total score and total weight
    SELECT SUM(score * weight), SUM(weight)
    INTO total_score, total_weight
    FROM corrections
    WHERE user_id = p_user_id;
    
    -- Calculate average weighted score
    IF total_weight > 0 THEN
        SET avg_weighted_score = total_score / total_weight;
    ELSE
        SET avg_weighted_score = 0;
    END IF;
    
    -- Update or insert average weighted score for the student
    INSERT INTO average_weighted_scores (user_id, score) VALUES (p_user_id, avg_weighted_score)
    ON DUPLICATE KEY UPDATE score = avg_weighted_score;
END;
//
DELIMITER ;
