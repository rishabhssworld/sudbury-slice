# Sudbury Slice: Main Screen Wireframe

```text
+----------------------------------------------------------+
| [1] SUDBURY SLICE             Customer: __________        |
+---------------------+------------------------------------+
| [2] PIZZA MENU      | [3] SELECTED PIZZA                 |
|                     | Name: ____________________         |
| Pizza: __________   | Price: ___________________         |
| Pizza: __________   +------------------------------------+
| Pizza: __________   | [4] TOPPINGS                       |
|                     | __________________________________ |
|                     +------------------------------------+
|                     | [5] CUSTOMER RATINGS               |
|                     | Stars: _____  Comment: __________  |
|                     +------------------------------------+
|                     | [6] RATE THIS PIZZA                |
|                     | Stars (1-5): _____                 |
|                     | Optional comment: ______________  |
|                     | [Submit rating]                    |
+---------------------+------------------------------------+
```

## Legend

1. Header: Shows the shop name and customer name. Reads tblCustomer.
2. Pizza menu: Lists available pizzas. Reads tblPizza.
3. Selected pizza: Shows its name and price. Reads tblPizza.
4. Toppings: Lists toppings for the selected pizza. Reads tblPizzaTopping and tblTopping.
5. Customer ratings: Shows stars and comments for the selected pizza. Reads tblRating.
6. Rating form: Saves 1–5 stars and an optional comment, linked to the customer and pizza. Writes tblRating.