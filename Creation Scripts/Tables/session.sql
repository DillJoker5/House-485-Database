-- Session creation script

-- Session create statement
CREATE TABLE Session (
 SessionId BIGINT IDENTITY(1,1) PRIMARY KEY,
 UserId BIGINT FOREIGN KEY REFERENCES Users(UserId),
 UserGuid VARCHAR(100),
 IsActive BIT
)

-- Insert default values into session table
INSERT INTO Session
VALUES (1, 'abcdegdhaspasb1234hasdas00029aklssfsofb', 1)
