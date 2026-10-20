-- Sudbury Slice queries, SliceDB
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