SELECT *
FROM User

SELECT Username, Name, Password
FROM User

SELECT *
FROM User u
WHERE u.Username = 'DTC101'

SELECT *
FROM User u
WHERE u.Name = 'Admin'

SELECT *
FROM User u
WHERE u.Password = 'lovingTheBestest456'

SELECT *
FROM User u
ORDER BY u.Name

SELECT *
FROM User u

SELECT u.Username, u.Name
FROM User u
WHERE u.Username NOT IN (
    SELECT u1.Username
    FROM User u1
    WHERE u1.Username = 'Administrator'
)

SELECT *
FROM User u
INNER JOIN House h on h.HouseId = u.HouseId

SELECT u.Username, u.Name, h.HouseLocation
FROM User u
INNER JOIN House h on h.HouseId = u.HouseId
GROUP BY (u.Username), u.Name, h.HouseLocation
ORDER BY (u.Username), u.Name, h.HouseLocation
