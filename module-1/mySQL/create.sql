
# Selecting the database
USE mySQL_cars;

# Creating table for cars
CREATE TABLE IF NOT EXISTS Cars (
    IDCar INT NOT NULL AUTO_INCREMENT,
    VIN VARCHAR(30),
    Manufacturer VARCHAR(30),
    Model VARCHAR(30),
    CarYear INT,
    Color VARCHAR(30),
    PRIMARY KEY (IDCar)
);

# Creating table for customers
CREATE TABLE IF NOT EXISTS Customers (
    IDCustomer INT NOT NULL AUTO_INCREMENT,
    CustomerID INT,
    FullName VARCHAR(30),
    Phone VARCHAR(30),
    Email VARCHAR(30),
    Address VARCHAR(30),
    City VARCHAR(30),
    State VARCHAR(30),
    Country VARCHAR(30),
    Postal INT,
    PRIMARY KEY (IDCustomer)
);

# Creating table for salespersons
CREATE TABLE IF NOT EXISTS Salespersons (
    IDSalesperson INT NOT NULL AUTO_INCREMENT,
    StaffID INT,
    FullName VARCHAR(30),
    StoreCountry VARCHAR(30),
    PRIMARY KEY (IDSalesperson)
);

# Creating table for invoices
CREATE TABLE IF NOT EXISTS Invoices (
    IDInvoices INT NOT NULL AUTO_INCREMENT,
    InvoiceNumber INT,
    InvoiceDate DATE,
    IDCar INT,
    IDCustomer INT,
    IDSalesperson INT,
    PRIMARY KEY (IDInvoices)
);
