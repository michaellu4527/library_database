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
		(20, 'Oliver Twist')


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
		(7, 'Lui Homes', 'Legend Books'),
		(8, 'World Domination', 'Mandrake Press'),
		(9, 'The Art of DMS', 'Mandrake Press'),
		(10, '1984', 'Goodman Publishing'),

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

/*Inserting Book Titles by branch*/
INSERT INTO Book_Copies
values (1, 1, 1, 4),
		(2, 5, 1, 2),
		(3, 8, 1, 5),
		(4, 11, 1, 2),
		(5, 20, 1, 8),

		(6, 12, 1, 20),
		(7, 13, 1, 9),
		(8, 9, 1, 2),
		(9, 16, 1, 8),
		(10, 14, 1, 11),

		/*Branch 2*/
		(11, 2, 2, 3),
		(12, 3, 2, 2),
		(13, 4, 2, 9),
		(14, 1, 2, 22),
		(15, 5, 2, 3),

		(16, 6, 2, 8),
		(17, 7, 2, 9),
		(18, 10, 2, 5),
		(19, 12, 2, 6),
		(20, 13, 2, 15),

		/*Branch 3*/
		(21, 17, 3, 4),
		(22, 18, 3, 2),
		(23, 19, 3, 9),
		(24, 20, 3, 40),
		(25, 5, 3, 4),

		(26, 4, 3, 15),
		(27, 10, 3, 19),
		(28, 1, 3, 21),
		(29, 16, 3, 7),
		(30, 2, 3, 15),

		/*Branch 4*/
		(31, 2, 4, 3),
		(32, 9, 4, 2),
		(33, 5, 4, 11),
		(34, 15, 4, 9),
		(35, 8, 4, 6),

		(36, 7, 4, 4),
		(37, 16, 4, 18),
		(38, 14, 4, 12),
		(39, 4, 4, 7),
		(40, 1, 4, 15)

/* Creating Book_Loans table*/
create table Book_Loans
(
	Loan_id int PRIMARY KEY,
	Book_id int NOT NULL,
	Branch_id int NOT NULL,
	CardNo varchar(25) NOT NULL,
	DateOut varchar(25) NOT NULL,
	DueDate varchar(25) NOT NULL
)

