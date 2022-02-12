USE [master]
GO
/****** Object:  Database [VehicleShop]    Script Date: 2/12/2022 10:14:29 PM ******/
CREATE DATABASE [VehicleShop]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'VehicleShop', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.KTEAM\MSSQL\DATA\VehicleShop.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'VehicleShop_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.KTEAM\MSSQL\DATA\VehicleShop_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [VehicleShop] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [VehicleShop].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [VehicleShop] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [VehicleShop] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [VehicleShop] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [VehicleShop] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [VehicleShop] SET ARITHABORT OFF 
GO
ALTER DATABASE [VehicleShop] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [VehicleShop] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [VehicleShop] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [VehicleShop] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [VehicleShop] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [VehicleShop] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [VehicleShop] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [VehicleShop] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [VehicleShop] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [VehicleShop] SET  ENABLE_BROKER 
GO
ALTER DATABASE [VehicleShop] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [VehicleShop] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [VehicleShop] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [VehicleShop] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [VehicleShop] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [VehicleShop] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [VehicleShop] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [VehicleShop] SET RECOVERY FULL 
GO
ALTER DATABASE [VehicleShop] SET  MULTI_USER 
GO
ALTER DATABASE [VehicleShop] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [VehicleShop] SET DB_CHAINING OFF 
GO
ALTER DATABASE [VehicleShop] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [VehicleShop] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [VehicleShop] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [VehicleShop] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'VehicleShop', N'ON'
GO
ALTER DATABASE [VehicleShop] SET QUERY_STORE = OFF
GO
USE [VehicleShop]
GO
/****** Object:  Table [dbo].[ACCOUNT]    Script Date: 2/12/2022 10:14:29 PM ******/
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
/****** Object:  Table [dbo].[Brand]    Script Date: 2/12/2022 10:14:29 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [UQ__Brand__2206CE9B261A6A55] UNIQUE NONCLUSTERED 
(
	[BrandName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Buyer]    Script Date: 2/12/2022 10:14:29 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[Phone] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[Gmail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ORDER]    Script Date: 2/12/2022 10:14:29 PM ******/
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
/****** Object:  Table [dbo].[OrderDetail]    Script Date: 2/12/2022 10:14:29 PM ******/
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
/****** Object:  Table [dbo].[Product]    Script Date: 2/12/2022 10:14:29 PM ******/
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
/****** Object:  Table [dbo].[Report]    Script Date: 2/12/2022 10:14:29 PM ******/
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
/****** Object:  Table [dbo].[ReportType]    Script Date: 2/12/2022 10:14:29 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[ReportName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 2/12/2022 10:14:29 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[RoleName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Seller]    Script Date: 2/12/2022 10:14:29 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[Phone] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[Gmail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ShoppingCart]    Script Date: 2/12/2022 10:14:29 PM ******/
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
/****** Object:  Table [dbo].[vehicleType]    Script Date: 2/12/2022 10:14:29 PM ******/
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
USE [master]
GO
ALTER DATABASE [VehicleShop] SET  READ_WRITE 
GO
