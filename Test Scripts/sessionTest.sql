SELECT *
FROM Session

SELECT UserId, UserGuid, IsActive
FROM Session

SELECT *
FROM Session s
WHERE s.UserId = 1

SELECT *
FROM Session s
WHERE IsActive = 1

SELECT *
FROM Session s
ORDER BY s.IsActive

SELECT s.IsActive
FROM Session s
GROUP BY s.IsActive

SELECT s.IsActive, s.UserId
FROM Session s
WHERE s.UserGuid NOT IN (
    SELECT s1.UserGuid
    FROM Session s1
    WHERE s1.IsActive = 0
)

SELECT *
FROM Session s
INNER JOIN Users u on u.UserId = s.UserId

SELECT u.Name, u.Username, s.IsActive
FROM Session s
INNER JOIN Users u on u.UserId = s.UserId
GROUP BY (s.IsActive), u.Name, u.Username
ORDER BY (s.IsActive), u.Name, u.Username