/*Adding loans*/
INSERT INTO Book_Loans
values  (1, 8, 1, '1927463332', '10/4/2016', '10/18/2016'),
		(2, 5, 1, '9383220100', '11/4/2016', '11/18/2016'),
		(3, 1, 1, '5555331112', '11/1/2016', '11/15/2016'),
		(4, 4, 1, '4209000033', '11/4/2016', '11/18/2016'),
		(5, 11, 1, '8290003288', '11/4/2016', '11/18/2016'),


		(6, 6, 1, '7472291932', '11/20/2016', '12/4/2016'),
		(7, 2, 1, '4209000033', '10/4/2015', '10/18/2015'),
		(8, 2, 2, '5555331112', '11/4/2016', '11/18/2016'),
		(9, 4, 2, '5555331112', '11/4/2016', '11/18/2016'),
		(10, 15, 2, '6444932018', '10/4/2015', '10/18/2015'),


		(11, 5, 2, '7472291932', '10/4/2015', '10/18/2015'),
		(12, 6, 2, '3232211333', '11/4/2016', '11/18/2016'),
		(13, 7, 2, '4209000033', '10/4/2015', '10/18/2015'),
		(14, 10, 2, '5555331112', '10/4/2015', '10/18/2015'),
		(15, 12, 2, '7472291932', '11/20/2016', '12/4/2016'),


		(16, 17, 3, '9383220100', '11/20/2016', '12/4/2016'),
		(17, 5, 3, '1927463332', '11/4/2016', '11/18/2016'),
		(18, 4, 3, '1927463332', '10/4/2015', '10/18/2015'),
		(19, 18, 3, '1927463332', '10/4/2015', '10/18/2015'),
		(20, 19, 3, '3232211333', '10/4/2015', '10/18/2015'),


		(21, 20, 3, '9383220100', '09/1/2016', '09/15/2016'),
		(22, 10, 3, '1927463332', '10/4/2015', '10/18/2015'),
		(23, 16, 3, '4209000033', '10/4/2015', '10/18/2015'),
		(24, 1, 3, '5555331112', '10/4/2015', '10/18/2015'),
		(25, 2, 3, '1927463332', '11/20/2016', '12/4/2016'),


		(26, 20, 3, '8290003288', '10/4/2015', '10/18/2015'),
		(27, 16, 3, '8290003288', '11/4/2016', '11/18/2016'),
		(28, 20, 3, '3232211333', '11/4/2016', '11/18/2016'),
		(29, 4, 3, '9383220100', '09/1/2016', '09/15/2016'),
		(30, 4, 3, '3232211333', '11/20/2016', '12/4/2016'),


		(31, 4, 3, '8290003288', '10/4/2015', '10/18/2015'),
		(32, 17, 3, '1927463332', '10/4/2015', '10/18/2015'),
		(33, 20, 3, '1927463332', '10/4/2015', '10/18/2015'),
		(34, 5, 3, '9383220100', '10/4/2015', '10/18/2015'),
		(35, 19, 3, '1927463332', '11/4/2016', '11/18/2016'),


		(36, 5, 3, '3232211333', '10/4/2015', '10/18/2015'),
		(37, 2, 4, '3232211333', '09/1/2016', '09/15/2016'),
		(38, 9, 4, '9383220100', '10/4/2015', '10/18/2015'),
		(39, 5, 4, '1927463332', '09/1/2016', '09/15/2016'),
		(40, 15, 4, '6444932018', '10/4/2015', '10/18/2015'),


		(41, 8, 4, '1927463332', '10/4/2015', '10/18/2015'),
		(42, 7, 4, '1927463332', '10/4/2015', '10/18/2015'),
		(43, 16, 4, '1927463332', '09/1/2016', '09/15/2016'),
		(44, 14, 4, '7472291932', '10/4/2015', '10/18/2015'),
		(45, 4, 4, '1927463332', '09/1/2016', '09/15/2016'),


		(46, 1, 4, '1927463332', '10/4/2015', '10/18/2015'),
		(47, 2, 4, '7472291932', '09/1/2016', '09/15/2016'),
		(48, 9, 4, '6444932018', '10/4/2015', '10/18/2015'),
		(49, 16, 4, '6444932018', '11/20/2016', '12/4/2016'),
		(50, 5, 4, '1927463332', '11/20/2016', '12/4/2016')

/*Library Branch Table*/
create table Library_Branch
(
	Branch_id int PRIMARY KEY NOT NULL,
	BranchName varchar(40) NOT NULL,
	[Address] varchar(75) NOT NULL
)

/*Adding data to library branch table*/
INSERT INTO Library_Branch
values  (1, 'Sharpstown', '3214 NE Bullseye Rd'),
		(2, 'Central', '8392 SW Pardped Ave'),
		(3, 'Solar', '2019 W Quasar Way'),
		(4, 'Gallant', '9821 SE Pegasus Pkwy')

/*Borrower Table*/
create table Borrower
(
	Borrower_id int PRIMARY KEY,
	CardNo varchar(30) NOT NULL,
	Name varchar(40) NOT NULL,
	[Address] varchar(75) NOT NULL,
	Phone varchar(25) NOT NULL
)

/*Inserting Borrowers*/
INSERT INTO Borrower
values  (1, '1927463332', 'Lui Mircado', '984 E Azure Ave', '921-399-7329'),
		(2, '9383220100', 'Mayra Hermana', '555 NE Indigo Blvd', '201-283-8888'),
		(3, '5555331112', 'Michael Xu', '888 SE Nebula Ct', '778-829-8888'),
		(4, '4209000033', 'Aidan Jorsen', '764 NW Tammy Dr', '812-983-4362'),
		(5, '8290003288', 'Stephanie Yu', '8124 SE Trendsetter Vista Ave', '732-843-0928'),


		(6, '7472291932', 'Jak Drump', '188 Nowhere Ct', '321-920-0098'),
		(7, '6444932018', 'Donald Bannon', '444 Apocalypse Dr', '721-548-7636'),
		(8, '3232211333', 'Elise Tang', '201 Emblem Way', '429-923-0065'),
		(9, '5344522244', 'Oregon John', '9821 Stanley Cir', '871-723-2212'),
		(10, '2256267942', 'Grape Apple', '4234 Vineyard Dr', '222-881-4723')
		
