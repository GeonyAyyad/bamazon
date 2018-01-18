DROP DATABASE IF EXISTS bamazon_DB;
CREATE database bamazon_DB;

USE bamazon_DB;

CREATE TABLE products (
  item_id INT NOT NULL,
  product_name VARCHAR(100) NULL,
  department_name VARCHAR(100) NULL,
  price INT NULL,
  stock_quantity INT NULL
);


INSERT INTO products (item_id, product_name, department_name, price, stock_quantity) values (4546, 'Bamazon Becho', 'Belectronics', 90, 500);

INSERT INTO products (item_id, product_name, department_name, price, stock_quantity) values (5432, 'Bamazon Fire', 'Belectronics', 50, 400);

INSERT INTO products (item_id, product_name, department_name, price, stock_quantity) values (6765, 'Bamazon Bike', 'Sborts', 120, 200);

INSERT INTO products (item_id, product_name, department_name, price, stock_quantity) values (3789, 'Bamazon Towel', 'Home', 20, 4000);

INSERT INTO products (item_id, product_name, department_name, price, stock_quantity) values (4231, 'Bamazon Blowdryer', 'Belectronics', 60, 420);

INSERT INTO products (item_id, product_name, department_name, price, stock_quantity) values (1356, 'Bamazon BireStick', 'Belectronics', 40, 760);

INSERT INTO products (item_id, product_name, department_name, price, stock_quantity) values (2654, 'Windex', 'Home', 15, 450);

INSERT INTO products (item_id, product_name, department_name, price, stock_quantity) values (7312, 'Applesauce', 'Food', 5, 6500);

INSERT INTO products (item_id, product_name, department_name, price, stock_quantity) values (4343, 'Bamazon Gift Card', 'Gifts', 50, 56000);

INSERT INTO products (item_id, product_name, department_name, price, stock_quantity) values (3231, 'Magnets', 'Automobile', 10, 4320);

