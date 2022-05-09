-- House test script to verify fields and operations are working properly

-- Test to select all fields
SELECT *
FROM House

-- Test to select price, house location, distance, and user id
SELECT Price, HouseLocation, Distance, UserId
FROM House

-- Test to select all fields where price is less than 250,000
SELECT *
FROM House h
WHERE h.Price < 250000

-- Test to select all fields where distance is greater than 120
SELECT *
FROM House h
WHERE h.Distance > 120

-- Test to select all fields where house location is 2520 Iris Ct
SELECT *
FROM House h
WHERE h.HouseLocation = '2520 Iris Ct'

-- Test to verify order by distance is working correctly
SELECT *
FROM House h
ORDER BY h.Distance

-- Test to select price and house location where the price is greater than the average price
SELECT h.Price, h.HouseLocation
FROM House h
WHERE h.Price > (
    SELECT AVG(h1.Price)
    FROM House h1
)

-- Test to select all fields when inner joining house with users
SELECT *
FROM House h
INNER JOIN Users u on u.UserId = h.UserId

/* Test to select username, name, and house location when inner joining house with users
 and ordering and grouping both tables by username, name, and house location */
SELECT u.Username, u.Name, h.HouseLocation
FROM House h
INNER JOIN Users u on u.UserId = h.UserId
GROUP BY (u.Username), u.Name, h.HouseLocation
ORDER BY (u.Username), u.Name, h.HouseLocation
