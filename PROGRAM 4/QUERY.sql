--1. List all the student details studying in fourth semester ‘C'section.
select s.*, ss.Sem, ss.Sec
from STUDENT s, SEMSEC ss, CLASS c
where s.Usn = c.Usn and ss.Ssid = c.Ssid and ss.Sem = 4 and ss.Sec='c';


--2. Compute the total number of male and female students in each semester and ineach section.
select ss.Sem, ss.Sec, s.Gender, count(s.Gender) as count
from STUDENT s, SEMSEC ss, CLASS c
where s.Usn = c.Usn and ss.Ssid = c.Ssid
group by ss.Sem, ss.Sec, s.Gender
order by Sem;

--3. Create a view of Test1 marks of student USN ‘1BI15CS101' in allsubjects.

create view Test1_view as
select Test1, Subcode
from IAMARKS
where Usn = '4al14is001';


--4. Calculate the FinalIA (average of best two test marks) and update the corresponding table for all students.

create or replace procedure AVGMARKS is cursor c_iamarks is
select greatest(Test1,Test2) as a, greatest(Test1,Test3) as b, greatest(Test3,Test2) as c
from IAMARKS
where Finalia is null for update;
c_a number; c_b number; c_c number; c_sm number; c_av number;
begin
openc_iamarks;
loop
fetchc_iamarks into c_a, c_b, c_c;
exit when c_iamarks%notfound; 
if (c_a != c_b) then
c_sm:=c_a+c_b;
else
c_sm:=c_a+c_c; end if;
c_av:=c_sm/2;
update IAMARKS set Finalia=c_av where current of c_iamarks; end loop;
closec_iamarks; end;
/


--Categorize students based on the following criterion:
--If FinalIA = 17 to 20 then CAT = ‘Outstanding'
--If FinalIA = 12 to 16 then CAT = ‘Average'
--If FinalIA< 12 then CAT = ‘Weak'
--Give these details only for 8thsemester A, B, and C section students.

Select s.Usn, s.Sname, s.Address, s.Phone, s.Gender, (
case when ia.finalia between 17 and 20 then 'outstanding'
when ia.finalia between 12 and 16 then 'average'
else 'weak'
end)
as cat
from STUDENT s, SEMSEC ss, IAMARKS ia, SUBJECT sub
where s.Usn = ia.Usn and ss.Ssid = ia.Ssid and sub.Subcode = ia.Subcode and sub.Sem = 8;