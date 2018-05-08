DROP DATABASE IF EXISTS bamazon_DB;
CREATE database bamazon_DB;

USE bamazon_DB;

CREATE TABLE products (
  item_id INT NOT NULL AUTO_INCREMENT,
  product_name VARCHAR(100) NULL,
  department_name VARCHAR(100) NULL,
  price DECIMAL(10,4) NULL,
  stock_quantity INT NULL,
  PRIMARY KEY (item_id)
);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("apple", "grocery", 1, 50);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("cookie", "grocery", 3, 25);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("shampoo", "personalcare", 5, 30);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("candle", "home", 10, 50);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("iphone", "electronics", 500, 20);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("bread", "grocery", 2, 60);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("towel", "home", 7, 40);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("movie", "electronics", 20, 60);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("toothbrush", "personalcare", 4, 25);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("snickers", "grocery", 1, 100);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("notebook", "home", 5, 60);