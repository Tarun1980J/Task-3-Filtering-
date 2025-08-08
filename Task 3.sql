select * from all_tables where owner = 'LIBRARYDB';

select * from CATEGORIES;
select * from AUTHORS;
select * from BOOKS;
select * from BOOKAUTHORS;
select * from MEMBERS;
select * from LOANS;

-- Where --
select * from categories
where categoryname like 'Fic%';

select * from authors
where name like '%a%';

SELECT * FROM Books
WHERE CategoryID = 4 AND YearPublished > 1800;

SELECT * FROM Members
WHERE joindate = '06-aug-2025';

SELECT * FROM Books
WHERE YearPublished BETWEEN 1800 AND 2010;

SELECT * FROM Books
WHERE CategoryID = 1;

SELECT * FROM Members
WHERE Fullname like 'T%' or fullname like 'R%';

SELECT * FROM authors
WHERE Name IN ('Isaac Newton', 'Dan Brown', 'George Orwell');

SELECT * FROM Books
WHERE CategoryID NOT IN (1, 5);

SELECT * FROM authors
WHERE Name not IN ('Isaac Newton', 'Dan Brown', 'George Orwell');

SELECT * FROM Members
WHERE Fullname not like 'T%' or fullname like 'R%';

SELECT * FROM Books
WHERE NOT (CategoryID = 1);

-- order by --
SELECT * FROM Books
ORDER BY YearPublished DESC;

SELECT FullName FROM Members
ORDER BY FullName;

SELECT * FROM Books
ORDER BY Title;

SELECT * FROM Members
ORDER BY Email;

-- limit --
select * 
from (select rownum rno, b.* 
        from (SELECT * FROM Books
        ORDER BY YearPublished DESC)b) 
where rno >= 2;

select * 
from (select rownum rno, b.* 
        from (SELECT * FROM Books
        ORDER BY YearPublished DESC)b) 
where rno = 2;

select * 
from (select rownum rno, b.* 
        from (SELECT * FROM Books
        ORDER BY YearPublished DESC)b) 
where rno <= 2;

---------------------
-- if you are using 12c and later --

SELECT * FROM Books
ORDER BY YearPublished DESC
OFFSET 5 ROWS FETCH FIRST 10 ROWS ONLY;

