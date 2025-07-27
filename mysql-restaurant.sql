CREATE DATABASE resturant;

USE resturant;

CREATE TABLE customers(
 
 customers_id  INT PRIMARY KEY ,
 name VARCHAR(40),
 phone VARCHAR(10),
 email VARCHAR(30)
 );
 
 INSERT INTO customers( customers_id , name , phone , email)
 VALUES
 ( 11, 'vikas' , '890286482' , 'v23gmail.com'),
 (112, 'ravikumar' , '3425638461' , 'r12gmail.com'),
 (113,  'rishi' , '5463826278', 'r32gmail.com');
 

 CREATE TABLE menu_items(
 
 item_id INT PRIMARY KEY,
 name VARCHAR (100),
 description TEXT,
 price INT ,
 categories VARCHAR(100)
 
 );
 
 INSERT INTO menu_items( item_id, name , description , price , categories)
 VALUES
 (102 , 'pizza', 'Large pizza 80 % noneveg material', 100 , 'main'),
 (210 , 'burger' , 'with sos and chize or tamatos' , 50, 'egburger'),
 (100 , 'cold coffe', '10 % milk and 2 % coffe or 50% ice', 70 , 'chilled');
 
 
 CREATE TABLE orders(
 order_id INT PRIMARY KEY,
  customers_id INT,
  table_id INT ,
  employee_id INT,
  order_time DATETIME,
  total_amount DECIMAL(10 , 2),
  
  FOREIGN KEY (customers_id) REFERENCES customers(customers_id),
  FOREIGN KEY (table_id) REFERENCES tables(table_id),
  FOREIGN KEY (employee_id) REFERENCES employees(employee_id)
  
  );
  
  INSERT INTO  orders(order_id , customers_id , table_id , employee_id , order_time , total_amount)
  VALUES
  (101 , 1, 21, 0001, '2025-07-27 18:45:00' , 1000 ),
  (102 , 2 , 22 , 0002, '2025-07-27 17:45:00' , 2000),
  (103 , 3 , 23 ,  0004 , '2025-07-27 14:45:00', 30000);
  

 CREATE TABLE orders_item(
 
 order_item_id INT PRIMARY KEY,
 order_id INT,
 item_id INT,
 quantity INT ,
 price DECIMAL(10,2),
 FOREIGN KEY (order_id) REFERENCES orders(order_id),
 FOREIGN KEY(item_id) REFERENCES menu_items(item_id)
 );
 
 INSERT INTO orders_item(order_item_id , order_id , item_id , quantity , price)
 VALUES
 (12,101 , 12, 5, 1000.00),
 (21 , 102 , 21 ,6 ,1001.00),
 (10, 103, 10, 7,2000.00);
 
 
 CREATE TABLE tables(
 
 table_id INT PRIMARY KEY,
 table_number INT UNIQUE,
 seating_capacity INT
 
 );
 
 INSERT INTO tables( table_id , table_number , seating_capacity)
 VALUES
 (250, 2001, 40),
 (702, 3002, 50),
 (803, 4003, 60);
 
 CREATE TABLE employees(
 
 employee_id INT PRIMARY KEY ,
 name VARCHAR(100),
 role VARCHAR(40),
 phone VARCHAR(10)
 
 );
 
 INSERT INTO employees(employee_id, name, role , phone)
 VALUES
 (1101 , ' vikas ', 'waiter' , 2342454345),
 (2201 ,  'ashif'  ,'manager' , 1234432435),
 (4403,  'deepak' ,'head', 4323455365);
 
 SHOW TABLES;
 
 
 
 use resturant;
 
 select* from customers;
select * from menu_items;
select * from orders;
select * from orders_item;
select * from tables;
select * from employees;

