Create table STUDENT (
Usn varchar(10),
Sname varchar(10),
Address varchar(10),
Phone varchar(10),
Gender varchar(1),
primary key(Usn)
);

create table SEMSEC (
Ssid varchar(6),
Sem int,
Sec varchar(2),
primary key(Ssid)
);

Department of Information Science & Engineering, AJIET, Mangaluru. Page 39
create table CLASS (
Usn varchar(10),
Ssid varchar(6),
primary key(Usn,Ssid),
foreign key(Usn) references STUDENT(Usn),
foreign key(Ssid) references SEMSEC(Ssid)
);

create table SUBJECT (
Subcode varchar(7),
Title varchar(20),
Sem int,
Credits int,
primary key(Subcode)
);


create table IAMARKS (
Usn varchar(10),
Subcode varchar(7),
Ssid varchar(6),
Test1 int,
Test2 int,
Test3 int,
Finalia int,
primary key(Usn,Subcode,Ssid),
foreign key(Usn) references STUDENT(Usn),
foreign key(Ssid) references SEMSEC(Ssid),
foreign key(Subcode) references SUBJECT(Subcode)
);

