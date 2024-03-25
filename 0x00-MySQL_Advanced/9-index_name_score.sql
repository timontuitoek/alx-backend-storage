/*
Task: Create an index idx_name_first_score on the table names including the first letter of name and the score
*/

-- Create index idx_name_first_score
CREATE INDEX idx_name_first_score ON names(name(1), score);
