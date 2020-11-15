create database finalexam_84422022;
use finalexam_84422022;

create table customers(
customerID int not null primary key auto_increment,
fname varchar(255) not null,
lname varchar(255) not null, 
email varchar(50) not null,
password varchar(255) not null
);

create table products(
productID int not null primary key auto_increment,
pName varchar(255) not null,
price float(5,2) not null,
rating int not null,
image varchar(255) not null
);

create table orders(
orderID int not null primary key auto_increment,
orderTime datetime not null,
customerID int not null,
foreign key (customerID) references customers(customerID)
);

create table payments(
paymentID int not null primary key auto_increment,
accountDetails varchar(255) not null,
customerID int not null,
orderID int not null,
foreign key (customerID) references customers(customerID),
foreign key (orderID) references orders(orderID)
);

create table products_customer(
prod_custID int not null primary key auto_increment,
productID int not null,
customerID int not null,
foreign key (productID) references products(productID),
foreign key (customerID) references customers(customerID)
);

create table products_payments(
prod_payID int not null primary key auto_increment,
productID int not null,
paymentID int not null,
foreign key (productID) references products(productID),
foreign key (paymentID) references payments(paymentID)
);