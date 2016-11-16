/*Question 1*/

select * 
from Book as b INNER JOIN Book_Copies as bc
ON b.Book_id = bc.Book_id
where b.Book_id = 1 AND bc.Branch_id = 1


/*Question 2*/

select * 
from Book as b INNER JOIN Book_Copies as bc
ON b.Book_id = bc.Book_id
where b.Book_id = 1


/*Question 3*/

select * 
from Borrower as b LEFT OUTER JOIN Book_Loans as bl
ON b.CardNo = bl.CardNo
where bl.CardNo IS NULL				/*Checks to see which entries of join are NOT in Book_loans*/


/*Question 4*/

select * 
from Library_Branch as lb INNER JOIN Book_Loans as bl
ON lb.Branch_id = bl.Branch_id
where bl.DueDate = '11/18/2016' AND lb.Branch_id = 1


/*Question 5*/

select * 
from Library_Branch as lb INNER JOIN Book_Copies as bc
ON lb.Branch_id = bc.Branch_id


/*Question 6*/

select b.CardNo, b.Name, b.[Address], count(*)
from Borrower as b INNER JOIN Book_Loans as bl
ON b.CardNo = bl.CardNo
GROUP BY b.CardNo
HAVING count(*)>5



/*Question 7*/

select * 
from Book_Authors as ba INNER JOIN Book_Copies as bc
ON ba.Book_id = bc.Book_id
where ba.AuthorName = 'Stephen King' AND bc.Branch_id = 2

