create table SALESMAN (
Salesman_idint, Name varchar(10), City varchar(10), Commission int,
primary key(Salesman_id)
);


create table CUSTOMER (
Customer_idint, Cust_namevarchar(10), City varchar(10),
Grade int, Salesman_idint,
primary key (Customer_id),
foreign key (Salesman_id) references SALESMAN (Salesman_id) on delete set NULL
);


create table ORDERS (
Ord_no int,
Purchase_amt int,
Ord_date date,
Customer_id int,
Salesman_id int,
primary key (Ord_no),
foreign key (Customer_id) references CUSTOMER (customer_id) on delete cascade,
foreign key (Salesman_id) references SALESMAN (salesman_id) on delete cascade
);