USE [BD-ProyectoWU]
GO
/****** Object:  User [userclient]    Script Date: 02/23/2019 11:57:37 ******/
CREATE USER [userclient] FOR LOGIN [userclient] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  Table [dbo].[tb_usuario]    Script Date: 02/23/2019 11:57:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tb_usuario](
	[codusuario] [int] IDENTITY(1,1) NOT NULL,
	[usuario] [varchar](40) NOT NULL,
	[clave] [text] NOT NULL,
	[rolusuario] [varchar](40) NULL,
	[estusuario] [varchar](40) NULL,
 CONSTRAINT [PK_tb_usuario] PRIMARY KEY CLUSTERED 
(
	[codusuario] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tb_ubigeo]    Script Date: 02/23/2019 11:57:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tb_ubigeo](
	[codubigeo] [varchar](6) NOT NULL,
	[departamento] [varchar](40) NULL,
	[provincia] [varchar](40) NULL,
	[distrito] [varchar](40) NULL,
	[poblacion] [int] NULL,
 CONSTRAINT [PK_tb_ubigeo] PRIMARY KEY CLUSTERED 
(
	[codubigeo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tb_postulante]    Script Date: 02/23/2019 11:57:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tb_postulante](
	[codpostulante] [int] IDENTITY(1,1) NOT NULL,
	[nompostulante] [varchar](50) NULL,
	[apepostulante] [varchar](50) NULL,
	[fchpostulante] [datetime] NULL,
	[docpostulante] [varchar](11) NULL,
	[corpostulante] [varchar](40) NULL,
	[obspostulante] [varchar](500) NULL,
	[estpostulante] [varchar](3) NULL,
	[fchregistro] [datetime] NULL,
 CONSTRAINT [PK_tb_postulante] PRIMARY KEY CLUSTERED 
(
	[codpostulante] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  StoredProcedure [dbo].[sp_tb_ubigeo_pro]    Script Date: 02/23/2019 11:57:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_tb_ubigeo_pro]
@coddep varchar(2)
AS 
SELECT DISTINCT	substring(codubigeo,3,2) ubidep,provincia
FROM			tb_ubigeo
WHERE			substring(codubigeo,1,2)  = @coddep
ORDER BY		provincia asc
GO
/****** Object:  StoredProcedure [dbo].[sp_tb_ubigeo_dis]    Script Date: 02/23/2019 11:57:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_tb_ubigeo_dis]
@coddep varchar(2),
@codpro varchar(2)
AS 
SELECT DISTINCT	substring(codubigeo,5,2) ubidep,distrito
FROM			tb_ubigeo
WHERE			substring(codubigeo,1,2)  = @coddep
AND				substring(codubigeo,3,2)  = @codpro
ORDER BY		distrito asc
GO
/****** Object:  StoredProcedure [dbo].[sp_tb_ubigeo_dep]    Script Date: 02/23/2019 11:57:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_tb_ubigeo_dep]
AS 
SELECT DISTINCT	substring(codubigeo,1,2) ubidep,departamento
FROM			tb_ubigeo
ORDER BY		departamento asc
GO
/****** Object:  Table [dbo].[tb_et]    Script Date: 02/23/2019 11:57:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tb_et](
	[codet] [int] IDENTITY(1,1) NOT NULL,
	[codpostulante] [int] NOT NULL,
	[codusuario] [int] NOT NULL,
	[nomet] [varchar](40) NULL,
	[apeet] [varchar](40) NULL,
	[estet] [varchar](40) NULL,
	[fchregistro] [varchar](40) NULL,
 CONSTRAINT [PK_tb_et] PRIMARY KEY CLUSTERED 
(
	[codet] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tb_competencia]    Script Date: 02/23/2019 11:57:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tb_competencia](
	[codcompetencia] [int] NOT NULL,
	[codubigeo] [varchar](6) NOT NULL,
	[razonsocial] [varchar](40) NULL,
	[direccion] [varchar](60) NULL,
	[rubro] [varchar](40) NULL,
	[representante] [varchar](40) NULL,
	[fch_registro] [datetime] NULL,
	[codlatitud] [varchar](10) NULL,
	[codlongitud] [varchar](10) NULL,
 CONSTRAINT [PK_tb_competencia] PRIMARY KEY CLUSTERED 
(
	[codcompetencia] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tb_zona]    Script Date: 02/23/2019 11:57:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tb_zona](
	[codzona] [int] IDENTITY(1,1) NOT NULL,
	[codubigeo] [varchar](6) NOT NULL,
	[dsczona] [varchar](40) NULL,
	[estzona] [varchar](40) NULL,
	[fchregistro] [datetime] NULL,
 CONSTRAINT [PK_tb_zona] PRIMARY KEY CLUSTERED 
(
	[codzona] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tb_zona_det]    Script Date: 02/23/2019 11:57:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tb_zona_det](
	[codzonadet] [int] IDENTITY(1,1) NOT NULL,
	[codzona] [int] NOT NULL,
	[orden] [int] NULL,
	[lat] [varchar](20) NULL,
	[lon] [varchar](20) NULL,
 CONSTRAINT [PK_tb_zona_det] PRIMARY KEY CLUSTERED 
(
	[codzonadet] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tb_visita]    Script Date: 02/23/2019 11:57:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tb_visita](
	[codvisita] [int] IDENTITY(1,1) NOT NULL,
	[codet] [int] NOT NULL,
	[fchvisita] [varchar](40) NULL,
	[fchregistro] [datetime] NULL,
	[dnirepresentante] [varchar](8) NULL,
	[nomrepresentante] [varchar](50) NULL,
	[rucemp] [varchar](11) NULL,
	[razonsocialemp] [varchar](40) NULL,
	[detallevisita] [varchar](300) NULL,
	[latitud] [varchar](10) NULL,
	[longitud] [varchar](10) NULL,
 CONSTRAINT [PK_tb_visita] PRIMARY KEY CLUSTERED 
(
	[codvisita] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  StoredProcedure [dbo].[sp_tb_zona_det]    Script Date: 02/23/2019 11:57:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_tb_zona_det] 
@codzona varchar(6)
AS 
SELECT		ca.codzona, ca.fchregistro, ca.estzona, ca.dsczona, ub.codubigeo, 
			ub.departamento + ' / '+ ub.provincia + ' / ' + ub.distrito dscubigeo
FROM		tb_zona ca
--INNER JOIN	tb_zona_det de ON ca.codzona = de.codzona
INNER JOIN	tb_ubigeo ub ON ub.codubigeo = ca.codubigeo
WHERE codzona = @codzona
GO
/****** Object:  StoredProcedure [dbo].[sp_tb_zona_ddl]    Script Date: 02/23/2019 11:57:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_tb_zona_ddl] AS 
SELECT codzona, dsczona
FROM tb_zona where estzona <> 'X'
GO
/****** Object:  StoredProcedure [dbo].[sp_tb_zona_lst]    Script Date: 02/23/2019 11:57:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_tb_zona_lst] 
@codzona varchar(6),
@codubigeo varchar(6),
@dsczona varchar(40), 
@fchinicio varchar(10),
@fchfin varchar(10),
@estzona varchar(40)
AS 
SELECT codzona, z.codubigeo, 
u.departamento+'-'+u.provincia+'-'+u.distrito dscubigeo,
dsczona, fchregistro, estzona 
FROM tb_zona z
inner join tb_ubigeo u on z.codubigeo = u.codubigeo
WHERE 
codzona		like '%'+isnull(@codzona,'')+'%' and
z.codubigeo	like '%'+isnull(@codubigeo,'')+'%' and
dsczona		like '%'+isnull(@dsczona,'')+'%' and 
fchregistro	between @fchinicio and @fchfin and
estzona		like @estzona
ORDER BY codzona
GO
/****** Object:  StoredProcedure [dbo].[sp_tb_zona_ins]    Script Date: 02/23/2019 11:57:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_tb_zona_ins] 
@codubigeo varchar(6), 
@dsczona varchar(40), 
@estzona varchar(40), 
@fchregistro datetime 
AS 
INSERT INTO tb_zona 
			(codubigeo, dsczona, estzona, fchregistro) 
VALUES		(@codubigeo, @dsczona, @estzona, @fchregistro);
GO
/****** Object:  Table [dbo].[tb_subzona]    Script Date: 02/23/2019 11:57:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tb_subzona](
	[codsubzona] [int] IDENTITY(1,1) NOT NULL,
	[codzona] [int] NOT NULL,
	[coordenadas] [varchar](500) NULL,
	[fchregistro] [datetime] NULL,
	[estsubzona] [varchar](40) NULL,
	[nomsubzona] [varchar](50) NULL,
 CONSTRAINT [PK_tb_subzona] PRIMARY KEY CLUSTERED 
(
	[codsubzona] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tb_gcp]    Script Date: 02/23/2019 11:57:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tb_gcp](
	[codgcp] [int] NOT NULL,
	[codzona] [int] NOT NULL,
	[nombre_zona] [varchar](50) NULL,
	[coordenadas] [varchar](500) NULL,
 CONSTRAINT [PK_tb_gcp] PRIMARY KEY CLUSTERED 
(
	[codgcp] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  StoredProcedure [dbo].[sp_tb_et_ddl]    Script Date: 02/23/2019 11:57:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_tb_et_ddl] 
AS 
SELECT 
codet, nomet, apeet
FROM tb_et WHERE estet <>'X'
GO
/****** Object:  Table [dbo].[tb_subzona_et]    Script Date: 02/23/2019 11:57:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tb_subzona_et](
	[cod_subzona_et] [int] IDENTITY(1,1) NOT NULL,
	[codet] [int] NOT NULL,
	[codsubzona] [int] NOT NULL,
	[fch_registro] [datetime] NULL,
	[estsubzonaet] [varchar](3) NULL,
 CONSTRAINT [PK_tb_subzona_et] PRIMARY KEY CLUSTERED 
(
	[cod_subzona_et] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tb_prospecto]    Script Date: 02/23/2019 11:57:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tb_prospecto](
	[codprospecto] [int] IDENTITY(1,1) NOT NULL,
	[codvisita] [int] NOT NULL,
	[fch_registro] [datetime] NULL,
	[dnirepresentante] [varchar](8) NULL,
	[nomrepresentante] [varchar](100) NULL,
	[rucemp] [varchar](11) NULL,
	[razonsocialemp] [varchar](100) NULL,
	[direccion] [varchar](100) NULL,
	[rubro] [varchar](30) NULL,
	[condicion] [varchar](30) NULL,
 CONSTRAINT [PK_tb_prospecto] PRIMARY KEY CLUSTERED 
(
	[codprospecto] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  StoredProcedure [dbo].[sp_tb_zona_dib]    Script Date: 02/23/2019 11:57:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_tb_zona_dib] 
@codzona varchar(6)
AS 
SELECT		orden,lat,lon
FROM		tb_zona_det
WHERE		codzona = @codzona
GO
/****** Object:  StoredProcedure [dbo].[sp_tb_zona_det_ins]    Script Date: 02/23/2019 11:57:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_tb_zona_det_ins] 
@codzona int, 
@orden int, 
@lat varchar(20), 
@lon varchar(20)
AS 
INSERT INTO tb_zona_det
			(codzona, orden, lat, lon) 
VALUES		(@codzona, @orden, @lat, @lon);
GO
/****** Object:  StoredProcedure [dbo].[sp_tb_subzona_ins]    Script Date: 02/23/2019 11:57:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_tb_subzona_ins] 
@codzona int, 
@nomsubzona varchar(50),
@coordenadas varchar(500), 
@fchregistro datetime, 
@estsubzona varchar(40) 
AS INSERT INTO tb_subzona 
(codzona, nomsubzona, coordenadas, fchregistro, estsubzona) 
VALUES 
(@codzona, @nomsubzona, @coordenadas, @fchregistro, @estsubzona);
GO
/****** Object:  Table [dbo].[tb_documento]    Script Date: 02/23/2019 11:57:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tb_documento](
	[coddocumento] [int] IDENTITY(1,1) NOT NULL,
	[codprospecto] [int] NOT NULL,
	[flg_dni_represent] [varchar](2) NULL,
	[flg_dni_conyuge] [varchar](2) NULL,
	[flg_contrato_arrend] [varchar](2) NULL,
	[flg_copia_propiedad] [varchar](2) NULL,
	[flg_ficha_ruc] [varchar](2) NULL,
	[flg_licencia_func] [varchar](2) NULL,
	[flg_const_empresa] [varchar](2) NULL,
	[flg_vigencia_poder] [varchar](2) NULL,
 CONSTRAINT [PK_tb_documento] PRIMARY KEY CLUSTERED 
(
	[coddocumento] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tb_agente]    Script Date: 02/23/2019 11:57:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tb_agente](
	[codagente] [varchar](4) NOT NULL,
	[codprospecto] [int] NOT NULL,
	[codubigeo] [varchar](6) NOT NULL,
	[nomagente] [varchar](40) NULL,
	[rucagente] [varchar](40) NULL,
	[departamento] [varchar](40) NULL,
	[provincia] [varchar](40) NULL,
	[distrito] [varchar](40) NULL,
	[diragente] [varchar](100) NULL,
	[codagencia] [varchar](40) NULL,
	[tipoagencia] [varchar](40) NULL,
	[rango1] [varchar](40) NULL,
	[rango2] [varchar](40) NULL,
	[condicion] [varchar](40) NULL,
	[razonsocial] [varchar](40) NULL,
 CONSTRAINT [PK_tb_agente] PRIMARY KEY CLUSTERED 
(
	[codagente] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tb_transacciones]    Script Date: 02/23/2019 11:57:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tb_transacciones](
	[codtransaccion] [varchar](40) NOT NULL,
	[codagente] [varchar](4) NOT NULL,
	[codubigeo] [varchar](6) NOT NULL,
	[nomagente] [varchar](70) NULL,
	[condicion] [varchar](50) NULL,
	[razonsocial] [varchar](100) NULL,
	[departamento] [varchar](40) NULL,
	[provincia] [varchar](60) NULL,
	[distrito] [varchar](90) NULL,
	[codoper] [varchar](10) NULL,
	[nomoper] [varchar](30) NULL,
	[importe1] [int] NULL,
	[importe2] [int] NULL,
 CONSTRAINT [PK_tb_transacciones] PRIMARY KEY CLUSTERED 
(
	[codtransaccion] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  ForeignKey [tb_prospecto_tb_agente]    Script Date: 02/23/2019 11:57:33 ******/
ALTER TABLE [dbo].[tb_agente]  WITH CHECK ADD  CONSTRAINT [tb_prospecto_tb_agente] FOREIGN KEY([codprospecto])
REFERENCES [dbo].[tb_prospecto] ([codprospecto])
GO
ALTER TABLE [dbo].[tb_agente] CHECK CONSTRAINT [tb_prospecto_tb_agente]
GO
/****** Object:  ForeignKey [tb_ubigeo_tb_agente]    Script Date: 02/23/2019 11:57:33 ******/
ALTER TABLE [dbo].[tb_agente]  WITH CHECK ADD  CONSTRAINT [tb_ubigeo_tb_agente] FOREIGN KEY([codubigeo])
REFERENCES [dbo].[tb_ubigeo] ([codubigeo])
GO
ALTER TABLE [dbo].[tb_agente] CHECK CONSTRAINT [tb_ubigeo_tb_agente]
GO
/****** Object:  ForeignKey [tb_ubigeo_tb_competencia]    Script Date: 02/23/2019 11:57:33 ******/
ALTER TABLE [dbo].[tb_competencia]  WITH CHECK ADD  CONSTRAINT [tb_ubigeo_tb_competencia] FOREIGN KEY([codubigeo])
REFERENCES [dbo].[tb_ubigeo] ([codubigeo])
GO
ALTER TABLE [dbo].[tb_competencia] CHECK CONSTRAINT [tb_ubigeo_tb_competencia]
GO
/****** Object:  ForeignKey [tb_prospecto_tb_documento]    Script Date: 02/23/2019 11:57:33 ******/
ALTER TABLE [dbo].[tb_documento]  WITH CHECK ADD  CONSTRAINT [tb_prospecto_tb_documento] FOREIGN KEY([codprospecto])
REFERENCES [dbo].[tb_prospecto] ([codprospecto])
GO
ALTER TABLE [dbo].[tb_documento] CHECK CONSTRAINT [tb_prospecto_tb_documento]
GO
/****** Object:  ForeignKey [tb_postulante_tb_et]    Script Date: 02/23/2019 11:57:33 ******/
ALTER TABLE [dbo].[tb_et]  WITH CHECK ADD  CONSTRAINT [tb_postulante_tb_et] FOREIGN KEY([codpostulante])
REFERENCES [dbo].[tb_postulante] ([codpostulante])
GO
ALTER TABLE [dbo].[tb_et] CHECK CONSTRAINT [tb_postulante_tb_et]
GO
/****** Object:  ForeignKey [tb_usuario_tb_et]    Script Date: 02/23/2019 11:57:33 ******/
ALTER TABLE [dbo].[tb_et]  WITH CHECK ADD  CONSTRAINT [tb_usuario_tb_et] FOREIGN KEY([codusuario])
REFERENCES [dbo].[tb_usuario] ([codusuario])
GO
ALTER TABLE [dbo].[tb_et] CHECK CONSTRAINT [tb_usuario_tb_et]
GO
/****** Object:  ForeignKey [tb_zona_tb_gcp]    Script Date: 02/23/2019 11:57:33 ******/
ALTER TABLE [dbo].[tb_gcp]  WITH CHECK ADD  CONSTRAINT [tb_zona_tb_gcp] FOREIGN KEY([codzona])
REFERENCES [dbo].[tb_zona] ([codzona])
GO
ALTER TABLE [dbo].[tb_gcp] CHECK CONSTRAINT [tb_zona_tb_gcp]
GO
/****** Object:  ForeignKey [tb_visita_tb_prospecto]    Script Date: 02/23/2019 11:57:33 ******/
ALTER TABLE [dbo].[tb_prospecto]  WITH CHECK ADD  CONSTRAINT [tb_visita_tb_prospecto] FOREIGN KEY([codvisita])
REFERENCES [dbo].[tb_visita] ([codvisita])
GO
ALTER TABLE [dbo].[tb_prospecto] CHECK CONSTRAINT [tb_visita_tb_prospecto]
GO
/****** Object:  ForeignKey [tb_zona_tb_subzona]    Script Date: 02/23/2019 11:57:33 ******/
ALTER TABLE [dbo].[tb_subzona]  WITH CHECK ADD  CONSTRAINT [tb_zona_tb_subzona] FOREIGN KEY([codzona])
REFERENCES [dbo].[tb_zona] ([codzona])
GO
ALTER TABLE [dbo].[tb_subzona] CHECK CONSTRAINT [tb_zona_tb_subzona]
GO
/****** Object:  ForeignKey [tb_et_tb_subzona_et]    Script Date: 02/23/2019 11:57:33 ******/
ALTER TABLE [dbo].[tb_subzona_et]  WITH CHECK ADD  CONSTRAINT [tb_et_tb_subzona_et] FOREIGN KEY([codet])
REFERENCES [dbo].[tb_et] ([codet])
GO
ALTER TABLE [dbo].[tb_subzona_et] CHECK CONSTRAINT [tb_et_tb_subzona_et]
GO
/****** Object:  ForeignKey [tb_subzona_tb_subzona_et]    Script Date: 02/23/2019 11:57:33 ******/
ALTER TABLE [dbo].[tb_subzona_et]  WITH CHECK ADD  CONSTRAINT [tb_subzona_tb_subzona_et] FOREIGN KEY([codsubzona])
REFERENCES [dbo].[tb_subzona] ([codsubzona])
GO
ALTER TABLE [dbo].[tb_subzona_et] CHECK CONSTRAINT [tb_subzona_tb_subzona_et]
GO
/****** Object:  ForeignKey [tb_agente_tb_transacciones]    Script Date: 02/23/2019 11:57:33 ******/
ALTER TABLE [dbo].[tb_transacciones]  WITH CHECK ADD  CONSTRAINT [tb_agente_tb_transacciones] FOREIGN KEY([codagente])
REFERENCES [dbo].[tb_agente] ([codagente])
GO
ALTER TABLE [dbo].[tb_transacciones] CHECK CONSTRAINT [tb_agente_tb_transacciones]
GO
/****** Object:  ForeignKey [tb_ubigeo_tb_transacciones]    Script Date: 02/23/2019 11:57:33 ******/
ALTER TABLE [dbo].[tb_transacciones]  WITH CHECK ADD  CONSTRAINT [tb_ubigeo_tb_transacciones] FOREIGN KEY([codubigeo])
REFERENCES [dbo].[tb_ubigeo] ([codubigeo])
GO
ALTER TABLE [dbo].[tb_transacciones] CHECK CONSTRAINT [tb_ubigeo_tb_transacciones]
GO
/****** Object:  ForeignKey [tb_et_tb_visita]    Script Date: 02/23/2019 11:57:33 ******/
ALTER TABLE [dbo].[tb_visita]  WITH CHECK ADD  CONSTRAINT [tb_et_tb_visita] FOREIGN KEY([codet])
REFERENCES [dbo].[tb_et] ([codet])
GO
ALTER TABLE [dbo].[tb_visita] CHECK CONSTRAINT [tb_et_tb_visita]
GO
/****** Object:  ForeignKey [tb_ubigeo_tb_zona]    Script Date: 02/23/2019 11:57:33 ******/
ALTER TABLE [dbo].[tb_zona]  WITH CHECK ADD  CONSTRAINT [tb_ubigeo_tb_zona] FOREIGN KEY([codubigeo])
REFERENCES [dbo].[tb_ubigeo] ([codubigeo])
GO
ALTER TABLE [dbo].[tb_zona] CHECK CONSTRAINT [tb_ubigeo_tb_zona]
GO
/****** Object:  ForeignKey [FK_tb_zona_det_tb_zona]    Script Date: 02/23/2019 11:57:33 ******/
ALTER TABLE [dbo].[tb_zona_det]  WITH CHECK ADD  CONSTRAINT [FK_tb_zona_det_tb_zona] FOREIGN KEY([codzona])
REFERENCES [dbo].[tb_zona] ([codzona])
GO
ALTER TABLE [dbo].[tb_zona_det] CHECK CONSTRAINT [FK_tb_zona_det_tb_zona]
GO
