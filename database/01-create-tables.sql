CREATE DATABASE SliceDB;
USE SliceDB;

CREATE TABLE tblCustomer (
    CID        INT          NOT NULL,
    FirstName  VARCHAR(50)  NOT NULL,
    LastName   VARCHAR(50)  NOT NULL,
    Email      VARCHAR(100) NOT NULL,
    City       VARCHAR(50)  NULL,
    DateJoined DATE         NOT NULL,
    PRIMARY KEY (CID)
);

CREATE TABLE tblPizza (
    PID       INT          NOT NULL,
    PizzaName VARCHAR(60)  NOT NULL,
    Category  VARCHAR(20)  NOT NULL,
    BasePrice DECIMAL(5,2) NOT NULL,
    PRIMARY KEY (PID)
);

CREATE TABLE tblTopping (
    TID         INT          NOT NULL,
    ToppingName VARCHAR(40)  NOT NULL,
    Vegan       VARCHAR(3)   NOT NULL,
    ExtraCost   DECIMAL(4,2) NOT NULL,
    PRIMARY KEY (TID)
);

CREATE TABLE tblPizzaTopping (
    PTID INT NOT NULL,
    PID INT NOT NULL,
    TID INT NOT NULL,
    PortionSize VARCHAR(10) NOT NULL,
    PRIMARY KEY (PTID),
    FOREIGN KEY (PID) REFERENCES tblPizza(PID),
    FOREIGN KEY (TID) REFERENCES tblTopping(TID)
);

CREATE TABLE tblRating (
    RID INT NOT NULL,
    CID INT NOT NULL,
    PID INT NOT NULL,
    Stars INT NOT NULL,
    RatedOn DATE NOT NULL,
    Remark VARCHAR(200) NULL,
    PRIMARY KEY (RID),
    FOREIGN KEY (CID) REFERENCES tblCustomer(CID),
    FOREIGN KEY (PID) REFERENCES tblPizza(PID)
);