--1. Make a list of all project numbers for projects that involve an employee whose last name is ‘Scott', either as a worker or as a manager of the department that controls the project.
( select p.Pno
from PROJECT p, DEPARTMENT d, EMPLOYEE e
where p.Dno=d.Dno and d.MgrSsn=e.Ssn and e.Lname='scott')
UNION
( select p1.Pno
from PROJECT p1, WORKS_ON w, EMPLOYEE e1
where p1.Pno=w.Pno and e1.Ssn=w.Ssn and e1.Lname='scott');

--query2:
 select p.Pno
from PROJECT p, DEPARTMENT d, EMPLOYEE e
where p.Dno=d.Dno and d.MgrSsn=e.Ssn and (e.Lname='scott' or
d.MgrSsn in( select ssn from employee where lname='scott')); 


--2. Show the resulting salaries if every employee working on the ‘IoT' project is given a 10 percent raise.
select e.Fname, e.Lname, 1.1*e.Salary as incr_sal
from EMPLOYEE e, WORKS_ON w, PROJECT p
where e.Ssn=w.Ssn and w.Pno=p.Pno and p.Pname='iot';



--3. Find the sum of the salaries of all employees of the ‘Accounts' department, as well as the maximum salary, the minimum salary, and the average salary in thisdepartment
select sum(e.Salary) as total_salary, max(e.Salary) as max_salary, min(e.Salary) as min_salary,
avg(e.Salary) as average_salary
from EMPLOYEE e, DEPARTMENT d
where e.Dno=d.Dno and d.dname='accounts';




--4. Retrieve the name of each employee who works on all the projects Controlled by department number 5 (use NOT EXISTS operator).

select e.fname, e.lname
from employee e
where NOT EXISTS((select Pno
from project
where Dno='5')
minus
(select Pno
from works_on
where e.Ssn=Ssn));

--5. For each department that has more than five employees, retrieve the department number and the number of its employees who are making more than Rs. 6,00,000.

select d.Dno, count (*)
from DEPARTMENT d, EMPLOYEE e
where d.Dno=e.Dno and e.Salary>600000 and d.Dno in (select e1.Dno
from EMPLOYEE e1
group by e1.Dno
having count (*)>5)
group by d.Dno;
