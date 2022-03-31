CREATE TABLE Review (
    ReviewId BIGINT IDENTITY(1,1) PRIMARY KEY,
    NameOfUser VARCHAR(200) NOT NULL,
    Description VARCHAR(500)
    HouseId BIGINT FOREIGN KEY (HouseId) REFERENCES House(HouseId)
);

INSERT INTO Review
VALUES (),
(),
(),
(),