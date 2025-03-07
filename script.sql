USE [master]
GO
/****** Object:  Database [Trade]    Script Date: 07.02.2025 14:26:42 ******/
CREATE DATABASE [Trade]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Trade', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\Trade.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Trade_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\Trade_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Trade] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Trade].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Trade] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Trade] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Trade] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Trade] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Trade] SET ARITHABORT OFF 
GO
ALTER DATABASE [Trade] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [Trade] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Trade] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Trade] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Trade] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Trade] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Trade] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Trade] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Trade] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Trade] SET  ENABLE_BROKER 
GO
ALTER DATABASE [Trade] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Trade] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Trade] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Trade] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Trade] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Trade] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Trade] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Trade] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Trade] SET  MULTI_USER 
GO
ALTER DATABASE [Trade] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Trade] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Trade] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Trade] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Trade] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Trade] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [Trade] SET QUERY_STORE = OFF
GO
USE [Trade]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 07.02.2025 14:26:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[ID] [int] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[City]    Script Date: 07.02.2025 14:26:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[City](
	[ID] [int] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_City] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EdIzmerenia]    Script Date: 07.02.2025 14:26:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EdIzmerenia](
	[ID] [int] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_EdIzmerenia] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Index]    Script Date: 07.02.2025 14:26:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Index](
	[ID] [int] NOT NULL,
	[IndexNum] [int] NOT NULL,
 CONSTRAINT [PK_Index] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Manufacturer]    Script Date: 07.02.2025 14:26:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Manufacturer](
	[ID] [int] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Manufacturer] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order]    Script Date: 07.02.2025 14:26:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[OrderID] [int] IDENTITY(1,1) NOT NULL,
	[Count] [int] NOT NULL,
	[OrderDate] [date] NOT NULL,
	[OrderDeliveryDate] [date] NOT NULL,
	[OrderPickupPoint] [int] NOT NULL,
	[OrderIDUser] [int] NULL,
	[OrderCode] [int] NOT NULL,
	[IDStatus] [int] NOT NULL,
 CONSTRAINT [PK__Order__C3905BAF73DF4934] PRIMARY KEY CLUSTERED 
(
	[OrderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderProduct]    Script Date: 07.02.2025 14:26:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderProduct](
	[ID] [int] NOT NULL,
	[OrderID] [int] NOT NULL,
	[IDProductArticleNumber] [int] NOT NULL,
 CONSTRAINT [PK_OrderProduct] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PickupPoint]    Script Date: 07.02.2025 14:26:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PickupPoint](
	[ID] [int] NOT NULL,
	[IDIndex] [int] NOT NULL,
	[IDcity] [int] NOT NULL,
	[IDStreet] [int] NOT NULL,
	[HouseNumber] [int] NULL,
 CONSTRAINT [PK_PickupPoint] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 07.02.2025 14:26:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[ID] [int] NOT NULL,
	[ProductArticleNumber] [nvarchar](50) NOT NULL,
	[IDProductName] [int] NOT NULL,
	[IDEdIzmerenia] [int] NOT NULL,
	[ProductPrice] [decimal](19, 2) NOT NULL,
	[ProductMaxDiscount] [int] NOT NULL,
	[IDProductManufacturer] [int] NOT NULL,
	[IDProductSupplier] [int] NOT NULL,
	[IDProductCategory] [int] NOT NULL,
	[ProductDiscountAmount] [int] NOT NULL,
	[ProductCount] [int] NOT NULL,
	[ProductDescription] [nvarchar](100) NOT NULL,
	[ProductPhoto] [nvarchar](50) NULL,
	[ProductPhotoCode] [image] NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductName]    Script Date: 07.02.2025 14:26:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductName](
	[ID] [int] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_ProductName] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 07.02.2025 14:26:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[RoleID] [int] IDENTITY(1,1) NOT NULL,
	[RoleName] [nvarchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[RoleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Status]    Script Date: 07.02.2025 14:26:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Status](
	[id] [int] NOT NULL,
	[StatusName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Status] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Street]    Script Date: 07.02.2025 14:26:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Street](
	[ID] [int] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Street] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Supplier]    Script Date: 07.02.2025 14:26:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Supplier](
	[ID] [int] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Supplier] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 07.02.2025 14:26:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[UserID] [int] IDENTITY(1,1) NOT NULL,
	[IdRole] [int] NOT NULL,
	[UserName] [nvarchar](50) NOT NULL,
	[UserLogin] [nvarchar](50) NOT NULL,
	[UserPassword] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK__User__1788CCACE572DC52] PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Category] ([ID], [Name]) VALUES (1, N'Для животных')
