/* ============================================================================
   CMP3321 -- Applied Activity 3 -- Sudbury Slice -- SUPPLIED DATA (MySQL)
   Run this ONCE, in Mission 5, AFTER you have built all five tables in Mission 4.
   Do not edit it. Save a copy of it inside your repository, as the mission says.

   It adds 8 customers, 8 pizzas, 14 toppings, 30 pizza-topping rows and
   24 ratings. (You are customer 1. Your own rows come later.)
   If you run it a second time it does nothing: INSERT IGNORE skips any row whose
   key already exists, so it cannot duplicate the data.
   ============================================================================ */
USE SliceDB;

INSERT IGNORE INTO tblCustomer (CID, FirstName, LastName, Email, City, DateJoined) VALUES
    (2, 'Penny', 'Pepperoni', 'penny.pepperoni@example.com', 'Sudbury', '2026-08-02'),
    (3, 'Gordon', 'Gouda', 'gordon.gouda@example.com', 'Toronto', '2026-08-09'),
    (4, 'Olive', 'Oregano', 'olive.oregano@example.com', NULL, '2026-08-15'),
    (5, 'Basil', 'Brie', 'basil.brie@example.com', 'Ottawa', '2026-08-21'),
    (6, 'Chuck', 'Cheddar', 'chuck.cheddar@example.com', NULL, '2026-08-30'),
    (7, 'Tony', 'Tomato', 'tony.tomato@example.com', 'Sudbury', '2026-09-04'),
    (8, 'Daisy', 'Dough', 'daisy.dough@example.com', 'Sudbury', '2026-09-11'),
    (9, 'Felix', 'Focaccia', 'felix.focaccia@example.com', 'Timmins', '2026-09-18');

INSERT IGNORE INTO tblPizza (PID, PizzaName, Category, BasePrice) VALUES
    (1, 'The Big Nickel', 'Classic', 15.99),
    (2, 'Hawaiian Heresy', 'Sweet', 16.49),
    (3, 'Garden Party', 'Veggie', 14.99),
    (4, 'Moose Meat Feast', 'Classic', 19.49),
    (5, 'Spicy Sudbury', 'Spicy', 17.49),
    (6, 'Maple Bacon Dream', 'Sweet', 18.49),
    (7, 'Margherita Minimalist', 'Classic', 12.99),
    (8, 'Mushroom Madness', 'Veggie', 15.49);

INSERT IGNORE INTO tblTopping (TID, ToppingName, Vegan, ExtraCost) VALUES
    (1, 'Mozzarella', 'No', 1.50),
    (2, 'Pepperoni', 'No', 2.00),
    (3, 'Pineapple', 'Yes', 1.25),
    (4, 'Ham', 'No', 2.00),
    (5, 'Mushrooms', 'Yes', 1.25),
    (6, 'Green Peppers', 'Yes', 1.00),
    (7, 'Bacon', 'No', 2.25),
    (8, 'Jalapenos', 'Yes', 1.00),
    (9, 'Maple Drizzle', 'Yes', 1.50),
    (10, 'Basil', 'Yes', 0.75),
    (11, 'Black Olives', 'Yes', 1.00),
    (12, 'Moose Sausage', 'No', 2.75),
    (13, 'Anchovies', 'No', 1.75),
    (14, 'Pickles', 'Yes', 0.50);

INSERT IGNORE INTO tblPizzaTopping (PTID, PID, TID, PortionSize) VALUES
    (1, 1, 1, 'Regular'),
    (2, 1, 2, 'Regular'),
    (3, 1, 5, 'Light'),
    (4, 1, 6, 'Light'),
    (5, 2, 1, 'Regular'),
    (6, 2, 4, 'Regular'),
    (7, 2, 3, 'Extra'),
    (8, 3, 1, 'Light'),
    (9, 3, 5, 'Regular'),
    (10, 3, 6, 'Regular'),
    (11, 3, 11, 'Regular'),
    (12, 3, 10, 'Light'),
    (13, 4, 1, 'Regular'),
    (14, 4, 2, 'Extra'),
    (15, 4, 7, 'Regular'),
    (16, 4, 12, 'Extra'),
    (17, 4, 4, 'Regular'),
    (18, 5, 1, 'Regular'),
    (19, 5, 2, 'Regular'),
    (20, 5, 8, 'Extra'),
    (21, 5, 6, 'Light'),
    (22, 6, 1, 'Regular'),
    (23, 6, 7, 'Extra'),
    (24, 6, 9, 'Regular'),
    (25, 7, 1, 'Regular'),
    (26, 7, 10, 'Regular'),
    (27, 8, 1, 'Light'),
    (28, 8, 5, 'Extra'),
    (29, 8, 10, 'Light'),
    (30, 8, 11, 'Light');

INSERT IGNORE INTO tblRating (RID, CID, PID, Stars, RatedOn, Remark) VALUES
    (3001, 2, 1, 5, '2026-09-20', 'Perfect crust'),
    (3002, 2, 2, 2, '2026-09-22', NULL),
    (3003, 3, 1, 4, '2026-09-23', 'Classic done right'),
    (3004, 3, 3, 5, '2026-09-25', NULL),
    (3005, 4, 2, 1, '2026-09-27', 'Fruit does not belong on pizza'),
    (3006, 4, 4, 4, '2026-09-29', NULL),
    (3007, 5, 5, 5, '2026-10-01', 'Hot, and I mean HOT'),
    (3008, 5, 6, 4, '2026-10-02', 'Maple on pizza works'),
    (3009, 6, 2, 5, '2026-10-03', 'Pineapple forever'),
    (3010, 6, 7, 3, '2026-10-04', NULL),
    (3011, 7, 1, 4, '2026-10-05', NULL),
    (3012, 7, 5, 4, '2026-10-06', 'Great kick'),
    (3013, 8, 6, 5, '2026-10-07', 'Dessert and dinner in one'),
    (3014, 8, 8, 3, '2026-10-08', 'A few too many mushrooms'),
    (3015, 9, 3, 4, '2026-10-09', NULL),
    (3016, 9, 4, 5, '2026-10-10', 'Moose approved'),
    (3017, 2, 6, 4, '2026-10-11', NULL),
    (3018, 3, 5, 3, '2026-10-12', 'Too spicy for me'),
    (3019, 4, 7, 3, '2026-10-12', NULL),
    (3020, 5, 1, 5, '2026-10-13', 'Still the best'),
    (3021, 6, 8, 4, '2026-10-13', 'Mushroom heaven'),
    (3022, 7, 2, 3, '2026-10-13', NULL),
    (3023, 8, 4, 4, '2026-10-14', NULL),
    (3024, 9, 7, 4, '2026-10-14', 'Simple and good');

-- Proof it worked. Expect Customers 8, Pizzas 8, Toppings 14, PizzaToppings 30, Ratings 24
SELECT (SELECT COUNT(*) FROM tblCustomer)     AS Customers,
       (SELECT COUNT(*) FROM tblPizza)        AS Pizzas,
       (SELECT COUNT(*) FROM tblTopping)      AS Toppings,
       (SELECT COUNT(*) FROM tblPizzaTopping) AS PizzaToppings,
       (SELECT COUNT(*) FROM tblRating)       AS Ratings;
