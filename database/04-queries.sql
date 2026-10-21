-- Sudbury Slice queries for SliceDB on MySQL
USE SliceDB;

-- Q1
SELECT PizzaName, BasePrice
FROM tblPizza
WHERE BasePrice < 16
ORDER BY BasePrice ASC;

-- Q2
SELECT t.ToppingName, pt.PortionSize
FROM tblPizza AS p
JOIN tblPizzaTopping AS pt ON p.PID = pt.PID
JOIN tblTopping AS t ON pt.TID = t.TID
WHERE p.PizzaName = 'The Big Nickel'
ORDER BY t.ToppingName ASC;

-- Q3
SELECT RID, Stars, RatedOn
FROM tblRating
WHERE Remark IS NULL
ORDER BY RID ASC;

-- Q4
SELECT CONCAT(c.FirstName, ' ', c.LastName) AS Customer,
       p.PizzaName,
       r.Stars,
       r.RatedOn
FROM tblRating AS r
JOIN tblCustomer AS c ON r.CID = c.CID
JOIN tblPizza AS p ON r.PID = p.PID
WHERE r.RatedOn BETWEEN '2026-10-10' AND '2026-10-14'
ORDER BY r.RatedOn DESC, r.RID ASC;

-- Q5
SELECT p.PizzaName,
       COUNT(*) AS RatingCount,
       CAST(AVG(r.Stars) AS DECIMAL(4,2)) AS AverageStars
FROM tblPizza AS p
JOIN tblRating AS r ON p.PID = r.PID
GROUP BY p.PID, p.PizzaName
HAVING AVG(r.Stars) >= 4
ORDER BY AverageStars DESC, p.PizzaName ASC;

-- Q6
SELECT ToppingName
FROM tblTopping
WHERE TID NOT IN (
    SELECT TID
    FROM tblPizzaTopping
)
ORDER BY ToppingName ASC;