
create table PUBLISHER (
name varchar(15),
address varchar(15),
phone varchar(10),
primary key (name)
);


create table BOOK (
book_id varchar(4),
title varchar(10),
publisher_name varchar(10),
pub_year int,
primary key (book_id),
foreign key(publisher_name) references PUBLISHER(name) on delete cascade
);

create table BOOK_AUTHORS (
book_id varchar(4),
author_name varchar(10),
primary key (book_id),
foreign key(book_id) references BOOK(book_id) on delete cascade
);


create table LIBRARY_PROGRAMME
(
programme_id varchar(4),
programme_name varchar(15),
address varchar(15),
primary key (programme_id)
);


create table BOOK_COPIES (
book_id varchar(4),
programme_id varchar(4),
no_of_copies int,
primary key (book_id, programme_id),
foreign key(book_id) references BOOK(book_id) on delete cascade,
foreign key(programme_id) references LIBRARY_PROGRAMME(programme_id) on delete cascade
);


create table BOOK_LENDING
(
book_id varchar(4),
programme_id varchar(4),
card_no int,
date_out date,
due_date date,
primary key (book_id, programme_id, card_no),
foreign key(book_id) references BOOK(book_id) on delete cascade,
foreign key(programme_id) references LIBRARY_PROGRAMME(programme_id) on delete cascade
);

