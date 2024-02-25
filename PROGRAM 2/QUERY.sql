-- 1. Count the customers with grades above Bangalore'saverage.

select Grade, COUNT (distinct Customer_id) as Total_Customers
from CUSTOMER
group by Grade
having Grade > (select AVG(Grade)
from CUSTOMER
where City='bangalore');



-- 2. Find the name and numbers of all salesmen who had more than one customer.

select s.Salesman_id, s.Name
from SALESMAN s
where (select COUNT (*)
from CUSTOMER c
where c.Salesman_id=s.Salesman_id) > 1;



-- 3. List all salesmen and indicate those who have and don't have customers in their cities (Use UNION operation.)

(select a.Salesman_id, a.Name, b.Cust_name, a.Commission, a.City
from SALESMAN a, CUSTOMER b
where a.City = b.City)
UNION
(select Salesman_id, Name, 'No Match', Commission, City
from SALESMAN
where NOT City = ANY (select City
from CUSTOMER))
ORDER BY 2 DESC;



-- 4. Create a view that finds the salesman who has the customer with the highest order of a day.
-- (NOTE: Execute Query-1 to create a view. Then execute Query-2 to display that on SQL Command Line console.)
-- SUB Query-1:

create view TOPSALESMAN as
select b.Ord_date, b.Purchase_amt, a.Salesman_id, a.Name
from SALESMAN a, ORDERS b
where a.Salesman_id = b.Salesman_id and b.Purchase_amt=(select MAX(c.Purchase_amt)
from ORDERS c
where b.Ord_date = c.Ord_date) ;

-- SUB Query-2:
select * from TOPSALESMAN;




-- 5. Demonstrate the DELETE operation by removing salesman with id 1000. All his orders must also bedeleted.

delete from SALESMAN
where Salesman_Id=1000;