-- Create CITIES table
CREATE TABLE CITIES (
    CITY CHAR(20),
    STATE CHAR(20)
);

-- Create WAREHOUSES table
CREATE TABLE WAREHOUSES (
    WID INTEGER PRIMARY KEY,
    WNAME CHAR(30),
    LOCATION CHAR(20),
    EXTRA JSON
);

-- Create STORES table
CREATE TABLE STORES (
    SID INTEGER PRIMARY KEY,
    STORE_NAME CHAR(20),
    LOCATION_CITY CHAR(20),
    WID INTEGER,
    FOREIGN KEY (WID) REFERENCES WAREHOUSES(WID)
);

-- Create CUSTOMER table
CREATE TABLE CUSTOMER (
    CNO INTEGER PRIMARY KEY,
    CNAME CHAR(50),
    ADDR VARCHAR(50),
    CU_CITY CHAR(20),
    SID INTEGER,
    FOREIGN KEY (SID) REFERENCES STORES(SID)
);

-- Create ORDERS table
CREATE TABLE ORDERS (
    ONO INT PRIMARY KEY,
    ODATE DATE,
    CNO INTEGER,
    FOREIGN KEY (CNO) REFERENCES CUSTOMER(CNO)
);

-- Create ITEMS table
CREATE TABLE ITEMS (
    ITEMNO INTEGER PRIMARY KEY,
    DESCRIPTION TEXT,
    WEIGHT DECIMAL(5,2),
    COST DECIMAL(5,2)
);

-- Create ORDER_ITEMS table
CREATE TABLE ORDER_ITEMS (
    ONO INT,
    ITEMNO INTEGER,
    ORDERED_QUANTITY INTEGER,
    FOREIGN KEY (ONO) REFERENCES ORDERS(ONO),
    FOREIGN KEY (ITEMNO) REFERENCES ITEMS(ITEMNO),
    PRIMARY KEY (ONO, ITEMNO)
);

-- Create STORE_ITEMS table
CREATE TABLE STORE_ITEMS (
    SID INTEGER,
    ITEMNO INTEGER,
    QUANTITY INTEGER,
    FOREIGN KEY (SID) REFERENCES STORES(SID),
    FOREIGN KEY (ITEMNO) REFERENCES ITEMS(ITEMNO),
    PRIMARY KEY (SID, ITEMNO)
);


-- Insert sample data into CITIES table
INSERT INTO CITIES (CITY, STATE) VALUES
('Pune', 'Maharashtra'),
('Mumbai', 'Maharashtra'),
('Delhi', 'Delhi'),
('Bangalore', 'Karnataka'),
('Chennai', 'Tamil Nadu');

-- Insert sample data into WAREHOUSES table
INSERT INTO WAREHOUSES (WID, WNAME, LOCATION, EXTRA) VALUES
(1, 'Warehouse A', 'Pune', '{"capacity": 1000}'),
(2, 'Warehouse B', 'Mumbai', '{"capacity": 800}'),
(3, 'Warehouse C', 'Delhi', '{"capacity": 1200}'),
(4, 'Warehouse D', 'Bangalore', '{"capacity": 900}');

-- Insert sample data into STORES table
INSERT INTO STORES (SID, STORE_NAME, LOCATION_CITY, WID) VALUES
(1, 'Store 1', 'Pune', 1),
(2, 'Store 2', 'Mumbai', 2),
(3, 'Store 3', 'Pune', 1),
(4, 'Store 4', 'Delhi', 3);

-- Insert sample data into CUSTOMER table
INSERT INTO CUSTOMER (CNO, CNAME, ADDR, CU_CITY, SID) VALUES
(101, 'Mr. Patil', '123 Main St', 'Pune', 1),
(102, 'Mrs. Sharma', '456 Central Ave', 'Mumbai', 2),
(103, 'Mr. Singh', '789 1st Street', 'Delhi', 3),
(104, 'Ms. Gupta', '101 Second Road', 'Bangalore', 4),
(105, 'Mr. Kumar', '456 Third Avenue', 'Chennai', NULL);

-- Insert sample data into ORDERS table
INSERT INTO ORDERS (ONO, ODATE, CNO) VALUES
(1, '2023-06-15', 101),
(2, '2023-06-16', 102),
(3, '2023-06-17', 103),
(4, '2023-06-18', 104),
(5, '2023-06-19', NULL);

-- Insert sample data into ITEMS table
INSERT INTO ITEMS (ITEMNO, DESCRIPTION, WEIGHT, COST) VALUES
(101, 'Laptop', 2.5, 1200.50),
(102, 'Smartphone', 0.5, 800.00),
(103, 'TV', 15.0, 1000.00),
(104, 'Microwave Oven', 10.0, 500.00),
(105, 'Refrigerator', 25.0, 1500.00),
(106, 'Washing Machine', 30.0, 1800.00);

-- Insert sample data into ORDER_ITEMS table
INSERT INTO ORDER_ITEMS (ONO, ITEMNO, ORDERED_QUANTITY) VALUES
(1, 101, 2),
(2, 102, 1),
(3, 103, 1),
(4, 104, 1),
(5, 105, 1);

-- Insert sample data into STORE_ITEMS table
INSERT INTO STORE_ITEMS (SID, ITEMNO, QUANTITY) VALUES
(1, 101, 10),
(2, 102, 20),
(3, 103, 5),
(4, 104, 8);