INSERT [dbo].[Category] ([ID], [Name]) VALUES (2, N'Товары для кошек')
INSERT [dbo].[Category] ([ID], [Name]) VALUES (3, N'Товары для собак')
GO
INSERT [dbo].[City] ([ID], [Name]) VALUES (1, N' г. Нефтеюганск')
GO
INSERT [dbo].[EdIzmerenia] ([ID], [Name]) VALUES (1, N'шт.')
GO
INSERT [dbo].[Index] ([ID], [IndexNum]) VALUES (1, 125061)
INSERT [dbo].[Index] ([ID], [IndexNum]) VALUES (2, 125703)
INSERT [dbo].[Index] ([ID], [IndexNum]) VALUES (3, 125837)
INSERT [dbo].[Index] ([ID], [IndexNum]) VALUES (4, 190949)
INSERT [dbo].[Index] ([ID], [IndexNum]) VALUES (5, 344288)
INSERT [dbo].[Index] ([ID], [IndexNum]) VALUES (6, 394060)
INSERT [dbo].[Index] ([ID], [IndexNum]) VALUES (7, 394242)
INSERT [dbo].[Index] ([ID], [IndexNum]) VALUES (8, 394782)
INSERT [dbo].[Index] ([ID], [IndexNum]) VALUES (9, 400562)
INSERT [dbo].[Index] ([ID], [IndexNum]) VALUES (10, 410172)
INSERT [dbo].[Index] ([ID], [IndexNum]) VALUES (11, 410542)
INSERT [dbo].[Index] ([ID], [IndexNum]) VALUES (12, 410661)
INSERT [dbo].[Index] ([ID], [IndexNum]) VALUES (13, 420151)
INSERT [dbo].[Index] ([ID], [IndexNum]) VALUES (14, 426030)
INSERT [dbo].[Index] ([ID], [IndexNum]) VALUES (15, 443890)
INSERT [dbo].[Index] ([ID], [IndexNum]) VALUES (16, 450375)
INSERT [dbo].[Index] ([ID], [IndexNum]) VALUES (17, 450558)
INSERT [dbo].[Index] ([ID], [IndexNum]) VALUES (18, 450983)
INSERT [dbo].[Index] ([ID], [IndexNum]) VALUES (19, 454311)
INSERT [dbo].[Index] ([ID], [IndexNum]) VALUES (20, 603002)
INSERT [dbo].[Index] ([ID], [IndexNum]) VALUES (21, 603036)
INSERT [dbo].[Index] ([ID], [IndexNum]) VALUES (22, 603379)
INSERT [dbo].[Index] ([ID], [IndexNum]) VALUES (23, 603721)
INSERT [dbo].[Index] ([ID], [IndexNum]) VALUES (24, 614164)
INSERT [dbo].[Index] ([ID], [IndexNum]) VALUES (25, 614510)
INSERT [dbo].[Index] ([ID], [IndexNum]) VALUES (26, 614611)
INSERT [dbo].[Index] ([ID], [IndexNum]) VALUES (27, 614753)
INSERT [dbo].[Index] ([ID], [IndexNum]) VALUES (28, 620839)
INSERT [dbo].[Index] ([ID], [IndexNum]) VALUES (29, 625283)
INSERT [dbo].[Index] ([ID], [IndexNum]) VALUES (30, 625560)
INSERT [dbo].[Index] ([ID], [IndexNum]) VALUES (31, 625590)
INSERT [dbo].[Index] ([ID], [IndexNum]) VALUES (32, 625683)
INSERT [dbo].[Index] ([ID], [IndexNum]) VALUES (33, 630201)
INSERT [dbo].[Index] ([ID], [IndexNum]) VALUES (34, 630370)
INSERT [dbo].[Index] ([ID], [IndexNum]) VALUES (35, 660007)
INSERT [dbo].[Index] ([ID], [IndexNum]) VALUES (36, 660540)
GO
INSERT [dbo].[Manufacturer] ([ID], [Name]) VALUES (1, N'Cat Chow')
INSERT [dbo].[Manufacturer] ([ID], [Name]) VALUES (2, N'Chappy')
INSERT [dbo].[Manufacturer] ([ID], [Name]) VALUES (3, N'Dog Chow')
INSERT [dbo].[Manufacturer] ([ID], [Name]) VALUES (4, N'Dreames')
INSERT [dbo].[Manufacturer] ([ID], [Name]) VALUES (5, N'Fancy Pets')
INSERT [dbo].[Manufacturer] ([ID], [Name]) VALUES (6, N'LIKER')
INSERT [dbo].[Manufacturer] ([ID], [Name]) VALUES (7, N'Nobby')
INSERT [dbo].[Manufacturer] ([ID], [Name]) VALUES (8, N'Pro Plan')
INSERT [dbo].[Manufacturer] ([ID], [Name]) VALUES (9, N'TitBit')
INSERT [dbo].[Manufacturer] ([ID], [Name]) VALUES (10, N'Triol')
INSERT [dbo].[Manufacturer] ([ID], [Name]) VALUES (11, N'trixie')
INSERT [dbo].[Manufacturer] ([ID], [Name]) VALUES (12, N'True Touch')
INSERT [dbo].[Manufacturer] ([ID], [Name]) VALUES (13, N'ZooM')
GO
SET IDENTITY_INSERT [dbo].[Order] ON 

