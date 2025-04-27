create database ECommerceDB;
use ECommerceDB;

create table Users (
ID int primary key auto_increment,
username varchar(50) unique not null,
passwordHash varchar(255) not null,
email varchar(100) unique not null
);

create table Products (
ID int primary key auto_increment,
productName varchar(100) not null,
description text,
price decimal(10, 2) not null,
stock int not null
);

CREATE TABLE Cart (
    id INT PRIMARY KEY AUTO_INCREMENT,
    userID INT NOT NULL,
    total INT NOT NULL,
    FOREIGN KEY (userID) REFERENCES Users(id)
);

CREATE TABLE CartItems (
    id INT PRIMARY KEY AUTO_INCREMENT,
    cartID INT NOT NULL,
    productID INT NOT NULL,
    quantity INT NOT NULL,
    FOREIGN KEY (cartID) REFERENCES Cart(id),
    FOREIGN KEY (productID) REFERENCES Products(id)
);
