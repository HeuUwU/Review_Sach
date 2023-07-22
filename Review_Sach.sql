
-------------------------------------------------------------------------------------------------------------------
/*Bảng lưu tài khoản*/
CREATE TABLE [dbo].[Accounts](
	[AccountID] [int] IDENTITY(1,1) NOT NULL,
	[Email] [varchar](50) NULL,
	[Password] [varchar](50) NULL,
	[CustomerID] [int] NULL,
	[EmployeeID] [int] NULL,
	[Role] [int] NULL,
 CONSTRAINT [PK_Accounts] PRIMARY KEY CLUSTERED 
(
	[AccountID] ASC
)
)
-------------------------------------------------------------------------------------------------------------------
/*Bảng lưu người dùng*/
CREATE TABLE [dbo].[Customers](
	[CustomerID] [int] IDENTITY(1,1) NOT NULL,
	[LastName] [nvarchar](40) NOT NULL,
	[FirstName] [nvarchar](30) NULL,
	[Phone] [nvarchar](11) NULL,
	[BirthDate] [datetime] NULL,
	[Address] [nvarchar](60) NULL,
	[Status] [bit] NULL,
CONSTRAINT [PK_Customers] PRIMARY KEY CLUSTERED 
(
	[CustomerID] ASC
)
)

-------------------------------------------------------------------------------------------------------------------
/*Bảng lưu admin*/
CREATE TABLE [dbo].[Employees](
	[EmployeeID] [int] IDENTITY(1,1) NOT NULL,
	[LastName] [nvarchar](50) NOT NULL,
	[FirstName] [nvarchar](10) NOT NULL,
	[Phone] [nvarchar](11) NULL,
	[BirthDate] [datetime] NULL,
	[Address] [nvarchar](60) NULL,
CONSTRAINT [PK_Employees] PRIMARY KEY CLUSTERED 
(
	[EmployeeID] ASC
)
)

-------------------------------------------------------------------------------------------------------------------
/*Bảng lưu comment*/
CREATE TABLE [dbo].[Comment](
	[CommentId] [int] IDENTITY(1,1) NOT NULL,
	[Content] [text] NOT NULL,
	[ProductId] [int] NOT NULL,
	[CustomerId] [int] NOT NULL,
	[Rating] [int] NULL,
	[EmployeeID] [int] NULL,
	CONSTRAINT [PK_Comment] PRIMARY KEY CLUSTERED 

(
	[CommentId] ASC
) 
)

-------------------------------------------------------------------------------------------------------------------
/*Bảng lưu sách*/
CREATE TABLE [dbo].[Products](
	[ProductID] [int] IDENTITY(1,1) NOT NULL,
	[ProductName] [nvarchar](max) NOT NULL,
	[ProductDescription] [nvarchar](max) NOT NULL,
	[CategoryID] [int] NULL,
	[image] [nvarchar](max) NULL,
	[EmployeeId] [int] NOT NULL,
	[Views] [int] NULL,
CONSTRAINT [PK__Products__B40CC6ED2F4CE389] PRIMARY KEY CLUSTERED 
(
	[ProductID] ASC
)
)

-------------------------------------------------------------------------------------------------------------------
/*Bảng phân loại sách*/
CREATE TABLE [dbo].[Categories](
	[CategoryID] [int] IDENTITY(1,1) NOT NULL,
	[CategoryName] [nvarchar](50) NOT NULL,
CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED 
(
	[CategoryID] ASC
)
)

-------------------------------------------------------------------------------------------------------------------

--Nối bảng product với bảng category
ALTER TABLE [dbo].[Products]
ADD CONSTRAINT FK_Products_Categories
FOREIGN KEY (CategoryID)
REFERENCES [dbo].[Categories] (CategoryID);

--Nối bảng accounts với bảng customers
ALTER TABLE [dbo].[Accounts]
ADD CONSTRAINT FK_Accounts_Customers
FOREIGN KEY (CustomerID)
REFERENCES [dbo].[Customers] (CustomerID);

