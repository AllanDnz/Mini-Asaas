CREATE TABLE Customers (
    customer_id INT PRIMARY KEY AUTO_INCREMENT,
    CPF_CNPJ VARCHAR(14) NOT NULL,
    name VARCHAR(100) NOT NULL,
    address VARCHAR(255)
    phone VARCHAR(100)
    email VARCHAR(255)
);

CREATE TABLE Customer_Account (
    customer_account_id INT PRIMARY KEY AUTO_INCREMENT,
    CPF_CNPJ VARCHAR(14) NOT NULL,
    name VARCHAR(100) NOT NULL,
    address VARCHAR(255)
    phone VARCHAR(100)
    email VARCHAR(255)
    customer_id INT NOT NULL
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);

CREATE TABLE Billing (
    billing_id INT PRIMARY KEY AUTO_INCREMENT,
    value DECIMAL(10,2) NOT NULL,
    description TEXT,
    customer_account_id INT NOT NULL,
    customer_id INT NOT NULL,
    expiration_date DATE NOT NULL,
    FOREIGN KEY (customer_account_id) REFERENCES Customer_Account(customer_account_id),
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);
