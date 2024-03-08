insert into STUDENT values ('4al14is001','akshay','mangaluru', 8877881122,'m');
insert into STUDENT values ('4al14is002','sandhya','bengaluru', 7722829912,'f');
insert into STUDENT values ('4al14is003','trupti','bengaluru', 7712312312,'f');
insert into STUDENT values ('4al14is004','supriya','mangaluru', 8877881122,'f');
insert into STUDENT values ('4al15is010','abhay','bengaluru', 9900211201,'m');
insert into STUDENT values ('4al15is011','darshan','bengaluru', 9923211099,'m');
insert into STUDENT values ('4al15is012','ashwitha','bengaluru', 7894737377,'f');
insert into STUDENT values ('4al16is020','ajay','tumkur', 9845091341,'m');
insert into STUDENT values ('4al16is021','sanjana','kundapura', 7696772121,'f');
insert into STUDENT values ('4al16is022','krishna','bellary', 9944850121,'m');
insert into STUDENT values ('4al16is023','santosh','mangaluru', 8812332201,'m');
insert into STUDENT values ('4al17is040','lokesh','kalburgi', 9900232201,'m');
insert into STUDENT values ('4al17is041','ashika','shimoga', 9905542212,'f');
insert into STUDENT values ('4al17is042','vinayaka','bijapura', 8800880011,'m');


insert into SEMSEC values ('ise8a',8,'a');
insert into SEMSEC values ('ise8b',8,'b');
insert into SEMSEC values ('ise8c',8,'c');
insert into SEMSEC values ('ise6a',6,'a');
insert into SEMSEC values ('ise4a',4,'a');
insert into SEMSEC values ('ise4b',4,'b');
insert into SEMSEC values ('ise4c',4,'c');
insert into SEMSEC values ('ise2a',2,'a');


insert into CLASS values ('4al14is001','ise8a');
insert into CLASS values ('4al14is002','ise8a');
insert into CLASS values ('4al14is003','ise8b');
insert into CLASS values ('4al14is004','ise8c');
insert into CLASS values ('4al15is010','ise6a');
insert into CLASS values ('4al15is011','ise6a');
insert into CLASS values ('4al15is012','ise6a');
insert into CLASS values ('4al16is020','ise4a');
insert into CLASS values ('4al16is021','ise4b');
insert into CLASS values ('4al16is022','ise4c');
insert into CLASS values ('4al16is023','ise4c');
insert into CLASS values ('4al17is040','ise2a');
insert into CLASS values ('4al17is041','ise2a');
insert into CLASS values ('4al17is042','ise2a');


insert into SUBJECT values ('10is81','PW',8,4);
insert into SUBJECT values ('10is82','INS',8,4);
insert into SUBJECT values ('10isl88','PWL',8,2);
insert into SUBJECT values ('15is61','CN',6, 4);
insert into SUBJECT values ('15is62','DBMS',6,4);
insert into SUBJECT values ('15is41','DMS',4,4);
insert into SUBJECT values ('15is42','ADE',4,4);
insert into SUBJECT values ('15che21','Chemistry',2,4);
insert into SUBJECT values ('15pcd22','PCD',2,4);

insert into IAMARKS (Usn, Subcode, Ssid, Test1, Test2, Test3) values ('4al14is001', '10is81', 'ise8a',15,16,18);
insert into IAMARKS (Usn, Subcode, Ssid, Test1, Test2, Test3) values ('4al14is001', '10is82', 'ise8a',10,9,6);
insert into IAMARKS (Usn, Subcode, Ssid, Test1, Test2, Test3) values ('4al14is003', '10isl88', 'ise8b',15,5,9);
insert into IAMARKS (Usn, Subcode, Ssid, Test1, Test2, Test3) values ('4al14is004', '10is82', 'ise8c',20,15,17);
insert into IAMARKS (Usn, Subcode, Ssid, Test1, Test2, Test3) values ('4al15is011', '15is62', 'ise6a',17,10,10);
insert into IAMARKS (Usn, Subcode, Ssid, Test1, Test2, Test3) values ('4al16is022', '15is41', 'ise4c',10,9,6);
insert into IAMARKS (Usn, Subcode, Ssid, Test1, Test2, Test3) values ('4al16is023', '15is42', 'ise4c',12,11,13);
insert into IAMARKS (Usn, Subcode, Ssid, Test1, Test2, Test3) values ('4al17is042', '15pcd22', 'ise2a',9,14,13);
