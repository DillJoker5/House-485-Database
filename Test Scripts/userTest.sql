SELECT *
FROM Users

SELECT Username, Name, Password
FROM Users

SELECT *
FROM Users u
WHERE u.Username = 'DTC101'

SELECT *
FROM Users u
WHERE u.Name = 'Admin'

SELECT *
FROM Users u
WHERE u.Password = 'lovingTheBestest456'

SELECT *
FROM Users u
ORDER BY u.Name

SELECT *
FROM Users u

SELECT u.Username, u.Name
FROM Users u
WHERE u.Username NOT IN (
    SELECT u1.Username
    FROM Users u1
    WHERE u1.Username = 'Administrator'
)

SELECT *
FROM Users u
INNER JOIN House h on h.HouseId = u.HouseId

SELECT u.Username, u.Name, h.HouseLocation
FROM Users u
INNER JOIN House h on h.HouseId = u.HouseId
GROUP BY (u.Username), u.Name, h.HouseLocation
ORDER BY (u.Username), u.Name, h.HouseLocation
