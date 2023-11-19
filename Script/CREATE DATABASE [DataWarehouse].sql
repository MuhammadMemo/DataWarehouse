
--USE [master]
--GO

--/****** Object:  Database [DataWarehouse]    Script Date: 11-04-2023 12:24:17 AM ******/
--CREATE DATABASE [DataWarehouse]
-- CONTAINMENT = NONE
-- ON  PRIMARY 
--( NAME = N'DataWarehouse', FILENAME = N'F:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\DataWarehouse_Primary.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB ), 
-- FILEGROUP [fg1] 
--( NAME = N'File_g1', FILENAME = N'F:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\File_g1.ndf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB ), 
-- FILEGROUP [fg2] 
--( NAME = N'File_g2', FILENAME = N'F:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\File_g2.ndf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB ), 
-- FILEGROUP [fg3] 
--( NAME = N'File_g3', FILENAME = N'F:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\File_g3.ndf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB ), 
-- FILEGROUP [fg4] 
--( NAME = N'File_g4', FILENAME = N'F:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\File_g4.ndf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB ), 
-- FILEGROUP [fg5] 
--( NAME = N'File_g5', FILENAME = N'F:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\File_g5.ndf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB ), 
-- FILEGROUP [fg6] 
--( NAME = N'File_g6', FILENAME = N'F:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\File_g6.ndf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB ), 
-- FILEGROUP [fg7] 
--( NAME = N'File_g7', FILENAME = N'F:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\File_g7.ndf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
-- LOG ON 
--( NAME = N'DataWarehouse_log', FILENAME = N'F:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\DataWarehouse__log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
-- WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
--GO

--IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
--begin
--EXEC [DataWarehouse].[dbo].[sp_fulltext_database] @action = 'enable'
--end
--GO

--ALTER DATABASE [DataWarehouse] SET ANSI_NULL_DEFAULT ON 
--GO

--ALTER DATABASE [DataWarehouse] SET ANSI_NULLS ON 
--GO

--ALTER DATABASE [DataWarehouse] SET ANSI_PADDING ON 
--GO

--ALTER DATABASE [DataWarehouse] SET ANSI_WARNINGS ON 
--GO

--ALTER DATABASE [DataWarehouse] SET ARITHABORT ON 
--GO

--ALTER DATABASE [DataWarehouse] SET AUTO_CLOSE OFF 
--GO

--ALTER DATABASE [DataWarehouse] SET AUTO_SHRINK OFF 
--GO

--ALTER DATABASE [DataWarehouse] SET AUTO_UPDATE_STATISTICS ON 
--GO

--ALTER DATABASE [DataWarehouse] SET CURSOR_CLOSE_ON_COMMIT OFF 
--GO

--ALTER DATABASE [DataWarehouse] SET CURSOR_DEFAULT  LOCAL 
--GO

--ALTER DATABASE [DataWarehouse] SET CONCAT_NULL_YIELDS_NULL ON 
--GO

--ALTER DATABASE [DataWarehouse] SET NUMERIC_ROUNDABORT OFF 
--GO

--ALTER DATABASE [DataWarehouse] SET QUOTED_IDENTIFIER ON 
--GO

--ALTER DATABASE [DataWarehouse] SET RECURSIVE_TRIGGERS OFF 
--GO

--ALTER DATABASE [DataWarehouse] SET  DISABLE_BROKER 
--GO

--ALTER DATABASE [DataWarehouse] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
--GO

--ALTER DATABASE [DataWarehouse] SET DATE_CORRELATION_OPTIMIZATION OFF 
--GO

--ALTER DATABASE [DataWarehouse] SET TRUSTWORTHY OFF 
--GO

--ALTER DATABASE [DataWarehouse] SET ALLOW_SNAPSHOT_ISOLATION OFF 
--GO

--ALTER DATABASE [DataWarehouse] SET PARAMETERIZATION SIMPLE 
--GO

--ALTER DATABASE [DataWarehouse] SET READ_COMMITTED_SNAPSHOT OFF 
--GO

--ALTER DATABASE [DataWarehouse] SET HONOR_BROKER_PRIORITY OFF 
--GO

--ALTER DATABASE [DataWarehouse] SET RECOVERY SIMPLE 
--GO

--ALTER DATABASE [DataWarehouse] SET  MULTI_USER 
--GO

--ALTER DATABASE [DataWarehouse] SET PAGE_VERIFY NONE  
--GO

--ALTER DATABASE [DataWarehouse] SET DB_CHAINING OFF 
--GO

--ALTER DATABASE [DataWarehouse] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
--GO

--ALTER DATABASE [DataWarehouse] SET TARGET_RECOVERY_TIME = 0 SECONDS 
--GO

--ALTER DATABASE [DataWarehouse] SET DELAYED_DURABILITY = DISABLED 
--GO

--ALTER DATABASE [DataWarehouse] SET ACCELERATED_DATABASE_RECOVERY = OFF  
--GO

--ALTER DATABASE [DataWarehouse] SET QUERY_STORE = OFF
--GO

--ALTER DATABASE [DataWarehouse] SET  READ_WRITE 
--GO

