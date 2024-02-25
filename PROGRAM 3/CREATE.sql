
create table ACTOR (
Act_id varchar(3),
Act_name varchar(10),
Act_gender varchar(1),
primary key(Act_id)
);

create table DIRECTOR (
Dir_id varchar(3),
Dir_name varchar(20),
Dir_phone varchar(10),
primary key(Dir_id)
);

create table MOVIES (
Mov_id varchar(3),
Mov_title varchar(20),
Mov_year int,
Mov_lang varchar(10),
Dir_id varchar(3),
primary key(Mov_id),
foreign key(Dir_id) references DIRECTOR(Dir_id) on delete set NULL
);

create table MOVIE_CAST (
Act_id varchar(3),
Mov_id varchar(3),
Role varchar(10),
primary key (Act_id, Mov_id),
foreign key (Act_id) references actor (Act_id) on delete set NULL,
foreign key (Mov_id) references movies (Mov_id) on delete set NULL
);

create table RATING (
Mov_id varchar(3),
Rev_stars int,
primary key(Mov_id, Rev_stars),
foreign key(Mov_id) references MOVIES (Mov_id) on delete set NULL
);