USE [master]
GO
/****** Object:  Database [SIRKET]    Script Date: 7.01.2024 12:07:04 ******/
CREATE DATABASE [SIRKET]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'SIRKET', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\SIRKET.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'SIRKET_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\SIRKET_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [SIRKET] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [SIRKET].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [SIRKET] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [SIRKET] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [SIRKET] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [SIRKET] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [SIRKET] SET ARITHABORT OFF 
GO
ALTER DATABASE [SIRKET] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [SIRKET] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [SIRKET] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [SIRKET] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [SIRKET] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [SIRKET] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [SIRKET] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [SIRKET] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [SIRKET] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [SIRKET] SET  ENABLE_BROKER 
GO
ALTER DATABASE [SIRKET] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [SIRKET] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [SIRKET] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [SIRKET] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [SIRKET] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [SIRKET] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [SIRKET] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [SIRKET] SET RECOVERY FULL 
GO
ALTER DATABASE [SIRKET] SET  MULTI_USER 
GO
ALTER DATABASE [SIRKET] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [SIRKET] SET DB_CHAINING OFF 
GO
ALTER DATABASE [SIRKET] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [SIRKET] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [SIRKET] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [SIRKET] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'SIRKET', N'ON'
GO
ALTER DATABASE [SIRKET] SET QUERY_STORE = ON
GO
ALTER DATABASE [SIRKET] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [SIRKET]
GO
/****** Object:  Table [dbo].[__MigrationHistory]    Script Date: 7.01.2024 12:07:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__MigrationHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ContextKey] [nvarchar](300) NOT NULL,
	[Model] [varbinary](max) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK_dbo.__MigrationHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC,
	[ContextKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[musteri]    Script Date: 7.01.2024 12:07:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[musteri](
	[musteriID] [int] IDENTITY(1,1) NOT NULL,
	[musteriAdi] [nvarchar](50) NOT NULL,
	[musteriSoyadi] [nvarchar](50) NOT NULL,
	[urun_urunID] [int] NULL,
 CONSTRAINT [PK_dbo.musteri] PRIMARY KEY CLUSTERED 
(
	[musteriID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[personel]    Script Date: 7.01.2024 12:07:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[personel](
	[personelID] [int] IDENTITY(1,1) NOT NULL,
	[personelAdi] [nvarchar](50) NOT NULL,
	[personelSoyadi] [nvarchar](50) NOT NULL,
	[proje_projeID] [int] NULL,
	[unvan_unvanID] [int] NULL,
	[uzmanlik_uzmanlikID] [int] NULL,
 CONSTRAINT [PK_dbo.personel] PRIMARY KEY CLUSTERED 
(
	[personelID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[proje]    Script Date: 7.01.2024 12:07:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[proje](
	[projeID] [int] IDENTITY(1,1) NOT NULL,
	[projeAdi] [nvarchar](50) NOT NULL,
	[urun_urunID] [int] NULL,
 CONSTRAINT [PK_dbo.proje] PRIMARY KEY CLUSTERED 
(
	[projeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[unvan]    Script Date: 7.01.2024 12:07:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[unvan](
	[unvanID] [int] IDENTITY(1,1) NOT NULL,
	[unvanAdi] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_dbo.unvan] PRIMARY KEY CLUSTERED 
(
	[unvanID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[urun]    Script Date: 7.01.2024 12:07:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[urun](
	[urunID] [int] IDENTITY(1,1) NOT NULL,
	[urunAdi] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_dbo.urun] PRIMARY KEY CLUSTERED 
(
	[urunID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[uzmanlik]    Script Date: 7.01.2024 12:07:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[uzmanlik](
	[uzmanlikID] [int] IDENTITY(1,1) NOT NULL,
	[uzmanlikAdi] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_dbo.uzmanlik] PRIMARY KEY CLUSTERED 
(
	[uzmanlikID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IX_urun_urunID]    Script Date: 7.01.2024 12:07:04 ******/
CREATE NONCLUSTERED INDEX [IX_urun_urunID] ON [dbo].[musteri]
(
	[urun_urunID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_proje_projeID]    Script Date: 7.01.2024 12:07:04 ******/
CREATE NONCLUSTERED INDEX [IX_proje_projeID] ON [dbo].[personel]
(
	[proje_projeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_unvan_unvanID]    Script Date: 7.01.2024 12:07:04 ******/
CREATE NONCLUSTERED INDEX [IX_unvan_unvanID] ON [dbo].[personel]
(
	[unvan_unvanID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_uzmanlik_uzmanlikID]    Script Date: 7.01.2024 12:07:04 ******/
CREATE NONCLUSTERED INDEX [IX_uzmanlik_uzmanlikID] ON [dbo].[personel]
(
	[uzmanlik_uzmanlikID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_urun_urunID]    Script Date: 7.01.2024 12:07:04 ******/
CREATE NONCLUSTERED INDEX [IX_urun_urunID] ON [dbo].[proje]
(
	[urun_urunID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[musteri]  WITH CHECK ADD  CONSTRAINT [FK_dbo.musteri_dbo.urun_urun_urunID] FOREIGN KEY([urun_urunID])
REFERENCES [dbo].[urun] ([urunID])
GO
ALTER TABLE [dbo].[musteri] CHECK CONSTRAINT [FK_dbo.musteri_dbo.urun_urun_urunID]
GO
ALTER TABLE [dbo].[personel]  WITH CHECK ADD  CONSTRAINT [FK_dbo.personel_dbo.proje_proje_projeID] FOREIGN KEY([proje_projeID])
REFERENCES [dbo].[proje] ([projeID])
GO
ALTER TABLE [dbo].[personel] CHECK CONSTRAINT [FK_dbo.personel_dbo.proje_proje_projeID]
GO
ALTER TABLE [dbo].[personel]  WITH CHECK ADD  CONSTRAINT [FK_dbo.personel_dbo.unvan_unvan_unvanID] FOREIGN KEY([unvan_unvanID])
REFERENCES [dbo].[unvan] ([unvanID])
GO
ALTER TABLE [dbo].[personel] CHECK CONSTRAINT [FK_dbo.personel_dbo.unvan_unvan_unvanID]
GO
ALTER TABLE [dbo].[personel]  WITH CHECK ADD  CONSTRAINT [FK_dbo.personel_dbo.uzmanlik_uzmanlik_uzmanlikID] FOREIGN KEY([uzmanlik_uzmanlikID])
REFERENCES [dbo].[uzmanlik] ([uzmanlikID])
GO
ALTER TABLE [dbo].[personel] CHECK CONSTRAINT [FK_dbo.personel_dbo.uzmanlik_uzmanlik_uzmanlikID]
GO
ALTER TABLE [dbo].[proje]  WITH CHECK ADD  CONSTRAINT [FK_dbo.proje_dbo.urun_urun_urunID] FOREIGN KEY([urun_urunID])
REFERENCES [dbo].[urun] ([urunID])
GO
ALTER TABLE [dbo].[proje] CHECK CONSTRAINT [FK_dbo.proje_dbo.urun_urun_urunID]
GO
USE [master]
GO
ALTER DATABASE [SIRKET] SET  READ_WRITE 
GO
