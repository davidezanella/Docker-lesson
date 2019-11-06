CREATE TABLE SaleItems (
    itemID serial PRIMARY KEY,
    itemName VARCHAR (255),
    price int
); 

INSERT INTO SaleItems (itemName, price)
VALUES
    ('guanciale', 20),
    ('uova', 3),
    ('pecorino', 15),
    ('pasta', 2);