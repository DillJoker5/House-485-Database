-- House creation script

-- House create statement
CREATE TABLE House (
    HouseId BIGINT IDENTITY(1,1) PRIMARY KEY,
    Price FLOAT NOT NULL,
    HouseLocation VARCHAR(200) NOT NULL,
    Distance FLOAT,
    UserId BIGINT FOREIGN KEY (UserId) REFERENCES Users(UserId)
);

-- Insert default values into house table
INSERT INTO House
VALUES (125000.99, '2520 Iris Ct', 122, 2),
(250455.88, '8800 W Bluemound Rd', 267, 1)