--Nối bảng accounts với bảng Employees
ALTER TABLE [dbo].[Accounts]
ADD CONSTRAINT FK_Accounts_Employees
FOREIGN KEY ([EmployeeID])
REFERENCES [dbo].[Employees] ([EmployeeID]);

--Nối bảng comment với  bảng customer
ALTER TABLE [dbo].[Comment]
ADD CONSTRAINT FK_Comment_Customers
FOREIGN KEY ([CustomerID])
REFERENCES [dbo].[Customers] ([CustomerID]);

--Nối bảng comment với bảng Employees
ALTER TABLE [dbo].[Comment]
ADD CONSTRAINT FK_Comment_Employees
FOREIGN KEY ([EmployeeID])
REFERENCES [dbo].[Employees] ([EmployeeID]);

--Nối bảng products với bảng employees
ALTER TABLE [dbo].[Products]
ADD CONSTRAINT FK_Products_Employees
FOREIGN KEY ([EmployeeID])
REFERENCES [dbo].[Employees] ([EmployeeID]);

-------------------------------------------------------------------------------------------------------
--Thêm data vào bảng Employees
INSERT INTO [dbo].[Employees] ([LastName], [FirstName], [Phone], [BirthDate], [Address])
VALUES ('Nguyen', 'Trung Hieu', '0365551401', '2002-01-14', 'Nam Dinh')
-------------------------------------------------------------------------------------------------------
--Thêm data vào bảng Customers
INSERT INTO [dbo].[Customers] ([LastName], [FirstName], [Phone], [BirthDate], [Address], [Status])
VALUES ('Smith', 'John', '1234567890', '1990-01-01', '123 Main Street', 1)
INSERT INTO [dbo].[Customers] ([LastName], [FirstName], [Phone], [BirthDate], [Address], [Status])
VALUES ('Major', 'Lazer', '0123456789', '1990-02-01', '1234 Main Street', 1)
INSERT INTO [dbo].[Customers] ([LastName], [FirstName], [Phone], [BirthDate], [Address], [Status])
VALUES ('White', 'Tim', '1267890498', '1990-03-01', '12345 Main Street', 1)
-------------------------------------------------------------------------------------------------------
--Thêm data vào bảng Accounts
INSERT INTO [dbo].[Accounts] ([Email], [Password], [CustomerID], [EmployeeID], [Role])
VALUES ('Keto1412002@gmail.com', '141', NULL, 1, 2)
INSERT INTO [dbo].[Accounts] ([Email], [Password], [CustomerID], [EmployeeID], [Role])
VALUES ('john@gmail.com', '123', 1, NULL, 1)
INSERT INTO [dbo].[Accounts] ([Email], [Password], [CustomerID], [EmployeeID], [Role])
VALUES ('Lazer@gmail.com', '123', 2, NULL, 1)
INSERT INTO [dbo].[Accounts] ([Email], [Password], [CustomerID], [EmployeeID], [Role])
VALUES ('a@gmail.com', '123', 3, NULL, 1)
-------------------------------------------------------------------------------------------------------
--Thêm data vào bảng Categories
INSERT INTO [dbo].[Categories] ([CategoryName])
VALUES ('Fiction'),
       ('Children'),
       ('Science'),
       ('History')
