INSERT INTO customers VALUES
(1,'Rahul','rahul@gmail.com','Bangalore','2024-01-10'),
(2,'Anita','anita@gmail.com','Mumbai','2024-02-15'),
(3,'Amit','amit@gmail.com','Delhi','2024-03-20'),
(4,'Sneha','sneha@gmail.com','Bangalore','2024-04-05');


INSERT INTO products VALUES
(1,'Laptop','Electronics'),
(2,'Phone','Electronics'),
(3,'Shoes','Fashion'),
(4,'Watch','Accessories');


INSERT INTO orders VALUES
(101,1,'2024-04-01','DELIVERED'),
(102,1,'2024-05-10','DELIVERED'),
(103,2,'2024-05-15','DELIVERED'),
(104,3,'2024-06-01','CANCELLED');


INSERT INTO order_items VALUES
(1,101,1,1,60000),
(2,101,4,1,5000),
(3,102,2,1,30000),
(4,103,3,2,2000);


INSERT INTO payments VALUES
(1,101,'2024-04-01',65000,'CARD'),
(2,102,'2024-05-10',30000,'UPI'),
(3,103,'2024-05-15',4000,'CARD'),
(4,103,'2024-05-15',4000,'CARD');