/*Question 1*/

select b.Title, lb.BranchName, bc.No_of_copies
from Book_Copies as bc INNER JOIN Book as b
ON b.Book_id = bc.Book_id

INNER JOIN Library_Branch as lb						/*Syntax for using 2 joins*/
ON bc.Branch_id = lb.Branch_id
where b.Book_id = 1 AND bc.Branch_id = 1


/*Question 2*/

select b.Title, lb.BranchName, bc.No_of_copies
from Book_Copies as bc INNER JOIN Book as b
ON b.Book_id = bc.Book_id

INNER JOIN Library_Branch as lb					
ON bc.Branch_id = lb.Branch_id
where b.Book_id = 1


/*Question 3*/

select b.Name 
from Borrower as b LEFT OUTER JOIN Book_Loans as bl
ON b.CardNo = bl.CardNo
where bl.CardNo IS NULL				/*Checks to see which entries of join are NOT in Book_loans*/


/*Question 4*/

select br.Name, br.[Address], b.Title, lb.BranchName, bl.DueDate 
from Book_Loans as bl INNER JOIN Library_Branch as lb
ON lb.Branch_id = bl.Branch_id

INNER JOIN Book as b
ON bl.Book_id = b.Book_id

INNER JOIN Borrower as br
ON br.CardNo = bl.CardNo
where bl.DueDate = '11/18/2016' AND lb.Branch_id = 1


/*Question 5*/

select lb.BranchName, bc.No_of_copies, count(*) as total_no_of_copies 
from Book_Copies as bc INNER JOIN Library_Branch as lb
ON lb.Branch_id = bc.Branch_id
GROUP BY lb.BranchName, bc.No_of_copies


/*Question 6*/

select b.Name, b.CardNo, b.[Address], count(*) as books_checked_out
from Borrower as b INNER JOIN Book_Loans as bl
ON b.CardNo = bl.CardNo
GROUP BY b.CardNo, b.Name, b.[Address] 
HAVING count(*)>5


/*Question 7*/

select b.Title, ba.AuthorName, lb.BranchName, bc.No_of_copies 
from Book_Copies as bc INNER JOIN Book as b
ON b.Book_id = bc.Book_id

INNER JOIN Book_Authors as ba
ON ba.Book_id = b.Book_id

INNER JOIN Library_Branch as lb
ON bc.Branch_id = lb.Branch_id
where ba.AuthorName = 'Stephen King' AND bc.Branch_id = 2


/*Stored Procedure for alternate version of question 7*/
alter proc GetBookAvailability @Author varchar(40), @Branch int
AS
	select * 
	from Book_Authors as ba INNER JOIN Book_Copies as bc
	ON ba.Book_id = bc.Book_id
	where ba.AuthorName LIKE @Author + '%' AND bc.Branch_id = @Branch 

EXEC GetBookAvailability 'm', 2

