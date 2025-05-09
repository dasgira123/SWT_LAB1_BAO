CREATE DATABASE FruitShop
GO

USE FruitShop
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[CategoryID] [int] NOT NULL,
	[CategoryName] [nvarchar](255) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[CategoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customers](
	[CustomerID] [int] IDENTITY(1,1) NOT NULL,
	[FullName] [nvarchar](255) NOT NULL,
	[Email] [nvarchar](255) NOT NULL,
	[PhoneNumber] [nvarchar](50) NOT NULL,
	[Username] [nvarchar](255) NOT NULL,
	[Password] [nvarchar](255) NOT NULL,
	[Address] [nvarchar](500) NOT NULL,
	[Role] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[CustomerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetails](
	[OrderID] [int] NOT NULL,
	[ProductID] [int] NOT NULL,
	[quantity] [int] NOT NULL,
	[price] [float] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[OrderID] ASC,
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[OrderID] [int] IDENTITY(1,1) NOT NULL,
	[CustomerID] [int] NOT NULL,
	[date] [date] NOT NULL,
	[totalmoney] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[OrderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[ProductID] [int] IDENTITY(1,1) NOT NULL,
	[ProductName] [nvarchar](255) NOT NULL,
	[CategoryID] [int] NOT NULL,
	[Description] [nvarchar](1000) NULL,
	[Price] [float] NOT NULL,
	[Image] [nvarchar](1000) NOT NULL,
	[Quantity] [int] NOT NULL,
	[isContinue] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Categories] ([CategoryID], [CategoryName]) VALUES (1, N'Fresh Fruit')
INSERT [dbo].[Categories] ([CategoryID], [CategoryName]) VALUES (2, N'Imported Fruit')
GO
SET IDENTITY_INSERT [dbo].[Customers] ON 

INSERT [dbo].[Customers] ([CustomerID], [FullName], [Email], [PhoneNumber], [Username], [Password], [Address], [Role]) VALUES (1, N'John Doe', N'johndoe@email.com', N'123-456-7890', N'johndoe123', N'password123', N'123 Main Street, City, Country', 0)
INSERT [dbo].[Customers] ([CustomerID], [FullName], [Email], [PhoneNumber], [Username], [Password], [Address], [Role]) VALUES (2, N'tung', N'janesmith@email.com', N'987-654-3210', N'tung', N'123', N'456 Elm Street, Town, Country', 1)
INSERT [dbo].[Customers] ([CustomerID], [FullName], [Email], [PhoneNumber], [Username], [Password], [Address], [Role]) VALUES (3, N'Alice Johnson', N'alice@email.com', N'555-123-7890', N'alicej', N'mysecret', N'789 Oak Avenue, Village, Country', 0)
INSERT [dbo].[Customers] ([CustomerID], [FullName], [Email], [PhoneNumber], [Username], [Password], [Address], [Role]) VALUES (4, N'Bob Brown', N'bobbrown@email.com', N'555-555-5555', N'bobbrown', N'letmein', N'555 Pine Road, Hamlet, Country', 0)
INSERT [dbo].[Customers] ([CustomerID], [FullName], [Email], [PhoneNumber], [Username], [Password], [Address], [Role]) VALUES (5, N'Eva Williams', N'evaw@email.com', N'888-888-8888', N'evaw', N'123', N'99 Nover Lane, Village, Country', 0)
INSERT [dbo].[Customers] ([CustomerID], [FullName], [Email], [PhoneNumber], [Username], [Password], [Address], [Role]) VALUES (6, N'admin', N'admin@email.com', N'666-654-3210', N'admin', N'123', N'456 Elm Street, Town, Country', 1)
INSERT [dbo].[Customers] ([CustomerID], [FullName], [Email], [PhoneNumber], [Username], [Password], [Address], [Role]) VALUES (7, N'user', N'admin@email.com', N'666', N'user', N'123', N'456 Elm Street, Town, Country', 0)
SET IDENTITY_INSERT [dbo].[Customers] OFF
GO
SET IDENTITY_INSERT [dbo].[Products] ON 

INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [Description], [Price], [Image], [Quantity], [isContinue]) VALUES (1, N'Orange', 1, N'Oranges are a nutritional powerhouse, 
packed with vitamins and minerals. The most noteworthy of 
these is vitamin C, a water-soluble 
antioxidant that prevents cell damage.', 120000, N'https://www.allrecipes.com/thmb/y_uvjwXWAuD6T0RxaS19jFvZyFU=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/GettyImages-1205638014-2000-d0fbf9170f2d43eeb046f56eec65319c.jpg', 10, 0)
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [Description], [Price], [Image], [Quantity], [isContinue]) VALUES (2, N'Blueberry', 1, N'Blueberries are often 
called a  superfood.  This small but mighty berry 
is loaded with nutrients . They may help lower blood 
pressure, prevent heart disease, improve memory, aid in e
xercise recovery, and more.', 130000, N'https://images-prod.healthline.com/hlcmsresource/images/AN_images/blueberries-1296x728-feature.jpg', 15, 0)
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [Description], [Price], [Image], [Quantity], [isContinue]) VALUES (3, N'Banana', 1, N'Bananas are best known for containing potassium, which is a big 
player in heart health. This vital mineral and electrolyte carries a 
small electrical charge, causing nerve cells to send out signals 
for your heart to beat regularly and muscles to contract. Foods with 
potassium help protect against hardening of the arteries (atherosclerosis) 
and high blood pressure. ', 250000, N'https://images.everydayhealth.com/images/diet-nutrition/all-about-bananas-nutrition-facts-health-benefits-recipes-and-more-rm-722x406.jpg', 5, 0)
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [Description], [Price], [Image], [Quantity], [isContinue]) VALUES (4, N'Apple', 1, N'Apples may lower your chance of developing cancer, 
diabetes, and heart disease. Research says apples may also help you lose
weight while improving your gut and brain health.', 200000, N'https://img.etimg.com/thumb/msid-94428377,width-1200,height-900,imgsize-82540,resizemode-8,quality-100/magazines/panache/apples-arent-what-they-used-to-be-commercialisation-has-made-the-fruit-almost-tasteless.jpg', 8, 0)
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [Description], [Price], [Image], [Quantity], [isContinue]) VALUES (5, N'Mango', 1, N'Mangoes are rich in vitamins, minerals, 
and other beneficial plant compounds. These nutrients may help 
protect against cell damage, 
improve sexual health, support immunity, and more.', 100000, N'https://post.medicalnewstoday.com/wp-content/uploads/sites/3/2022/01/mangoes_what_to_know_732x549_thumb-732x549.jpg', 20, 0)
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [Description], [Price], [Image], [Quantity], [isContinue]) VALUES (6, N'Strawberry', 1, N'Strawberries are very healthy, 
containing many antioxidants and vitamins. They re also low in calories, 
containing only about 32 calories per half a cup.', 250000, N'https://clv.h-cdn.co/assets/15/22/2560x1728/gallery-1432664914-strawberry-facts1.jpg', 12, 0)
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [Description], [Price], [Image], [Quantity], [isContinue]) VALUES (7, N'Mandarine', 1, N'Mandarins contains Vitamins A, B, 
and a high level of Vitamin C, a powerful antioxidant that 
neutralizes free radicals, prevents infections, cramps, and vomiting, 
and is great for the health of your skin.', 150000, N'https://img-3.journaldesfemmes.fr/jMsbStq2JjloEj0uFUt5sTOvbQg=/1500x/smart/24ddcaaaeee8489f92e77399ca69472b/ccmcms-jdf/35283582.jpg', 25, 0)
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [Description], [Price], [Image], [Quantity], [isContinue]) VALUES (8, N'Pear', 2, N'Pear provides around 100 calories. They can benefit 
more digestion, cholesterol levels, and overall wellbeing. As part of a 
balanced, nutritious diet, consuming pears could support weight loss and 
reduce  risk of cancer, diabetes, and heart disease.', 350000, N'https://www.health.com/thmb/lE6czhltdK7OsnjWv8QcsveJxkI=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/pears-9be62bfe42d14047a59efc9f7cde6023.jpg', 20, 0)
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [Description], [Price], [Image], [Quantity], [isContinue]) VALUES (9, N'Peach', 2, N'Peaches boast lots of potential health benefits, including improved digestion, a healthy heart, a strong immune system and improved allergy symptoms. Dietitian Maxine Smith, RDN, LD, explains why this fuzzy fruit is so peachy keen.', 340000, N'https://draxe.com/wp-content/uploads/2016/08/DrAxePeachFB.jpg', 22, 0)
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [Description], [Price], [Image], [Quantity], [isContinue]) VALUES (10, N'Watermelon', 2, N'Watermelon is a fresh, 
delicious, cool and very healthy fruit. One cup of watermelon 
juice contains only 46 calories but provides a lot of vitamin C, 
vitamin A and healthy plant compounds. Watermelon in addition to nutritional value, 
they are also cheap and easy to find, so it is suitable for regular addition to the 
menu of the whole family.', 400000, N'https://www.veggiefresh.co.nz/cdn/shop/products/when-to-harvest-watermelon-2539591-04-f7f99d3a73d846cb9d453f8a6f0cc7ee.jpg?v=1646199856', 15, 0)
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [Description], [Price], [Image], [Quantity], [isContinue]) VALUES (11, N'Cherry', 2, N'Cherries contain a number of beneficial nutrients, 
such as vitamin C and antioxidants. Some evidence suggests that they may also 
help lower inflammation, protect heart health, 
and improve sleep as part of a healthy diet.', 450000, N'https://hoaquafuji.com/storage/app/media/gia-cherry-tren-thi-truong-00.png', 11, 0)
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [Description], [Price], [Image], [Quantity], [isContinue]) VALUES (12, N'Grape', 2, N'Grades include helping 
boost heart health, preventing cancer, managing blood pressure,
and protecting the eyes.', 550000, N'https://www.thespruceeats.com/thmb/l1_lV7wgpqRArWBwpG3jzHih_e8=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/what-are-grapes-5193263-hero-01-80564d77b6534aa8bfc34f378556e513.jpg', 12, 0)
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [Description], [Price], [Image], [Quantity], [isContinue]) VALUES (13, N'Guava', 1, N'Guava is loaded with nutrients. Not only does it have more vitamin C than oranges, but guava is also rich in other antioxidants and has been shown to have a number of health benefits.', 300000, N'https://upload.wikimedia.org/wikipedia/commons/thumb/0/02/Guava_ID.jpg/1200px-Guava_ID.jpg', 22, 0)
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [Description], [Price], [Image], [Quantity], [isContinue]) VALUES (14, N'Custard Apple', 2, N'Custard apple is high in fibers, which helps digestion, 
prevents constipation, and detoxifies our body. It contains many antioxidants 
(flavonoids, phenolic compounds, kaurenoic acid, and vitamin C) that 
fight free radicals associated with chronic diseases, cancer, 
and heart disease. ', 320000, N'https://images.indianexpress.com/2023/06/sita-phal-fruit-health-benefits.jpg', 10, 0)
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [Description], [Price], [Image], [Quantity], [isContinue]) VALUES (15, N'Kiwi', 1, N'Kiwi helps to maintain a healthy blood pressure 
and providing a boost of Vitamin C, the kiwifruit can reduce the 
risk of stroke and heart disease. Beyond this, kiwi also contains a 
high level of dietary fiber. Fiber can reduce risk factors for heart 
disease by lowering LDL or bad cholesterol.', 400000, N'https://domf5oio6qrcr.cloudfront.net/medialibrary/6499/eac28f45-62cd-4e71-8d2d-8f9f0ba7088a.jpg', 22, 0)
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [Description], [Price], [Image], [Quantity], [isContinue]) VALUES (16, N'Durian ', 2, N'Durian include the ability to boost immune system, 
prevent cancer and inhibit free radical activity, improve digestion, strengthen bones, 
improve signs of anaemia, prevent premature aging, lower blood pressure, and 
protect against cardiovascular diseases.', 290000, N'https://cdn-assets-eu.frontify.com/s3/frontify-enterprise-files-eu/eyJvYXV0aCI6eyJjbGllbnRfaWQiOiJmcm9udGlmeS1maW5kZXIifSwicGF0aCI6ImloaC1oZWFsdGhjYXJlLWJlcmhhZFwvYWNjb3VudHNcL2MzXC80MDAwNjI0XC9wcm9qZWN0c1wvMjA5XC9hc3NldHNcLzgyXC8zNzk2OFwvNGFiZmRmNGZlMDA1N2JjNTU2MThjYTU0ZTA2OTIwOWQtMTY1ODMwMDAwOS5qcGcifQ:ihh-healthcare-berhad:q8WUI77npjt2OB4jweFlIdzZGLziKLUEiZ265-19-18?width={width}', 18, 0)
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [Description], [Price], [Image], [Quantity], [isContinue]) VALUES (17, N'Rambutan', 2, N'Rambutan is a tropical fruit teeming with nutrients and antioxidants. You can enjoy this fruit in salads, curries, or desserts and may benefit from its weight loss, healthy digestion, and immune-boosting properties.', 280000, N'https://www.savoryexperiments.com/wp-content/uploads/2020/12/Rambutan-1200x800.jpg', 19, 0)
SET IDENTITY_INSERT [dbo].[Products] OFF
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD FOREIGN KEY([OrderID])
REFERENCES [dbo].[Orders] ([OrderID])
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD FOREIGN KEY([ProductID])
REFERENCES [dbo].[Products] ([ProductID])
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD FOREIGN KEY([CustomerID])
REFERENCES [dbo].[Customers] ([CustomerID])
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD FOREIGN KEY([CategoryID])
REFERENCES [dbo].[Categories] ([CategoryID])
GO
