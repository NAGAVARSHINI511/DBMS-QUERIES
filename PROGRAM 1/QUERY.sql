/*qUERY 1 : Retrieve details of all books in the library – id, title, name of publisher, authors, number of copies in each PROGRAMME, etc.*/

select b.book_id, b.title, b.publisher_name, a.author_name, c.no_of_copies, lb.programme_id
from BOOK b, BOOK_AUTHORS a, BOOK_COPIES c, LIBRARY_PROGRAMMEl b
where a.book_id = b.book_id 
     and b.book_id=c.book_id
           and c.programme_id=lb.programme_id;


--qUERY 2: Get the particulars of borrowers who have borrowed more than 3 books, but from Jan 2017 to Jun2017.

select card_no
from BOOK_LENDING
where date_out between '01-jan-2017' and '01-jul-2017' 
group by card_no having count (*)>3;

-- QUERY 3: Delete a book in BOOK table. Update the contents of other tables to reflect this data manipulation operation.

delete from BOOK where book_id='b4';

-- qUERY 4: Partition the BOOK table based on year of publication. Demonstrate its working with a simple query.

create view V_PUBLICATION as
select pub_year
from BOOK;

select * from V_PUBLICATION;


--QUERY 5: Create a view of all books and its number of copies that are currently available in the Library.

create view V_BOOKS as
select b.book_id, b.title, c.programme_id, c.no_of_copies
from BOOK b, BOOK_COPIES c, LIBRARY_PROGRAMME lb
where b.book_id=c.book_id and c.programme_id=lb.programme_id;

select * from V_BOOKS;
