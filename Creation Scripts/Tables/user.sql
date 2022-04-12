CREATE TABLE Users (
    UserId BIGINT IDENTITY(1,1) PRIMARY KEY,
    Username VARCHAR(100) NOT NULL,
    Name VARCHAR(100) NOT NULL,
    Password VARCHAR(100) NOT NULL,
    HouseId BIGINT FOREIGN KEY (HouseId) REFERENCES House(HouseId)
);

INSERT INTO User
VALUES ('Administrator', 'Admin', 'asdcvasdqwe123', 1),
('DTC101', 'Dylan Chirigotis', 'lovingTheBestest456', 1),
('AK4422', 'Anna Kuether', 'asdfblmasfj08123', 2)