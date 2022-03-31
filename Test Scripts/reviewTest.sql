SELECT *
FROM Review

SELECT NameOfUser, Description
FROM Review

SELECT *
FROM Review r
WHERE NameOfUser = 'Anna Kuether'

SELECT *
FROM Review r
WHERE Description = 'This is a test description. I do not care about this house whatsoever!'

SELECT *
FROM Review r
ORDER BY r.NameOfUser DESC

SELECT r.NameOfUser, r.Description
FROM Review r
GROUP BY (r.NameOfUser), r.Description
ORDER BY (r.NameOfUser) DESC, r.Description DESC

SELECT r.NameOfUser, r.Description
FROM Review r
WHERE r.NameOfUser < (
    SELECT r1.NameOfUser
    FROM Review r1
)

SELECT *
FROM Review r
INNER JOIN House h on h.HouseId = r.HouseId

SELECT r.NameOfUser, h.HouseLocation, r.Description
FROM Review r
INNER JOIN House h on h.HouseId = r.HouseId
GROUP BY (r.NameOfUser), h.HouseLocation, r.Description
ORDER BY (r.NameOfUser), h.HouseLocation, r.Description
