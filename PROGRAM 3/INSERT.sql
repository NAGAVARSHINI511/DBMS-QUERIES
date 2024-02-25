insert into ACTOR values ('a1','robert d','m');
insert into ACTOR values ('a2','scarlett','f');
insert into ACTOR values ('a3','puneeth','m');
insert into ACTOR values ('a4','meera','f');
insert into ACTOR values ('a5','prabhas','m');
insert into ACTOR values ('a6','anushka','f');


insert into DIRECTOR values ('d1','hitchcock', '7690870681');
insert into DIRECTOR values ('d2','steven spielberg', '7986554437');
insert into DIRECTOR values ('d3','mahesh babu', '8765675304');
insert into DIRECTOR values ('d4','rajamouli', '9651232245');


insert into MOVIES values ('m1','iron Man-1', 1990, 'english','d1');
insert into MOVIES values ('m2','munna', 1998, 'telugu','d3');
insert into MOVIES values ('m3','iron Man-2', 2001, 'english','d2');
insert into MOVIES values ('m4','arasu', 2007, 'kannada','d3');
insert into MOVIES values ('m5','iron Man-3', 2016, 'english','d2');
insert into MOVIES values ('m6','bahubali-2', 2017, 'telugu','d4');

insert into MOVIE_CAST values ('a1', 'm1','hero');
insert into MOVIE_CAST values ('a5', 'm2', 'hero');
insert into MOVIE_CAST values ('a1', 'm3', 'hero');
insert into MOVIE_CAST values ('a2', 'm3', 'heroine');
insert into MOVIE_CAST values ('a2', 'm5', 'guest');
insert into MOVIE_CAST values ('a3', 'm4', 'hero');
insert into MOVIE_CAST values ('a4', 'm4', 'heroine');
insert into MOVIE_CAST values ('a1', 'm5', 'hero');
insert into MOVIE_CAST values ('a5', 'm6', 'hero');
insert into MOVIE_CAST values ('a6', 'm6', 'heroine');


insert into RATING values ('m1',8);
insert into RATING values ('m2',4);
insert into RATING values ('m3',6);
insert into RATING values ('m4',8);
insert into RATING values ('m5',7);
insert into RATING values ('m6',9);
insert into RATING values ('m2',9);
insert into RATING values ('m1',4);