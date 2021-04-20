USE [master]
GO
/****** Object:  Database [IStoreApp]    Script Date: 12/22/2019 5:34:10 PM ******/
CREATE DATABASE [IStoreApp]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'IStoreApp', FILENAME = N'E:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\IStoreApp.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'IStoreApp_log', FILENAME = N'E:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\IStoreApp_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [IStoreApp].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [IStoreApp] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [IStoreApp] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [IStoreApp] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [IStoreApp] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [IStoreApp] SET ARITHABORT OFF 
GO
ALTER DATABASE [IStoreApp] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [IStoreApp] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [IStoreApp] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [IStoreApp] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [IStoreApp] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [IStoreApp] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [IStoreApp] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [IStoreApp] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [IStoreApp] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [IStoreApp] SET  ENABLE_BROKER 
GO
ALTER DATABASE [IStoreApp] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [IStoreApp] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [IStoreApp] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [IStoreApp] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [IStoreApp] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [IStoreApp] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [IStoreApp] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [IStoreApp] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [IStoreApp] SET  MULTI_USER 
GO
ALTER DATABASE [IStoreApp] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [IStoreApp] SET DB_CHAINING OFF 
GO
ALTER DATABASE [IStoreApp] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [IStoreApp] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [IStoreApp] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [IStoreApp] SET QUERY_STORE = OFF
GO
USE [IStoreApp]
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET MAXDOP = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET LEGACY_CARDINALITY_ESTIMATION = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET PARAMETER_SNIFFING = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET QUERY_OPTIMIZER_HOTFIXES = PRIMARY;
GO
USE [IStoreApp]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 12/22/2019 5:34:10 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Books]    Script Date: 12/22/2019 5:34:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Books](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Author] [nvarchar](max) NULL,
	[Description] [nvarchar](max) NULL,
	[Price] [float] NOT NULL,
	[Rating] [int] NOT NULL,
	[Stock] [int] NOT NULL,
	[Image] [nvarchar](max) NULL,
 CONSTRAINT [PK_Books] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20191221184225_InitialCreate', N'2.1.8-servicing-32085')
GO
SET IDENTITY_INSERT [dbo].[Books] ON 

