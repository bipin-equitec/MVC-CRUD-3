USE [master]
GO
/****** Object:  Database [MVCCRUD4]    Script Date: 20-06-2023 17:56:44 ******/
CREATE DATABASE [MVCCRUD4]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'MVCCRUD4', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER01\MSSQL\DATA\MVCCRUD4.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'MVCCRUD4_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER01\MSSQL\DATA\MVCCRUD4_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [MVCCRUD4] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [MVCCRUD4].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [MVCCRUD4] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [MVCCRUD4] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [MVCCRUD4] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [MVCCRUD4] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [MVCCRUD4] SET ARITHABORT OFF 
GO
ALTER DATABASE [MVCCRUD4] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [MVCCRUD4] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [MVCCRUD4] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [MVCCRUD4] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [MVCCRUD4] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [MVCCRUD4] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [MVCCRUD4] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [MVCCRUD4] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [MVCCRUD4] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [MVCCRUD4] SET  DISABLE_BROKER 
GO
ALTER DATABASE [MVCCRUD4] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [MVCCRUD4] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [MVCCRUD4] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [MVCCRUD4] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [MVCCRUD4] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [MVCCRUD4] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [MVCCRUD4] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [MVCCRUD4] SET RECOVERY FULL 
GO
ALTER DATABASE [MVCCRUD4] SET  MULTI_USER 
GO
ALTER DATABASE [MVCCRUD4] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [MVCCRUD4] SET DB_CHAINING OFF 
GO
ALTER DATABASE [MVCCRUD4] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [MVCCRUD4] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [MVCCRUD4] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [MVCCRUD4] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'MVCCRUD4', N'ON'
GO
ALTER DATABASE [MVCCRUD4] SET QUERY_STORE = ON
GO
ALTER DATABASE [MVCCRUD4] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [MVCCRUD4]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 20-06-2023 17:56:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ContactInfo]    Script Date: 20-06-2023 17:56:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ContactInfo](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Icon] [nvarchar](50) NULL,
	[Title] [nvarchar](50) NULL,
	[Description] [nvarchar](max) NULL,
 CONSTRAINT [PK_ContactInfo] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[emp]    Script Date: 20-06-2023 17:56:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[emp](
	[emp_id] [int] NULL,
	[emp_name] [nchar](10) NULL,
	[emp_phone] [int] NULL,
	[address] [nchar](10) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Employees]    Script Date: 20-06-2023 17:56:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employees](
	[EmpId] [int] IDENTITY(1,1) NOT NULL,
	[Username] [nvarchar](max) NOT NULL,
	[Password] [nvarchar](max) NOT NULL,
	[Email] [nvarchar](max) NOT NULL,
	[DOB] [datetime2](7) NOT NULL,
	[Phone] [nvarchar](max) NOT NULL,
	[Address] [nvarchar](max) NOT NULL,
	[Gender] [nvarchar](max) NOT NULL,
	[RecStatus] [nvarchar](1) NOT NULL,
 CONSTRAINT [PK_Employees] PRIMARY KEY CLUSTERED 
(
	[EmpId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EmpSkills]    Script Date: 20-06-2023 17:56:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EmpSkills](
	[EmpSkillId] [int] IDENTITY(1,1) NOT NULL,
	[EmpId] [int] NOT NULL,
	[SkillId] [int] NOT NULL,
 CONSTRAINT [PK_EmpSkills] PRIMARY KEY CLUSTERED 
(
	[EmpSkillId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Skills]    Script Date: 20-06-2023 17:56:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Skills](
	[SkillId] [int] IDENTITY(1,1) NOT NULL,
	[Java] [nvarchar](max) NOT NULL,
	[Python] [nvarchar](max) NOT NULL,
	[CPlusPlus] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Skills] PRIMARY KEY CLUSTERED 
(
	[SkillId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TableForName]    Script Date: 20-06-2023 17:56:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TableForName](
	[id] [int] NOT NULL,
	[name] [nchar](10) NULL,
	[lastName] [nchar](10) NULL,
 CONSTRAINT [PK_TableForName] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230619060321_init', N'7.0.7')
GO
SET IDENTITY_INSERT [dbo].[ContactInfo] ON 

INSERT [dbo].[ContactInfo] ([Id], [Icon], [Title], [Description]) VALUES (1, N'fa fa-phone', N'Phone Number', N'9892271863')
SET IDENTITY_INSERT [dbo].[ContactInfo] OFF
GO
INSERT [dbo].[emp] ([emp_id], [emp_name], [emp_phone], [address]) VALUES (1, N'Bipin     ', 98, N'IND       ')
INSERT [dbo].[emp] ([emp_id], [emp_name], [emp_phone], [address]) VALUES (2, N'Vaish     ', 49, N'AUS       ')
INSERT [dbo].[emp] ([emp_id], [emp_name], [emp_phone], [address]) VALUES (3, N'Aman      ', 22, N'USA       ')
GO
SET IDENTITY_INSERT [dbo].[Employees] ON 

INSERT [dbo].[Employees] ([EmpId], [Username], [Password], [Email], [DOB], [Phone], [Address], [Gender], [RecStatus]) VALUES (3, N'Bipin Gupta', N'123', N'bipin@gmail.com', CAST(N'2002-08-15T00:00:00.0000000' AS DateTime2), N'9892271863', N'Bhandup West', N'Male', N'D')
INSERT [dbo].[Employees] ([EmpId], [Username], [Password], [Email], [DOB], [Phone], [Address], [Gender], [RecStatus]) VALUES (5, N'Bipin', N'123', N'bipin@gmail.com', CAST(N'2023-06-30T00:00:00.0000000' AS DateTime2), N'9892271863', N'Bhandup', N'Male', N'A')
INSERT [dbo].[Employees] ([EmpId], [Username], [Password], [Email], [DOB], [Phone], [Address], [Gender], [RecStatus]) VALUES (6, N'Aman M', N'123', N'aman@gmail.com', CAST(N'2023-06-19T00:00:00.0000000' AS DateTime2), N'9892271863', N'Kurla West', N'Male', N'A')
INSERT [dbo].[Employees] ([EmpId], [Username], [Password], [Email], [DOB], [Phone], [Address], [Gender], [RecStatus]) VALUES (7, N'Sarah', N'1234', N'sarah@gmail.com', CAST(N'2002-08-16T00:00:00.0000000' AS DateTime2), N'9892271863', N'Chembur', N'Female', N'A')
INSERT [dbo].[Employees] ([EmpId], [Username], [Password], [Email], [DOB], [Phone], [Address], [Gender], [RecStatus]) VALUES (8, N'Talib', N'123456', N'talib@gmail.com', CAST(N'2023-06-25T00:00:00.0000000' AS DateTime2), N'9892271863', N'Mumbra', N'Male', N'A')
INSERT [dbo].[Employees] ([EmpId], [Username], [Password], [Email], [DOB], [Phone], [Address], [Gender], [RecStatus]) VALUES (9, N'qwerty', N'123', N'qwerty@gmail.com', CAST(N'2023-06-20T00:00:00.0000000' AS DateTime2), N'9892271863', N'Chembur', N'Female', N'A')
SET IDENTITY_INSERT [dbo].[Employees] OFF
GO
SET IDENTITY_INSERT [dbo].[EmpSkills] ON 

INSERT [dbo].[EmpSkills] ([EmpSkillId], [EmpId], [SkillId]) VALUES (3, 3, 3)
SET IDENTITY_INSERT [dbo].[EmpSkills] OFF
GO
SET IDENTITY_INSERT [dbo].[Skills] ON 

INSERT [dbo].[Skills] ([SkillId], [Java], [Python], [CPlusPlus]) VALUES (3, N'true', N'true', N'true')
INSERT [dbo].[Skills] ([SkillId], [Java], [Python], [CPlusPlus]) VALUES (4, N'true', N'false', N'true')
INSERT [dbo].[Skills] ([SkillId], [Java], [Python], [CPlusPlus]) VALUES (5, N'false', N'true', N'false')
INSERT [dbo].[Skills] ([SkillId], [Java], [Python], [CPlusPlus]) VALUES (6, N'true', N'true', N'false')
INSERT [dbo].[Skills] ([SkillId], [Java], [Python], [CPlusPlus]) VALUES (7, N'true', N'true', N'false')
INSERT [dbo].[Skills] ([SkillId], [Java], [Python], [CPlusPlus]) VALUES (8, N'false', N'false', N'true')
INSERT [dbo].[Skills] ([SkillId], [Java], [Python], [CPlusPlus]) VALUES (9, N'false', N'true', N'false')
SET IDENTITY_INSERT [dbo].[Skills] OFF
GO
INSERT [dbo].[TableForName] ([id], [name], [lastName]) VALUES (1, N'Bipin     ', N'Gupta     ')
INSERT [dbo].[TableForName] ([id], [name], [lastName]) VALUES (2, N'Aman      ', N'M         ')
INSERT [dbo].[TableForName] ([id], [name], [lastName]) VALUES (3, N'Ravi      ', N'K         ')
INSERT [dbo].[TableForName] ([id], [name], [lastName]) VALUES (4, N'Shrekant  ', N'P         ')
INSERT [dbo].[TableForName] ([id], [name], [lastName]) VALUES (5, N'Sarah     ', N'K         ')
GO
/****** Object:  Index [IX_EmpSkills_EmpId]    Script Date: 20-06-2023 17:56:44 ******/
CREATE NONCLUSTERED INDEX [IX_EmpSkills_EmpId] ON [dbo].[EmpSkills]
(
	[EmpId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_EmpSkills_SkillId]    Script Date: 20-06-2023 17:56:44 ******/
CREATE NONCLUSTERED INDEX [IX_EmpSkills_SkillId] ON [dbo].[EmpSkills]
(
	[SkillId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[EmpSkills]  WITH CHECK ADD  CONSTRAINT [FK_EmpSkills_Employees_EmpId] FOREIGN KEY([EmpId])
REFERENCES [dbo].[Employees] ([EmpId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[EmpSkills] CHECK CONSTRAINT [FK_EmpSkills_Employees_EmpId]
GO
ALTER TABLE [dbo].[EmpSkills]  WITH CHECK ADD  CONSTRAINT [FK_EmpSkills_Skills_SkillId] FOREIGN KEY([SkillId])
REFERENCES [dbo].[Skills] ([SkillId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[EmpSkills] CHECK CONSTRAINT [FK_EmpSkills_Skills_SkillId]
GO
USE [master]
GO
ALTER DATABASE [MVCCRUD4] SET  READ_WRITE 
GO