INSERT [dbo].[Order] ([OrderID], [Count], [OrderDate], [OrderDeliveryDate], [OrderPickupPoint], [OrderIDUser], [OrderCode], [IDStatus]) VALUES (1, 15, CAST(N'2022-05-06' AS Date), CAST(N'2022-05-12' AS Date), 25, NULL, 601, 2)
INSERT [dbo].[Order] ([OrderID], [Count], [OrderDate], [OrderDeliveryDate], [OrderPickupPoint], [OrderIDUser], [OrderCode], [IDStatus]) VALUES (2, 15, CAST(N'2022-05-06' AS Date), CAST(N'2022-05-12' AS Date), 20, NULL, 602, 2)
INSERT [dbo].[Order] ([OrderID], [Count], [OrderDate], [OrderDeliveryDate], [OrderPickupPoint], [OrderIDUser], [OrderCode], [IDStatus]) VALUES (3, 10, CAST(N'2022-05-08' AS Date), CAST(N'2022-05-14' AS Date), 22, 8, 603, 1)
INSERT [dbo].[Order] ([OrderID], [Count], [OrderDate], [OrderDeliveryDate], [OrderPickupPoint], [OrderIDUser], [OrderCode], [IDStatus]) VALUES (4, 1, CAST(N'2022-05-08' AS Date), CAST(N'2022-05-14' AS Date), 24, NULL, 604, 1)
INSERT [dbo].[Order] ([OrderID], [Count], [OrderDate], [OrderDeliveryDate], [OrderPickupPoint], [OrderIDUser], [OrderCode], [IDStatus]) VALUES (5, 1, CAST(N'2022-05-10' AS Date), CAST(N'2022-05-16' AS Date), 25, NULL, 605, 1)
INSERT [dbo].[Order] ([OrderID], [Count], [OrderDate], [OrderDeliveryDate], [OrderPickupPoint], [OrderIDUser], [OrderCode], [IDStatus]) VALUES (6, 1, CAST(N'2022-05-11' AS Date), CAST(N'2022-05-17' AS Date), 28, 7, 606, 1)
INSERT [dbo].[Order] ([OrderID], [Count], [OrderDate], [OrderDeliveryDate], [OrderPickupPoint], [OrderIDUser], [OrderCode], [IDStatus]) VALUES (7, 2, CAST(N'2022-05-12' AS Date), CAST(N'2022-05-18' AS Date), 36, NULL, 607, 2)
INSERT [dbo].[Order] ([OrderID], [Count], [OrderDate], [OrderDeliveryDate], [OrderPickupPoint], [OrderIDUser], [OrderCode], [IDStatus]) VALUES (8, 1, CAST(N'2022-05-13' AS Date), CAST(N'2022-05-19' AS Date), 32, NULL, 608, 2)
INSERT [dbo].[Order] ([OrderID], [Count], [OrderDate], [OrderDeliveryDate], [OrderPickupPoint], [OrderIDUser], [OrderCode], [IDStatus]) VALUES (9, 1, CAST(N'2022-05-15' AS Date), CAST(N'2022-05-21' AS Date), 34, 10, 609, 2)
INSERT [dbo].[Order] ([OrderID], [Count], [OrderDate], [OrderDeliveryDate], [OrderPickupPoint], [OrderIDUser], [OrderCode], [IDStatus]) VALUES (10, 1, CAST(N'2022-05-15' AS Date), CAST(N'2022-05-21' AS Date), 36, 7, 610, 1)
INSERT [dbo].[Order] ([OrderID], [Count], [OrderDate], [OrderDeliveryDate], [OrderPickupPoint], [OrderIDUser], [OrderCode], [IDStatus]) VALUES (11, 1, CAST(N'2022-05-06' AS Date), CAST(N'2022-05-12' AS Date), 25, NULL, 601, 2)
INSERT [dbo].[Order] ([OrderID], [Count], [OrderDate], [OrderDeliveryDate], [OrderPickupPoint], [OrderIDUser], [OrderCode], [IDStatus]) VALUES (12, 15, CAST(N'2022-05-06' AS Date), CAST(N'2022-05-12' AS Date), 20, NULL, 602, 2)
INSERT [dbo].[Order] ([OrderID], [Count], [OrderDate], [OrderDeliveryDate], [OrderPickupPoint], [OrderIDUser], [OrderCode], [IDStatus]) VALUES (13, 10, CAST(N'2022-05-08' AS Date), CAST(N'2022-05-14' AS Date), 22, 8, 603, 1)
INSERT [dbo].[Order] ([OrderID], [Count], [OrderDate], [OrderDeliveryDate], [OrderPickupPoint], [OrderIDUser], [OrderCode], [IDStatus]) VALUES (14, 2, CAST(N'2022-05-08' AS Date), CAST(N'2022-05-14' AS Date), 24, NULL, 604, 1)
INSERT [dbo].[Order] ([OrderID], [Count], [OrderDate], [OrderDeliveryDate], [OrderPickupPoint], [OrderIDUser], [OrderCode], [IDStatus]) VALUES (15, 10, CAST(N'2022-05-10' AS Date), CAST(N'2022-05-16' AS Date), 25, NULL, 605, 1)
INSERT [dbo].[Order] ([OrderID], [Count], [OrderDate], [OrderDeliveryDate], [OrderPickupPoint], [OrderIDUser], [OrderCode], [IDStatus]) VALUES (16, 1, CAST(N'2022-05-11' AS Date), CAST(N'2022-05-17' AS Date), 28, 7, 606, 1)
INSERT [dbo].[Order] ([OrderID], [Count], [OrderDate], [OrderDeliveryDate], [OrderPickupPoint], [OrderIDUser], [OrderCode], [IDStatus]) VALUES (17, 2, CAST(N'2022-05-12' AS Date), CAST(N'2022-05-18' AS Date), 36, NULL, 607, 2)
INSERT [dbo].[Order] ([OrderID], [Count], [OrderDate], [OrderDeliveryDate], [OrderPickupPoint], [OrderIDUser], [OrderCode], [IDStatus]) VALUES (18, 1, CAST(N'2022-05-13' AS Date), CAST(N'2022-05-19' AS Date), 32, NULL, 608, 2)
INSERT [dbo].[Order] ([OrderID], [Count], [OrderDate], [OrderDeliveryDate], [OrderPickupPoint], [OrderIDUser], [OrderCode], [IDStatus]) VALUES (19, 1, CAST(N'2022-05-15' AS Date), CAST(N'2022-05-21' AS Date), 34, 10, 609, 2)
INSERT [dbo].[Order] ([OrderID], [Count], [OrderDate], [OrderDeliveryDate], [OrderPickupPoint], [OrderIDUser], [OrderCode], [IDStatus]) VALUES (20, 1, CAST(N'2022-05-15' AS Date), CAST(N'2022-05-21' AS Date), 36, 7, 610, 1)
SET IDENTITY_INSERT [dbo].[Order] OFF
GO
INSERT [dbo].[OrderProduct] ([ID], [OrderID], [IDProductArticleNumber]) VALUES (1, 1, 30)
INSERT [dbo].[OrderProduct] ([ID], [OrderID], [IDProductArticleNumber]) VALUES (2, 2, 10)
INSERT [dbo].[OrderProduct] ([ID], [OrderID], [IDProductArticleNumber]) VALUES (3, 3, 9)
INSERT [dbo].[OrderProduct] ([ID], [OrderID], [IDProductArticleNumber]) VALUES (4, 4, 11)
INSERT [dbo].[OrderProduct] ([ID], [OrderID], [IDProductArticleNumber]) VALUES (5, 5, 23)
INSERT [dbo].[OrderProduct] ([ID], [OrderID], [IDProductArticleNumber]) VALUES (6, 6, 16)
INSERT [dbo].[OrderProduct] ([ID], [OrderID], [IDProductArticleNumber]) VALUES (7, 7, 14)
INSERT [dbo].[OrderProduct] ([ID], [OrderID], [IDProductArticleNumber]) VALUES (8, 8, 19)
INSERT [dbo].[OrderProduct] ([ID], [OrderID], [IDProductArticleNumber]) VALUES (9, 9, 27)
INSERT [dbo].[OrderProduct] ([ID], [OrderID], [IDProductArticleNumber]) VALUES (10, 10, 21)
INSERT [dbo].[OrderProduct] ([ID], [OrderID], [IDProductArticleNumber]) VALUES (11, 11, 12)
INSERT [dbo].[OrderProduct] ([ID], [OrderID], [IDProductArticleNumber]) VALUES (12, 12, 29)
INSERT [dbo].[OrderProduct] ([ID], [OrderID], [IDProductArticleNumber]) VALUES (13, 13, 25)
INSERT [dbo].[OrderProduct] ([ID], [OrderID], [IDProductArticleNumber]) VALUES (14, 14, 5)
INSERT [dbo].[OrderProduct] ([ID], [OrderID], [IDProductArticleNumber]) VALUES (15, 15, 6)
INSERT [dbo].[OrderProduct] ([ID], [OrderID], [IDProductArticleNumber]) VALUES (16, 16, 4)
INSERT [dbo].[OrderProduct] ([ID], [OrderID], [IDProductArticleNumber]) VALUES (17, 17, 22)
INSERT [dbo].[OrderProduct] ([ID], [OrderID], [IDProductArticleNumber]) VALUES (18, 18, 27)
INSERT [dbo].[OrderProduct] ([ID], [OrderID], [IDProductArticleNumber]) VALUES (19, 19, 20)
INSERT [dbo].[OrderProduct] ([ID], [OrderID], [IDProductArticleNumber]) VALUES (20, 20, 28)
GO
INSERT [dbo].[PickupPoint] ([ID], [IDIndex], [IDcity], [IDStreet], [HouseNumber]) VALUES (1, 5, 1, 26, 1)
INSERT [dbo].[PickupPoint] ([ID], [IDIndex], [IDcity], [IDStreet], [HouseNumber]) VALUES (2, 24, 1, 29, 30)
INSERT [dbo].[PickupPoint] ([ID], [IDIndex], [IDcity], [IDStreet], [HouseNumber]) VALUES (3, 7, 1, 6, 43)
INSERT [dbo].[PickupPoint] ([ID], [IDIndex], [IDcity], [IDStreet], [HouseNumber]) VALUES (4, 36, 1, 22, 25)
INSERT [dbo].[PickupPoint] ([ID], [IDIndex], [IDcity], [IDStreet], [HouseNumber]) VALUES (5, 3, 1, 28, 40)
INSERT [dbo].[PickupPoint] ([ID], [IDIndex], [IDcity], [IDStreet], [HouseNumber]) VALUES (6, 2, 1, 15, 49)
INSERT [dbo].[PickupPoint] ([ID], [IDIndex], [IDcity], [IDStreet], [HouseNumber]) VALUES (7, 29, 1, 16, 46)
INSERT [dbo].[PickupPoint] ([ID], [IDIndex], [IDcity], [IDStreet], [HouseNumber]) VALUES (8, 26, 1, 10, 50)
INSERT [dbo].[PickupPoint] ([ID], [IDIndex], [IDcity], [IDStreet], [HouseNumber]) VALUES (9, 19, 1, 13, 19)
INSERT [dbo].[PickupPoint] ([ID], [IDIndex], [IDcity], [IDStreet], [HouseNumber]) VALUES (10, 35, 1, 14, 19)
INSERT [dbo].[PickupPoint] ([ID], [IDIndex], [IDcity], [IDStreet], [HouseNumber]) VALUES (11, 21, 1, 19, 4)
INSERT [dbo].[PickupPoint] ([ID], [IDIndex], [IDcity], [IDStreet], [HouseNumber]) VALUES (12, 18, 1, 7, 26)
INSERT [dbo].[PickupPoint] ([ID], [IDIndex], [IDcity], [IDStreet], [HouseNumber]) VALUES (13, 8, 1, 26, 3)
INSERT [dbo].[PickupPoint] ([ID], [IDIndex], [IDcity], [IDStreet], [HouseNumber]) VALUES (14, 20, 1, 4, 28)
INSERT [dbo].[PickupPoint] ([ID], [IDIndex], [IDcity], [IDStreet], [HouseNumber]) VALUES (15, 17, 1, 11, 30)
INSERT [dbo].[PickupPoint] ([ID], [IDIndex], [IDcity], [IDStreet], [HouseNumber]) VALUES (16, 6, 1, 24, 43)
INSERT [dbo].[PickupPoint] ([ID], [IDIndex], [IDcity], [IDStreet], [HouseNumber]) VALUES (17, 12, 1, 27, 50)
INSERT [dbo].[PickupPoint] ([ID], [IDIndex], [IDcity], [IDStreet], [HouseNumber]) VALUES (18, 31, 1, 6, 20)
INSERT [dbo].[PickupPoint] ([ID], [IDIndex], [IDcity], [IDStreet], [HouseNumber]) VALUES (19, 32, 1, 1, NULL)
INSERT [dbo].[PickupPoint] ([ID], [IDIndex], [IDcity], [IDStreet], [HouseNumber]) VALUES (20, 9, 1, 5, 32)
INSERT [dbo].[PickupPoint] ([ID], [IDIndex], [IDcity], [IDStreet], [HouseNumber]) VALUES (21, 25, 1, 8, 47)
INSERT [dbo].[PickupPoint] ([ID], [IDIndex], [IDcity], [IDStreet], [HouseNumber]) VALUES (22, 11, 1, 20, 46)
INSERT [dbo].[PickupPoint] ([ID], [IDIndex], [IDcity], [IDStreet], [HouseNumber]) VALUES (23, 28, 1, 25, 8)
INSERT [dbo].[PickupPoint] ([ID], [IDIndex], [IDcity], [IDStreet], [HouseNumber]) VALUES (24, 15, 1, 6, 1)
INSERT [dbo].[PickupPoint] ([ID], [IDIndex], [IDcity], [IDStreet], [HouseNumber]) VALUES (25, 22, 1, 23, 46)
INSERT [dbo].[PickupPoint] ([ID], [IDIndex], [IDcity], [IDStreet], [HouseNumber]) VALUES (26, 23, 1, 3, 41)
INSERT [dbo].[PickupPoint] ([ID], [IDIndex], [IDcity], [IDStreet], [HouseNumber]) VALUES (27, 10, 1, 21, 13)
INSERT [dbo].[PickupPoint] ([ID], [IDIndex], [IDcity], [IDStreet], [HouseNumber]) VALUES (28, 13, 1, 2, 32)
INSERT [dbo].[PickupPoint] ([ID], [IDIndex], [IDcity], [IDStreet], [HouseNumber]) VALUES (29, 1, 1, 17, 8)
INSERT [dbo].[PickupPoint] ([ID], [IDIndex], [IDcity], [IDStreet], [HouseNumber]) VALUES (30, 34, 1, 28, 24)
INSERT [dbo].[PickupPoint] ([ID], [IDIndex], [IDcity], [IDStreet], [HouseNumber]) VALUES (31, 27, 1, 18, 35)
INSERT [dbo].[PickupPoint] ([ID], [IDIndex], [IDcity], [IDStreet], [HouseNumber]) VALUES (32, 14, 1, 8, 44)
INSERT [dbo].[PickupPoint] ([ID], [IDIndex], [IDcity], [IDStreet], [HouseNumber]) VALUES (33, 16, 1, 30, 44)
INSERT [dbo].[PickupPoint] ([ID], [IDIndex], [IDcity], [IDStreet], [HouseNumber]) VALUES (34, 30, 1, 12, 12)
INSERT [dbo].[PickupPoint] ([ID], [IDIndex], [IDcity], [IDStreet], [HouseNumber]) VALUES (35, 33, 1, 7, 17)
INSERT [dbo].[PickupPoint] ([ID], [IDIndex], [IDcity], [IDStreet], [HouseNumber]) VALUES (36, 4, 1, 9, 26)
GO
INSERT [dbo].[Product] ([ID], [ProductArticleNumber], [IDProductName], [IDEdIzmerenia], [ProductPrice], [ProductMaxDiscount], [IDProductManufacturer], [IDProductSupplier], [IDProductCategory], [ProductDiscountAmount], [ProductCount], [ProductDescription], [ProductPhoto], [ProductPhotoCode]) VALUES (1, N'B427R5', 5, 1, CAST(400.00 AS Decimal(19, 2)), 15, 10, 2, 1, 4, 5, N'Миска для животных Triol "Стрекоза", 450 мл', NULL, NULL)
INSERT [dbo].[Product] ([ID], [ProductArticleNumber], [IDProductName], [IDEdIzmerenia], [ProductPrice], [ProductMaxDiscount], [IDProductManufacturer], [IDProductSupplier], [IDProductCategory], [ProductDiscountAmount], [ProductCount], [ProductDescription], [ProductPhoto], [ProductPhotoCode]) VALUES (2, N'D356R4', 6, 1, CAST(600.00 AS Decimal(19, 2)), 15, 11, 1, 3, 2, 16, N'Мячик для собак TRIXIE DentaFun (32942) зеленый / белый', NULL, NULL)
INSERT [dbo].[Product] ([ID], [ProductArticleNumber], [IDProductName], [IDEdIzmerenia], [ProductPrice], [ProductMaxDiscount], [IDProductManufacturer], [IDProductSupplier], [IDProductCategory], [ProductDiscountAmount], [ProductCount], [ProductDescription], [ProductPhoto], [ProductPhotoCode]) VALUES (3, N'D563F4', 1, 1, CAST(600.00 AS Decimal(19, 2)), 10, 10, 1, 3, 5, 5, N'Игрушка для собак Triol Бобер 41 см 12141053 бежевый', NULL, NULL)
INSERT [dbo].[Product] ([ID], [ProductArticleNumber], [IDProductName], [IDEdIzmerenia], [ProductPrice], [ProductMaxDiscount], [IDProductManufacturer], [IDProductSupplier], [IDProductCategory], [ProductDiscountAmount], [ProductCount], [ProductDescription], [ProductPhoto], [ProductPhotoCode]) VALUES (4, N'D643B5', 7, 1, CAST(4100.00 AS Decimal(19, 2)), 30, 1, 1, 2, 4, 9, N'Сухой корм для котят CAT CHOW с высоким содержанием домашней птицы', NULL, NULL)
INSERT [dbo].[Product] ([ID], [ProductArticleNumber], [IDProductName], [IDEdIzmerenia], [ProductPrice], [ProductMaxDiscount], [IDProductManufacturer], [IDProductSupplier], [IDProductCategory], [ProductDiscountAmount], [ProductCount], [ProductDescription], [ProductPhoto], [ProductPhotoCode]) VALUES (5, N'E345R4', 1, 1, CAST(199.00 AS Decimal(19, 2)), 5, 5, 2, 2, 5, 7, N'Игрушка для животных «Котик» с кошачьей мятой FANCY PETS', N'E345R4.jpg', NULL)
INSERT [dbo].[Product] ([ID], [ProductArticleNumber], [IDProductName], [IDEdIzmerenia], [ProductPrice], [ProductMaxDiscount], [IDProductManufacturer], [IDProductSupplier], [IDProductCategory], [ProductDiscountAmount], [ProductCount], [ProductDescription], [ProductPhoto], [ProductPhotoCode]) VALUES (6, N'E431R5', 3, 1, CAST(170.00 AS Decimal(19, 2)), 5, 10, 2, 3, 5, 5, N'Лакомство для собак Triol Кость из жил 7.5 см, 4шт. в уп.', N'E431R5.png', NULL)
INSERT [dbo].[Product] ([ID], [ProductArticleNumber], [IDProductName], [IDEdIzmerenia], [ProductPrice], [ProductMaxDiscount], [IDProductManufacturer], [IDProductSupplier], [IDProductCategory], [ProductDiscountAmount], [ProductCount], [ProductDescription], [ProductPhoto], [ProductPhotoCode]) VALUES (7, N'E434U6', 3, 1, CAST(140.00 AS Decimal(19, 2)), 20, 9, 2, 3, 3, 19, N'Лакомство для собак Titbit Лакомый кусочек Нарезка из говядины, 80 г', NULL, NULL)
INSERT [dbo].[Product] ([ID], [ProductArticleNumber], [IDProductName], [IDEdIzmerenia], [ProductPrice], [ProductMaxDiscount], [IDProductManufacturer], [IDProductSupplier], [IDProductCategory], [ProductDiscountAmount], [ProductCount], [ProductDescription], [ProductPhoto], [ProductPhotoCode]) VALUES (8, N'E466T6', 2, 1, CAST(3500.00 AS Decimal(19, 2)), 30, 10, 2, 3, 5, 3, N'Клетка для собак Triol 30671002 61х45.5х52 см серый/белый', NULL, NULL)
INSERT [dbo].[Product] ([ID], [ProductArticleNumber], [IDProductName], [IDEdIzmerenia], [ProductPrice], [ProductMaxDiscount], [IDProductManufacturer], [IDProductSupplier], [IDProductCategory], [ProductDiscountAmount], [ProductCount], [ProductDescription], [ProductPhoto], [ProductPhotoCode]) VALUES (9, N'E532Q5', 3, 1, CAST(166.00 AS Decimal(19, 2)), 15, 9, 1, 3, 5, 18, N'Лакомство для собак Titbit Печенье Био Десерт с лососем стандарт, 350 г', N'E532Q5.jpg', NULL)
INSERT [dbo].[Product] ([ID], [ProductArticleNumber], [IDProductName], [IDEdIzmerenia], [ProductPrice], [ProductMaxDiscount], [IDProductManufacturer], [IDProductSupplier], [IDProductCategory], [ProductDiscountAmount], [ProductCount], [ProductDescription], [ProductPhoto], [ProductPhotoCode]) VALUES (10, N'F432F4', 7, 1, CAST(1200.00 AS Decimal(19, 2)), 10, 8, 2, 2, 3, 15, N'Сухой корм для кошек Pro Plan с чувствительным пищеварением', N'F432F4.jpg', NULL)
INSERT [dbo].[Product] ([ID], [ProductArticleNumber], [IDProductName], [IDEdIzmerenia], [ProductPrice], [ProductMaxDiscount], [IDProductManufacturer], [IDProductSupplier], [IDProductCategory], [ProductDiscountAmount], [ProductCount], [ProductDescription], [ProductPhoto], [ProductPhotoCode]) VALUES (11, N'G345E4', 6, 1, CAST(300.00 AS Decimal(19, 2)), 5, 6, 2, 3, 3, 19, N'Мячик для собак LIKER Мячик Лайкер (6294) оранжевый', N'G345E4.jpg', NULL)
INSERT [dbo].[Product] ([ID], [ProductArticleNumber], [IDProductName], [IDEdIzmerenia], [ProductPrice], [ProductMaxDiscount], [IDProductManufacturer], [IDProductSupplier], [IDProductCategory], [ProductDiscountAmount], [ProductCount], [ProductDescription], [ProductPhoto], [ProductPhotoCode]) VALUES (12, N'G453T5', 8, 1, CAST(149.00 AS Decimal(19, 2)), 15, 12, 2, 1, 2, 7, N'Щетка-варежка True Touch для вычесывания шерсти, синий', N'G453T5.jpg', NULL)
INSERT [dbo].[Product] ([ID], [ProductArticleNumber], [IDProductName], [IDEdIzmerenia], [ProductPrice], [ProductMaxDiscount], [IDProductManufacturer], [IDProductSupplier], [IDProductCategory], [ProductDiscountAmount], [ProductCount], [ProductDescription], [ProductPhoto], [ProductPhotoCode]) VALUES (13, N'G542F5', 7, 1, CAST(2190.00 AS Decimal(19, 2)), 30, 8, 1, 3, 4, 7, N'Сухой корм для собак Pro Plan при чувствительном пищеварении, ягненок', NULL, NULL)
INSERT [dbo].[Product] ([ID], [ProductArticleNumber], [IDProductName], [IDEdIzmerenia], [ProductPrice], [ProductMaxDiscount], [IDProductManufacturer], [IDProductSupplier], [IDProductCategory], [ProductDiscountAmount], [ProductCount], [ProductDescription], [ProductPhoto], [ProductPhotoCode]) VALUES (14, N'H342F5', 1, 1, CAST(510.00 AS Decimal(19, 2)), 5, 10, 2, 3, 2, 17, N'Игрушка для собак Triol Енот 41 см 12141063 серый', NULL, NULL)
INSERT [dbo].[Product] ([ID], [ProductArticleNumber], [IDProductName], [IDEdIzmerenia], [ProductPrice], [ProductMaxDiscount], [IDProductManufacturer], [IDProductSupplier], [IDProductCategory], [ProductDiscountAmount], [ProductCount], [ProductDescription], [ProductPhoto], [ProductPhotoCode]) VALUES (15, N'H432F4', 5, 1, CAST(385.00 AS Decimal(19, 2)), 10, 10, 2, 1, 2, 17, N'Миска Triol 9002/KIDP3211/30261087 400 мл серебристый', NULL, NULL)
INSERT [dbo].[Product] ([ID], [ProductArticleNumber], [IDProductName], [IDEdIzmerenia], [ProductPrice], [ProductMaxDiscount], [IDProductManufacturer], [IDProductSupplier], [IDProductCategory], [ProductDiscountAmount], [ProductCount], [ProductDescription], [ProductPhoto], [ProductPhotoCode]) VALUES (16, N'H436R4', 1, 1, CAST(300.00 AS Decimal(19, 2)), 15, 10, 1, 3, 2, 15, N'Игрушка для собак Triol 3D плетение EC-04/12171005 бежевый', NULL, NULL)
INSERT [dbo].[Product] ([ID], [ProductArticleNumber], [IDProductName], [IDEdIzmerenia], [ProductPrice], [ProductMaxDiscount], [IDProductManufacturer], [IDProductSupplier], [IDProductCategory], [ProductDiscountAmount], [ProductCount], [ProductDescription], [ProductPhoto], [ProductPhotoCode]) VALUES (17, N'H542R6', 3, 1, CAST(177.00 AS Decimal(19, 2)), 15, 10, 2, 3, 3, 15, N'Лакомство для собак Triol Мясные полоски из кролика, 70 г', NULL, NULL)
INSERT [dbo].[Product] ([ID], [ProductArticleNumber], [IDProductName], [IDEdIzmerenia], [ProductPrice], [ProductMaxDiscount], [IDProductManufacturer], [IDProductSupplier], [IDProductCategory], [ProductDiscountAmount], [ProductCount], [ProductDescription], [ProductPhoto], [ProductPhotoCode]) VALUES (18, N'H643W2', 5, 1, CAST(292.00 AS Decimal(19, 2)), 25, 10, 1, 1, 3, 13, N'Миска Triol CB02/30231002 100 мл бежевый/голубой', NULL, NULL)
INSERT [dbo].[Product] ([ID], [ProductArticleNumber], [IDProductName], [IDEdIzmerenia], [ProductPrice], [ProductMaxDiscount], [IDProductManufacturer], [IDProductSupplier], [IDProductCategory], [ProductDiscountAmount], [ProductCount], [ProductDescription], [ProductPhoto], [ProductPhotoCode]) VALUES (19, N'K436T5', 6, 1, CAST(100.00 AS Decimal(19, 2)), 5, 10, 2, 3, 4, 21, N'Мячик для собак Triol с косточками 12101096 желтый/зеленый', NULL, NULL)
INSERT [dbo].[Product] ([ID], [ProductArticleNumber], [IDProductName], [IDEdIzmerenia], [ProductPrice], [ProductMaxDiscount], [IDProductManufacturer], [IDProductSupplier], [IDProductCategory], [ProductDiscountAmount], [ProductCount], [ProductDescription], [ProductPhoto], [ProductPhotoCode]) VALUES (20, N'K452T5', 4, 1, CAST(800.00 AS Decimal(19, 2)), 25, 13, 2, 3, 2, 17, N'Лежак для собак и кошек ZooM Lama 40х30х8 см бежевый', NULL, NULL)
INSERT [dbo].[Product] ([ID], [ProductArticleNumber], [IDProductName], [IDEdIzmerenia], [ProductPrice], [ProductMaxDiscount], [IDProductManufacturer], [IDProductSupplier], [IDProductCategory], [ProductDiscountAmount], [ProductCount], [ProductDescription], [ProductPhoto], [ProductPhotoCode]) VALUES (21, N'M356R4', 3, 1, CAST(50.00 AS Decimal(19, 2)), 5, 9, 2, 3, 4, 6, N'Лакомство для собак Titbit Гематоген мясной Classic, 35 г', NULL, NULL)
INSERT [dbo].[Product] ([ID], [ProductArticleNumber], [IDProductName], [IDEdIzmerenia], [ProductPrice], [ProductMaxDiscount], [IDProductManufacturer], [IDProductSupplier], [IDProductCategory], [ProductDiscountAmount], [ProductCount], [ProductDescription], [ProductPhoto], [ProductPhotoCode]) VALUES (22, N'Q245F5', 1, 1, CAST(510.00 AS Decimal(19, 2)), 5, 10, 2, 3, 2, 17, N'Игрушка для собак Triol Бобер 41 см 12141063 серый', NULL, NULL)
INSERT [dbo].[Product] ([ID], [ProductArticleNumber], [IDProductName], [IDEdIzmerenia], [ProductPrice], [ProductMaxDiscount], [IDProductManufacturer], [IDProductSupplier], [IDProductCategory], [ProductDiscountAmount], [ProductCount], [ProductDescription], [ProductPhoto], [ProductPhotoCode]) VALUES (23, N'R356F4', 5, 1, CAST(234.00 AS Decimal(19, 2)), 10, 7, 1, 3, 3, 17, N'Миска Nobby с рисунком Dog для собак 130 мл красный', N'R356F4.jpg', NULL)
INSERT [dbo].[Product] ([ID], [ProductArticleNumber], [IDProductName], [IDEdIzmerenia], [ProductPrice], [ProductMaxDiscount], [IDProductManufacturer], [IDProductSupplier], [IDProductCategory], [ProductDiscountAmount], [ProductCount], [ProductDescription], [ProductPhoto], [ProductPhotoCode]) VALUES (24, N'S245R4', 7, 1, CAST(280.00 AS Decimal(19, 2)), 15, 1, 2, 2, 3, 8, N'Сухой корм для кошек CAT CHOW', NULL, NULL)
INSERT [dbo].[Product] ([ID], [ProductArticleNumber], [IDProductName], [IDEdIzmerenia], [ProductPrice], [ProductMaxDiscount], [IDProductManufacturer], [IDProductSupplier], [IDProductCategory], [ProductDiscountAmount], [ProductCount], [ProductDescription], [ProductPhoto], [ProductPhotoCode]) VALUES (25, N'T432F4', 7, 1, CAST(1700.00 AS Decimal(19, 2)), 25, 2, 2, 3, 2, 5, N'Сухой корм для собак Chappi говядина по-домашнему, с овощами', N'T432F4.jpg', NULL)
INSERT [dbo].[Product] ([ID], [ProductArticleNumber], [IDProductName], [IDEdIzmerenia], [ProductPrice], [ProductMaxDiscount], [IDProductManufacturer], [IDProductSupplier], [IDProductCategory], [ProductDiscountAmount], [ProductCount], [ProductDescription], [ProductPhoto], [ProductPhotoCode]) VALUES (26, N'V352R4', 7, 1, CAST(1700.00 AS Decimal(19, 2)), 25, 2, 1, 3, 4, 9, N'Сухой корм для собак Chappi Мясное изобилие, мясное ассорти', NULL, NULL)
INSERT [dbo].[Product] ([ID], [ProductArticleNumber], [IDProductName], [IDEdIzmerenia], [ProductPrice], [ProductMaxDiscount], [IDProductManufacturer], [IDProductSupplier], [IDProductCategory], [ProductDiscountAmount], [ProductCount], [ProductDescription], [ProductPhoto], [ProductPhotoCode]) VALUES (27, N'V527T5', 1, 1, CAST(640.00 AS Decimal(19, 2)), 5, 10, 1, 3, 5, 4, N'Игрушка для собак Triol Ящерица 39 см коричневый', NULL, NULL)
INSERT [dbo].[Product] ([ID], [ProductArticleNumber], [IDProductName], [IDEdIzmerenia], [ProductPrice], [ProductMaxDiscount], [IDProductManufacturer], [IDProductSupplier], [IDProductCategory], [ProductDiscountAmount], [ProductCount], [ProductDescription], [ProductPhoto], [ProductPhotoCode]) VALUES (28, N'W548O7', 7, 1, CAST(600.00 AS Decimal(19, 2)), 15, 3, 1, 3, 5, 15, N'Сухой корм для щенков DOG CHOW Puppy, ягненок 2.5 кг', NULL, NULL)
INSERT [dbo].[Product] ([ID], [ProductArticleNumber], [IDProductName], [IDEdIzmerenia], [ProductPrice], [ProductMaxDiscount], [IDProductManufacturer], [IDProductSupplier], [IDProductCategory], [ProductDiscountAmount], [ProductCount], [ProductDescription], [ProductPhoto], [ProductPhotoCode]) VALUES (29, N'Y324F4', 3, 1, CAST(86.00 AS Decimal(19, 2)), 5, 9, 1, 3, 4, 17, N'Лакомство для собак Titbit Косточки мясные с индейкой и ягненком, 145 г', N'Y324F4.jpg', NULL)
INSERT [dbo].[Product] ([ID], [ProductArticleNumber], [IDProductName], [IDEdIzmerenia], [ProductPrice], [ProductMaxDiscount], [IDProductManufacturer], [IDProductSupplier], [IDProductCategory], [ProductDiscountAmount], [ProductCount], [ProductDescription], [ProductPhoto], [ProductPhotoCode]) VALUES (30, N'А112Т4', 3, 1, CAST(123.00 AS Decimal(19, 2)), 30, 4, 1, 2, 3, 6, N'Лакомство для кошек Dreamies Подушечки с курицей, 140 г', N'А112Т4.png', NULL)
GO
INSERT [dbo].[ProductName] ([ID], [Name]) VALUES (1, N'Игрушка')
INSERT [dbo].[ProductName] ([ID], [Name]) VALUES (2, N'Клетка')
INSERT [dbo].[ProductName] ([ID], [Name]) VALUES (3, N'Лакомство')
INSERT [dbo].[ProductName] ([ID], [Name]) VALUES (4, N'Лежак')
INSERT [dbo].[ProductName] ([ID], [Name]) VALUES (5, N'Миска')
INSERT [dbo].[ProductName] ([ID], [Name]) VALUES (6, N'Мячик')
INSERT [dbo].[ProductName] ([ID], [Name]) VALUES (7, N'Сухой корм')
INSERT [dbo].[ProductName] ([ID], [Name]) VALUES (8, N'Щетка-варежка')
GO
SET IDENTITY_INSERT [dbo].[Role] ON 