GO
INSERT [dbo].[Books] ([Id], [Name], [Author], [Description], [Price], [Rating], [Stock], [Image]) VALUES (1, N'Lorem ipsum dolor sit amet', N'Juanita Fowler', N'Lorem ipsum dolor sit amet, cum postea laoreet eu. Ne duo minimum percipitur, tempor accumsan in vel, iriure constituto ius cu. Mea ne dictas scribentur signiferumque. Quo ne nonumy civibus, an vix viderer voluptua. Id praesent honestatis sit, eu nec omnis convenire intellegat, habeo efficiantur ad sed. Usu ad diam salutandi, est et nibh necessitatibus.', 10, 5, 100, N'1.png')
GO
INSERT [dbo].[Books] ([Id], [Name], [Author], [Description], [Price], [Rating], [Stock], [Image]) VALUES (2, N'Eu vim lorem ridens', N'Jenna Parks', N'Eu vim lorem ridens, eum molestie quaestio no. Saepe forensibus necessitatibus eu cum, mel cu perpetua euripidis moderatius. Sale dicta ullamcorper pro ei. Molestie interpretaris cum et, ex fugit eloquentiam mea. Ea copiosae euripidis scripserit eos, pri dicam fastidii maiestatis at.', 12, 4, 100, N'2.png')
GO
INSERT [dbo].[Books] ([Id], [Name], [Author], [Description], [Price], [Rating], [Stock], [Image]) VALUES (3, N'Mea ex sumo aperiam', N'Belinda Ortiz', N'Mea ex sumo aperiam. An per nostro iisque voluptaria. Omittam appareat vim et, an usu tantas audiam argumentum. An vel vero altera, qui audiam aeterno in, ridens neglegentur cu eos. Meis honestatis ad vis, nobis salutandi scriptorem an mea. Pro amet vidisse luptatum cu, usu ea accusam vivendum rationibus.', 8, 2, 100, N'3.png')
GO
INSERT [dbo].[Books] ([Id], [Name], [Author], [Description], [Price], [Rating], [Stock], [Image]) VALUES (4, N'Eos et mentitum recteque', N'Monique Reeves', N'Eos et mentitum recteque. Ea consequat torquatos mel, eu quaestio imperdiet est. Per eruditi appetere argumentum ex, quo ne graece iracundia moderatius, cum ea nostro praesent. Tale esse ius ut, et mea conceptam inciderint. Eum eu ignota mediocritatem, at essent eripuit patrioque nam.', 17, 4, 50, N'4.png')
GO
INSERT [dbo].[Books] ([Id], [Name], [Author], [Description], [Price], [Rating], [Stock], [Image]) VALUES (5, N'At quidam integre pri', N'Shelly Franklin', N'At quidam integre pri. No integre accusata efficiendi sea, et qui posse partiendo. Eu ius ludus saepe detraxit, alia viris petentium cu nam. Congue instructior ei sit. Vix an viris platonem. Eum facete pertinacia te, dicant hendrerit mei ut, no his vero officiis.', 15, 4, 100, N'5.png')
GO
INSERT [dbo].[Books] ([Id], [Name], [Author], [Description], [Price], [Rating], [Stock], [Image]) VALUES (6, N'Eam cu justo legimus omittam', N'Monique Reeves', N'Eam cu justo legimus omittam, pro voluptua electram iracundia te. At nullam diceret debitis sit, vel bonorum eloquentiam ut. Prompta ponderum patrioque pro no, nec ut petentium posidonium, vix ex delicata adversarium accommodare. Ridens blandit ei cum, pro et salutatus evertitur intellegat. Congue ridens perfecto ne pro, id malis tollit discere duo. Ne eum oratio mucius, quo cu quodsi fabulas mnesarchum.', 12, 5, 112, N'6.png')
GO
INSERT [dbo].[Books] ([Id], [Name], [Author], [Description], [Price], [Rating], [Stock], [Image]) VALUES (7, N'Nisl harum propriae te has', N'Monique Reeves', N'Nisl harum propriae te has, est ea saepe eleifend pertinacia. Cum omnis ubique at, pri idque minim ad, eum tantas eirmod eu. Summo probatus ut pri. Tale elit iusto per no. No vel vivendo sensibus honestatis, cu nihil scripta electram his.', 2, 4, 100, N'7.png')
GO
INSERT [dbo].[Books] ([Id], [Name], [Author], [Description], [Price], [Rating], [Stock], [Image]) VALUES (8, N'Eu vim lorem ridens', N'Casey Baldwin', N'Eu vim lorem ridens, eum molestie quaestio no. Saepe forensibus necessitatibus eu cum, mel cu perpetua euripidis moderatius. Sale dicta ullamcorper pro ei. Molestie interpretaris cum et, ex fugit eloquentiam mea. Ea copiosae euripidis scripserit eos, pri dicam fastidii maiestatis at.', 18, 5, 100, N'8.png')
GO
INSERT [dbo].[Books] ([Id], [Name], [Author], [Description], [Price], [Rating], [Stock], [Image]) VALUES (9, N'Te atqui sonet sensibus vim', N'Monique Reeves', N'Te atqui sonet sensibus vim. Id eam summo elaboraret intellegam, ex eam vide molestie. Id audire vulputate eum, sumo habeo volumus cu mel. Alii purto zril mea ut. Decore quidam dissentiunt ut eum. Imperdiet reprehendunt sea ne, qui rebum velit te. Cu ridens melius vis, cu sea aperiam fabellas disputando.', 15, 4, 100, N'9.png')
GO
INSERT [dbo].[Books] ([Id], [Name], [Author], [Description], [Price], [Rating], [Stock], [Image]) VALUES (10, N'Ex modo brute virtute mel', N'Casey Baldwin', N'Ex modo brute virtute mel. Ei errem scaevola deseruisse sea, no percipitur definitionem duo, ei decore detracto usu. Eum veniam praesent moderatius cu. Vel clita quaeque platonem at. Eum id omnes pertinax, congue invidunt interesset te vel, et mea regione euismod deterruisset. Erant aeque ne mea.', 22, 1, 100, N'10.png')
GO
INSERT [dbo].[Books] ([Id], [Name], [Author], [Description], [Price], [Rating], [Stock], [Image]) VALUES (11, N'Ei quo omnis solet petentium', N'Monique Reeves', N'Ei quo omnis solet petentium, at quo praesent pericula. Est ut cibo movet, usu consequat constituam te, pro cu case vituperatoribus. Quo dico timeam oblique cu, eu habemus percipitur dissentiet vix. Eirmod suavitate qualisque duo ne, sed option aperiam ad. Ne vim dicat congue, vocent principes duo no.', 12, 5, 100, N'11.png')
GO
INSERT [dbo].[Books] ([Id], [Name], [Author], [Description], [Price], [Rating], [Stock], [Image]) VALUES (12, N'Eu vim lorem ridens', N'Monique Reeves', N'Eu vim lorem ridens, eum molestie quaestio no. Saepe forensibus necessitatibus eu cum, mel cu perpetua euripidis moderatius. Sale dicta ullamcorper pro ei. Molestie interpretaris cum et, ex fugit eloquentiam mea. Ea copiosae euripidis scripserit eos, pri dicam fastidii maiestatis at.', 14, 4, 100, N'12.png')
GO
INSERT [dbo].[Books] ([Id], [Name], [Author], [Description], [Price], [Rating], [Stock], [Image]) VALUES (13, N'Per ea illud primis volutpat', N'Glen Soto', N'Per ea illud primis volutpat. Ut dolorum intellegebat eos. Elit eligendi at nec, an eros philosophia ius, facer altera vel at. Alterum voluptua an duo, lorem antiopam ex mea.', 9, 5, 100, N'13.png')
GO
INSERT [dbo].[Books] ([Id], [Name], [Author], [Description], [Price], [Rating], [Stock], [Image]) VALUES (14, N'Usu liber dolor cu', N'Alberto Rhodes', N'Usu liber dolor cu, mei consul mucius offendit eu. Eam ex magna antiopam, eos mutat senserit praesent ex. Mei posse nulla id, sanctus iudicabit eum no. Sea id intellegam disputando. Ad qui soleat postea, hinc elit volutpat cu nam. Ad eos posse possim, laudem elaboraret mediocritatem no pri.', 4, 1, 100, N'14.png')
GO
INSERT [dbo].[Books] ([Id], [Name], [Author], [Description], [Price], [Rating], [Stock], [Image]) VALUES (15, N'Eu vim lorem ridens', N'Monique Reeves', N'Eu vim lorem ridens, eum molestie quaestio no. Saepe forensibus necessitatibus eu cum, mel cu perpetua euripidis moderatius. Sale dicta ullamcorper pro ei. Molestie interpretaris cum et, ex fugit eloquentiam mea. Ea copiosae euripidis scripserit eos, pri dicam fastidii maiestatis at.', 7, 2, 100, N'15.png')
GO
SET IDENTITY_INSERT [dbo].[Books] OFF
GO
USE [master]
GO
ALTER DATABASE [IStoreApp] SET  READ_WRITE 
GO
