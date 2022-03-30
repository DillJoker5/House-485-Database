CREATE TABLE House (
    HouseId BIGINT IDENTITY(1,1) PRIMARY KEY,
    Price FLOAT NOT NULL,
    HouseLocation VARCHAR(200) NOT NULL,
    Distance FLOAT,
    ReviewId BIGINT FOREIGN KEY (ReviewId) REFERENCES Review(ReviewId)
);