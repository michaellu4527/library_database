create database dBLibrary
GO

use dbLibrary
GO

/*Book Authors table*/
create table Book_Authors
(
	Book_id int PRIMARY KEY NOT NULL,
	AuthorName varchar(40) NOT NULL
)

/*Inserting Authors*/
INSERT INTO Book_Authors
values (1, 'Stephen King'),
		(2, 'Harper Lee'),
		(3, 'Mary Shelley'),
		(4, 'Maya Angelou'),
		(5, 'Robert Bach'),

		(6, 'Paul Auster'),
		(7, 'Oscar Wilde'),
		(8, 'Virginia Woolf'),
		(9, 'William Golding'),
		(10, 'George Orwell'),

		(11, 'George Orwell'),
		(12, 'Ray Bradbury'),
		(13, 'William Golding'),
		(14, 'Stephen King'),
		(15, 'Oscar Wilde'),

		(16, 'Stephen King'),
		(17, 'Harper Lee'),
		(18, 'George Orwell'),
		(19, 'Mary Shelley'),
		(20, 'Maya Angelou')


/*Book table*/
create table Book
(
	Book_id int PRIMARY KEY NOT NULL,
	Title varchar(50) NOT NULL,
	PublisherName varchar(40) NOT NULL	
)

INSERT INTO Book
values (1, 'The Lost Tribe', 'Smith Inc.'),
		(2, 'To Kill a Mockingbird', 'Arcadia Publishing'),
		(3, 'Frankenstein', 'Baren Books'),
		(4, 'Seven Feet Under', 'Grafton Press'),
		(5, 'Steamrolling 101', 'Focal Press'),

		(6, 'SSD vs SSHDs', 'Happy House USA'),
		(7, 'Ocean Currents', 'Legend Books'),
		(8, 'World Domination', 'Mandrake Press'),
		(9, 'Julius Caesar', 'Mandrake Press'),
		(10, '1969', 'Goodman Publishing'),

		(11, 'Animal Farm', 'Legend Books'),
		(12, 'Fahrenheit 451', 'Grafton Press'),
		(13, 'Quantum Strata', 'Focal Press'),
		(14, 'Fresh Grapes of Wrath', 'Baren Books'),
		(15, 'Banking in a Day', 'Mandrake Press'),

		(16, 'Lord of the Pies', 'Arcadia Publishing'),
		(17, 'The Art of Fish', 'Happy House USA'),
		(18, 'The Insiders', 'Smith Inc.'),
		(19, 'Anaconda', 'Smith Inc.'),
		(20, 'The Special Olive', 'Goodman Publishing')

/*Publisher Table*/
create table Publisher
(
	Publisher_id int PRIMARY KEY,
	PublisherName varchar(40),  
	[Address] varchar(75) NOT NULL,
	Phone varchar(25) NOT NULL	
)

INSERT INTO Publisher
values (1, 'Smith Inc.', '3429 SW Harrison Blvd', '555-987-8742'),
		(2, 'Arcadia Publishing', '9874 E La Camina Dr', '981-920-0459'),
		(3, 'Baren Books', '3525 SE Rhine Rd', '732-043-5691'),
		(4, 'Grafton Press', '7846 W Pegasus Pkwy', '413-582-8888'),
		(5, 'Focal Press', '5272 NE Gusty Ct', '841-777-9322'),

		(6, 'Happy House USA', '8205 N Good Pl', '752-912-9000'),
		(7, 'Legend Books', '4691 SE Jania St', '800-922-2111'),
		(8, 'Mandrake Press', '0987 Pom W Pkwy', '923-672-0000' ),
		(9, 'Mandrake Press', '0987 Pom W Pkwy', '923-672-0000'),
		(10, 'Goodman Publishing', '5312 W Tammy Cir', '416-666-2123'),

		(11, 'Legend Books', '4691 SE Jania St', '800-922-2111'),
		(12, 'Grafton Press', '7846 W Pegasus Pkwy', '413-582-8888'),
		(13, 'Focal Press', '5272 NE Gusty Ct', '841-777-9322'),
		(14, 'Baren Books', '3525 SE Rhine Rd', '732-043-5691'),
		(15, 'Mandrake Press', '0987 Pom W Pkwy', '923-672-0000'),

		(16, 'Arcadia Publishing', '9874 E La Camina Dr', '981-920-0459'),
		(17, 'Happy House USA', '8205 N Good Pl', '752-912-9000'),
		(18, 'Smith Inc.', '3429 SW Harrison Blvd', '555-987-8742'),
		(19, 'Smith Inc.', '3429 SW Harrison Blvd', '555-987-8742'),
		(20, 'Goodman Publishing', '5312 W Tammy Cir', '416-666-2123')

/*Book_Copies*/
create table Book_Copies
(
	Book_number int PRIMARY KEY,
	Book_id int NOT NULL,
	Branch_id int NOT NULL,
	No_of_copies int 	
)

/*Don't need to have all book titles here!*/
INSERT INTO Book_Copies
values (1, 3, 4),
		(2, 3, 2),
		(3, 2, 3),
		(4, 1, 7),
		(5, 4, 9),

		(6, 4, 3),
		(7, 1, 6),
		(8, 1, 8),
		(9, 3, 3),
		(10, 2, 4),

		(11, 5, 7),
		(12, 5, 10),
		(13, 2, 2),
		(14, 4, 6),
		(15, 6, 8),

		(16, 1, 12),
		(17, 2, 9),
		(18, 6, 5),
		(19, 1, 11),
		(20, 5, 2)

/*Book_Loans*/
create table Book_Loans
(
	Book_id int PRIMARY KEY NOT NULL,
	Branch_id int NOT NULL,
	CardNo varchar(25) NOT NULL,
	DateOut varchar(25) NOT NULL,
	DueDate varchar(25) NOT NULL
)

INSERT INTO Book_Loans
values  (1, 3, '1927463332', '10/4/2015', '10/18/2015'),
		(2, 3, '2738222108'),
		(3, 2, '3722918477'),
		(4, 1, '8437438841'),
		(5, 4, '9483871916'),

		(6, 4, '1927463332', '10/4/2015', '10/18/2015'),
		(7, 1, '1927463332'),
		(8, 1, '1927463332'),
		(9, 3, '3722918477'),
		(10, 2, '482018222'),

		(11, 5, '482018222'),
		(12, 5, '1927463332'),
		(13, 2, '7621112334'),
		(14, 4, '482018222'),
		(15, 6, '3722918477'),

		(16, 1, '7788892221'),
		(17, 2, '3722918477'),
		(18, 6, '8437438841'),
		(19, 1, '3722918477'),
		(20, 5, '5555111893')

/*Library Branch Table*/
create table Library_Branch
(
	Branch_id int PRIMARY KEY NOT NULL,
	BranchName varchar(40) NOT NULL,
	[Address] varchar(75) NOT NULL
)


/*Borrower Table*/
create table Borrower
(
	CardNo int PRIMARY KEY NOT NULL,
	Name varchar(40) NOT NULL,
	[Address] varchar(75) NOT NULL,
	Phone varchar(25) NOT NULL
)

select * 
from Book_Authors as ba INNER JOIN Book as b
ON ba.Book_id = b.Book_id