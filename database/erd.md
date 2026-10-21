# SliceDB: Entity-Relationship Diagram
**Designed by:** Rishabh Bhutani

```mermaid
erDiagram
    tblCustomer {
        int CID PK
        string FirstName
        string LastName
        string Email
        string City
        date DateJoined
    }

    tblPizza {
        int PID PK
        string PizzaName
        string Category
        decimal BasePrice
    }

    tblTopping {
        int TID PK
        string ToppingName
        string Vegan
        decimal ExtraCost
    }

    tblPizzaTopping {
        int PTID PK
        int PID FK
        int TID FK
        string PortionSize
    }

        tblRating {
        int RID PK
        int CID FK
        int PID FK
        int Stars
        date RatedOn
        string Remark
    }

    tblCustomer ||--o{ tblRating : writes
    tblPizza ||--o{ tblRating : receives
    tblPizza ||--o{ tblPizzaTopping : has
    tblTopping ||--o{ tblPizzaTopping : appears_in

    
```

## My design decisions

- tblPizzaTopping exists because, It connects pizzas and toppings because one pizza can have many toppings, and one topping can appear on many pizzas

- PTID assigns a unique ID to each row. This makes it easy for the database to find information and run operations on them

- NULL means no value was provided, a customer can give stars without writing a comment

- Current topping field doesn't show that the meat is halal
Note: tblPizzaTopping exists because one pizza can have many toppings, and one topping can appear on many pizzas
