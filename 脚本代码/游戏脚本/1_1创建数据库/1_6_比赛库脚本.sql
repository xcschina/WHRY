USE [master]
GO
/****** 对象:  Database [RYGameMatchDB]    脚本日期: 07/29/2014 16:13:25 ******/
CREATE DATABASE [RYGameMatchDB] ON  PRIMARY 
( NAME = N'RYGameMatchDB', FILENAME = N'E:\数据库\荣耀平台\RYGameMatchDB.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'RYGameMatchDB_log', FILENAME = N'E:\数据库\荣耀平台\RYGameMatchDB_log.LDF' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
 COLLATE Chinese_PRC_CI_AS
GO
EXEC dbo.sp_dbcmptlevel @dbname=N'RYGameMatchDB', @new_cmptlevel=90
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [RYGameMatchDB].[dbo].[sp_fulltext_database] @action = 'disable'
end
GO
ALTER DATABASE [RYGameMatchDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [RYGameMatchDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [RYGameMatchDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [RYGameMatchDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [RYGameMatchDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [RYGameMatchDB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [RYGameMatchDB] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [RYGameMatchDB] SET AUTO_SHRINK ON 
GO
ALTER DATABASE [RYGameMatchDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [RYGameMatchDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [RYGameMatchDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [RYGameMatchDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [RYGameMatchDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [RYGameMatchDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [RYGameMatchDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [RYGameMatchDB] SET  DISABLE_BROKER 
GO
ALTER DATABASE [RYGameMatchDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [RYGameMatchDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [RYGameMatchDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [RYGameMatchDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [RYGameMatchDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [RYGameMatchDB] SET  READ_WRITE 
GO
ALTER DATABASE [RYGameMatchDB] SET RECOVERY FULL 
GO
ALTER DATABASE [RYGameMatchDB] SET  MULTI_USER 
GO
ALTER DATABASE [RYGameMatchDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [RYGameMatchDB] SET DB_CHAINING OFF 