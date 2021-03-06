USE [Mercado]
GO
/****** Object:  Table [dbo].[Carrito]    Script Date: 06/05/2019 12:28:35 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Carrito](
	[IDCarrito] [bigint] IDENTITY(1,1) NOT NULL,
	[IDUsuario] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[IDCarrito] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Categorias]    Script Date: 06/05/2019 12:28:36 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categorias](
	[IDCategoria] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [nvarchar](75) NULL,
PRIMARY KEY CLUSTERED 
(
	[IDCategoria] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Certificado]    Script Date: 06/05/2019 12:28:36 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Certificado](
	[IDCertificado] [bigint] IDENTITY(1,1) NOT NULL,
	[Nombre] [nvarchar](50) NULL,
	[Vigencia] [datetime] NULL,
	[TituloCertificado] [nvarchar](50) NULL,
	[FechaExpedido] [datetime] NULL,
	[Sello] [image] NULL,
 CONSTRAINT [PK_Certificado] PRIMARY KEY CLUSTERED 
(
	[IDCertificado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CompraUsuario]    Script Date: 06/05/2019 12:28:36 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CompraUsuario](
	[IDUsuario] [varchar](20) NOT NULL,
	[IDProductoComprado] [bigint] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DetallesUsuario]    Script Date: 06/05/2019 12:28:36 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DetallesUsuario](
	[IDDetalles] [bigint] IDENTITY(1,1) NOT NULL,
	[Nombre] [nvarchar](100) NOT NULL,
	[Apellido] [nvarchar](100) NOT NULL,
	[Calle] [nvarchar](100) NOT NULL,
	[Colonia] [nvarchar](100) NOT NULL,
	[Estado] [nvarchar](100) NOT NULL,
	[Pais] [nvarchar](100) NOT NULL,
	[CP] [int] NOT NULL,
	[EscrituraPermiso] [nvarchar](100) NOT NULL,
	[ESTRELLAS] [float] NULL,
	[RFC] [nvarchar](50) NULL,
	[FirmaElectronica] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[IDDetalles] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DetalleVenta]    Script Date: 06/05/2019 12:28:36 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DetalleVenta](
	[IDDetalle] [bigint] NOT NULL,
	[Producto] [nvarchar](50) NOT NULL,
	[Precio] [money] NOT NULL,
	[IDTerreno] [bigint] NOT NULL,
	[Fecha] [datetime] NOT NULL,
	[Tamaño] [int] NOT NULL,
 CONSTRAINT [PK_DetalleVenta] PRIMARY KEY CLUSTERED 
(
	[IDDetalle] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Empresa]    Script Date: 06/05/2019 12:28:36 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Empresa](
	[IDEmpresa] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[Nombre] [nvarchar](50) NULL,
	[Dirección] [nvarchar](50) NULL,
	[NumTelefono] [nvarchar](50) NULL,
	[Correo] [nvarchar](50) NULL,
 CONSTRAINT [PK_Empresa] PRIMARY KEY CLUSTERED 
(
	[IDEmpresa] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EmpresaCertificado]    Script Date: 06/05/2019 12:28:36 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EmpresaCertificado](
	[IDEmpresa] [int] NULL,
	[IDCertificado] [bigint] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Historial]    Script Date: 06/05/2019 12:28:36 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Historial](
	[IDHistorial] [bigint] IDENTITY(1,1) NOT NULL,
	[Busqueda] [nvarchar](100) NULL,
	[IDUsuario] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[IDHistorial] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MultiplesCompras]    Script Date: 06/05/2019 12:28:36 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MultiplesCompras](
	[IDNumProducto] [bigint] NULL,
	[IDCarrito] [bigint] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Notificaciones]    Script Date: 06/05/2019 12:28:36 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Notificaciones](
	[IDNotificaciones] [bigint] IDENTITY(1,1) NOT NULL,
	[Detalle] [nvarchar](150) NULL,
PRIMARY KEY CLUSTERED 
(
	[IDNotificaciones] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Producto]    Script Date: 06/05/2019 12:28:36 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Producto](
	[IDProducto] [bigint] IDENTITY(1,1) NOT NULL,
	[Producto] [nvarchar](50) NULL,
	[PrecioTonelada] [money] NULL,
	[PrecioKilogramo] [money] NULL,
	[Foto] [image] NULL,
	[Temporada] [bit] NULL,
	[IDCategoria] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[IDProducto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductoComprado]    Script Date: 06/05/2019 12:28:36 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductoComprado](
	[IDprodComprado] [bigint] NOT NULL,
	[IDTerreno] [bigint] NOT NULL,
	[Localizacion] [geography] NOT NULL,
	[Tiempo] [datetime] NOT NULL,
	[Estado] [bit] NOT NULL,
 CONSTRAINT [PK_ProductoComprado] PRIMARY KEY CLUSTERED 
(
	[IDprodComprado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductoTerreno]    Script Date: 06/05/2019 12:28:36 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductoTerreno](
	[IDNumProducto] [bigint] IDENTITY(1,1) NOT NULL,
	[IDProducto] [bigint] NULL,
	[IDTerreno] [bigint] NULL,
PRIMARY KEY CLUSTERED 
(
	[IDNumProducto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Targeta]    Script Date: 06/05/2019 12:28:36 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Targeta](
	[IDTargeta] [bigint] IDENTITY(1,1) NOT NULL,
	[NumTargeta] [varbinary](8000) NULL,
	[CDV] [varbinary](8000) NULL,
	[Mes] [varbinary](8000) NULL,
	[Año] [varbinary](8000) NULL,
PRIMARY KEY CLUSTERED 
(
	[IDTargeta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TargetaUsuario]    Script Date: 06/05/2019 12:28:36 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TargetaUsuario](
	[IDTargeta] [bigint] NULL,
	[IDUsuario] [varchar](20) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Terreno]    Script Date: 06/05/2019 12:28:36 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Terreno](
	[IDTerreno] [bigint] IDENTITY(1,1) NOT NULL,
	[Tamaño] [int] NULL,
	[Medida] [varchar](50) NULL,
	[Tipo] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[IDTerreno] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TerrenoUsuario]    Script Date: 06/05/2019 12:28:36 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TerrenoUsuario](
	[IDUsuario] [varchar](20) NULL,
	[IDTerreno] [bigint] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TipoUsuario]    Script Date: 06/05/2019 12:28:36 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TipoUsuario](
	[IDTipo] [int] IDENTITY(1,1) NOT NULL,
	[TipoUsuario] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[IDTipo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Usuario]    Script Date: 06/05/2019 12:28:36 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Usuario](
	[IDUsuario] [varchar](20) NOT NULL,
	[Foto] [image] NULL,
	[IDTipo] [int] NULL,
	[IDDetalles] [bigint] NULL,
	[Usuario] [varbinary](8000) NULL,
	[Contraseña] [varbinary](8000) NULL,
	[Correo] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[IDUsuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UsuarioCertificado]    Script Date: 06/05/2019 12:28:36 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UsuarioCertificado](
	[IDUsuario] [varchar](20) NULL,
	[IDCertificado] [bigint] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UsuarioNotificaciones]    Script Date: 06/05/2019 12:28:36 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UsuarioNotificaciones](
	[IDUsuario] [varchar](20) NULL,
	[IDNotificaciones] [bigint] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Venta]    Script Date: 06/05/2019 12:28:36 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Venta](
	[IDVenta] [bigint] IDENTITY(1,1) NOT NULL,
	[IDUsuarioAgricultor] [varchar](20) NOT NULL,
	[IDUserioCliente] [varchar](20) NOT NULL,
	[IDDetalle] [bigint] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IDVenta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Carrito]  WITH CHECK ADD FOREIGN KEY([IDUsuario])
REFERENCES [dbo].[Usuario] ([IDUsuario])
GO
ALTER TABLE [dbo].[CompraUsuario]  WITH CHECK ADD  CONSTRAINT [FK_183] FOREIGN KEY([IDUsuario])
REFERENCES [dbo].[Usuario] ([IDUsuario])
GO
ALTER TABLE [dbo].[CompraUsuario] CHECK CONSTRAINT [FK_183]
GO
ALTER TABLE [dbo].[CompraUsuario]  WITH CHECK ADD  CONSTRAINT [FK_186] FOREIGN KEY([IDProductoComprado])
REFERENCES [dbo].[ProductoComprado] ([IDprodComprado])
GO
ALTER TABLE [dbo].[CompraUsuario] CHECK CONSTRAINT [FK_186]
GO
ALTER TABLE [dbo].[DetalleVenta]  WITH CHECK ADD  CONSTRAINT [IDTerreno] FOREIGN KEY([IDTerreno])
REFERENCES [dbo].[Terreno] ([IDTerreno])
GO
ALTER TABLE [dbo].[DetalleVenta] CHECK CONSTRAINT [IDTerreno]
GO
ALTER TABLE [dbo].[EmpresaCertificado]  WITH CHECK ADD FOREIGN KEY([IDCertificado])
REFERENCES [dbo].[Certificado] ([IDCertificado])
GO
ALTER TABLE [dbo].[EmpresaCertificado]  WITH CHECK ADD FOREIGN KEY([IDEmpresa])
REFERENCES [dbo].[Empresa] ([IDEmpresa])
GO
ALTER TABLE [dbo].[Historial]  WITH CHECK ADD FOREIGN KEY([IDUsuario])
REFERENCES [dbo].[Usuario] ([IDUsuario])
GO
ALTER TABLE [dbo].[MultiplesCompras]  WITH CHECK ADD FOREIGN KEY([IDCarrito])
REFERENCES [dbo].[Carrito] ([IDCarrito])
GO
ALTER TABLE [dbo].[MultiplesCompras]  WITH CHECK ADD FOREIGN KEY([IDNumProducto])
REFERENCES [dbo].[ProductoTerreno] ([IDNumProducto])
GO
ALTER TABLE [dbo].[Producto]  WITH CHECK ADD FOREIGN KEY([IDCategoria])
REFERENCES [dbo].[Categorias] ([IDCategoria])
GO
ALTER TABLE [dbo].[ProductoComprado]  WITH CHECK ADD  CONSTRAINT [FK_180] FOREIGN KEY([IDTerreno])
REFERENCES [dbo].[Terreno] ([IDTerreno])
GO
ALTER TABLE [dbo].[ProductoComprado] CHECK CONSTRAINT [FK_180]
GO
ALTER TABLE [dbo].[ProductoTerreno]  WITH CHECK ADD FOREIGN KEY([IDProducto])
REFERENCES [dbo].[Producto] ([IDProducto])
GO
ALTER TABLE [dbo].[ProductoTerreno]  WITH CHECK ADD FOREIGN KEY([IDTerreno])
REFERENCES [dbo].[Terreno] ([IDTerreno])
GO
ALTER TABLE [dbo].[TargetaUsuario]  WITH CHECK ADD FOREIGN KEY([IDTargeta])
REFERENCES [dbo].[Targeta] ([IDTargeta])
GO
ALTER TABLE [dbo].[TargetaUsuario]  WITH CHECK ADD FOREIGN KEY([IDUsuario])
REFERENCES [dbo].[Usuario] ([IDUsuario])
GO
ALTER TABLE [dbo].[TerrenoUsuario]  WITH CHECK ADD FOREIGN KEY([IDTerreno])
REFERENCES [dbo].[Terreno] ([IDTerreno])
GO
ALTER TABLE [dbo].[TerrenoUsuario]  WITH CHECK ADD FOREIGN KEY([IDUsuario])
REFERENCES [dbo].[Usuario] ([IDUsuario])
GO
ALTER TABLE [dbo].[Usuario]  WITH CHECK ADD FOREIGN KEY([IDDetalles])
REFERENCES [dbo].[DetallesUsuario] ([IDDetalles])
GO
ALTER TABLE [dbo].[Usuario]  WITH CHECK ADD FOREIGN KEY([IDTipo])
REFERENCES [dbo].[TipoUsuario] ([IDTipo])
GO
ALTER TABLE [dbo].[UsuarioCertificado]  WITH CHECK ADD FOREIGN KEY([IDCertificado])
REFERENCES [dbo].[Certificado] ([IDCertificado])
GO
ALTER TABLE [dbo].[UsuarioCertificado]  WITH CHECK ADD FOREIGN KEY([IDUsuario])
REFERENCES [dbo].[Usuario] ([IDUsuario])
GO
ALTER TABLE [dbo].[UsuarioNotificaciones]  WITH CHECK ADD FOREIGN KEY([IDNotificaciones])
REFERENCES [dbo].[Notificaciones] ([IDNotificaciones])
GO
ALTER TABLE [dbo].[UsuarioNotificaciones]  WITH CHECK ADD FOREIGN KEY([IDUsuario])
REFERENCES [dbo].[Usuario] ([IDUsuario])
GO
ALTER TABLE [dbo].[Venta]  WITH CHECK ADD FOREIGN KEY([IDDetalle])
REFERENCES [dbo].[DetalleVenta] ([IDDetalle])
GO
ALTER TABLE [dbo].[Venta]  WITH CHECK ADD FOREIGN KEY([IDUserioCliente])
REFERENCES [dbo].[Usuario] ([IDUsuario])
GO
ALTER TABLE [dbo].[Venta]  WITH CHECK ADD FOREIGN KEY([IDUsuarioAgricultor])
REFERENCES [dbo].[Usuario] ([IDUsuario])
GO
/****** Object:  StoredProcedure [dbo].[PROC_ALTA_CARRITO]    Script Date: 06/05/2019 12:28:36 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[PROC_ALTA_CARRITO] 
    @IDUsuario varchar(20) = NULL
AS 
	SET NOCOUNT ON 
	SET XACT_ABORT ON  
	
	BEGIN TRAN
	
	INSERT INTO [dbo].[Carrito] ([IDUsuario])
	SELECT @IDUsuario
	
	-- Begin Return Select <- do not remove
	SELECT [IDCarrito], [IDUsuario]
	FROM   [dbo].[Carrito]
	WHERE  [IDCarrito] = SCOPE_IDENTITY()
	-- End Return Select <- do not remove
               
	COMMIT
GO
/****** Object:  StoredProcedure [dbo].[PROC_ALTA_CATEGORIA]    Script Date: 06/05/2019 12:28:36 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[PROC_ALTA_CATEGORIA] 
    @Nombre nvarchar(75) = NULL
AS 
	SET NOCOUNT ON 
	SET XACT_ABORT ON  
	
	BEGIN TRAN
	
	INSERT INTO [dbo].[Categorias] ([Nombre])
	SELECT @Nombre
	
	-- Begin Return Select <- do not remove
	SELECT [IDCategoria], [Nombre]
	FROM   [dbo].[Categorias]
	WHERE  [IDCategoria] = SCOPE_IDENTITY()
	-- End Return Select <- do not remove
               
	COMMIT
GO
/****** Object:  StoredProcedure [dbo].[PROC_ALTA_CERTIFICADO]    Script Date: 06/05/2019 12:28:36 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[PROC_ALTA_CERTIFICADO] 
    @Nombre nvarchar(50) = NULL,
    @Vigencia datetime = NULL,
    @TituloCertificado nvarchar(50) = NULL,
    @FechaExpedido datetime = NULL,
    @Sello image = NULL
AS 
	SET NOCOUNT ON 
	SET XACT_ABORT ON  
	
	BEGIN TRAN
	
	INSERT INTO [dbo].[Certificado] ([Nombre], [Vigencia], [TituloCertificado], [FechaExpedido], [Sello])
	SELECT @Nombre, @Vigencia, @TituloCertificado, @FechaExpedido, @Sello
	
	-- Begin Return Select <- do not remove
	SELECT [IDCertificado], [Nombre], [Vigencia], [TituloCertificado], [FechaExpedido], [Sello]
	FROM   [dbo].[Certificado]
	WHERE  [IDCertificado] = SCOPE_IDENTITY()
	-- End Return Select <- do not remove
               
	COMMIT
GO
/****** Object:  StoredProcedure [dbo].[PROC_ALTA_DetalleVenta]    Script Date: 06/05/2019 12:28:36 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[PROC_ALTA_DetalleVenta] 
    @IDDetalle bigint,
    @Producto nvarchar(50),
    @Precio money,
    @IDTerreno bigint,
    @Fecha datetime,
    @Tamaño int
AS 
	SET NOCOUNT ON 
	SET XACT_ABORT ON  
	
	BEGIN TRAN
	
	INSERT INTO [dbo].[DetalleVenta] ([IDDetalle], [Producto], [Precio], [IDTerreno], [Fecha], [Tamaño])
	SELECT @IDDetalle, @Producto, @Precio, @IDTerreno, @Fecha, @Tamaño
	
	-- Begin Return Select <- do not remove
	SELECT [IDDetalle], [Producto], [Precio], [IDTerreno], [Fecha], [Tamaño]
	FROM   [dbo].[DetalleVenta]
	WHERE  [IDDetalle] = @IDDetalle
	-- End Return Select <- do not remove
               
	COMMIT
GO
/****** Object:  StoredProcedure [dbo].[PROC_ALTA_DETATALLESUSURIO]    Script Date: 06/05/2019 12:28:36 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[PROC_ALTA_DETATALLESUSURIO]
	@NOMBRE NVARCHAR(100),
	@APELLIDO NVARCHAR(100),
	@CALLE NVARCHAR(100),
	@COLONIA NVARCHAR(100),
	@ESTADO NVARCHAR(100),
	@PAIS NVARCHAR(100),
	@CP INT,
	@ESCRITURAPERMISO NVARCHAR(100),
	@RFC NVARCHAR(100),
	@FIRMAELECTRONICA NVARCHAR(100)
AS
	DECLARE @ERROR INT
	BEGIN TRAN
		INSERT INTO DetallesUsuario(Nombre,Apellido,Calle,Colonia,Estado,Pais,CP,EscrituraPermiso,ESTRELLAS,RFC,FirmaElectronica) VALUES
		(@NOMBRE, @APELLIDO, @CALLE , @COLONIA, @ESTADO,
		@PAIS, @CP, @ESCRITURAPERMISO, 0, @RFC, @FIRMAELECTRONICA
		);
		SET @ERROR = @@ERROR
		IF @ERROR <> 0 ROLLBACK TRAN
	COMMIT TRAN
GO
/****** Object:  StoredProcedure [dbo].[PROC_ALTA_EMPRESA]    Script Date: 06/05/2019 12:28:36 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[PROC_ALTA_EMPRESA] 
    @Nombre nvarchar(50) = NULL,
    @Dirección nvarchar(50) = NULL,
    @NumTelefono nvarchar(50) = NULL,
    @Correo nvarchar(50) = NULL
AS 
	SET NOCOUNT ON 
	SET XACT_ABORT ON  
	
	BEGIN TRAN
	
	INSERT INTO [dbo].[Empresa] ([Nombre], [Dirección], [NumTelefono], [Correo])
	SELECT @Nombre, @Dirección, @NumTelefono, @Correo
	
	-- Begin Return Select <- do not remove
	SELECT [IDEmpresa], [Nombre], [Dirección], [NumTelefono], [Correo]
	FROM   [dbo].[Empresa]
	WHERE  [IDEmpresa] = SCOPE_IDENTITY()
	-- End Return Select <- do not remove
               
	COMMIT
GO
/****** Object:  StoredProcedure [dbo].[PROC_ALTA_EMPRESACERTIFICADO]    Script Date: 06/05/2019 12:28:36 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[PROC_ALTA_EMPRESACERTIFICADO]
	@IDEMPRESA INT,
	@IDCERTIFICADO BIGINT
AS
	INSERT INTO UsuarioCertificado VALUES (@IDEMPRESA,@IDCERTIFICADO);
GO
/****** Object:  StoredProcedure [dbo].[PROC_ALTA_HISTORIAL]    Script Date: 06/05/2019 12:28:36 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[PROC_ALTA_HISTORIAL] 
    @Busqueda nvarchar(100) = NULL,
    @IDUsuario varchar(20) = NULL
AS 
	SET NOCOUNT ON 
	SET XACT_ABORT ON  
	
	BEGIN TRAN
	
	INSERT INTO [dbo].[Historial] ([Busqueda], [IDUsuario])
	SELECT @Busqueda, @IDUsuario
	
	-- Begin Return Select <- do not remove
	SELECT [IDHistorial], [Busqueda], [IDUsuario]
	FROM   [dbo].[Historial]
	WHERE  [IDHistorial] = SCOPE_IDENTITY()
	-- End Return Select <- do not remove
               
	COMMIT
GO
/****** Object:  StoredProcedure [dbo].[PROC_ALTA_MULTIPLESCOMPRAS]    Script Date: 06/05/2019 12:28:36 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[PROC_ALTA_MULTIPLESCOMPRAS]
	@IDNUMPRODUCTO BIGINT,
	@IDCARRITO BIGINT
AS
	INSERT INTO MultiplesCompras VALUES (@IDCARRITO,@IDNUMPRODUCTO);
GO
/****** Object:  StoredProcedure [dbo].[PROC_ALTA_PRODUCTO]    Script Date: 06/05/2019 12:28:36 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[PROC_ALTA_PRODUCTO] 
    @Producto nvarchar(50) = NULL,
    @PrecioTonelada money = NULL,
    @PrecioKilogramo money = NULL,
    @Foto image = NULL,
    @Temporada bit = NULL,
    @IDCategoria int = NULL
AS 
	SET NOCOUNT ON 
	SET XACT_ABORT ON  
	
	BEGIN TRAN
	
	INSERT INTO [dbo].[Producto] ([Producto], [PrecioTonelada], [PrecioKilogramo], [Foto], [Temporada], [IDCategoria])
	SELECT @Producto, @PrecioTonelada, @PrecioKilogramo, @Foto, @Temporada, @IDCategoria
	
	-- Begin Return Select <- do not remove
	SELECT [IDProducto], [Producto], [PrecioTonelada], [PrecioKilogramo], [Foto], [Temporada], [IDCategoria]
	FROM   [dbo].[Producto]
	WHERE  [IDProducto] = SCOPE_IDENTITY()
	-- End Return Select <- do not remove
               
	COMMIT
GO
/****** Object:  StoredProcedure [dbo].[PROC_ALTA_ProductoComprado]    Script Date: 06/05/2019 12:28:36 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[PROC_ALTA_ProductoComprado] 
    @IDprodComprado bigint,
    @IDTerreno bigint,
    @Localizacion geography,
    @Tiempo datetime,
    @Estado bit
AS 
	SET NOCOUNT ON 
	SET XACT_ABORT ON  
	
	BEGIN TRAN
	
	INSERT INTO [dbo].[ProductoComprado] ([IDprodComprado], [IDTerreno], [Localizacion], [Tiempo], [Estado])
	SELECT @IDprodComprado, @IDTerreno, @Localizacion, @Tiempo, @Estado
	
	-- Begin Return Select <- do not remove
	SELECT [IDprodComprado], [IDTerreno], [Localizacion], [Tiempo], [Estado]
	FROM   [dbo].[ProductoComprado]
	WHERE  [IDprodComprado] = @IDprodComprado
	-- End Return Select <- do not remove
               
	COMMIT
GO
/****** Object:  StoredProcedure [dbo].[PROC_ALTA_PRODUCTOTERRENO]    Script Date: 06/05/2019 12:28:36 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[PROC_ALTA_PRODUCTOTERRENO] 
    @IDProducto bigint = NULL,
    @IDTerreno bigint = NULL
AS 
	SET NOCOUNT ON 
	SET XACT_ABORT ON  
	
	BEGIN TRAN
	
	INSERT INTO [dbo].[ProductoTerreno] ([IDProducto], [IDTerreno])
	SELECT @IDProducto, @IDTerreno
	
	-- Begin Return Select <- do not remove
	SELECT [IDNumProducto], [IDProducto], [IDTerreno]
	FROM   [dbo].[ProductoTerreno]
	WHERE  [IDNumProducto] = SCOPE_IDENTITY()
	-- End Return Select <- do not remove
               
	COMMIT
GO
/****** Object:  StoredProcedure [dbo].[PROC_ALTA_TARGETA]    Script Date: 06/05/2019 12:28:36 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[PROC_ALTA_TARGETA]
	@NumTargeta VARCHAR(16),
	@CDV VARCHAR(8),
	@MES VARCHAR(2),
	@AÑO VARCHAR(2)
AS
	DECLARE @ERROR INT
	BEGIN TRAN
	INSERT INTO [dbo].[Targeta]
           ([NumTargeta]
           ,[CDV]
           ,[Mes]
           ,[Año])
     VALUES
			(ENCRYPTBYPASSPHRASE('password',@NumTargeta),
			ENCRYPTBYPASSPHRASE('password',@CDV),
			ENCRYPTBYPASSPHRASE('password',@MES),
			ENCRYPTBYPASSPHRASE('password',@AÑO))
	SET @ERROR = @@ERROR
	IF @ERROR <> 0 ROLLBACK TRAN
	COMMIT TRAN
GO
/****** Object:  StoredProcedure [dbo].[PROC_ALTA_TARGETAUSUARIO]    Script Date: 06/05/2019 12:28:36 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[PROC_ALTA_TARGETAUSUARIO]
	@IDTARGETA BIGINT,
	@IDUSUARIO VARCHAR(20)
AS
INSERT INTO [dbo].[TargetaUsuario]
           ([IDTargeta]
           ,[IDUsuario])
     VALUES
           (@IDTARGETA
           ,@IDUSUARIO)
GO
/****** Object:  StoredProcedure [dbo].[PROC_ALTA_TERRENO]    Script Date: 06/05/2019 12:28:36 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[PROC_ALTA_TERRENO]
	@TAMAÑO INT,
	@MEDIDA VARCHAR(50),
	@TIPO VARCHAR(50)
AS
INSERT INTO [dbo].[Terreno]
           ([Tamaño]
           ,[Medida]
           ,[Tipo])
     VALUES
			(@TAMAÑO
           ,@MEDIDA
           ,@TIPO)
GO
/****** Object:  StoredProcedure [dbo].[PROC_ALTA_TERRENOUSUARIO]    Script Date: 06/05/2019 12:28:36 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[PROC_ALTA_TERRENOUSUARIO]
	@IDUSUARIO VARCHAR(20),
	@IDTERRENO BIGINT
	AS
INSERT INTO [dbo].[TerrenoUsuario]
           ([IDUsuario]
           ,[IDTerreno])
     VALUES
           (@IDUSUARIO
           ,@IDTERRENO)
GO
/****** Object:  StoredProcedure [dbo].[PROC_ALTA_TIPOUSUARIO]    Script Date: 06/05/2019 12:28:36 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[PROC_ALTA_TIPOUSUARIO]
	@TIPOUSUARIO NVARCHAR(50)
AS
	DECLARE @ERROR INT
	BEGIN TRAN
		INSERT INTO TipoUsuario(TipoUsuario) VALUES (@TIPOUSUARIO)
		SET @ERROR = @@ERROR
		IF @ERROR <> 0 ROLLBACK TRAN
	COMMIT TRAN
GO
/****** Object:  StoredProcedure [dbo].[PROC_ALTA_USUARIO]    Script Date: 06/05/2019 12:28:36 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[PROC_ALTA_USUARIO]
	@USUARIO NVARCHAR(100),
	@CONTRASEÑA NVARCHAR(100),
	@CORREO NVARCHAR(100),
	@FOTO IMAGE,
	@IDTIPO INT
AS
	DECLARE @ERROR INT
	BEGIN TRAN
		DECLARE @IDDETALLES INT
		SET @IDDETALLES = (SELECT TOP 1  IDDetalles FROM DetallesUsuario ORDER BY IDDetalles DESC);
		
		SET @ERROR = @@ERROR
		IF @ERROR <> 0 ROLLBACK TRAN 
	COMMIT TRAN
	BEGIN TRAN
		INSERT INTO Usuario(Foto,IDTipo,Usuario,Contraseña,Correo,IDDetalles)
		VALUES 
		(
		@FOTO,
		@IDTIPO,
		ENCRYPTBYPASSPHRASE('password',@USUARIO),
		ENCRYPTBYPASSPHRASE('password',@CONTRASEÑA),
		@CORREO,
		@IDDETALLES
		)
		SET @ERROR = @@ERROR
		IF @ERROR <> 0 ROLLBACK TRAN
	COMMIT TRAN
GO
/****** Object:  StoredProcedure [dbo].[PROC_ALTA_USUARIOCERTIFICADO]    Script Date: 06/05/2019 12:28:36 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[PROC_ALTA_USUARIOCERTIFICADO]
	@IDUSUARIO VARCHAR(20),
	@IDCERTIFICADO BIGINT
AS
	INSERT INTO UsuarioCertificado VALUES (@IDUSUARIO,@IDCERTIFICADO);
GO
/****** Object:  StoredProcedure [dbo].[PROC_ALTA_USUARIONOTIFICACIONES]    Script Date: 06/05/2019 12:28:36 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[PROC_ALTA_USUARIONOTIFICACIONES]
	@IDUSUARIO VARCHAR(20),
	@IDNOTIFICACIONES BIGINT
AS
	INSERT INTO UsuarioNotificaciones VALUES (@IDUSUARIO,@IDNOTIFICACIONES);
GO
/****** Object:  StoredProcedure [dbo].[PROC_ALTA_Venta]    Script Date: 06/05/2019 12:28:36 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[PROC_ALTA_Venta] 
    @IDUsuarioAgricultor varchar(20),
    @IDUserioCliente varchar(20),
    @IDDetalle bigint
AS 
	SET NOCOUNT ON 
	SET XACT_ABORT ON  
	
	BEGIN TRAN
	
	INSERT INTO [dbo].[Venta] ([IDUsuarioAgricultor], [IDUserioCliente], [IDDetalle])
	SELECT @IDUsuarioAgricultor, @IDUserioCliente, @IDDetalle
	
	-- Begin Return Select <- do not remove
	SELECT [IDVenta], [IDUsuarioAgricultor], [IDUserioCliente], [IDDetalle]
	FROM   [dbo].[Venta]
	WHERE  [IDVenta] = SCOPE_IDENTITY()
	-- End Return Select <- do not remove
               
	COMMIT
GO
/****** Object:  StoredProcedure [dbo].[PROC_BAJA_CARRITO]    Script Date: 06/05/2019 12:28:36 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[PROC_BAJA_CARRITO] 
    @IDCarrito bigint
AS 
	SET NOCOUNT ON 
	SET XACT_ABORT ON  
	
	BEGIN TRAN

	DELETE
	FROM   [dbo].[Carrito]
	WHERE  [IDCarrito] = @IDCarrito

	COMMIT
GO
/****** Object:  StoredProcedure [dbo].[PROC_BAJA_CATEGORIA]    Script Date: 06/05/2019 12:28:36 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[PROC_BAJA_CATEGORIA] 
    @IDCategoria int
AS 
	SET NOCOUNT ON 
	SET XACT_ABORT ON  
	
	BEGIN TRAN

	DELETE
	FROM   [dbo].[Categorias]
	WHERE  [IDCategoria] = @IDCategoria

	COMMIT
GO
/****** Object:  StoredProcedure [dbo].[PROC_BAJA_CERTIFICADO]    Script Date: 06/05/2019 12:28:36 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[PROC_BAJA_CERTIFICADO] 
    @IDCertificado bigint
AS 
	SET NOCOUNT ON 
	SET XACT_ABORT ON  
	
	BEGIN TRAN

	DELETE
	FROM   [dbo].[Certificado]
	WHERE  [IDCertificado] = @IDCertificado

	COMMIT
GO
/****** Object:  StoredProcedure [dbo].[PROC_BAJA_DETATALLESUSURIO]    Script Date: 06/05/2019 12:28:36 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[PROC_BAJA_DETATALLESUSURIO]
	@ID BIGINT
AS
	DECLARE @ERROR INT
	BEGIN TRAN
		DELETE DetallesUsuario WHERE IDDetalles = @ID
		SET @ERROR = @@ERROR
		IF @ERROR <> 0 ROLLBACK TRAN
	COMMIT TRAN
GO
/****** Object:  StoredProcedure [dbo].[PROC_BAJA_EMPRESA]    Script Date: 06/05/2019 12:28:36 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[PROC_BAJA_EMPRESA] 
    @IDEmpresa int
AS 
	SET NOCOUNT ON 
	SET XACT_ABORT ON  
	
	BEGIN TRAN

	DELETE
	FROM   [dbo].[Empresa]
	WHERE  [IDEmpresa] = @IDEmpresa

	COMMIT
GO
/****** Object:  StoredProcedure [dbo].[PROC_BAJA_HISTORIAL]    Script Date: 06/05/2019 12:28:36 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[PROC_BAJA_HISTORIAL] 
    @IDHistorial bigint
AS 
	SET NOCOUNT ON 
	SET XACT_ABORT ON  
	
	BEGIN TRAN

	DELETE
	FROM   [dbo].[Historial]
	WHERE  [IDHistorial] = @IDHistorial

	COMMIT
GO
/****** Object:  StoredProcedure [dbo].[PROC_BAJA_PRODUCTO]    Script Date: 06/05/2019 12:28:36 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[PROC_BAJA_PRODUCTO] 
    @IDProducto bigint
AS 
	SET NOCOUNT ON 
	SET XACT_ABORT ON  
	
	BEGIN TRAN

	DELETE
	FROM   [dbo].[Producto]
	WHERE  [IDProducto] = @IDProducto

	COMMIT
GO
/****** Object:  StoredProcedure [dbo].[PROC_BAJA_PRODUCTOTERRENO]    Script Date: 06/05/2019 12:28:36 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[PROC_BAJA_PRODUCTOTERRENO] 
    @IDNumProducto bigint
AS 
	SET NOCOUNT ON 
	SET XACT_ABORT ON  
	
	BEGIN TRAN

	DELETE
	FROM   [dbo].[ProductoTerreno]
	WHERE  [IDNumProducto] = @IDNumProducto

	COMMIT
GO
/****** Object:  StoredProcedure [dbo].[PROC_BAJA_TIPO]    Script Date: 06/05/2019 12:28:36 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[PROC_BAJA_TIPO]
	@ID INT
AS
	DECLARE @ERROR INT
	BEGIN TRAN
		DELETE TipoUsuario WHERE IDTipo = @ID;
		SET @ERROR = @@ERROR
		IF @ERROR <> 0 ROLLBACK TRAN
	COMMIT TRAN
GO
/****** Object:  StoredProcedure [dbo].[PROC_BAJAusp_DetalleVentaDelete]    Script Date: 06/05/2019 12:28:36 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[PROC_BAJAusp_DetalleVentaDelete] 
    @IDDetalle bigint
AS 
	SET NOCOUNT ON 
	SET XACT_ABORT ON  
	
	BEGIN TRAN

	DELETE
	FROM   [dbo].[DetalleVenta]
	WHERE  [IDDetalle] = @IDDetalle

	COMMIT
GO
/****** Object:  StoredProcedure [dbo].[PROC_BAJAusp_ProductoCompradoDelete]    Script Date: 06/05/2019 12:28:36 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[PROC_BAJAusp_ProductoCompradoDelete] 
    @IDprodComprado bigint
AS 
	SET NOCOUNT ON 
	SET XACT_ABORT ON  
	
	BEGIN TRAN

	DELETE
	FROM   [dbo].[ProductoComprado]
	WHERE  [IDprodComprado] = @IDprodComprado

	COMMIT
GO
/****** Object:  StoredProcedure [dbo].[PROC_BAJAusp_VentaDelete]    Script Date: 06/05/2019 12:28:36 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[PROC_BAJAusp_VentaDelete] 
    @IDVenta bigint
AS 
	SET NOCOUNT ON 
	SET XACT_ABORT ON  
	
	BEGIN TRAN

	DELETE
	FROM   [dbo].[Venta]
	WHERE  [IDVenta] = @IDVenta

	COMMIT
GO
/****** Object:  StoredProcedure [dbo].[PROC_CAMBIO_CARRITO]    Script Date: 06/05/2019 12:28:36 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[PROC_CAMBIO_CARRITO] 
    @IDCarrito bigint,
    @IDUsuario varchar(20) = NULL
AS 
	SET NOCOUNT ON 
	SET XACT_ABORT ON  
	
	BEGIN TRAN

	UPDATE [dbo].[Carrito]
	SET    [IDUsuario] = @IDUsuario
	WHERE  [IDCarrito] = @IDCarrito
	
	-- Begin Return Select <- do not remove
	SELECT [IDCarrito], [IDUsuario]
	FROM   [dbo].[Carrito]
	WHERE  [IDCarrito] = @IDCarrito	
	-- End Return Select <- do not remove

	COMMIT
GO
/****** Object:  StoredProcedure [dbo].[PROC_CAMBIO_CATEGORIA]    Script Date: 06/05/2019 12:28:36 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[PROC_CAMBIO_CATEGORIA] 
    @IDCategoria int,
    @Nombre nvarchar(75) = NULL
AS 
	SET NOCOUNT ON 
	SET XACT_ABORT ON  
	
	BEGIN TRAN

	UPDATE [dbo].[Categorias]
	SET    [Nombre] = @Nombre
	WHERE  [IDCategoria] = @IDCategoria
	
	-- Begin Return Select <- do not remove
	SELECT [IDCategoria], [Nombre]
	FROM   [dbo].[Categorias]
	WHERE  [IDCategoria] = @IDCategoria	
	-- End Return Select <- do not remove

	COMMIT
GO
/****** Object:  StoredProcedure [dbo].[PROC_CAMBIO_CERTIFICADO]    Script Date: 06/05/2019 12:28:36 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[PROC_CAMBIO_CERTIFICADO] 
    @IDCertificado bigint,
    @Nombre nvarchar(50) = NULL,
    @Vigencia datetime = NULL,
    @TituloCertificado nvarchar(50) = NULL,
    @FechaExpedido datetime = NULL,
    @Sello image = NULL
AS 
	SET NOCOUNT ON 
	SET XACT_ABORT ON  
	
	BEGIN TRAN

	UPDATE [dbo].[Certificado]
	SET    [Nombre] = @Nombre, [Vigencia] = @Vigencia, [TituloCertificado] = @TituloCertificado, [FechaExpedido] = @FechaExpedido, [Sello] = @Sello
	WHERE  [IDCertificado] = @IDCertificado
	
	-- Begin Return Select <- do not remove
	SELECT [IDCertificado], [Nombre], [Vigencia], [TituloCertificado], [FechaExpedido], [Sello]
	FROM   [dbo].[Certificado]
	WHERE  [IDCertificado] = @IDCertificado	
	-- End Return Select <- do not remove

	COMMIT
GO
/****** Object:  StoredProcedure [dbo].[PROC_CAMBIO_DetalleVenta]    Script Date: 06/05/2019 12:28:36 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[PROC_CAMBIO_DetalleVenta] 
    @IDDetalle bigint,
    @Producto nvarchar(50),
    @Precio money,
    @IDTerreno bigint,
    @Fecha datetime,
    @Tamaño int
AS 
	SET NOCOUNT ON 
	SET XACT_ABORT ON  
	
	BEGIN TRAN

	UPDATE [dbo].[DetalleVenta]
	SET    [Producto] = @Producto, [Precio] = @Precio, [IDTerreno] = @IDTerreno, [Fecha] = @Fecha, [Tamaño] = @Tamaño
	WHERE  [IDDetalle] = @IDDetalle
	
	-- Begin Return Select <- do not remove
	SELECT [IDDetalle], [Producto], [Precio], [IDTerreno], [Fecha], [Tamaño]
	FROM   [dbo].[DetalleVenta]
	WHERE  [IDDetalle] = @IDDetalle	
	-- End Return Select <- do not remove

	COMMIT
GO
/****** Object:  StoredProcedure [dbo].[PROC_CAMBIO_DETATALLESUSURIO]    Script Date: 06/05/2019 12:28:36 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[PROC_CAMBIO_DETATALLESUSURIO]
	@ID BIGINT,
	@NOMBRE NVARCHAR(100),
	@APELLIDO NVARCHAR(100),
	@CALLE NVARCHAR(100),
	@COLONIA NVARCHAR(100),
	@ESTADO NVARCHAR(100),
	@PAIS NVARCHAR(100),
	@CP INT,
	@ESCRITURAPERMISO NVARCHAR(100),
	@RFC NVARCHAR(100),
	@FIRMAELECTRONICA NVARCHAR(100)
AS
	DECLARE @ERROR INT
	BEGIN TRAN
		UPDATE DetallesUsuario SET Nombre = @NOMBRE,Apellido = @APELLIDO, 
		Calle = @CALLE, Colonia = @COLONIA, Estado = @ESTADO , Pais = @PAIS, CP = @CP,
		EscrituraPermiso = @ESCRITURAPERMISO,RFC = @RFC , FirmaElectronica = @FIRMAELECTRONICA
		SET @ERROR = @@ERROR
		IF @ERROR <> 0 ROLLBACK TRAN
	COMMIT TRAN
GO
/****** Object:  StoredProcedure [dbo].[PROC_CAMBIO_EMPRESA]    Script Date: 06/05/2019 12:28:36 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[PROC_CAMBIO_EMPRESA] 
    @IDEmpresa int,
    @Nombre nvarchar(50) = NULL,
    @Dirección nvarchar(50) = NULL,
    @NumTelefono nvarchar(50) = NULL,
    @Correo nvarchar(50) = NULL
AS 
	SET NOCOUNT ON 
	SET XACT_ABORT ON  
	
	BEGIN TRAN

	UPDATE [dbo].[Empresa]
	SET    [Nombre] = @Nombre, [Dirección] = @Dirección, [NumTelefono] = @NumTelefono, [Correo] = @Correo
	WHERE  [IDEmpresa] = @IDEmpresa
	
	-- Begin Return Select <- do not remove
	SELECT [IDEmpresa], [Nombre], [Dirección], [NumTelefono], [Correo]
	FROM   [dbo].[Empresa]
	WHERE  [IDEmpresa] = @IDEmpresa	
	-- End Return Select <- do not remove

	COMMIT
GO
/****** Object:  StoredProcedure [dbo].[PROC_CAMBIO_HISTORIAL]    Script Date: 06/05/2019 12:28:36 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[PROC_CAMBIO_HISTORIAL] 
    @IDHistorial bigint,
    @Busqueda nvarchar(100) = NULL,
    @IDUsuario varchar(20) = NULL
AS 
	SET NOCOUNT ON 
	SET XACT_ABORT ON  
	
	BEGIN TRAN

	UPDATE [dbo].[Historial]
	SET    [Busqueda] = @Busqueda, [IDUsuario] = @IDUsuario
	WHERE  [IDHistorial] = @IDHistorial
	
	-- Begin Return Select <- do not remove
	SELECT [IDHistorial], [Busqueda], [IDUsuario]
	FROM   [dbo].[Historial]
	WHERE  [IDHistorial] = @IDHistorial	
	-- End Return Select <- do not remove

	COMMIT
GO
/****** Object:  StoredProcedure [dbo].[PROC_CAMBIO_PRODUCTO]    Script Date: 06/05/2019 12:28:36 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[PROC_CAMBIO_PRODUCTO] 
    @IDProducto bigint,
    @Producto nvarchar(50) = NULL,
    @PrecioTonelada money = NULL,
    @PrecioKilogramo money = NULL,
    @Foto image = NULL,
    @Temporada bit = NULL,
    @IDCategoria int = NULL
AS 
	SET NOCOUNT ON 
	SET XACT_ABORT ON  
	
	BEGIN TRAN

	UPDATE [dbo].[Producto]
	SET    [Producto] = @Producto, [PrecioTonelada] = @PrecioTonelada, [PrecioKilogramo] = @PrecioKilogramo, [Foto] = @Foto, [Temporada] = @Temporada, [IDCategoria] = @IDCategoria
	WHERE  [IDProducto] = @IDProducto
	
	-- Begin Return Select <- do not remove
	SELECT [IDProducto], [Producto], [PrecioTonelada], [PrecioKilogramo], [Foto], [Temporada], [IDCategoria]
	FROM   [dbo].[Producto]
	WHERE  [IDProducto] = @IDProducto	
	-- End Return Select <- do not remove

	COMMIT
GO
/****** Object:  StoredProcedure [dbo].[PROC_CAMBIO_ProductoComprado]    Script Date: 06/05/2019 12:28:36 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[PROC_CAMBIO_ProductoComprado] 
    @IDprodComprado bigint,
    @IDTerreno bigint,
    @Localizacion geography,
    @Tiempo datetime,
    @Estado bit
AS 
	SET NOCOUNT ON 
	SET XACT_ABORT ON  
	
	BEGIN TRAN

	UPDATE [dbo].[ProductoComprado]
	SET    [IDTerreno] = @IDTerreno, [Localizacion] = @Localizacion, [Tiempo] = @Tiempo, [Estado] = @Estado
	WHERE  [IDprodComprado] = @IDprodComprado
	
	-- Begin Return Select <- do not remove
	SELECT [IDprodComprado], [IDTerreno], [Localizacion], [Tiempo], [Estado]
	FROM   [dbo].[ProductoComprado]
	WHERE  [IDprodComprado] = @IDprodComprado	
	-- End Return Select <- do not remove

	COMMIT
GO
/****** Object:  StoredProcedure [dbo].[PROC_CAMBIO_PRODUCTOTERRENO]    Script Date: 06/05/2019 12:28:36 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[PROC_CAMBIO_PRODUCTOTERRENO] 
    @IDNumProducto bigint,
    @IDProducto bigint = NULL,
    @IDTerreno bigint = NULL
AS 
	SET NOCOUNT ON 
	SET XACT_ABORT ON  
	
	BEGIN TRAN

	UPDATE [dbo].[ProductoTerreno]
	SET    [IDProducto] = @IDProducto, [IDTerreno] = @IDTerreno
	WHERE  [IDNumProducto] = @IDNumProducto
	
	-- Begin Return Select <- do not remove
	SELECT [IDNumProducto], [IDProducto], [IDTerreno]
	FROM   [dbo].[ProductoTerreno]
	WHERE  [IDNumProducto] = @IDNumProducto	
	-- End Return Select <- do not remove

	COMMIT
GO
/****** Object:  StoredProcedure [dbo].[PROC_CAMBIO_TARGETA]    Script Date: 06/05/2019 12:28:36 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[PROC_CAMBIO_TARGETA]
	@ID BIGINT,
	@NumTargeta VARCHAR(16),
	@CDV VARCHAR(8),
	@MES VARCHAR(2),
	@AÑO VARCHAR(2)
AS
UPDATE [dbo].[Targeta]
	SET [NumTargeta] = ENCRYPTBYPASSPHRASE('password',@NumTargeta)
      ,[CDV] = ENCRYPTBYPASSPHRASE('password',@CDV)
      ,[Mes] = ENCRYPTBYPASSPHRASE('password',@MES)
      ,[Año] = ENCRYPTBYPASSPHRASE('password',@AÑO)
	WHERE Targeta.IDTargeta = @ID;
GO
/****** Object:  StoredProcedure [dbo].[PROC_CAMBIO_TERRENO]    Script Date: 06/05/2019 12:28:36 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[PROC_CAMBIO_TERRENO]
	@IDTERRENO BIGINT,
	@TAMAÑO INT,
	@MEDIDA VARCHAR(50),
	@TIPO VARCHAR(50)
AS
UPDATE [dbo].[Terreno]
   SET [Tamaño] = @TAMAÑO
      ,[Medida] = @MEDIDA
      ,[Tipo] = @TIPO
 WHERE IDTerreno = @IDTERRENO
GO
/****** Object:  StoredProcedure [dbo].[PROC_CAMBIO_TIPOUSUARIO]    Script Date: 06/05/2019 12:28:36 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[PROC_CAMBIO_TIPOUSUARIO]
	@ID INT,
	@TIPOUAUSUARIO NVARCHAR(50)
AS
	DECLARE @ERROR INT
	BEGIN TRAN
		UPDATE TipoUsuario SET TipoUsuario = @TIPOUAUSUARIO WHERE IDTipo = @ID
		SET @ERROR = @@ERROR
		IF @ERROR <> 0 ROLLBACK TRAN
	COMMIT TRAN
GO
/****** Object:  StoredProcedure [dbo].[PROC_CAMBIO_USUARIO]    Script Date: 06/05/2019 12:28:36 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[PROC_CAMBIO_USUARIO]
	@IDUSUARIO VARCHAR(20),
	@USUARIO NVARCHAR(100),
	@CONTRASEÑA NVARCHAR(100),
	@CORREO NVARCHAR(100),
	@FOTO IMAGE
AS
	DECLARE @ERROR INT
	BEGIN TRAN
		UPDATE Usuario SET 
		Foto = @FOTO,
		Usuario = ENCRYPTBYPASSPHRASE('password',@USUARIO),
		Contraseña = ENCRYPTBYPASSPHRASE('password',@CONTRASEÑA),
		Correo = @CORREO
		WHERE IDUsuario = @IDUSUARIO;
		SET @ERROR = @@ERROR
		IF @ERROR <> 0 ROLLBACK TRAN
	COMMIT TRAN
GO
/****** Object:  StoredProcedure [dbo].[PROC_CAMBIO_Venta]    Script Date: 06/05/2019 12:28:36 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[PROC_CAMBIO_Venta] 
    @IDVenta bigint,
    @IDUsuarioAgricultor varchar(20),
    @IDUserioCliente varchar(20),
    @IDDetalle bigint
AS 
	SET NOCOUNT ON 
	SET XACT_ABORT ON  
	
	BEGIN TRAN

	UPDATE [dbo].[Venta]
	SET    [IDUsuarioAgricultor] = @IDUsuarioAgricultor, [IDUserioCliente] = @IDUserioCliente, [IDDetalle] = @IDDetalle
	WHERE  [IDVenta] = @IDVenta
	
	-- Begin Return Select <- do not remove
	SELECT [IDVenta], [IDUsuarioAgricultor], [IDUserioCliente], [IDDetalle]
	FROM   [dbo].[Venta]
	WHERE  [IDVenta] = @IDVenta	
	-- End Return Select <- do not remove

	COMMIT
GO
/****** Object:  StoredProcedure [dbo].[PROC_MOSTRAR_CARRITO]    Script Date: 06/05/2019 12:28:36 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[PROC_MOSTRAR_CARRITO] 
    @IDCarrito bigint
AS 
	SET NOCOUNT ON 
	SET XACT_ABORT ON  

	BEGIN TRAN

	SELECT [IDCarrito], [IDUsuario] 
	FROM   [dbo].[Carrito] 
	WHERE  ([IDCarrito] = @IDCarrito OR @IDCarrito IS NULL) 

	COMMIT
GO
/****** Object:  StoredProcedure [dbo].[PROC_MOSTRAR_CATEGORIA]    Script Date: 06/05/2019 12:28:36 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[PROC_MOSTRAR_CATEGORIA] 
    @IDCategoria int
AS 
	SET NOCOUNT ON 
	SET XACT_ABORT ON  

	BEGIN TRAN

	SELECT [IDCategoria], [Nombre] 
	FROM   [dbo].[Categorias] 
	WHERE  ([IDCategoria] = @IDCategoria OR @IDCategoria IS NULL) 

	COMMIT
GO
/****** Object:  StoredProcedure [dbo].[PROC_MOSTRAR_CERTIFICADO]    Script Date: 06/05/2019 12:28:36 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[PROC_MOSTRAR_CERTIFICADO] 
    @IDCertificado bigint
AS 
	SET NOCOUNT ON 
	SET XACT_ABORT ON  

	BEGIN TRAN

	SELECT [IDCertificado], [Nombre], [Vigencia], [TituloCertificado], [FechaExpedido], [Sello] 
	FROM   [dbo].[Certificado] 
	WHERE  ([IDCertificado] = @IDCertificado OR @IDCertificado IS NULL) 

	COMMIT
GO
/****** Object:  StoredProcedure [dbo].[PROC_MOSTRAR_DetalleVenta]    Script Date: 06/05/2019 12:28:36 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[PROC_MOSTRAR_DetalleVenta] 
    @IDDetalle bigint
AS 
	SET NOCOUNT ON 
	SET XACT_ABORT ON  

	BEGIN TRAN

	SELECT [IDDetalle], [Producto], [Precio], [IDTerreno], [Fecha], [Tamaño] 
	FROM   [dbo].[DetalleVenta] 
	WHERE  ([IDDetalle] = @IDDetalle OR @IDDetalle IS NULL) 

	COMMIT
GO
/****** Object:  StoredProcedure [dbo].[PROC_MOSTRAR_DETATALLESUSURIO]    Script Date: 06/05/2019 12:28:36 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[PROC_MOSTRAR_DETATALLESUSURIO]
	@ID BIGINT
AS
	DECLARE @ERROR INT
	BEGIN TRAN
		SET @ERROR = @@ERROR
		IF @ERROR <> 0 ROLLBACK TRAN
	COMMIT TRAN
	SELECT * FROM DetallesUsuario WHERE IDDetalles = @ID
GO
/****** Object:  StoredProcedure [dbo].[PROC_MOSTRAR_EMPRESA]    Script Date: 06/05/2019 12:28:36 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[PROC_MOSTRAR_EMPRESA] 
    @IDEmpresa int
AS 
	SET NOCOUNT ON 
	SET XACT_ABORT ON  

	BEGIN TRAN

	SELECT [IDEmpresa], [Nombre], [Dirección], [NumTelefono], [Correo] 
	FROM   [dbo].[Empresa] 
	WHERE  ([IDEmpresa] = @IDEmpresa OR @IDEmpresa IS NULL) 

	COMMIT
GO
/****** Object:  StoredProcedure [dbo].[PROC_MOSTRAR_HISTORIAL]    Script Date: 06/05/2019 12:28:36 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[PROC_MOSTRAR_HISTORIAL] 
    @IDHistorial bigint
AS 
	SET NOCOUNT ON 
	SET XACT_ABORT ON  

	BEGIN TRAN

	SELECT [IDHistorial], [Busqueda], [IDUsuario] 
	FROM   [dbo].[Historial] 
	WHERE  ([IDHistorial] = @IDHistorial OR @IDHistorial IS NULL) 

	COMMIT
GO
/****** Object:  StoredProcedure [dbo].[PROC_MOSTRAR_PRODUCTO]    Script Date: 06/05/2019 12:28:36 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[PROC_MOSTRAR_PRODUCTO] 
    @IDProducto bigint
AS 
	SET NOCOUNT ON 
	SET XACT_ABORT ON  

	BEGIN TRAN

	SELECT [IDProducto], [Producto], [PrecioTonelada], [PrecioKilogramo], [Foto], [Temporada], [IDCategoria] 
	FROM   [dbo].[Producto] 
	WHERE  ([IDProducto] = @IDProducto OR @IDProducto IS NULL) 

	COMMIT
GO
/****** Object:  StoredProcedure [dbo].[PROC_MOSTRAR_ProductoComprado]    Script Date: 06/05/2019 12:28:36 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[PROC_MOSTRAR_ProductoComprado] 
    @IDprodComprado bigint
AS 
	SET NOCOUNT ON 
	SET XACT_ABORT ON  

	BEGIN TRAN

	SELECT [IDprodComprado], [IDTerreno], [Localizacion], [Tiempo], [Estado] 
	FROM   [dbo].[ProductoComprado] 
	WHERE  ([IDprodComprado] = @IDprodComprado OR @IDprodComprado IS NULL) 

	COMMIT
GO
/****** Object:  StoredProcedure [dbo].[PROC_MOSTRAR_PRODUCTOTERRENO]    Script Date: 06/05/2019 12:28:36 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[PROC_MOSTRAR_PRODUCTOTERRENO] 
    @IDNumProducto bigint
AS 
	SET NOCOUNT ON 
	SET XACT_ABORT ON  

	BEGIN TRAN

	SELECT [IDNumProducto], [IDProducto], [IDTerreno] 
	FROM   [dbo].[ProductoTerreno] 
	WHERE  ([IDNumProducto] = @IDNumProducto OR @IDNumProducto IS NULL) 

	COMMIT
GO
/****** Object:  StoredProcedure [dbo].[PROC_MOSTRAR_TARGETA]    Script Date: 06/05/2019 12:28:36 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[PROC_MOSTRAR_TARGETA]
AS
SELECT [IDTargeta]
      ,[NumTargeta]
      ,[CDV]
      ,[Mes]
      ,[Año]
  FROM [dbo].[Targeta]
GO
/****** Object:  StoredProcedure [dbo].[PROC_MOSTRAR_TARGETAUSUARIO]    Script Date: 06/05/2019 12:28:36 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[PROC_MOSTRAR_TARGETAUSUARIO]
AS
SELECT [IDTargeta]
      ,[IDUsuario]
  FROM [dbo].[TargetaUsuario]
GO
/****** Object:  StoredProcedure [dbo].[PROC_MOSTRAR_TERRENO]    Script Date: 06/05/2019 12:28:36 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[PROC_MOSTRAR_TERRENO]
AS
SELECT [IDTerreno]
      ,[Tamaño]
      ,[Medida]
      ,[Tipo]
  FROM [dbo].[Terreno]
GO
/****** Object:  StoredProcedure [dbo].[PROC_MOSTRAR_TERRENOUSUARIO]    Script Date: 06/05/2019 12:28:36 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[PROC_MOSTRAR_TERRENOUSUARIO]
AS
SELECT [IDUsuario]
      ,[IDTerreno]
  FROM [dbo].[TerrenoUsuario]
GO
/****** Object:  StoredProcedure [dbo].[PROC_MOSTRAR_TIPOUSUARIO]    Script Date: 06/05/2019 12:28:36 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[PROC_MOSTRAR_TIPOUSUARIO]
	@ID INT
AS
	DECLARE @ERROR INT
	BEGIN TRAN
		SELECT * FROM TipoUsuario WHERE IDTipo = @ID;
		SET @ERROR = @@ERROR
		IF @ERROR <> 0 ROLLBACK TRAN
	COMMIT TRAN
GO
/****** Object:  StoredProcedure [dbo].[PROC_MOSTRAR_USUARIO]    Script Date: 06/05/2019 12:28:36 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[PROC_MOSTRAR_USUARIO]
AS
SELECT * FROM Usuario
GO
/****** Object:  StoredProcedure [dbo].[PROC_MOSTRAR_Venta]    Script Date: 06/05/2019 12:28:36 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[PROC_MOSTRAR_Venta] 
    @IDVenta bigint
AS 
	SET NOCOUNT ON 
	SET XACT_ABORT ON  

	BEGIN TRAN

	SELECT [IDVenta], [IDUsuarioAgricultor], [IDUserioCliente], [IDDetalle] 
	FROM   [dbo].[Venta] 
	WHERE  ([IDVenta] = @IDVenta OR @IDVenta IS NULL) 

	COMMIT
GO
