SELECT *
FROM House

SELECT Price, HouseLocation, Distance
FROM House

SELECT *
FROM House h
WHERE h.Price < 250000

SELECT *
FROM House h
WHERE h.Distance > 120

SELECT *
FROM House h
WHERE h.HouseLocation = '2520 Iris Ct'

SELECT *
FROM House h
ORDER BY h.Distance

SELECT h.Price, h.HouseLocation
FROM House h
WHERE h.Price > (
    SELECT AVG(h1.Price)
    FROM House h1
)
