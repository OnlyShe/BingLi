USE [master]
GO
/****** Object:  Database [yixiang]    Script Date: 2017/6/3 22:52:50 ******/
CREATE DATABASE [yixiang]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'yixiang', FILENAME = N'E:\MSSQL11.MSSQLSERVER\MSSQL\DATA\yixiang.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'yixiang_log', FILENAME = N'E:\MSSQL11.MSSQLSERVER\MSSQL\DATA\yixiang_log.ldf' , SIZE = 2048KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [yixiang] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [yixiang].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [yixiang] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [yixiang] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [yixiang] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [yixiang] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [yixiang] SET ARITHABORT OFF 
GO
ALTER DATABASE [yixiang] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [yixiang] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [yixiang] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [yixiang] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [yixiang] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [yixiang] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [yixiang] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [yixiang] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [yixiang] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [yixiang] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [yixiang] SET  DISABLE_BROKER 
GO
ALTER DATABASE [yixiang] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [yixiang] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [yixiang] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [yixiang] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [yixiang] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [yixiang] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [yixiang] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [yixiang] SET RECOVERY FULL 
GO
ALTER DATABASE [yixiang] SET  MULTI_USER 
GO
ALTER DATABASE [yixiang] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [yixiang] SET DB_CHAINING OFF 
GO
ALTER DATABASE [yixiang] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [yixiang] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
EXEC sys.sp_db_vardecimal_storage_format N'yixiang', N'ON'
GO
USE [yixiang]
GO
/****** Object:  Table [dbo].[answer]    Script Date: 2017/6/3 22:52:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[answer](
	[an_id] [int] IDENTITY(100001,1) NOT NULL,
	[an_content] [varchar](45) NOT NULL,
	[q_id] [int] NOT NULL,
	[d_id] [int] NOT NULL,
	[an_time] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[an_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[disease]    Script Date: 2017/6/3 22:52:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[disease](
	[dis_id] [int] IDENTITY(100001,1) NOT NULL,
	[dis_name] [varchar](45) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[dis_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[doctors]    Script Date: 2017/6/3 22:52:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[doctors](
	[d_id] [int] IDENTITY(100001,1) NOT NULL,
	[d_name] [varchar](45) NOT NULL,
	[h_id] [int] NOT NULL,
	[d_idcard] [nchar](18) NOT NULL,
	[pass] [nchar](45) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[d_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[explain]    Script Date: 2017/6/3 22:52:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[explain](
	[e_id] [int] IDENTITY(100001,1) NOT NULL,
	[d_id] [int] NOT NULL,
	[e_express] [varchar](45) NULL,
	[e_date] [datetime] NULL,
	[dis_id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[e_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[hospitals]    Script Date: 2017/6/3 22:52:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[hospitals](
	[h_id] [int] IDENTITY(100001,1) NOT NULL,
	[h_name] [varchar](45) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[h_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[question]    Script Date: 2017/6/3 22:52:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[question](
	[q_id] [int] IDENTITY(100001,1) NOT NULL,
	[q_content] [varchar](45) NOT NULL,
	[u_id] [int] NOT NULL,
	[q_time] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[q_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[records]    Script Date: 2017/6/3 22:52:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[records](
	[r_id] [int] IDENTITY(100001,1) NOT NULL,
	[u_name] [varchar](45) NOT NULL,
	[u_idcard] [nchar](18) NOT NULL,
	[u_sex] [char](2) NULL,
	[r_root] [nvarchar](50) NULL,
	[d_id] [int] NOT NULL,
	[dis_id] [int] NULL,
	[r_time] [datetime] NULL,
	[r_linic] [nvarchar](1000) NULL,
	[r_check] [nvarchar](1000) NULL,
	[r_treat] [nvarchar](1000) NULL,
	[r_medcine] [nvarchar](50) NULL,
	[r_cost] [nchar](45) NULL,
 CONSTRAINT [PK__records__C4762327AA7DE53B] PRIMARY KEY CLUSTERED 
(
	[r_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[users]    Script Date: 2017/6/3 22:52:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[users](
	[u_id] [int] IDENTITY(100001,1) NOT NULL,
	[u_name] [varchar](45) NOT NULL,
	[u_real_name] [varchar](45) NOT NULL,
	[u_idcard] [nchar](18) NOT NULL,
	[pass] [nchar](45) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[u_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[answer]  WITH CHECK ADD FOREIGN KEY([d_id])
REFERENCES [dbo].[doctors] ([d_id])
GO
ALTER TABLE [dbo].[answer]  WITH CHECK ADD FOREIGN KEY([q_id])
REFERENCES [dbo].[question] ([q_id])
GO
ALTER TABLE [dbo].[doctors]  WITH CHECK ADD FOREIGN KEY([h_id])
REFERENCES [dbo].[hospitals] ([h_id])
GO
ALTER TABLE [dbo].[explain]  WITH CHECK ADD FOREIGN KEY([d_id])
REFERENCES [dbo].[doctors] ([d_id])
GO
ALTER TABLE [dbo].[explain]  WITH CHECK ADD FOREIGN KEY([dis_id])
REFERENCES [dbo].[disease] ([dis_id])
GO
ALTER TABLE [dbo].[question]  WITH CHECK ADD FOREIGN KEY([u_id])
REFERENCES [dbo].[users] ([u_id])
GO
ALTER TABLE [dbo].[records]  WITH CHECK ADD  CONSTRAINT [FK__records__d_id__24927208] FOREIGN KEY([d_id])
REFERENCES [dbo].[doctors] ([d_id])
GO
ALTER TABLE [dbo].[records] CHECK CONSTRAINT [FK__records__d_id__24927208]
GO
ALTER TABLE [dbo].[records]  WITH CHECK ADD  CONSTRAINT [FK__records__dis_id__239E4DCF] FOREIGN KEY([dis_id])
REFERENCES [dbo].[disease] ([dis_id])
GO
ALTER TABLE [dbo].[records] CHECK CONSTRAINT [FK__records__dis_id__239E4DCF]
GO
ALTER TABLE [dbo].[records]  WITH CHECK ADD  CONSTRAINT [CK__records__u_sex__25869641] CHECK  (([u_sex]='男' OR [u_sex]='女'))
GO
ALTER TABLE [dbo].[records] CHECK CONSTRAINT [CK__records__u_sex__25869641]
GO
USE [master]
GO
ALTER DATABASE [yixiang] SET  READ_WRITE 
GO