INSERT [dbo].[Role] ([RoleID], [RoleName]) VALUES (1, N'Администратор')
INSERT [dbo].[Role] ([RoleID], [RoleName]) VALUES (2, N'Клиент')
INSERT [dbo].[Role] ([RoleID], [RoleName]) VALUES (3, N'Менеджер')
SET IDENTITY_INSERT [dbo].[Role] OFF
GO
INSERT [dbo].[Status] ([id], [StatusName]) VALUES (1, N'Завершен')
INSERT [dbo].[Status] ([id], [StatusName]) VALUES (2, N'Новый ')
GO
INSERT [dbo].[Street] ([ID], [Name]) VALUES (1, N' ул. 8 Марта')
INSERT [dbo].[Street] ([ID], [Name]) VALUES (2, N' ул. Вишневая')
INSERT [dbo].[Street] ([ID], [Name]) VALUES (3, N' ул. Гоголя')
INSERT [dbo].[Street] ([ID], [Name]) VALUES (4, N' ул. Дзержинского')
INSERT [dbo].[Street] ([ID], [Name]) VALUES (5, N' ул. Зеленая')
INSERT [dbo].[Street] ([ID], [Name]) VALUES (6, N' ул. Коммунистическая')
INSERT [dbo].[Street] ([ID], [Name]) VALUES (7, N' ул. Комсомольская')
INSERT [dbo].[Street] ([ID], [Name]) VALUES (8, N' ул. Маяковского')
INSERT [dbo].[Street] ([ID], [Name]) VALUES (9, N' ул. Мичурина')
INSERT [dbo].[Street] ([ID], [Name]) VALUES (10, N' ул. Молодежная')
INSERT [dbo].[Street] ([ID], [Name]) VALUES (11, N' ул. Набережная')
INSERT [dbo].[Street] ([ID], [Name]) VALUES (12, N' ул. Некрасова')
INSERT [dbo].[Street] ([ID], [Name]) VALUES (13, N' ул. Новая')
INSERT [dbo].[Street] ([ID], [Name]) VALUES (14, N' ул. Октябрьская')
INSERT [dbo].[Street] ([ID], [Name]) VALUES (15, N' ул. Партизанская')
INSERT [dbo].[Street] ([ID], [Name]) VALUES (16, N' ул. Победы')
INSERT [dbo].[Street] ([ID], [Name]) VALUES (17, N' ул. Подгорная')
INSERT [dbo].[Street] ([ID], [Name]) VALUES (18, N' ул. Полевая')
INSERT [dbo].[Street] ([ID], [Name]) VALUES (19, N' ул. Садовая')
INSERT [dbo].[Street] ([ID], [Name]) VALUES (20, N' ул. Светлая')
INSERT [dbo].[Street] ([ID], [Name]) VALUES (21, N' ул. Северная')
INSERT [dbo].[Street] ([ID], [Name]) VALUES (22, N' ул. Солнечная')
INSERT [dbo].[Street] ([ID], [Name]) VALUES (23, N' ул. Спортивная')
INSERT [dbo].[Street] ([ID], [Name]) VALUES (24, N' ул. Фрунзе')
INSERT [dbo].[Street] ([ID], [Name]) VALUES (25, N' ул. Цветочная')
INSERT [dbo].[Street] ([ID], [Name]) VALUES (26, N' ул. Чехова')
INSERT [dbo].[Street] ([ID], [Name]) VALUES (27, N' ул. Школьная')
INSERT [dbo].[Street] ([ID], [Name]) VALUES (28, N' ул. Шоссейная')
INSERT [dbo].[Street] ([ID], [Name]) VALUES (29, N'  ул. Степная')
INSERT [dbo].[Street] ([ID], [Name]) VALUES (30, N'ул. Клубная')
GO
INSERT [dbo].[Supplier] ([ID], [Name]) VALUES (1, N'PetShop')
INSERT [dbo].[Supplier] ([ID], [Name]) VALUES (2, N'ZooMir')
GO
SET IDENTITY_INSERT [dbo].[User] ON 

