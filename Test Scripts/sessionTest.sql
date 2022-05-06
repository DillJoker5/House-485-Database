-- Sesssion test script to verify fields and operations are working properly

-- Test to select all fields
SELECT *
FROM Session

-- Test to select user id, user guid, and is active
SELECT UserId, UserGuid, IsActive
FROM Session

-- Test to select all fields where the user id is 1
SELECT *
FROM Session s
WHERE s.UserId = 1

-- Test to select all fields where is active is 1 (or true)
SELECT *
FROM Session s
WHERE IsActive = 1

-- Test to verify order by is active is working correctly
SELECT *
FROM Session s
ORDER BY s.IsActive

-- Test to select is active when grouping by is active
SELECT s.IsActive
FROM Session s
GROUP BY s.IsActive

-- Test to select is active and user id where the is active field is equal to 0 (or false)
SELECT s.IsActive, s.UserId
FROM Session s
WHERE s.UserGuid NOT IN (
    SELECT s1.UserGuid
    FROM Session s1
    WHERE s1.IsActive = 0
)

-- Test to select all fields when inner joining session with users
SELECT *
FROM Session s
INNER JOIN Users u on u.UserId = s.UserId

/* Test to select name, username, and is active when inner joining session with users
 and ordering and grouping both tables by is active, name, and username */ 
SELECT u.Name, u.Username, s.IsActive
FROM Session s
INNER JOIN Users u on u.UserId = s.UserId
GROUP BY (s.IsActive), u.Name, u.Username
ORDER BY (s.IsActive), u.Name, u.Username
