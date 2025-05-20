CREATE TABLE Customer (
    customer_id INT PRIMARY KEY AUTO_INCREMENT,
    CPF VARCHAR(11) NOT NULL UNIQUE,
    name VARCHAR(100) NOT NULL,
    address VARCHAR(255)
);

CREATE TABLE Creditor (
    creditor_id INT PRIMARY KEY AUTO_INCREMENT,
    CPF VARCHAR(11) NOT NULL UNIQUE,
    name VARCHAR(100) NOT NULL,
    address VARCHAR(255)
);

CREATE TABLE Billing (
    billing_id INT PRIMARY KEY AUTO_INCREMENT,
    value DECIMAL(10,2) NOT NULL,
    description TEXT,
    creditor_id INT NOT NULL,
    debtor_id INT NOT NULL,
    expiration_date DATE NOT NULL,
    FOREIGN KEY (creditor_id) REFERENCES Creditor(creditor_id),
    FOREIGN KEY (debtor_id) REFERENCES Customer(customer_id)
);
