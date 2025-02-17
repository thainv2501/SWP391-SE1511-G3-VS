create database [VehicleShop]
GO
ALTER TABLE [dbo].[ShoppingCart] DROP CONSTRAINT [FK__ShoppingC__Produ__4316F928]
GO
ALTER TABLE [dbo].[ShoppingCart] DROP CONSTRAINT [FK__ShoppingC__Buyer__4222D4EF]
GO
ALTER TABLE [dbo].[Seller] DROP CONSTRAINT [FK__Seller__Username__2C3393D0]
GO
ALTER TABLE [dbo].[Report] DROP CONSTRAINT [FK__Report__TypeId__4AB81AF0]
GO
ALTER TABLE [dbo].[Report] DROP CONSTRAINT [FK__Report__SellerId__49C3F6B7]
GO
ALTER TABLE [dbo].[Report] DROP CONSTRAINT [FK__Report__BuyerId__48CFD27E]
GO
ALTER TABLE [dbo].[Product] DROP CONSTRAINT [FK_Product_vehicleType]
GO
ALTER TABLE [dbo].[Product] DROP CONSTRAINT [FK__Product__SellerI__37A5467C]
GO
ALTER TABLE [dbo].[Product] DROP CONSTRAINT [FK__Product__BrandId__36B12243]
GO
ALTER TABLE [dbo].[OrderDetail] DROP CONSTRAINT [FK__OrderDeta__Produ__3F466844]
GO
ALTER TABLE [dbo].[OrderDetail] DROP CONSTRAINT [FK__OrderDeta__Order__3E52440B]
GO
ALTER TABLE [dbo].[ORDER] DROP CONSTRAINT [FK__ORDER__SellerId__3A81B327]
GO
ALTER TABLE [dbo].[ORDER] DROP CONSTRAINT [FK__ORDER__BuyerId__3B75D760]
GO
ALTER TABLE [dbo].[Buyer] DROP CONSTRAINT [FK__Buyer__Username__30F848ED]
GO
ALTER TABLE [dbo].[ACCOUNT] DROP CONSTRAINT [FK__ACCOUNT__Role__276EDEB3]
GO
/****** Object:  Index [UQ__Seller__B488B103254F8DDE]    Script Date: 2/12/2022 4:29:03 PM ******/
ALTER TABLE [dbo].[Seller] DROP CONSTRAINT [UQ__Seller__B488B103254F8DDE]
GO
/****** Object:  Index [UQ__Seller__5C7E359EC3ADBCDB]    Script Date: 2/12/2022 4:29:03 PM ******/
ALTER TABLE [dbo].[Seller] DROP CONSTRAINT [UQ__Seller__5C7E359EC3ADBCDB]
GO
/****** Object:  Index [UQ__Role__8A2B6160EF572F66]    Script Date: 2/12/2022 4:29:03 PM ******/
ALTER TABLE [dbo].[Role] DROP CONSTRAINT [UQ__Role__8A2B6160EF572F66]
GO
/****** Object:  Index [UQ__ReportTy__930D5CE7CF567CB7]    Script Date: 2/12/2022 4:29:03 PM ******/
ALTER TABLE [dbo].[ReportType] DROP CONSTRAINT [UQ__ReportTy__930D5CE7CF567CB7]
GO
/****** Object:  Index [UQ__Buyer__B488B1033BC3986A]    Script Date: 2/12/2022 4:29:03 PM ******/
ALTER TABLE [dbo].[Buyer] DROP CONSTRAINT [UQ__Buyer__B488B1033BC3986A]
GO
/****** Object:  Index [UQ__Buyer__5C7E359ED8E63CE4]    Script Date: 2/12/2022 4:29:03 PM ******/
ALTER TABLE [dbo].[Buyer] DROP CONSTRAINT [UQ__Buyer__5C7E359ED8E63CE4]
GO
/****** Object:  Index [UQ__Brand__2206CE9B261A6A55]    Script Date: 2/12/2022 4:29:03 PM ******/
ALTER TABLE [dbo].[Brand] DROP CONSTRAINT [UQ__Brand__2206CE9B261A6A55]
GO
/****** Object:  Table [dbo].[vehicleType]    Script Date: 2/12/2022 4:29:03 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[vehicleType]') AND type in (N'U'))
DROP TABLE [dbo].[vehicleType]
GO
/****** Object:  Table [dbo].[ShoppingCart]    Script Date: 2/12/2022 4:29:03 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ShoppingCart]') AND type in (N'U'))
DROP TABLE [dbo].[ShoppingCart]
GO
/****** Object:  Table [dbo].[Seller]    Script Date: 2/12/2022 4:29:03 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Seller]') AND type in (N'U'))
DROP TABLE [dbo].[Seller]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 2/12/2022 4:29:03 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Role]') AND type in (N'U'))
DROP TABLE [dbo].[Role]
GO
/****** Object:  Table [dbo].[ReportType]    Script Date: 2/12/2022 4:29:03 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ReportType]') AND type in (N'U'))
DROP TABLE [dbo].[ReportType]
GO
/****** Object:  Table [dbo].[Report]    Script Date: 2/12/2022 4:29:03 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Report]') AND type in (N'U'))
DROP TABLE [dbo].[Report]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 2/12/2022 4:29:03 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Product]') AND type in (N'U'))
DROP TABLE [dbo].[Product]
GO
/****** Object:  Table [dbo].[OrderDetail]    Script Date: 2/12/2022 4:29:03 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[OrderDetail]') AND type in (N'U'))
DROP TABLE [dbo].[OrderDetail]
GO
/****** Object:  Table [dbo].[ORDER]    Script Date: 2/12/2022 4:29:03 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ORDER]') AND type in (N'U'))
DROP TABLE [dbo].[ORDER]
GO
/****** Object:  Table [dbo].[Buyer]    Script Date: 2/12/2022 4:29:03 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Buyer]') AND type in (N'U'))
DROP TABLE [dbo].[Buyer]
GO
/****** Object:  Table [dbo].[Brand]    Script Date: 2/12/2022 4:29:03 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Brand]') AND type in (N'U'))
DROP TABLE [dbo].[Brand]
GO
/****** Object:  Table [dbo].[ACCOUNT]    Script Date: 2/12/2022 4:29:03 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ACCOUNT]') AND type in (N'U'))
DROP TABLE [dbo].[ACCOUNT]
GO
/****** Object:  Table [dbo].[ACCOUNT]    Script Date: 2/12/2022 4:29:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ACCOUNT](
	[Username] [varchar](20) NOT NULL,
	[Password] [varchar](20) NOT NULL,
	[Status] [varchar](20) NOT NULL,
	[Role] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Brand]    Script Date: 2/12/2022 4:29:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Brand](
	[BrandId] [int] IDENTITY(1,1) NOT NULL,
	[BrandName] [varchar](20) NOT NULL,
	[img] [nvarchar](max) NULL,
 CONSTRAINT [PK__Brand__DAD4F05EC04E4435] PRIMARY KEY CLUSTERED 
(
	[BrandId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Buyer]    Script Date: 2/12/2022 4:29:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Buyer](
	[BuyerID] [int] IDENTITY(1,1) NOT NULL,
	[BuyerName] [nvarchar](max) NOT NULL,
	[Address] [nvarchar](max) NULL,
	[Gmail] [nvarchar](50) NOT NULL,
	[Phone] [char](10) NULL,
	[Birthday] [date] NULL,
	[Username] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[BuyerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ORDER]    Script Date: 2/12/2022 4:29:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ORDER](
	[OrderId] [int] IDENTITY(1,1) NOT NULL,
	[DateCreated] [date] NOT NULL,
	[TotalPrice] [money] NOT NULL,
	[SellerId] [int] NULL,
	[BuyerId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[OrderId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderDetail]    Script Date: 2/12/2022 4:29:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetail](
	[OrderId] [int] NOT NULL,
	[ProductId] [int] NOT NULL,
	[Quantity] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[OrderId] ASC,
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 2/12/2022 4:29:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[ProductId] [int] IDENTITY(1,1) NOT NULL,
	[BrandId] [int] NOT NULL,
	[vehicleTypeId] [int] NULL,
	[ProductName] [nvarchar](max) NOT NULL,
	[MadeIn] [nvarchar](20) NOT NULL,
	[ManufactureYear] [char](4) NOT NULL,
	[Description] [nvarchar](max) NOT NULL,
	[Image] [nvarchar](max) NULL,
	[Quantity] [int] NULL,
	[UnitPrice] [money] NULL,
	[Discount] [float] NULL,
	[SellerId] [int] NULL,
 CONSTRAINT [PK__Product__B40CC6CDDA3AE645] PRIMARY KEY CLUSTERED 
(
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Report]    Script Date: 2/12/2022 4:29:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Report](
	[ReportId] [int] IDENTITY(1,1) NOT NULL,
	[BuyerId] [int] NOT NULL,
	[SellerId] [int] NOT NULL,
	[TypeId] [int] NOT NULL,
	[Content] [nvarchar](max) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ReportId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ReportType]    Script Date: 2/12/2022 4:29:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ReportType](
	[TypeId] [int] IDENTITY(1,1) NOT NULL,
	[ReportName] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[TypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 2/12/2022 4:29:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[RoleId] [int] NOT NULL,
	[RoleName] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Seller]    Script Date: 2/12/2022 4:29:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Seller](
	[SellerID] [int] IDENTITY(1,1) NOT NULL,
	[SellerName] [nvarchar](max) NOT NULL,
	[Description] [nvarchar](max) NOT NULL,
	[Address] [nvarchar](max) NOT NULL,
	[Gmail] [varchar](50) NOT NULL,
	[Phone] [char](10) NOT NULL,
	[Username] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[SellerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ShoppingCart]    Script Date: 2/12/2022 4:29:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ShoppingCart](
	[BuyerId] [int] NOT NULL,
	[ProductId] [int] NOT NULL,
	[Quantity] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[BuyerId] ASC,
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[vehicleType]    Script Date: 2/12/2022 4:29:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[vehicleType](
	[vehicleTypeId] [int] IDENTITY(1,1) NOT NULL,
	[vehicleTypeName] [nvarchar](50) NULL,
 CONSTRAINT [PK_vehicleType] PRIMARY KEY CLUSTERED 
(
	[vehicleTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Brand] ON 

INSERT [dbo].[Brand] ([BrandId], [BrandName], [img]) VALUES (1, N'Ferrari', N'https://e7.pngegg.com/pngimages/523/480/png-clipart-enzo-ferrari-car-laferrari-scuderia-ferrari-ferrari-emblem-logo-thumbnail.png')
INSERT [dbo].[Brand] ([BrandId], [BrandName], [img]) VALUES (2, N'Maserati', N'https://banner2.cleanpng.com/20180531/xwy/kisspng-wikipedia-logo-maserati-car-piazza-maggiore-5b0fa352352b15.0777096415277515062178.jpg')
INSERT [dbo].[Brand] ([BrandId], [BrandName], [img]) VALUES (3, N'Honda', N'https://image.pngaaa.com/306/1101306-middle.png')
SET IDENTITY_INSERT [dbo].[Brand] OFF
GO
SET IDENTITY_INSERT [dbo].[Product] ON 

INSERT [dbo].[Product] ([ProductId], [BrandId], [vehicleTypeId], [ProductName], [MadeIn], [ManufactureYear], [Description], [Image], [Quantity], [UnitPrice], [Discount], [SellerId]) VALUES (2, 2, 1, N'Ghibli', N'Hong Kong', N'2018', N'Race-bred power and razor-sharp, sports car-like handling. This is where passion meets the road', N'https://s7g10.scene7.com/is/image/maserati/maserati/international/Models/my22/ghibli-my22/my22/16_9/gh_3_4_front.jpg?$1920x2000$&fit=constrain', 10, 117800.0000, NULL, NULL)
INSERT [dbo].[Product] ([ProductId], [BrandId], [vehicleTypeId], [ProductName], [MadeIn], [ManufactureYear], [Description], [Image], [Quantity], [UnitPrice], [Discount], [SellerId]) VALUES (3, 2, 1, N'Levante', N'Hong Kong', N'2020', N'The ultimate combination of leading on-road performance and off-road capabilities', N'https://s7g10.scene7.com/is/image/maserati/maserati/international/Models/default/2022/levante/lv_front.png?$600x2000$&fmt=png-alpha&fit=constrain', 10, 1278000.0000, NULL, NULL)
INSERT [dbo].[Product] ([ProductId], [BrandId], [vehicleTypeId], [ProductName], [MadeIn], [ManufactureYear], [Description], [Image], [Quantity], [UnitPrice], [Discount], [SellerId]) VALUES (4, 2, 1, N'Quattroporte', N'America', N'2010', N'A captivating blend of sophisticated performance and superlative luxury.', N'https://s7g10.scene7.com/is/image/maserati/maserati/international/Models/default/2022/quattroporte/qp_front.png?$600x2000$&fmt=png-alpha&fit=constrain', 2, 1578000.0000, NULL, NULL)
INSERT [dbo].[Product] ([ProductId], [BrandId], [vehicleTypeId], [ProductName], [MadeIn], [ManufactureYear], [Description], [Image], [Quantity], [UnitPrice], [Discount], [SellerId]) VALUES (5, 2, 1, N'MC20', N'Hong Kong', N'2020', N'The Maserati Super Sports Car that pushes the boundaries of time. Race audaciously into a brave new future.', N'https://s7g10.scene7.com/is/image/maserati/maserati/international/Models/default/2021/mc20/MC20_front.png?$600x2000$&fmt=png-alpha&fit=constrain', 2, 3498000.0000, NULL, NULL)
INSERT [dbo].[Product] ([ProductId], [BrandId], [vehicleTypeId], [ProductName], [MadeIn], [ManufactureYear], [Description], [Image], [Quantity], [UnitPrice], [Discount], [SellerId]) VALUES (9, 1, 1, N'Ferrari 500 F2', N'America', N'1998', N'The Maserati Super Sports Car that pushes the boundaries of time. Race audaciously into a brave new future.', N'https://s7g10.scene7.com/is/image/maserati/maserati/international/Models/default/2021/mc20/MC20_front.png?$600x2000$&fmt=png-alpha&fit=constrain', 20, 3498000.0000, NULL, NULL)
INSERT [dbo].[Product] ([ProductId], [BrandId], [vehicleTypeId], [ProductName], [MadeIn], [ManufactureYear], [Description], [Image], [Quantity], [UnitPrice], [Discount], [SellerId]) VALUES (10, 1, 1, N'Ferrari SF71H model F1 Vettel', N'America', N'1967', N'The Maserati Super Sports Car that pushes the boundaries of time. Race audaciously into a brave new future.', N'https://s7g10.scene7.com/is/image/maserati/maserati/international/Models/default/2021/mc20/MC20_front.png?$600x2000$&fmt=png-alpha&fit=constrain', 10, 6995000.0000, NULL, NULL)
INSERT [dbo].[Product] ([ProductId], [BrandId], [vehicleTypeId], [ProductName], [MadeIn], [ManufactureYear], [Description], [Image], [Quantity], [UnitPrice], [Discount], [SellerId]) VALUES (12, 1, 1, N'FXX-K ', N'America', N'1967', N'The Maserati Super Sports Car that pushes the boundaries of time. Race audaciously into a brave new future.', N'https://s7g10.scene7.com/is/image/maserati/maserati/international/Models/default/2021/mc20/MC20_front.png?$600x2000$&fmt=png-alpha&fit=constrain', 4, 199000.0000, NULL, NULL)
INSERT [dbo].[Product] ([ProductId], [BrandId], [vehicleTypeId], [ProductName], [MadeIn], [ManufactureYear], [Description], [Image], [Quantity], [UnitPrice], [Discount], [SellerId]) VALUES (15, 1, 1, N'Ferrari BB 512i ', N'America', N'1968', N'The combination of Maserati’s unrivalled racing heritage - a brand intrinsically linked with high-performance, and its innovative attitude towards electrification – aligns perfectly with the ABB FIA Formula E World Championship, the world’s first all-electric road-racing motorsport series.
Maserati’s commitment to electric mobility is powered by a lightning surge of new energy, now accelerating to run at top speed with Folgore, the full electric range. All new Maserati models will also be available in 100% electric solutions including Maserati Grecale, Maserati GranTurismo and GranCabrio and the Maserati MC20 super sportscar. 
The ABB FIA Formula E World Championship provides Maserati with a perfect platform to showcase the unprecedented brand racing heritage and Folgore in an environment where high performance and innovation powerfully co-exist', N'https://s7g10.scene7.com/is/image/maserati/maserati/international/Models/default/2021/mc20/MC20_front.png?$600x2000$&fmt=png-alpha&fit=constrain', 5, 1090000.0000, NULL, NULL)
INSERT [dbo].[Product] ([ProductId], [BrandId], [vehicleTypeId], [ProductName], [MadeIn], [ManufactureYear], [Description], [Image], [Quantity], [UnitPrice], [Discount], [SellerId]) VALUES (16, 3, 2, N'2022 SHADOW PHANTOM', N'Kingston ON', N'2022', N'Sometimes a whisper can be louder than a shout. That’s the idea behind the 2020 Honda Shadow Phantom. Understated when it comes to bright colors or chrome. An over-achiever when it comes to a low center of gravity, rideability, comfort, and performance. Check out the spoked wheels, black rims, bobbed fenders and matte black accents. And at the heart of the matter, a blacked-out 745cc V-twin and throaty exhaust that offers the wide torque spread and user-friendly power every cruiser rider wants. No wonder it''s a popular favorite.', N'https://d2bywgumb0o70j.cloudfront.net/2021/08/16/1742146f2c87be426e2144aceb36fa99_37fb3082b76b8e7e.png', 5, 349000.0000, NULL, NULL)
INSERT [dbo].[Product] ([ProductId], [BrandId], [vehicleTypeId], [ProductName], [MadeIn], [ManufactureYear], [Description], [Image], [Quantity], [UnitPrice], [Discount], [SellerId]) VALUES (20, 3, 2, N'2021 REBEL 1100', N'Kingdom', N'2021', N'Honda’s new 2021 Rebel 1100 is going to change the way you think about cruisers. Sure, it has the low seat height, twin-cylinder engine and relaxed riding position that make cruiser-class machines so timelessly popular. But it also has something most cruisers lack: genuine arm-straightening performance, and a chassis and suspension that let you dial up the pace when the road gets twisty. Plus, since the Rebel 1100 out performs just about any cruiser, we didn’t fall into the trap of just making it look like grandpa’s sled either. Forget the chrome-and-fringe bling: this Rebel is a whole new take on how a cruiser should look. Every one comes equipped with our anti-lock brake system and cruise control. And every one rips with our Unicam® engine. You can choose between our revolutionary automatic DCT transmission or a conventional six-speed manual. Ride it on the weekends. Ride it at night. On the boulevard or in the canyons. Dress it up or dress it down with our extensive line of Honda accessories. The new Rebel 1100 can do it all—and you’ll have a blast doing it.', N'https://d2bywgumb0o70j.cloudfront.net/2021/04/29/c2954e9b590813914d9ce94194af91b0_504c9a451cea03ee.png', 5, 349000.0000, NULL, NULL)
INSERT [dbo].[Product] ([ProductId], [BrandId], [vehicleTypeId], [ProductName], [MadeIn], [ManufactureYear], [Description], [Image], [Quantity], [UnitPrice], [Discount], [SellerId]) VALUES (22, 3, 2, N'2020 REBEL 500', N'England', N'2020', N'When the Honda Rebel 500 debuted just a few years ago, riders everywhere loved the way it combined a fresh, blacked-out look with timeless features like a low seat height, light weight, narrow 471cc parallel-twin engine and user-friendly powerband. And for 2020 we kept all those best parts, but have given the Rebel 500 some impressive upgrades, like a LED lighting package (headlight, taillight, turn signals and more), new instruments, a slipper/assist clutch that lightens clutch pull, new suspension, and a whole bunch of new Honda accessories available too. So yeah, a great bike got even better. Now more than ever, express yourself on a Rebel!', N'https://d2bywgumb0o70j.cloudfront.net/2021/04/28/3dcb02ecc9670de8148167019e1481da_8c5051cd57b5bb83.png', 5, 145000.0000, NULL, NULL)
INSERT [dbo].[Product] ([ProductId], [BrandId], [vehicleTypeId], [ProductName], [MadeIn], [ManufactureYear], [Description], [Image], [Quantity], [UnitPrice], [Discount], [SellerId]) VALUES (23, 3, 2, N'2021 REBEL 500', N'England', N'2021', N'Like the looks of the Honda Rebel 500? You’re not the only one. With its blacked-out styling and great new colors for 2019, this bike will turn heads everywhere you go. And sure, the Rebel is one of our most popular bikes, but it’s also one of our most fun to ride. It has a compact frame and a low-slung seat. You can lean it over in turns due to an impressive tilt angle, and its 471cc parallel-twin engine is specially tuned for power in the middle and upper revs. Plus, it’s begging to be customized, so you can easily make it your own. Express yourself on a Rebel 500 today!', N'https://d2bywgumb0o70j.cloudfront.net/2021/05/04/b35f8a987b6a0abd09c1c98b07a1a13c_835b634151bf1999.png', 5, 160000.0000, NULL, NULL)
INSERT [dbo].[Product] ([ProductId], [BrandId], [vehicleTypeId], [ProductName], [MadeIn], [ManufactureYear], [Description], [Image], [Quantity], [UnitPrice], [Discount], [SellerId]) VALUES (24, 3, 2, N'2021 REBEL 500', N'England', N'2021', N'Like the looks of the Honda Rebel 500? You’re not the only one. With its blacked-out styling and great new colors for 2019, this bike will turn heads everywhere you go. And sure, the Rebel is one of our most popular bikes, but it’s also one of our most fun to ride. It has a compact frame and a low-slung seat. You can lean it over in turns due to an impressive tilt angle, and its 471cc parallel-twin engine is specially tuned for power in the middle and upper revs. Plus, it’s begging to be customized, so you can easily make it your own. Express yourself on a Rebel 500 today!', N'https://d2bywgumb0o70j.cloudfront.net/2021/05/04/b35f8a987b6a0abd09c1c98b07a1a13c_835b634151bf1999.png', 5, 160000.0000, NULL, NULL)

SET IDENTITY_INSERT [dbo].[Product] OFF
GO
SET IDENTITY_INSERT [dbo].[ReportType] ON 

INSERT [dbo].[ReportType] ([TypeId], [ReportName]) VALUES (1, N'Hàng kém chất lượng')
INSERT [dbo].[ReportType] ([TypeId], [ReportName]) VALUES (2, N'Hàng không giống mô tả')
INSERT [dbo].[ReportType] ([TypeId], [ReportName]) VALUES (5, N'Loại khác')
INSERT [dbo].[ReportType] ([TypeId], [ReportName]) VALUES (3, N'Phản hồi chậm trễ')
INSERT [dbo].[ReportType] ([TypeId], [ReportName]) VALUES (4, N'Thông tin người bán sai lệch')
SET IDENTITY_INSERT [dbo].[ReportType] OFF
GO
INSERT [dbo].[Role] ([RoleId], [RoleName]) VALUES (1, N'Admin')
INSERT [dbo].[Role] ([RoleId], [RoleName]) VALUES (2, N'Buyer')
INSERT [dbo].[Role] ([RoleId], [RoleName]) VALUES (3, N'Seller')
GO
SET IDENTITY_INSERT [dbo].[vehicleType] ON 

INSERT [dbo].[vehicleType] ([vehicleTypeId], [vehicleTypeName]) VALUES (1, N'Car')
INSERT [dbo].[vehicleType] ([vehicleTypeId], [vehicleTypeName]) VALUES (2, N'Moto')
SET IDENTITY_INSERT [dbo].[vehicleType] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Brand__2206CE9B261A6A55]    Script Date: 2/12/2022 4:29:03 PM ******/
ALTER TABLE [dbo].[Brand] ADD  CONSTRAINT [UQ__Brand__2206CE9B261A6A55] UNIQUE NONCLUSTERED 
(
	[BrandName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Buyer__5C7E359ED8E63CE4]    Script Date: 2/12/2022 4:29:03 PM ******/
ALTER TABLE [dbo].[Buyer] ADD UNIQUE NONCLUSTERED 
(
	[Phone] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Buyer__B488B1033BC3986A]    Script Date: 2/12/2022 4:29:03 PM ******/
ALTER TABLE [dbo].[Buyer] ADD UNIQUE NONCLUSTERED 
(
	[Gmail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__ReportTy__930D5CE7CF567CB7]    Script Date: 2/12/2022 4:29:03 PM ******/
ALTER TABLE [dbo].[ReportType] ADD UNIQUE NONCLUSTERED 
(
	[ReportName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Role__8A2B6160EF572F66]    Script Date: 2/12/2022 4:29:03 PM ******/
ALTER TABLE [dbo].[Role] ADD UNIQUE NONCLUSTERED 
(
	[RoleName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Seller__5C7E359EC3ADBCDB]    Script Date: 2/12/2022 4:29:03 PM ******/
ALTER TABLE [dbo].[Seller] ADD UNIQUE NONCLUSTERED 
(
	[Phone] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Seller__B488B103254F8DDE]    Script Date: 2/12/2022 4:29:03 PM ******/
ALTER TABLE [dbo].[Seller] ADD UNIQUE NONCLUSTERED 
(
	[Gmail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ACCOUNT]  WITH CHECK ADD FOREIGN KEY([Role])
REFERENCES [dbo].[Role] ([RoleId])
GO
ALTER TABLE [dbo].[Buyer]  WITH CHECK ADD FOREIGN KEY([Username])
REFERENCES [dbo].[ACCOUNT] ([Username])
GO
ALTER TABLE [dbo].[ORDER]  WITH CHECK ADD FOREIGN KEY([BuyerId])
REFERENCES [dbo].[Buyer] ([BuyerID])
GO
ALTER TABLE [dbo].[ORDER]  WITH CHECK ADD FOREIGN KEY([SellerId])
REFERENCES [dbo].[Seller] ([SellerID])
GO
ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD FOREIGN KEY([OrderId])
REFERENCES [dbo].[ORDER] ([OrderId])
GO
ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD  CONSTRAINT [FK__OrderDeta__Produ__3F466844] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Product] ([ProductId])
GO
ALTER TABLE [dbo].[OrderDetail] CHECK CONSTRAINT [FK__OrderDeta__Produ__3F466844]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK__Product__BrandId__36B12243] FOREIGN KEY([BrandId])
REFERENCES [dbo].[Brand] ([BrandId])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK__Product__BrandId__36B12243]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK__Product__SellerI__37A5467C] FOREIGN KEY([SellerId])
REFERENCES [dbo].[Seller] ([SellerID])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK__Product__SellerI__37A5467C]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_vehicleType] FOREIGN KEY([vehicleTypeId])
REFERENCES [dbo].[vehicleType] ([vehicleTypeId])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_vehicleType]
GO
ALTER TABLE [dbo].[Report]  WITH CHECK ADD FOREIGN KEY([BuyerId])
REFERENCES [dbo].[Buyer] ([BuyerID])
GO
ALTER TABLE [dbo].[Report]  WITH CHECK ADD FOREIGN KEY([SellerId])
REFERENCES [dbo].[Seller] ([SellerID])
GO
ALTER TABLE [dbo].[Report]  WITH CHECK ADD FOREIGN KEY([TypeId])
REFERENCES [dbo].[ReportType] ([TypeId])
GO
ALTER TABLE [dbo].[Seller]  WITH CHECK ADD FOREIGN KEY([Username])
REFERENCES [dbo].[ACCOUNT] ([Username])
GO
ALTER TABLE [dbo].[ShoppingCart]  WITH CHECK ADD FOREIGN KEY([BuyerId])
REFERENCES [dbo].[Buyer] ([BuyerID])
GO
ALTER TABLE [dbo].[ShoppingCart]  WITH CHECK ADD  CONSTRAINT [FK__ShoppingC__Produ__4316F928] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Product] ([ProductId])
GO
ALTER TABLE [dbo].[ShoppingCart] CHECK CONSTRAINT [FK__ShoppingC__Produ__4316F928]
GO
