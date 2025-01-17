USE [master]
GO
/****** Object:  Database [BancoGuayaquilStore]    Script Date: 07/05/2024 18:30:49 ******/
CREATE DATABASE [BancoGuayaquilStore]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'BancoGuayaquilStore', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\BancoGuayaquilStore.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'BancoGuayaquilStore_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\BancoGuayaquilStore_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [BancoGuayaquilStore] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [BancoGuayaquilStore].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [BancoGuayaquilStore] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [BancoGuayaquilStore] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [BancoGuayaquilStore] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [BancoGuayaquilStore] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [BancoGuayaquilStore] SET ARITHABORT OFF 
GO
ALTER DATABASE [BancoGuayaquilStore] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [BancoGuayaquilStore] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [BancoGuayaquilStore] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [BancoGuayaquilStore] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [BancoGuayaquilStore] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [BancoGuayaquilStore] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [BancoGuayaquilStore] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [BancoGuayaquilStore] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [BancoGuayaquilStore] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [BancoGuayaquilStore] SET  DISABLE_BROKER 
GO
ALTER DATABASE [BancoGuayaquilStore] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [BancoGuayaquilStore] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [BancoGuayaquilStore] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [BancoGuayaquilStore] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [BancoGuayaquilStore] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [BancoGuayaquilStore] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [BancoGuayaquilStore] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [BancoGuayaquilStore] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [BancoGuayaquilStore] SET  MULTI_USER 
GO
ALTER DATABASE [BancoGuayaquilStore] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [BancoGuayaquilStore] SET DB_CHAINING OFF 
GO
ALTER DATABASE [BancoGuayaquilStore] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [BancoGuayaquilStore] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [BancoGuayaquilStore] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [BancoGuayaquilStore] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [BancoGuayaquilStore] SET QUERY_STORE = ON
GO
ALTER DATABASE [BancoGuayaquilStore] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [BancoGuayaquilStore]
GO
/****** Object:  Table [dbo].[Categoria]    Script Date: 07/05/2024 18:30:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categoria](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](50) NULL,
 CONSTRAINT [PK_Categoria] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PRODUCTO]    Script Date: 07/05/2024 18:30:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PRODUCTO](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[Descripción] [text] NOT NULL,
	[Precio] [float] NOT NULL,
	[imagen] [text] NULL,
	[Rating] [varchar](50) NOT NULL,
	[Categoria_id] [int] NULL,
 CONSTRAINT [PK_PRODUCTO] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Categoria] ON 

INSERT [dbo].[Categoria] ([ID], [nombre]) VALUES (1, N'Ropa')
INSERT [dbo].[Categoria] ([ID], [nombre]) VALUES (2, N'Electrónica')
INSERT [dbo].[Categoria] ([ID], [nombre]) VALUES (3, N'Accesorios')
SET IDENTITY_INSERT [dbo].[Categoria] OFF
GO
SET IDENTITY_INSERT [dbo].[PRODUCTO] ON 

INSERT [dbo].[PRODUCTO] ([ID], [Nombre], [Descripción], [Precio], [imagen], [Rating], [Categoria_id]) VALUES (5, N'Camiseta estampada', N'Camiseta de algodón', 20, N'http://picsum.photos/640/640?r=', N'4.5', 1)
INSERT [dbo].[PRODUCTO] ([ID], [Nombre], [Descripción], [Precio], [imagen], [Rating], [Categoria_id]) VALUES (6, N'Jeans rotos', N'Jeans de mezclilla rotos de moda para hombre o mujer', 50, N'http://picsum.photos/640/640?r=', N'4.8', 1)
INSERT [dbo].[PRODUCTO] ([ID], [Nombre], [Descripción], [Precio], [imagen], [Rating], [Categoria_id]) VALUES (7, N'Vestido de verano', N'Vestido ligero y fresco para el verano', 35, N'http://picsum.photos/640/640?r=', N'4.2', 2)
INSERT [dbo].[PRODUCTO] ([ID], [Nombre], [Descripción], [Precio], [imagen], [Rating], [Categoria_id]) VALUES (8, N'Zapatos deportivos', N'Zapatos deportivos cómodos y versátiles para hombre o mujer', 70, N'http://picsum.photos/640/640?r=', N'4.7', 1)
INSERT [dbo].[PRODUCTO] ([ID], [Nombre], [Descripción], [Precio], [imagen], [Rating], [Categoria_id]) VALUES (9, N'Reloj inteligente', N'Reloj inteligente con pantalla táctil y funciones de seguimiento de actividad física', 150, N'http://picsum.photos/640/640?r=', N'5.0', 3)
INSERT [dbo].[PRODUCTO] ([ID], [Nombre], [Descripción], [Precio], [imagen], [Rating], [Categoria_id]) VALUES (10, N'Smartphone', N'Smartphone de última generación con cámara de alta resolución', 600, N'http://picsum.photos/640/640?r=', N'4.9', 3)
INSERT [dbo].[PRODUCTO] ([ID], [Nombre], [Descripción], [Precio], [imagen], [Rating], [Categoria_id]) VALUES (11, N'Audífonos inalámbricos', N'Audífonos inalámbricos con sonido de alta calidad y cancelación de ruido', 100, N'http://picsum.photos/640/640?r=', N'4.6', 3)
INSERT [dbo].[PRODUCTO] ([ID], [Nombre], [Descripción], [Precio], [imagen], [Rating], [Categoria_id]) VALUES (12, N'Mochila para laptop', N'Mochila resistente y práctica para llevar tu laptop y otros accesorios', 40, N'http://picsum.photos/640/640?r=', N'4.3', 3)
INSERT [dbo].[PRODUCTO] ([ID], [Nombre], [Descripción], [Precio], [imagen], [Rating], [Categoria_id]) VALUES (13, N'Televisor Smart TV', N'Televisor Smart TV con pantalla grande y alta definición', 450, N'http://picsum.photos/640/640?r=', N'4.8', 3)
INSERT [dbo].[PRODUCTO] ([ID], [Nombre], [Descripción], [Precio], [imagen], [Rating], [Categoria_id]) VALUES (14, N'Cafetera espresso', N'Cafetera espresso para preparar un café delicioso en casa', 120, N'http://picsum.photos/640/640?r=', N'4.4', 3)
SET IDENTITY_INSERT [dbo].[PRODUCTO] OFF
GO
ALTER TABLE [dbo].[PRODUCTO]  WITH CHECK ADD  CONSTRAINT [FK_PRODUCTO_Categoria] FOREIGN KEY([Categoria_id])
REFERENCES [dbo].[Categoria] ([ID])
GO
ALTER TABLE [dbo].[PRODUCTO] CHECK CONSTRAINT [FK_PRODUCTO_Categoria]
GO
/****** Object:  StoredProcedure [dbo].[GetAllProductos]    Script Date: 07/05/2024 18:30:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[GetAllProductos]
as
begin
select * from PRODUCTO
end;
GO
/****** Object:  StoredProcedure [dbo].[GetByName]    Script Date: 07/05/2024 18:30:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[GetByName]
@nombre varchar(50)
as
begin
select * from PRODUCTO
where Nombre like '%'+@nombre+'%'
end;
GO
/****** Object:  StoredProcedure [dbo].[GetCategoria]    Script Date: 07/05/2024 18:30:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[GetCategoria]
as
begin
select * from Categoria;
end;
GO
/****** Object:  StoredProcedure [dbo].[GetCategoriaByName]    Script Date: 07/05/2024 18:30:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[GetCategoriaByName]
@nombre varchar(50)
as
begin
select * from Categoria
where nombre like '%'+@nombre+'%'
end;
GO
USE [master]
GO
ALTER DATABASE [BancoGuayaquilStore] SET  READ_WRITE 
GO