-------------------------------------------------------------------------------------------------------
--Thêm data vào bảng Products
INSERT INTO [dbo].[Products] ([ProductName], [ProductDescription], [CategoryID], [image], [EmployeeId], [Views])
VALUES	('Book Review "Georges Key to the Universe"', 'Georges Key to the Universe is a science book that genius physicist Stephen Hawking and his first daughter wrote for children. The book integrates the most basic knowledge about the universe around us into the everyday life story of a boy passionate about science George. One day by chance, he meets mysterious and interesting neighbors who work at the US Space Agency - NASA and the magical Cosmos computer that can take him to space. From here, Georges life completely changed about the new knowledge he came to know. Stephen Hawking is considered the greatest physicist alive. He is the author of two popular books on the universe A Brief History of Time and The Universe in a Chestnut Shell. Hawking suffered from a motor neuron disease from a young age that caused his body to shrink and become paralyzed, even losing the ability to speak. Lucy Hawking is the daughter of Stephen Hawking and his first wife Jane. She is a famous writer and journalist who has written for leading magazines such as Daily Mail, The Telegraph, The Guardian... Georges Keys to the Universe is the first volume in a series of childrens space books by father and son Hawking. Subsequent volumes that have been published are Alien Masked, George and the Big Bang, George and the Unbreakable Code and George and the Blue Moon. The book includes many NASA space photos and simple, easy-to-understand illustrations by artist Christophe Galfard.', 3, 'image1.jpg', 1, 100),
		('"Sapiens - A Brief History of Humankind": The Book of Decoding Human History', 'This book begins by presenting history as the next stage in the continuum from physics to chemistry, and then biological Sapiens are subjected to physical influences, chemical reactions, and natural selection. the same nature that governs all living things. But at the dawn of the 21st century, this is no longer the case: Homo Sapiens is pushing these limits. Now they are starting to break the laws of natural selection, replacing them with clever designs.', 4, 'image2.jpg', 1, 50),
		('Book Review: Harry Potter and the Sorcerers Stone', 'This book is full of fantasies and imagination like at one point, Harry Potter is asked to catch a flying golden ball while flying on his broomstick. Eventually Harry Potter stands on his broomstick and tries to reach for the ball, but he falls off the broomstick in a very tense moment. He unexpectedly throws up the golden ball winning the game for his team. Harry Potter and a sorcerer stone is a good book to spark joy and imagination for anyone, regardless of age. But I would say it is most enjoyable for elementary school students, who can very well relate to the fantasy world. So I would say that it is a must read for younger audiences, but it’s a good read in general.', 1, 'image3.jpg', 1, 175),
		('Book Review: The Great Gatsby', 'This book is a classic piece of literature that takes place in the 1920s. It explores themes of wealth, love, and the American Dream. The protagonist, Jay Gatsby, throws extravagant parties in hopes of winning back the love of his life.', 2, 'image4.jpg', 1, 19),
		('Book Review: To Kill a Mockingbird', 'Set in the 1930s, this book addresses issues of racial inequality and injustice. It follows the story of Scout Finch, a young girl growing up in a small Southern town, as she learns about compassion, empathy, and the importance of standing up for what is right.', 3, 'image5.jpg', 1, 150),
		('Book Review: Pride and Prejudice', 'A classic romance novel written by Jane Austen. It tells the story of Elizabeth Bennet and her complicated relationship with the wealthy Mr. Darcy. Filled with witty dialogue and social commentary, this book has stood the test of time.', 1, 'image6.jpg', 1, 169),
		('Book Review: The Catcher in the Rye', 'A coming-of-age novel written by J.D. Salinger. It follows the story of Holden Caulfield, a disillusioned teenager navigating his way through the complexities of life, identity, and adulthood.', 4, 'image7.jpg', 1, 149),
		('Book Review: 1984', 'A dystopian novel written by George Orwell. It portrays a totalitarian society where individuality and independent thinking are suppressed. The protagonist, Winston Smith, rebels against the oppressive regime in a fight for freedom and truth.', 5, 'image8.jpg', 1, 199),
		('Book Review: The Lord of the Rings', 'An epic fantasy trilogy written by J.R.R. Tolkien. It takes readers on a journey through Middle-earth, following the quest to destroy the powerful One Ring. Filled with rich world-building, memorable characters, and epic battles.', 3, 'image9.jpg', 1, 299),
		('Book Review: The Hobbit', 'A fantasy novel written by J.R.R. Tolkien. It serves as a prequel to The Lord of the Rings and follows the adventure of Bilbo Baggins as he embarks on a quest with a group of dwarves to reclaim their homeland from a fearsome dragon.', 1, 'image10.jpg', 1, 152);
