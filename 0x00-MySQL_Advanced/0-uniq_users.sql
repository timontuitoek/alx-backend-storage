/*
Task: Create a table 'users' with specified attributes
*/

-- Create table users
CREATE TABLE IF NOT EXISTS users (
    id INT AUTO_INCREMENT PRIMARY KEY, -- Primary key
    email VARCHAR(255) NOT NULL UNIQUE, -- Unique email
    name VARCHAR(255) -- Name of the user
);