INSERT [dbo].[User] ([UserID], [IdRole], [UserName], [UserLogin], [UserPassword]) VALUES (1, 1, N'Суслов Илья Арсентьевич', N'pixil59@gmail.com', N'2L6KZG')
INSERT [dbo].[User] ([UserID], [IdRole], [UserName], [UserLogin], [UserPassword]) VALUES (2, 1, N'Яковлева Ярослава Даниэльевна', N'deummecillummu-4992@mail.ru', N'uzWC67')
INSERT [dbo].[User] ([UserID], [IdRole], [UserName], [UserLogin], [UserPassword]) VALUES (3, 1, N'Игнатьева Алина Михайловна', N'vilagajaunne-5170@yandex.ru', N'8ntwUp')
INSERT [dbo].[User] ([UserID], [IdRole], [UserName], [UserLogin], [UserPassword]) VALUES (4, 3, N'Денисов Михаил Романович', N'frusubroppotou656@yandex.ru', N'YOyhfR')
INSERT [dbo].[User] ([UserID], [IdRole], [UserName], [UserLogin], [UserPassword]) VALUES (5, 3, N'Тимофеев Михаил Елисеевич', N'leuttevitrafo1998@mail.ru', N'RSbvHv')
INSERT [dbo].[User] ([UserID], [IdRole], [UserName], [UserLogin], [UserPassword]) VALUES (6, 3, N'Соловьев Ярослав Маркович', N'frapreubrulloba1141@yandex.ru', N'rwVDh9')
INSERT [dbo].[User] ([UserID], [IdRole], [UserName], [UserLogin], [UserPassword]) VALUES (7, 2, N'Филимонов Роберт Васильевич', N'loudittoimmolau1900@gmail.com', N'LdNyos')
INSERT [dbo].[User] ([UserID], [IdRole], [UserName], [UserLogin], [UserPassword]) VALUES (8, 2, N'Шилова Майя Артемьевна', N'hittuprofassa4984@mail.com', N'gynQMT')
INSERT [dbo].[User] ([UserID], [IdRole], [UserName], [UserLogin], [UserPassword]) VALUES (9, 2, N'Чистякова Виктория Степановна', N'freineiciweijau888@yandex.ru', N'AtnDjr')
INSERT [dbo].[User] ([UserID], [IdRole], [UserName], [UserLogin], [UserPassword]) VALUES (10, 2, N'Волкова Эмилия Артёмовна', N'nokupekidda2001@gmail.com', N'JlFRCZ')
SET IDENTITY_INSERT [dbo].[User] OFF
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_PickupPoint] FOREIGN KEY([OrderPickupPoint])
REFERENCES [dbo].[PickupPoint] ([ID])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_PickupPoint]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_Status] FOREIGN KEY([IDStatus])
REFERENCES [dbo].[Status] ([id])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_Status]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_User] FOREIGN KEY([OrderIDUser])
REFERENCES [dbo].[User] ([UserID])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_User]
GO
ALTER TABLE [dbo].[OrderProduct]  WITH CHECK ADD  CONSTRAINT [FK_OrderProduct_Order] FOREIGN KEY([OrderID])
REFERENCES [dbo].[Order] ([OrderID])
GO
ALTER TABLE [dbo].[OrderProduct] CHECK CONSTRAINT [FK_OrderProduct_Order]
GO
ALTER TABLE [dbo].[OrderProduct]  WITH CHECK ADD  CONSTRAINT [FK_OrderProduct_Product] FOREIGN KEY([IDProductArticleNumber])
REFERENCES [dbo].[Product] ([ID])
GO
ALTER TABLE [dbo].[OrderProduct] CHECK CONSTRAINT [FK_OrderProduct_Product]
GO
ALTER TABLE [dbo].[PickupPoint]  WITH CHECK ADD  CONSTRAINT [FK_PickupPoint_City] FOREIGN KEY([IDcity])
REFERENCES [dbo].[City] ([ID])
GO
ALTER TABLE [dbo].[PickupPoint] CHECK CONSTRAINT [FK_PickupPoint_City]
GO
ALTER TABLE [dbo].[PickupPoint]  WITH CHECK ADD  CONSTRAINT [FK_PickupPoint_Index] FOREIGN KEY([IDIndex])
REFERENCES [dbo].[Index] ([ID])
GO
ALTER TABLE [dbo].[PickupPoint] CHECK CONSTRAINT [FK_PickupPoint_Index]
GO
ALTER TABLE [dbo].[PickupPoint]  WITH CHECK ADD  CONSTRAINT [FK_PickupPoint_Street] FOREIGN KEY([IDStreet])
REFERENCES [dbo].[Street] ([ID])
GO
ALTER TABLE [dbo].[PickupPoint] CHECK CONSTRAINT [FK_PickupPoint_Street]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_Category] FOREIGN KEY([IDProductCategory])
REFERENCES [dbo].[Category] ([ID])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_Category]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_EdIzmerenia] FOREIGN KEY([IDEdIzmerenia])
REFERENCES [dbo].[EdIzmerenia] ([ID])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_EdIzmerenia]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_Manufacturer] FOREIGN KEY([IDProductManufacturer])
REFERENCES [dbo].[Manufacturer] ([ID])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_Manufacturer]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_ProductName] FOREIGN KEY([IDProductName])
REFERENCES [dbo].[ProductName] ([ID])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_ProductName]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_Supplier] FOREIGN KEY([IDProductSupplier])
REFERENCES [dbo].[Supplier] ([ID])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_Supplier]
GO
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [FK_User_Role] FOREIGN KEY([IdRole])
REFERENCES [dbo].[Role] ([RoleID])
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [FK_User_Role]
GO
USE [master]
GO
ALTER DATABASE [Trade] SET  READ_WRITE 
GO
