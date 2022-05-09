-- Users creation script

-- Users create statement
CREATE TABLE Users (
    UserId BIGINT IDENTITY(1,1) PRIMARY KEY,
    Username VARCHAR(100) NOT NULL,
    Name VARCHAR(100) NOT NULL,
    Password VARCHAR(100) NOT NULL
);

-- Insert default values into users table
INSERT INTO Users
VALUES ('Administrator', 'Admin', 'asdcvasdqwe123'),
('DTC101', 'Dylan Chirigotis', 'lovingTheBestest456'),
('AK4422', 'Anna Kuether', 'asdfblmasfj08123')
