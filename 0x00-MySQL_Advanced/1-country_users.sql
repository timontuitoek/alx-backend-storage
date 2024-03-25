/*
Task: Create a table 'users' with specified attributes including an enumeration for the 'country' field
*/

-- Create table users
CREATE TABLE IF NOT EXISTS users (
    id INT AUTO_INCREMENT PRIMARY KEY, -- Primary key
    email VARCHAR(255) NOT NULL UNIQUE, -- Unique email
    name VARCHAR(255), -- Name of the user
    country ENUM('US', 'CO', 'TN') NOT NULL DEFAULT 'US' -- Enumeration for country with default value 'US'
);
