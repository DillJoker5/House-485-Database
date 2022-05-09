-- User test script to verify fields and operations are working properly

-- Test to select all fields
SELECT *
FROM Users

-- Test to select username, name, and password fields
SELECT Username, Name, Password
FROM Users

-- Test to select all fields where username is DTC101
SELECT *
FROM Users u
WHERE u.Username = 'DTC101'

-- Test to select all fields where name is Admin
SELECT *
FROM Users u
WHERE u.Name = 'Admin'

-- Test to select all fields where password is lovingTheBestest456
SELECT *
FROM Users u
WHERE u.Password = 'lovingTheBestest456'

-- Test to verify order by name is working correctly
SELECT *
FROM Users u
ORDER BY u.Name

-- Test to select username and name where the username is not Administrator
SELECT u.Username, u.Name
FROM Users u
WHERE u.Username NOT IN (
    SELECT u1.Username
    FROM Users u1
    WHERE u1.Username = 'Administrator'
)
