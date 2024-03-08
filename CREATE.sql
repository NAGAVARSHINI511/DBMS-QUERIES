create table EMPLOYEE (
Ssn varchar(8),
Fname varchar(10),
Lname varchar(10),
Address varchar(10),
Sex varchar(1),
Salary int,
Sup_Ssnvarchar(8),
Dno int,
primary key(Ssn),
foreign key(Sup_Ssn) references EMPLOYEE(Ssn)
);

create table DEPARTMENT (
Dno int,
Dname varchar(20),
MgrSsn varchar(8),
Mgr_sdate date,
primary key(Dno),
foreign key(MgrSsn) references EMPLOYEE (Ssn)
);

alter table EMPLOYEE add constraint foreign key (Dno) references DEPARTMENT(Dno);

create table DLOCATION (
Dno int,
Dloc varchar(20),
primary key (Dno,Dloc),
foreign key(Dno) references DEPARTMENT(Dno)
);


create table PROJECT (
Pno int,
Pname varchar(20),
Plocation varchar(20),
Dno int,
primary key(Pno),
foreign key(Dno) references DEPARTMENT (Dno)
);


create table WORKS_ON (
Pno int,
Ssn varchar(8),
Hours int,
primary key(Ssn,Pno),
foreign key(Ssn) references EMPLOYEE(Ssn),
foreign key(Pno) references PROJECT(Pno)
);
