/*
Task: Create a view need_meeting that lists all students with a score under 80 and either no last meeting date or a last meeting date more than 1 month ago
*/

-- Create view need_meeting
CREATE VIEW need_meeting AS
SELECT name
FROM students
WHERE score < 80
AND (last_meeting IS NULL OR last_meeting < DATE_SUB(NOW(), INTERVAL 1 MONTH));