INSERT INTO [dbo].[Products] ([ProductName], [ProductDescription], [CategoryID], [image], [EmployeeId], [Views])
VALUES	('Book Review: The Great Gatsby', 'This book is a classic piece of literature that takes place in the 1920s. It explores themes of wealth, love, and the American Dream. The protagonist, Jay Gatsby, throws extravagant parties in hopes of winning back the love of his life.', 1, 'image4.jpg', 1, 19),
		('Book Review: To Kill a Mockingbird', 'Set in the 1930s, this book addresses issues of racial inequality and injustice. It follows the story of Scout Finch, a young girl growing up in a small Southern town, as she learns about compassion, empathy, and the importance of standing up for what is right.', 2, 'image5.jpg', 1, 150),
		('Book Review: Pride and Prejudice', 'A classic romance novel written by Jane Austen. It tells the story of Elizabeth Bennet and her complicated relationship with the wealthy Mr. Darcy. Filled with witty dialogue and social commentary, this book has stood the test of time.', 1, 'image6.jpg', 1, 169),
		('Book Review: The Catcher in the Rye', 'A coming-of-age novel written by J.D. Salinger. It follows the story of Holden Caulfield, a disillusioned teenager navigating his way through the complexities of life, identity, and adulthood.', 4, 'image7.jpg', 1, 149),
		('Book Review: 1984', 'A dystopian novel written by George Orwell. It portrays a totalitarian society where individuality and independent thinking are suppressed. The protagonist, Winston Smith, rebels against the oppressive regime in a fight for freedom and truth.', 3, 'image8.jpg', 1, 519),
		('Book Review: The Lord of the Rings', 'An epic fantasy trilogy written by J.R.R. Tolkien. It takes readers on a journey through Middle-earth, following the quest to destroy the powerful One Ring. Filled with rich world-building, memorable characters, and epic battles.', 3, 'image9.jpg', 1, 299),
		('Book Review: The Hobbit', 'A fantasy novel written by J.R.R. Tolkien. It serves as a prequel to The Lord of the Rings and follows the adventure of Bilbo Baggins as he embarks on a quest with a group of dwarves to reclaim their homeland from a fearsome dragon.', 1, 'image10.jpg', 1, 152);
-------------------------------------------------------------------------------------------------------
--Thêm data vào bảng Comment
-------------------------------------------------------------------------------------------------------
--Thêm data vào bảng Comment
INSERT INTO [dbo].[Comment] ([Content], [ProductId], [CustomerId], [Rating], [EmployeeID])
VALUES ('This book is great!', 1, 1, 5, NULL)
INSERT INTO [dbo].[Comment] ([Content], [ProductId], [CustomerId], [Rating], [EmployeeID])
VALUES
    ('This book is great!', 3, 2, 5, NULL),
    ('I love this product!', 3, 2, 4, NULL),
    ('Highly recommended!', 3, 3, 5, NULL),
    ('Another comment', 4, 1, 3, NULL),
    ('Great value for money', 4, 1, 4, NULL),
    ('Excellent customer service', 5, 1, 5, NULL),
    ('Not satisfied with the quality', 16, 1, 2, NULL),
    ('Average product', 17, 2, 3, NULL),
    ('Quick delivery', 17, 3, 4, NULL),
    ('Impressive features', 11, 1, 5, NULL);
INSERT INTO [dbo].[Comment] ([Content], [ProductId], [CustomerId], [Rating], [EmployeeID])
VALUES
    ('This book is amazing!', 11, 1, 5, NULL),
    ('Great product for the price', 11, 1, 4, NULL),
    ('Impressed by the quality', 12, 2, 4, NULL),
    ('Not what I expected', 12, 2, 2, NULL),
    ('Fast and reliable shipping', 13, 3, 5, NULL),
    ('Good value for the money', 13, 3, 4, NULL),
    ('Highly disappointed with the service', 14, 1, 1, NULL),
    ('Average performance', 14, 1, 3, NULL),
    ('Excellent product!', 15, 2, 5, NULL),
    ('Could be better', 15, 2, 3, NULL);

