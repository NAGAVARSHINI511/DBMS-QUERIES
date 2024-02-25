insert into SALESMAN values (1000, 'joseph','mysore','13');
insert into SALESMAN values (1001, 'girish','bangalore','22');
insert into SALESMAN values (1002, 'mukund','mumbai','16');
insert into SALESMAN values (1003, 'saurabh','delhi','19');
insert into SALESMAN values (1004, 'srinivas','hydrabad','23');
insert into SALESMAN values (1005, 'mohan','ranchi','23');

insert into CUSTOMER values (1, 'sharal','hydrabad',40,1004);
insert into CUSTOMER values (2,'meenakshi','mangalore',40,1000);
insert into CUSTOMER values (3,'vikky','mumbai',35,1002);
insert into CUSTOMER values (4, 'john','mumbai',20,1002);
insert into CUSTOMER values (5, 'george','bangalore',10,1001);
insert into CUSTOMER values (6, 'hevin','bangalore',50,1001);
insert into CUSTOMER values (7, 'roshan','delhi',45,1003);
insert into CUSTOMER values (8, 'vimala','chennai',35,1001);
insert into CUSTOMER values (9, 'nakul','ayodhya',15,1005);

insert into ORDERS values (111, 50000, '04-jan-17', 1, 1004);
insert into ORDERS values (222, 45000, '04-jan-17', 2, 1000);
insert into ORDERS values (333, 10000, '05-feb-17', 3, 1002);
insert into ORDERS values (444, 35000, '13-mar-17', 4, 1003);
insert into ORDERS values (555, 75000, '14-mar-17', 5, 1001);
insert into ORDERS values (666, 25000, '14-mar-17', 6, 1004);
insert into ORDERS values (777, 5000, '27-jun-17', 7, 1003);
insert into ORDERS values (888, 52000, '25-aug-17', 8, 1001);
insert into ORDERS values (991, 37000, '25-aug-17', 1, 1004);
insert into ORDERS values (992, 29000, '09-sep-17', 2, 1000);
insert into ORDERS values (993, 6000, '09-sep-17', 9, 1005);