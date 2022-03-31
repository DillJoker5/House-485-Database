CREATE TABLE Review (
    ReviewId BIGINT IDENTITY(1,1) PRIMARY KEY,
    NameOfUser VARCHAR(200) NOT NULL,
    Description VARCHAR(500)
    HouseId BIGINT FOREIGN KEY (HouseId) REFERENCES House(HouseId)
);

INSERT INTO Review
VALUES ('Test', 'This is a test description. I do not care about this house whatsoever!', 12345678),
('Dylan Chirigotis', 'I love this house. The decor and everything is perfect. 10/10 would recommend!', 12345678),
('Anna Kuether', 'This house is in a terrible area, is trashy, and is falling apart. 0/10', 12345612),
('Erika Fahney', 'This house is probably one of the worst houses I have ever looked at. Do not visit here unless you want to be disappointed.', 12345612)