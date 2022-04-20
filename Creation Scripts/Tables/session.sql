CREATE TABLE Session (
 SessionId BIGINT IDENTITY(1,1) PRIMARY KEY,
 UserId BIGINT FOREIGN KEY REFERENCES Users(UserId),
 UserGuid VARCHAR(100),
 IsActive BIT
)

INSERT INTO Session
VALUES (1, 'abcdegdhaspasb1234hasdas00029aklssfsofb', 1)
