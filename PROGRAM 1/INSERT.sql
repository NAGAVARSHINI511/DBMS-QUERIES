
insert into PUBLISHER values ('TMH', 'Mangalore','9876543897');
insert into PUBLISHER values ('Prism', 'chennai','8756444324');
insert into PUBLISHER values ('Himalaya', 'Kolkata','9876556785');
insert into PUBLISHER values ('Pearson','Delhi','9878987675');
insert into PUBLISHER values ('Elsevier','Bangalore','7659876785');

insert into BOOK_AUTHORS values ('b1','navathe');
insert into BOOK_AUTHORS values ('b2','dsc');
insert into BOOK_AUTHORS values ('b3','david');
insert into BOOK_AUTHORS values ('b4','stuart');
insert into BOOK_AUTHORS values ('b5','galvin');

insert into LIBRARY_PROGRAMME values ('bh1','Book Corner', 'Bangalore');
insert into LIBRARY_PROGRAMME values ('bh2','Book Point', 'Mangalore');
insert into LIBRARY_PROGRAMME values ('bh3','Book Cafe', 'Mumbai');

insert into BOOK_COPIES values ('b1','bh1',10);
insert into BOOK_COPIES values ('b1','bh2',15);
insert into BOOK_COPIES values ('b2','bh2',30);
insert into BOOK_COPIES values ('b2','bh3',28);
insert into BOOK_COPIES values ('b3','bh1',35);
insert into BOOK_COPIES values ('b3','bh2',22);
insert into BOOK_COPIES values ('b4','bh1',8);
insert into BOOK_COPIES values ('b5','bh3',17);

insert into BOOK_LENDING values ('b1','bh1',1,'02-jan-17','10-jan-17');
insert into BOOK_LENDING values ('b2','bh2',2,'11-jan-17','11-mar-17');
insert into BOOK_LENDING values ('b3','bh1',1,'21-feb-17','21-apr-17');
insert into BOOK_LENDING values ('b5','bh3',1,'15-mar-17','15-jul-17');
insert into BOOK_LENDING values ('b3','bh2',4,'12-apr-17','12-may-17');
insert into BOOK_LENDING values ('b4','bh1',1,'21-feb-17','21-apr-17');