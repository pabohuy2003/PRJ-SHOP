USE [master]
GO
/****** Object:  Database [PRJShop]    Script Date: 5/21/2023 10:38:40 PM ******/
CREATE DATABASE [PRJShop]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'PRJShop', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\PRJShop.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'PRJShop_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\PRJShop_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [PRJShop] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [PRJShop].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [PRJShop] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [PRJShop] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [PRJShop] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [PRJShop] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [PRJShop] SET ARITHABORT OFF 
GO
ALTER DATABASE [PRJShop] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [PRJShop] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [PRJShop] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [PRJShop] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [PRJShop] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [PRJShop] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [PRJShop] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [PRJShop] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [PRJShop] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [PRJShop] SET  DISABLE_BROKER 
GO
ALTER DATABASE [PRJShop] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [PRJShop] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [PRJShop] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [PRJShop] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [PRJShop] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [PRJShop] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [PRJShop] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [PRJShop] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [PRJShop] SET  MULTI_USER 
GO
ALTER DATABASE [PRJShop] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [PRJShop] SET DB_CHAINING OFF 
GO
ALTER DATABASE [PRJShop] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [PRJShop] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [PRJShop] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [PRJShop] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [PRJShop] SET QUERY_STORE = OFF
GO
USE [PRJShop]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 5/21/2023 10:38:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account](
	[accountId] [int] IDENTITY(1,1) NOT NULL,
	[accountEmail] [nvarchar](200) NULL,
	[accountPassword] [nvarchar](200) NULL,
	[roleId] [int] NULL,
	[accountDeleted] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[accountId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AccountContact]    Script Date: 5/21/2023 10:38:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AccountContact](
	[accountContactId] [int] IDENTITY(1,1) NOT NULL,
	[accountId] [int] NULL,
	[districtId] [int] NULL,
	[accountContactAddress] [nvarchar](200) NULL,
	[accountContactName] [nvarchar](200) NULL,
	[accountContactMobile] [nvarchar](200) NULL,
	[accountContactDefault] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[accountContactId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AccountDetail]    Script Date: 5/21/2023 10:38:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AccountDetail](
	[accountDetailId] [int] IDENTITY(1,1) NOT NULL,
	[accountId] [int] NULL,
	[accountDetailName] [nvarchar](200) NULL,
	[accountDetailDob] [date] NULL,
	[accountDetailDoc] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[accountDetailId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 5/21/2023 10:38:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[categoryId] [int] IDENTITY(1,1) NOT NULL,
	[categoryName] [nvarchar](200) NULL,
PRIMARY KEY CLUSTERED 
(
	[categoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[City]    Script Date: 5/21/2023 10:38:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[City](
	[cityId] [int] IDENTITY(1,1) NOT NULL,
	[cityName] [nvarchar](200) NULL,
PRIMARY KEY CLUSTERED 
(
	[cityId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[District]    Script Date: 5/21/2023 10:38:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[District](
	[districtId] [int] IDENTITY(1,1) NOT NULL,
	[districtName] [nvarchar](200) NULL,
	[cityId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[districtId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order]    Script Date: 5/21/2023 10:38:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[orderId] [int] IDENTITY(1,1) NOT NULL,
	[accountId] [int] NULL,
	[orderCreateDate] [date] NULL,
	[orderExpectedDate] [date] NULL,
	[orderDoneDate] [date] NULL,
	[orderNameContact] [nvarchar](200) NULL,
	[orderPhoneContact] [nvarchar](200) NULL,
	[orderAddressContact] [nvarchar](200) NULL,
	[orderTotalMoney] [int] NULL,
	[orderStatusId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[orderId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderDetail]    Script Date: 5/21/2023 10:38:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetail](
	[orderDetailId] [int] IDENTITY(1,1) NOT NULL,
	[orderId] [int] NULL,
	[productId] [int] NULL,
	[orderDetailProductImg] [nvarchar](500) NULL,
	[orderDetailProductName] [nvarchar](200) NULL,
	[orderDetailPriceProduct] [bigint] NULL,
	[orderDetailSizeValue] [nvarchar](200) NULL,
	[orderDetailQuantity] [int] NULL,
	[orderDetailTotalMoney] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[orderDetailId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderStatus]    Script Date: 5/21/2023 10:38:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderStatus](
	[orderStatusId] [int] IDENTITY(1,1) NOT NULL,
	[orderStatusName] [nvarchar](200) NULL,
PRIMARY KEY CLUSTERED 
(
	[orderStatusId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 5/21/2023 10:38:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[productId] [int] IDENTITY(1,1) NOT NULL,
	[productName] [nvarchar](200) NULL,
	[productImg] [nvarchar](200) NULL,
	[productPrice] [int] NULL,
	[productDescription] [nvarchar](1000) NULL,
	[categoryId] [int] NULL,
	[productStatusId] [int] NULL,
	[productDeleted] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[productId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductImgDetail]    Script Date: 5/21/2023 10:38:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductImgDetail](
	[productImgDetailId] [int] IDENTITY(1,1) NOT NULL,
	[productId] [int] NULL,
	[productImgDetail] [nvarchar](200) NULL,
PRIMARY KEY CLUSTERED 
(
	[productImgDetailId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductSize]    Script Date: 5/21/2023 10:38:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductSize](
	[productSizeId] [int] IDENTITY(1,1) NOT NULL,
	[productId] [int] NULL,
	[sizeId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[productSizeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductStatus]    Script Date: 5/21/2023 10:38:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductStatus](
	[productStatusId] [int] IDENTITY(1,1) NOT NULL,
	[productStatusName] [nvarchar](200) NULL,
PRIMARY KEY CLUSTERED 
(
	[productStatusId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 5/21/2023 10:38:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[roleId] [int] IDENTITY(1,1) NOT NULL,
	[roleName] [nvarchar](200) NULL,
PRIMARY KEY CLUSTERED 
(
	[roleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Size]    Script Date: 5/21/2023 10:38:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Size](
	[sizeId] [int] IDENTITY(1,1) NOT NULL,
	[sizeValue] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[sizeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Account] ON 

INSERT [dbo].[Account] ([accountId], [accountEmail], [accountPassword], [roleId], [accountDeleted]) VALUES (1, N'quoc', N'sdasd', 2, 0)
INSERT [dbo].[Account] ([accountId], [accountEmail], [accountPassword], [roleId], [accountDeleted]) VALUES (2, N'quyquoc2002@gmail.com', N'Shironeko02', 2, 0)
INSERT [dbo].[Account] ([accountId], [accountEmail], [accountPassword], [roleId], [accountDeleted]) VALUES (3, N'linhnvhe170399@fpt.edu.vn', N'123456', 2, 0)
SET IDENTITY_INSERT [dbo].[Account] OFF
GO
SET IDENTITY_INSERT [dbo].[AccountDetail] ON 

INSERT [dbo].[AccountDetail] ([accountDetailId], [accountId], [accountDetailName], [accountDetailDob], [accountDetailDoc]) VALUES (3, 3, N'Linh Linh', NULL, CAST(N'2023-05-21' AS Date))
SET IDENTITY_INSERT [dbo].[AccountDetail] OFF
GO
SET IDENTITY_INSERT [dbo].[Role] ON 

INSERT [dbo].[Role] ([roleId], [roleName]) VALUES (1, N'ADMIN')
INSERT [dbo].[Role] ([roleId], [roleName]) VALUES (2, N'USER')
SET IDENTITY_INSERT [dbo].[Role] OFF
GO
ALTER TABLE [dbo].[Account]  WITH CHECK ADD  CONSTRAINT [FK_Account_Role] FOREIGN KEY([roleId])
REFERENCES [dbo].[Role] ([roleId])
GO
ALTER TABLE [dbo].[Account] CHECK CONSTRAINT [FK_Account_Role]
GO
ALTER TABLE [dbo].[AccountContact]  WITH CHECK ADD  CONSTRAINT [FK_AccountContact_Account] FOREIGN KEY([accountId])
REFERENCES [dbo].[Account] ([accountId])
GO
ALTER TABLE [dbo].[AccountContact] CHECK CONSTRAINT [FK_AccountContact_Account]
GO
ALTER TABLE [dbo].[AccountContact]  WITH CHECK ADD  CONSTRAINT [FK_AccountContact_District] FOREIGN KEY([districtId])
REFERENCES [dbo].[District] ([districtId])
GO
ALTER TABLE [dbo].[AccountContact] CHECK CONSTRAINT [FK_AccountContact_District]
GO
ALTER TABLE [dbo].[AccountDetail]  WITH CHECK ADD  CONSTRAINT [FK_AccountDetail_Account] FOREIGN KEY([accountId])
REFERENCES [dbo].[Account] ([accountId])
GO
ALTER TABLE [dbo].[AccountDetail] CHECK CONSTRAINT [FK_AccountDetail_Account]
GO
ALTER TABLE [dbo].[District]  WITH CHECK ADD  CONSTRAINT [FK_District_City] FOREIGN KEY([cityId])
REFERENCES [dbo].[City] ([cityId])
GO
ALTER TABLE [dbo].[District] CHECK CONSTRAINT [FK_District_City]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_Account] FOREIGN KEY([accountId])
REFERENCES [dbo].[Account] ([accountId])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_Account]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_OrderStatus] FOREIGN KEY([orderStatusId])
REFERENCES [dbo].[OrderStatus] ([orderStatusId])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_OrderStatus]
GO
ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetail_Order] FOREIGN KEY([orderId])
REFERENCES [dbo].[Order] ([orderId])
GO
ALTER TABLE [dbo].[OrderDetail] CHECK CONSTRAINT [FK_OrderDetail_Order]
GO
ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetail_Product] FOREIGN KEY([productId])
REFERENCES [dbo].[Product] ([productId])
GO
ALTER TABLE [dbo].[OrderDetail] CHECK CONSTRAINT [FK_OrderDetail_Product]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_Category] FOREIGN KEY([categoryId])
REFERENCES [dbo].[Category] ([categoryId])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_Category]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_ProductStatus] FOREIGN KEY([productStatusId])
REFERENCES [dbo].[ProductStatus] ([productStatusId])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_ProductStatus]
GO
ALTER TABLE [dbo].[ProductImgDetail]  WITH CHECK ADD  CONSTRAINT [FK_ProductImgDetail_Product] FOREIGN KEY([productId])
REFERENCES [dbo].[Product] ([productId])
GO
ALTER TABLE [dbo].[ProductImgDetail] CHECK CONSTRAINT [FK_ProductImgDetail_Product]
GO
ALTER TABLE [dbo].[ProductSize]  WITH CHECK ADD  CONSTRAINT [FK_ProductSize_Product] FOREIGN KEY([productId])
REFERENCES [dbo].[Product] ([productId])
GO
ALTER TABLE [dbo].[ProductSize] CHECK CONSTRAINT [FK_ProductSize_Product]
GO
ALTER TABLE [dbo].[ProductSize]  WITH CHECK ADD  CONSTRAINT [FK_ProductSize_Size] FOREIGN KEY([sizeId])
REFERENCES [dbo].[Size] ([sizeId])
GO
ALTER TABLE [dbo].[ProductSize] CHECK CONSTRAINT [FK_ProductSize_Size]
GO
USE [master]
GO
ALTER DATABASE [PRJShop] SET  READ_WRITE 
GO
