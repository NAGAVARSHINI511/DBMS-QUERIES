insert into EMPLOYEE values ('alis01','john','scott','bangalore','m',2000000,NULL,NULL);
insert into EMPLOYEE values ('alis02','james','smith','kolar','m',1500000,'alis01',NULL);
insert into EMPLOYEE values ('alis03','william','baker','bangalore','m',1500000,'alis01', NULL);
insert into EMPLOYEE values ('alis04','elson','scott','mysore','m',1500000,'alis01',NULL);
insert into EMPLOYEE values ('alis05','pavan','hegde','mangalore','m',700000,'alis02', NULL);
insert into EMPLOYEE values ('alis06','girish','jain','mysore','m',1000000,'alis03',NULL);
insert into EMPLOYEE values ('alis07','neha','salian','bangalore','f',600500,'alis02',NULL);
insert into EMPLOYEE values ('alis08','ashika','hegde','mangalore','f',800000,'alis04', NULL);
insert into EMPLOYEE values ('alis09','santhosh','kumar','mumbai','m',500000,'alis02', NULL);
insert into EMPLOYEE values ('alis10','mythri','m','mysore','f',300000,'alis02',NULL);
insert into EMPLOYEE values ('alis11','nagesh','tantri','bangalore','m',900000,'alis04', NULL);
insert into EMPLOYEE values ('alis12','vignesh','g','bangalore','m',650000,'alis02',NULL);
insert into EMPLOYEE values ('alis13','kaveri','k','mangalore','f',750000,'alis01',NULL);


insert into DEPARTMENT values(1,'accounts','alis02','01-jan-01');
insert into DEPARTMENT values(2,'marketing','alis03','11-aug-16');
insert into DEPARTMENT values(3,'it','alis04','23-mar-08');
insert into DEPARTMENT values(4,'production','alis08','10-aug-12');
insert into DEPARTMENT values(5,'support','alis01','05-mar-10');


update EMPLOYEE set Dno=5 where Ssn='alis01';
update EMPLOYEE set Dno=1 where Ssn='alis02';
update EMPLOYEE set Dno=2 where Ssn='alis03';
update EMPLOYEE set Dno=3 where Ssn='alis04';
update EMPLOYEE set Dno=1 where Ssn='alis05';
update EMPLOYEE set Dno=2 where Ssn='alis06';
update EMPLOYEE set Dno=1 where Ssn='alis07';
update EMPLOYEE set Dno=4 where Ssn='alis08';
update EMPLOYEE set Dno=1 where Ssn='alis09';
update EMPLOYEE set Dno=1 where Ssn='alis10';
update EMPLOYEE set Dno=3 where Ssn='alis11';
update EMPLOYEE set Dno=1 where Ssn='alis12';
update EMPLOYEE set Dno=5 where Ssn='alis13';

insert into DLOCATION values(1,'bangalore');
insert into DLOCATION values(2,'bangalore');
insert into DLOCATION values(3,'bangalore');
insert into DLOCATION values(1,'mangalore');
insert into DLOCATION values(3,'mangalore');
insert into DLOCATION values(4,'mysore');
insert into DLOCATION values(5,'hubli');

insert into PROJECT values(100,'market_s','bangalore',1);
insert into PROJECT values(101,'stocks','bangalore',1);
insert into PROJECT values(102,'GST_b','bangalore',1);
insert into PROJECT values(103,'T_cards','bangalore',2);
insert into PROJECT values(104,'Jio_money','bangalore',2);
insert into PROJECT values(105,'iot','bangalore',3);
insert into PROJECT values(106,'Pro_xl','bangalore',4);
insert into PROJECT values(107,'project_j','bangalore',5);
insert into PROJECT values(108,'project_d','bangalore',5);

insert into WORKS_ON(Pno,Ssn,Hours) values(100,'alis02',20);
insert into WORKS_ON(Pno,Ssn,Hours) values(100,'alis09',30);
insert into WORKS_ON(Pno,Ssn,Hours) values(101,'alis10',10);
insert into WORKS_ON(Pno,Ssn,Hours) values(101,'alis02',34);
insert into WORKS_ON(Pno,Ssn,Hours) values(102,'alis12',25);
insert into WORKS_ON(Pno,Ssn,Hours) values(102,'alis07',65);
insert into WORKS_ON(Pno,Ssn,Hours) values(103,'alis03',34);
insert into WORKS_ON(Pno,Ssn,Hours) values(104,'alis06',22);
insert into WORKS_ON(Pno,Ssn,Hours) values(105,'alis11',12);
insert into WORKS_ON(Pno,Ssn,Hours) values(107,'alis13',34);
insert into WORKS_ON(Pno,Ssn,Hours) values(107,'alis08',63);
insert into WORKS_ON(Pno,Ssn,Hours) values(107,'alis01',27);
insert into WORKS_ON(Pno,Ssn,Hours) values(108,'alis13',10);
insert into WORKS_ON(Pno,Ssn,Hours) values(108,'alis08',30);
insert into WORKS_ON(Pno,Ssn,Hours) values(108,'alis05',20);
insert into WORKS_ON(Pno,Ssn,Hours) values(105,'alis04',12);