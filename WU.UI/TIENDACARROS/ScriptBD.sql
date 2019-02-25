USE [BD-ProyectoWU]
GO
/****** Object:  User [userclient]    Script Date: 02/23/2019 12:04:00 ******/
CREATE USER [userclient] FOR LOGIN [userclient] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  Table [dbo].[tb_usuario]    Script Date: 02/23/2019 12:03:59 ******/
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
SET IDENTITY_INSERT [dbo].[tb_usuario] ON
INSERT [dbo].[tb_usuario] ([codusuario], [usuario], [clave], [rolusuario], [estusuario]) VALUES (1, N'et1', N'123456', N'ET', N'ACT')
INSERT [dbo].[tb_usuario] ([codusuario], [usuario], [clave], [rolusuario], [estusuario]) VALUES (2, N'et2', N'123456', N'ET', N'ACT')
INSERT [dbo].[tb_usuario] ([codusuario], [usuario], [clave], [rolusuario], [estusuario]) VALUES (3, N'et3', N'123456', N'ET', N'ACT')
INSERT [dbo].[tb_usuario] ([codusuario], [usuario], [clave], [rolusuario], [estusuario]) VALUES (4, N'et4', N'123456', N'ET', N'ACT')
INSERT [dbo].[tb_usuario] ([codusuario], [usuario], [clave], [rolusuario], [estusuario]) VALUES (5, N'et5', N'123456', N'ET', N'ACT')
SET IDENTITY_INSERT [dbo].[tb_usuario] OFF
/****** Object:  Table [dbo].[tb_ubigeo]    Script Date: 02/23/2019 12:03:59 ******/
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
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'010101', N'AMAZONAS', N'CHACHAPOYAS', N'CHACHAPOYAS', 18251)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'010102', N'AMAZONAS', N'CHACHAPOYAS', N'ASUNCIÓN', 169)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'010103', N'AMAZONAS', N'CHACHAPOYAS', N'BALSAS', 877)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'010104', N'AMAZONAS', N'CHACHAPOYAS', N'CHETO', 336)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'010105', N'AMAZONAS', N'CHACHAPOYAS', N'CHILIQUIN', 418)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'010106', N'AMAZONAS', N'CHACHAPOYAS', N'CHUQUIBAMBA', 1102)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'010107', N'AMAZONAS', N'CHACHAPOYAS', N'GRANADA', 217)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'010108', N'AMAZONAS', N'CHACHAPOYAS', N'HUANCAS', 980)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'010109', N'AMAZONAS', N'CHACHAPOYAS', N'LA JALCA', 2927)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'010110', N'AMAZONAS', N'CHACHAPOYAS', N'LEIMEBAMBA', 2340)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'010111', N'AMAZONAS', N'CHACHAPOYAS', N'LEVANTO', 503)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'010112', N'AMAZONAS', N'CHACHAPOYAS', N'MAGDALENA', 406)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'010113', N'AMAZONAS', N'CHACHAPOYAS', N'MARISCAL CASTILLA', 555)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'010114', N'AMAZONAS', N'CHACHAPOYAS', N'MOLINOPAMPA', 1579)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'010115', N'AMAZONAS', N'CHACHAPOYAS', N'MONTEVIDEO', 341)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'010116', N'AMAZONAS', N'CHACHAPOYAS', N'OLLEROS', 212)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'010117', N'AMAZONAS', N'CHACHAPOYAS', N'QUINJALCA', 472)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'010118', N'AMAZONAS', N'CHACHAPOYAS', N'SAN FRANCISCO DE DAGUAS', 195)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'010119', N'AMAZONAS', N'CHACHAPOYAS', N'SAN ISIDRO DE MAINO', 421)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'010120', N'AMAZONAS', N'CHACHAPOYAS', N'SOLOCO', 717)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'010121', N'AMAZONAS', N'CHACHAPOYAS', N'SONCHE', 114)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'010201', N'AMAZONAS', N'BAGUA', N'BAGUA', 16246)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'010202', N'AMAZONAS', N'BAGUA', N'ARAMANGO', 6364)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'010203', N'AMAZONAS', N'BAGUA', N'COPALLIN', 3803)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'010204', N'AMAZONAS', N'BAGUA', N'EL PARCO', 873)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'010205', N'AMAZONAS', N'BAGUA', N'IMAZA', 12411)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'010206', N'AMAZONAS', N'BAGUA', N'LA PECA', 4649)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'010301', N'AMAZONAS', N'BONGARÁ', N'JUMBILLA', 1012)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'010302', N'AMAZONAS', N'BONGARÁ', N'CHISQUILLA', 181)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'010303', N'AMAZONAS', N'BONGARÁ', N'CHURUJA', 153)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'010304', N'AMAZONAS', N'BONGARÁ', N'COROSHA', 585)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'010305', N'AMAZONAS', N'BONGARÁ', N'CUISPES', 505)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'010306', N'AMAZONAS', N'BONGARÁ', N'FLORIDA', 5075)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'010307', N'AMAZONAS', N'BONGARÁ', N'JAZAN', 5619)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'010308', N'AMAZONAS', N'BONGARÁ', N'RECTA', 123)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'010309', N'AMAZONAS', N'BONGARÁ', N'SAN CARLOS', 189)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'010310', N'AMAZONAS', N'BONGARÁ', N'SHIPASBAMBA', 1060)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'010311', N'AMAZONAS', N'BONGARÁ', N'VALERA', 783)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'010312', N'AMAZONAS', N'BONGARÁ', N'YAMBRASBAMBA', 4919)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'010401', N'AMAZONAS', N'CONDORCANQUI', N'NIEVA', 15115)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'010402', N'AMAZONAS', N'CONDORCANQUI', N'EL CENEPA', 4865)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'010403', N'AMAZONAS', N'CONDORCANQUI', N'RIO SANTIAGO', 7973)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'010501', N'AMAZONAS', N'LUYA', N'LAMUD', 1190)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'010502', N'AMAZONAS', N'LUYA', N'CAMPORREDONDO', 4002)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'010503', N'AMAZONAS', N'LUYA', N'COCABAMBA', 1374)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'010504', N'AMAZONAS', N'LUYA', N'COLCAMAR', 1181)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'010505', N'AMAZONAS', N'LUYA', N'CONILA', 1149)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'010506', N'AMAZONAS', N'LUYA', N'INGUILPATA', 316)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'010507', N'AMAZONAS', N'LUYA', N'LONGUITA', 619)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'010508', N'AMAZONAS', N'LUYA', N'LONYA CHICO', 494)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'010509', N'AMAZONAS', N'LUYA', N'LUYA', 2362)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'010510', N'AMAZONAS', N'LUYA', N'LUYA VIEJO', 264)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'010511', N'AMAZONAS', N'LUYA', N'MARIA', 559)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'010512', N'AMAZONAS', N'LUYA', N'OCALLI', 2353)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'010513', N'AMAZONAS', N'LUYA', N'OCUMAL', 2191)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'010514', N'AMAZONAS', N'LUYA', N'PISUQUIA', 3284)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'010515', N'AMAZONAS', N'LUYA', N'PROVIDENCIA', 815)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'010516', N'AMAZONAS', N'LUYA', N'SAN CRISTOBAL', 356)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'010517', N'AMAZONAS', N'LUYA', N'SAN FRANCISCO DEL YESO', 450)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'010518', N'AMAZONAS', N'LUYA', N'SAN JERONIMO', 480)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'010519', N'AMAZONAS', N'LUYA', N'SAN JUAN DE LOPECANCHA', 246)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'010520', N'AMAZONAS', N'LUYA', N'SANTA CATALINA', 1047)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'010521', N'AMAZONAS', N'LUYA', N'SANTO TOMAS', 1832)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'010522', N'AMAZONAS', N'LUYA', N'TINGO', 746)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'010523', N'AMAZONAS', N'LUYA', N'TRITA', 728)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'010601', N'AMAZONAS', N'RODRÍGUEZ DE MENDOZA', N'SAN NICOLAS', 3096)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'010602', N'AMAZONAS', N'RODRÍGUEZ DE MENDOZA', N'CHIRIMOTO', 1177)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'010603', N'AMAZONAS', N'RODRÍGUEZ DE MENDOZA', N'COCHAMAL', 309)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'010604', N'AMAZONAS', N'RODRÍGUEZ DE MENDOZA', N'HUAMBO', 1478)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'010605', N'AMAZONAS', N'RODRÍGUEZ DE MENDOZA', N'LIMABAMBA', 1760)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'010606', N'AMAZONAS', N'RODRÍGUEZ DE MENDOZA', N'LONGAR', 952)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'010607', N'AMAZONAS', N'RODRÍGUEZ DE MENDOZA', N'MARISCAL BENAVIDES', 807)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'010608', N'AMAZONAS', N'RODRÍGUEZ DE MENDOZA', N'MILPUC', 344)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'010609', N'AMAZONAS', N'RODRÍGUEZ DE MENDOZA', N'OMIA', 5588)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'010610', N'AMAZONAS', N'RODRÍGUEZ DE MENDOZA', N'SANTA ROSA', 235)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'010611', N'AMAZONAS', N'RODRÍGUEZ DE MENDOZA', N'TOTORA', 252)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'010612', N'AMAZONAS', N'RODRÍGUEZ DE MENDOZA', N'VISTA ALEGRE', 2205)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'010701', N'AMAZONAS', N'UTCUBAMBA', N'BAGUA GRANDE', 31952)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'010702', N'AMAZONAS', N'UTCUBAMBA', N'CAJARURO', 16510)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'010703', N'AMAZONAS', N'UTCUBAMBA', N'CUMBA', 4952)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'010704', N'AMAZONAS', N'UTCUBAMBA', N'EL MILAGRO', 3818)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'010705', N'AMAZONAS', N'UTCUBAMBA', N'JAMALCA', 4547)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'010706', N'AMAZONAS', N'UTCUBAMBA', N'LONYA GRANDE', 6022)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'010707', N'AMAZONAS', N'UTCUBAMBA', N'YAMON', 1615)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'020101', N'ÁNCASH', N'HUARAZ', N'HUARAZ', 39067)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'020102', N'ÁNCASH', N'HUARAZ', N'COCHABAMBA', 932)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'020103', N'ÁNCASH', N'HUARAZ', N'COLCABAMBA', 451)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'020104', N'ÁNCASH', N'HUARAZ', N'HUANCHAY', 1077)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'020105', N'ÁNCASH', N'HUARAZ', N'INDEPENDENCIA', 44344)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'020106', N'ÁNCASH', N'HUARAZ', N'JANGAS', 2870)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'020107', N'ÁNCASH', N'HUARAZ', N'LA LIBERTAD', 529)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'020108', N'ÁNCASH', N'HUARAZ', N'OLLEROS', 1064)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'020109', N'ÁNCASH', N'HUARAZ', N'PAMPAS', 549)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'020110', N'ÁNCASH', N'HUARAZ', N'PARIACOTO', 2482)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'020111', N'ÁNCASH', N'HUARAZ', N'PIRA', 1884)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'020112', N'ÁNCASH', N'HUARAZ', N'TARICA', 3358)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'020201', N'ÁNCASH', N'AIJA', N'AIJA', 962)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'020202', N'ÁNCASH', N'AIJA', N'CORIS', 1078)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'020203', N'ÁNCASH', N'AIJA', N'HUACLLAN', 333)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'020204', N'ÁNCASH', N'AIJA', N'LA MERCED', 1123)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'020205', N'ÁNCASH', N'AIJA', N'SUCCHA', 410)
GO
print 'Processed 100 total records'
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'020301', N'ÁNCASH', N'ANTONIO RAYMONDI', N'LLAMELLIN', 1808)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'020302', N'ÁNCASH', N'ANTONIO RAYMONDI', N'ACZO', 1055)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'020303', N'ÁNCASH', N'ANTONIO RAYMONDI', N'CHACCHO', 789)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'020304', N'ÁNCASH', N'ANTONIO RAYMONDI', N'CHINGAS', 899)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'020305', N'ÁNCASH', N'ANTONIO RAYMONDI', N'MIRGAS', 2476)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'020306', N'ÁNCASH', N'ANTONIO RAYMONDI', N'SAN JUAN DE RONTOY', 727)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'020401', N'ÁNCASH', N'ASUNCIÓN', N'CHACAS', 2818)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'020402', N'ÁNCASH', N'ASUNCIÓN', N'ACOCHACA', 1545)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'020501', N'ÁNCASH', N'BOLOGNESI', N'CHIQUIAN', 1873)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'020502', N'ÁNCASH', N'BOLOGNESI', N'ABELARDO PARDO LEZAMETA', 719)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'020503', N'ÁNCASH', N'BOLOGNESI', N'ANTONIO RAYMONDI', 525)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'020504', N'ÁNCASH', N'BOLOGNESI', N'AQUIA', 1325)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'020505', N'ÁNCASH', N'BOLOGNESI', N'CAJACAY', 799)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'020506', N'ÁNCASH', N'BOLOGNESI', N'CANIS', 744)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'020507', N'ÁNCASH', N'BOLOGNESI', N'COLQUIOC', 2392)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'020508', N'ÁNCASH', N'BOLOGNESI', N'HUALLANCA', 4731)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'020509', N'ÁNCASH', N'BOLOGNESI', N'HUASTA', 1268)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'020510', N'ÁNCASH', N'BOLOGNESI', N'HUAYLLACAYAN', 527)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'020511', N'ÁNCASH', N'BOLOGNESI', N'LA PRIMAVERA', 484)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'020512', N'ÁNCASH', N'BOLOGNESI', N'MANGAS', 243)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'020513', N'ÁNCASH', N'BOLOGNESI', N'PACLLON', 960)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'020514', N'ÁNCASH', N'BOLOGNESI', N'SAN MIGUEL DE CORPANQUI', 702)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'020515', N'ÁNCASH', N'BOLOGNESI', N'TICLLOS', 640)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'020601', N'ÁNCASH', N'CARHUAZ', N'CARHUAZ', 8580)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'020602', N'ÁNCASH', N'CARHUAZ', N'ACOPAMPA', 1488)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'020603', N'ÁNCASH', N'CARHUAZ', N'AMASHCA', 894)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'020604', N'ÁNCASH', N'CARHUAZ', N'ANTA', 1261)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'020605', N'ÁNCASH', N'CARHUAZ', N'ATAQUERO', 718)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'020606', N'ÁNCASH', N'CARHUAZ', N'MARCARA', 5245)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'020607', N'ÁNCASH', N'CARHUAZ', N'PARIAHUANCA', 862)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'020608', N'ÁNCASH', N'CARHUAZ', N'SAN MIGUEL DE ACO', 1398)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'020609', N'ÁNCASH', N'CARHUAZ', N'SHILLA', 1917)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'020610', N'ÁNCASH', N'CARHUAZ', N'TINCO', 1826)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'020611', N'ÁNCASH', N'CARHUAZ', N'YUNGAR', 1849)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'020701', N'ÁNCASH', N'CARLOS FERMÍN FITZCARRALD', N'SAN LUIS', 6186)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'020702', N'ÁNCASH', N'CARLOS FERMÍN FITZCARRALD', N'SAN NICOLAS', 1847)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'020703', N'ÁNCASH', N'CARLOS FERMÍN FITZCARRALD', N'YAUYA', 2642)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'020801', N'ÁNCASH', N'CASMA', N'CASMA', 19825)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'020802', N'ÁNCASH', N'CASMA', N'BUENA VISTA ALTA', 2423)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'020803', N'ÁNCASH', N'CASMA', N'COMANDANTE NOEL', 1225)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'020804', N'ÁNCASH', N'CASMA', N'YAUTAN', 4645)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'020901', N'ÁNCASH', N'CORONGO', N'CORONGO', 750)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'020902', N'ÁNCASH', N'CORONGO', N'ACO', 238)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'020903', N'ÁNCASH', N'CORONGO', N'BAMBAS', 276)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'020904', N'ÁNCASH', N'CORONGO', N'CUSCA', 1578)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'020905', N'ÁNCASH', N'CORONGO', N'LA PAMPA', 557)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'020906', N'ÁNCASH', N'CORONGO', N'YANAC', 352)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'020907', N'ÁNCASH', N'CORONGO', N'YUPAN', 572)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'021001', N'ÁNCASH', N'HUARI', N'HUARI', 5531)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'021002', N'ÁNCASH', N'HUARI', N'ANRA', 761)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'021003', N'ÁNCASH', N'HUARI', N'CAJAY', 1286)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'021004', N'ÁNCASH', N'HUARI', N'CHAVIN DE HUANTAR', 4753)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'021005', N'ÁNCASH', N'HUARI', N'HUACACHI', 902)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'021006', N'ÁNCASH', N'HUARI', N'HUACCHIS', 988)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'021007', N'ÁNCASH', N'HUARI', N'HUACHIS', 1649)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'021008', N'ÁNCASH', N'HUARI', N'HUANTAR', 1559)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'021009', N'ÁNCASH', N'HUARI', N'MASIN', 860)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'021010', N'ÁNCASH', N'HUARI', N'PAUCAS', 927)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'021011', N'ÁNCASH', N'HUARI', N'PONTO', 1600)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'021012', N'ÁNCASH', N'HUARI', N'RAHUAPAMPA', 422)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'021013', N'ÁNCASH', N'HUARI', N'RAPAYAN', 843)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'021014', N'ÁNCASH', N'HUARI', N'SAN MARCOS', 8785)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'021015', N'ÁNCASH', N'HUARI', N'SAN PEDRO DE CHANA', 1317)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'021016', N'ÁNCASH', N'HUARI', N'UCO', 879)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'021101', N'ÁNCASH', N'HUARMEY', N'HUARMEY', 14259)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'021102', N'ÁNCASH', N'HUARMEY', N'COCHAPETI', 371)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'021103', N'ÁNCASH', N'HUARMEY', N'CULEBRAS', 2211)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'021104', N'ÁNCASH', N'HUARMEY', N'HUAYAN', 503)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'021105', N'ÁNCASH', N'HUARMEY', N'MALVAS', 417)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'021201', N'ÁNCASH', N'HUAYLAS', N'CARAZ', 14596)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'021202', N'ÁNCASH', N'HUAYLAS', N'HUALLANCA', 381)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'021203', N'ÁNCASH', N'HUAYLAS', N'HUATA', 770)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'021204', N'ÁNCASH', N'HUAYLAS', N'HUAYLAS', 701)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'021205', N'ÁNCASH', N'HUAYLAS', N'MATO', 995)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'021206', N'ÁNCASH', N'HUAYLAS', N'PAMPAROMAS', 4401)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'021207', N'ÁNCASH', N'HUAYLAS', N'PUEBLO LIBRE', 3525)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'021208', N'ÁNCASH', N'HUAYLAS', N'SANTA CRUZ', 2620)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'021209', N'ÁNCASH', N'HUAYLAS', N'SANTO TORIBIO', 504)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'021210', N'ÁNCASH', N'HUAYLAS', N'YURACMARCA', 884)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'021301', N'ÁNCASH', N'MARISCAL LUZURIAGA', N'PISCOBAMBA', 1978)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'021302', N'ÁNCASH', N'MARISCAL LUZURIAGA', N'CASCA', 2138)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'021303', N'ÁNCASH', N'MARISCAL LUZURIAGA', N'ELEAZAR GUZMAN BARRON', 665)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'021304', N'ÁNCASH', N'MARISCAL LUZURIAGA', N'FIDEL OLIVAS ESCUDERO', 1099)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'021305', N'ÁNCASH', N'MARISCAL LUZURIAGA', N'LLAMA', 639)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'021306', N'ÁNCASH', N'MARISCAL LUZURIAGA', N'LLUMPA', 3045)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'021307', N'ÁNCASH', N'MARISCAL LUZURIAGA', N'LUCMA', 1639)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'021308', N'ÁNCASH', N'MARISCAL LUZURIAGA', N'MUSGA', 530)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'021401', N'ÁNCASH', N'OCROS', N'OCROS', 499)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'021402', N'ÁNCASH', N'OCROS', N'ACAS', 586)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'021403', N'ÁNCASH', N'OCROS', N'CAJAMARQUILLA', 278)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'021404', N'ÁNCASH', N'OCROS', N'CARHUAPAMPA', 472)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'021405', N'ÁNCASH', N'OCROS', N'COCHAS', 796)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'021406', N'ÁNCASH', N'OCROS', N'CONGAS', 587)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'021407', N'ÁNCASH', N'OCROS', N'LLIPA', 1014)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'021408', N'ÁNCASH', N'OCROS', N'SAN CRISTOBAL DE RAJAN', 329)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'021409', N'ÁNCASH', N'OCROS', N'SAN PEDRO', 1028)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'021410', N'ÁNCASH', N'OCROS', N'SANTIAGO DE CHILCAS', 179)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'021501', N'ÁNCASH', N'PALLASCA', N'CABANA', 1428)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'021502', N'ÁNCASH', N'PALLASCA', N'BOLOGNESI', 641)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'021503', N'ÁNCASH', N'PALLASCA', N'CONCHUCOS', 4091)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'021504', N'ÁNCASH', N'PALLASCA', N'HUACASCHUQUE', 300)
GO
print 'Processed 200 total records'
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'021505', N'ÁNCASH', N'PALLASCA', N'HUANDOVAL', 545)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'021506', N'ÁNCASH', N'PALLASCA', N'LACABAMBA', 286)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'021507', N'ÁNCASH', N'PALLASCA', N'LLAPO', 340)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'021508', N'ÁNCASH', N'PALLASCA', N'PALLASCA', 1224)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'021509', N'ÁNCASH', N'PALLASCA', N'PAMPAS', 4288)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'021510', N'ÁNCASH', N'PALLASCA', N'SANTA ROSA', 555)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'021511', N'ÁNCASH', N'PALLASCA', N'TAUCA', 1544)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'021601', N'ÁNCASH', N'POMABAMBA', N'POMABAMBA', 8433)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'021602', N'ÁNCASH', N'POMABAMBA', N'HUAYLLAN', 1915)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'021603', N'ÁNCASH', N'POMABAMBA', N'PAROBAMBA', 3303)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'021604', N'ÁNCASH', N'POMABAMBA', N'QUINUABAMBA', 1094)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'021701', N'ÁNCASH', N'RECUAY', N'RECUAY', 2382)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'021702', N'ÁNCASH', N'RECUAY', N'CATAC', 2233)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'021703', N'ÁNCASH', N'RECUAY', N'COTAPARACO', 330)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'021704', N'ÁNCASH', N'RECUAY', N'HUAYLLAPAMPA', 648)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'021705', N'ÁNCASH', N'RECUAY', N'LLACLLIN', 988)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'021706', N'ÁNCASH', N'RECUAY', N'MARCA', 440)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'021707', N'ÁNCASH', N'RECUAY', N'PAMPAS CHICO', 1224)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'021708', N'ÁNCASH', N'RECUAY', N'PARARIN', 723)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'021709', N'ÁNCASH', N'RECUAY', N'TAPACOCHA', 214)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'021710', N'ÁNCASH', N'RECUAY', N'TICAPAMPA', 1249)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'021801', N'ÁNCASH', N'SANTA', N'CHIMBOTE', 130353)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'021802', N'ÁNCASH', N'SANTA', N'CACERES DEL PERU', 2380)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'021803', N'ÁNCASH', N'SANTA', N'COISHCO', 9565)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'021804', N'ÁNCASH', N'SANTA', N'MACATE', 1738)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'021805', N'ÁNCASH', N'SANTA', N'MORO', 4303)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'021806', N'ÁNCASH', N'SANTA', N'NEPEÑA', 9214)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'021807', N'ÁNCASH', N'SANTA', N'SAMANCO', 2811)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'021808', N'ÁNCASH', N'SANTA', N'SANTA', 12554)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'021809', N'ÁNCASH', N'SANTA', N'NUEVO CHIMBOTE', 93039)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'021901', N'ÁNCASH', N'SIHUAS', N'SIHUAS', 3207)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'021902', N'ÁNCASH', N'SIHUAS', N'ACOBAMBA', 1115)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'021903', N'ÁNCASH', N'SIHUAS', N'ALFONSO UGARTE', 386)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'021904', N'ÁNCASH', N'SIHUAS', N'CASHAPAMPA', 1353)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'021905', N'ÁNCASH', N'SIHUAS', N'CHINGALPO', 540)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'021906', N'ÁNCASH', N'SIHUAS', N'HUAYLLABAMBA', 1928)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'021907', N'ÁNCASH', N'SIHUAS', N'QUICHES', 1441)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'021908', N'ÁNCASH', N'SIHUAS', N'RAGASH', 1280)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'021909', N'ÁNCASH', N'SIHUAS', N'SAN JUAN', 3141)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'021910', N'ÁNCASH', N'SIHUAS', N'SICSIBAMBA', 881)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'022001', N'ÁNCASH', N'YUNGAY', N'YUNGAY', 12309)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'022002', N'ÁNCASH', N'YUNGAY', N'CASCAPARA', 1163)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'022003', N'ÁNCASH', N'YUNGAY', N'MANCOS', 3913)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'022004', N'ÁNCASH', N'YUNGAY', N'MATACOTO', 842)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'022005', N'ÁNCASH', N'YUNGAY', N'QUILLO', 7368)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'022006', N'ÁNCASH', N'YUNGAY', N'RANRAHIRCA', 1452)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'022007', N'ÁNCASH', N'YUNGAY', N'SHUPLUY', 1164)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'022008', N'ÁNCASH', N'YUNGAY', N'YANAMA', 3420)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'030101', N'APURIMAC', N'ABANCAY', N'ABANCAY', 35350)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'030102', N'APURIMAC', N'ABANCAY', N'CHACOCHE', 626)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'030103', N'APURIMAC', N'ABANCAY', N'CIRCA', 1200)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'030104', N'APURIMAC', N'ABANCAY', N'CURAHUASI', 9740)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'030105', N'APURIMAC', N'ABANCAY', N'HUANIPACA', 2521)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'030106', N'APURIMAC', N'ABANCAY', N'LAMBRAMA', 3116)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'030107', N'APURIMAC', N'ABANCAY', N'PICHIRHUA', 2015)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'030108', N'APURIMAC', N'ABANCAY', N'SAN PEDRO DE CACHORA', 1916)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'030109', N'APURIMAC', N'ABANCAY', N'TAMBURCO', 6207)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'030201', N'APURIMAC', N'ANDAHUAYLAS', N'ANDAHUAYLAS', 29710)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'030202', N'APURIMAC', N'ANDAHUAYLAS', N'ANDARAPA', 3351)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'030203', N'APURIMAC', N'ANDAHUAYLAS', N'CHIARA', 635)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'030204', N'APURIMAC', N'ANDAHUAYLAS', N'HUANCARAMA', 3997)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'030205', N'APURIMAC', N'ANDAHUAYLAS', N'HUANCARAY', 2273)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'030206', N'APURIMAC', N'ANDAHUAYLAS', N'HUAYANA', 523)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'030207', N'APURIMAC', N'ANDAHUAYLAS', N'KISHUARA', 5096)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'030208', N'APURIMAC', N'ANDAHUAYLAS', N'PACOBAMBA', 2513)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'030209', N'APURIMAC', N'ANDAHUAYLAS', N'PACUCHA', 5554)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'030210', N'APURIMAC', N'ANDAHUAYLAS', N'PAMPACHIRI', 1388)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'030211', N'APURIMAC', N'ANDAHUAYLAS', N'POMACOCHA', 515)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'030212', N'APURIMAC', N'ANDAHUAYLAS', N'SAN ANTONIO DE CACHI', 1549)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'030213', N'APURIMAC', N'ANDAHUAYLAS', N'SAN JERONIMO', 15685)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'030214', N'APURIMAC', N'ANDAHUAYLAS', N'SAN MIGUEL DE CHACCRAMPA', 1018)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'030215', N'APURIMAC', N'ANDAHUAYLAS', N'SANTA MARIA DE CHICMO', 5356)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'030216', N'APURIMAC', N'ANDAHUAYLAS', N'TALAVERA', 10475)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'030217', N'APURIMAC', N'ANDAHUAYLAS', N'TUMAY HUARACA', 1249)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'030218', N'APURIMAC', N'ANDAHUAYLAS', N'TURPO', 2166)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'030219', N'APURIMAC', N'ANDAHUAYLAS', N'KAQUIABAMBA', 1561)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'030301', N'APURIMAC', N'ANTABAMBA', N'ANTABAMBA', 1557)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'030302', N'APURIMAC', N'ANTABAMBA', N'EL ORO', 291)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'030303', N'APURIMAC', N'ANTABAMBA', N'HUAQUIRCA', 798)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'030304', N'APURIMAC', N'ANTABAMBA', N'JUAN ESPINOZA MEDRANO', 1014)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'030305', N'APURIMAC', N'ANTABAMBA', N'OROPESA', 1624)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'030306', N'APURIMAC', N'ANTABAMBA', N'PACHACONAS', 694)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'030307', N'APURIMAC', N'ANTABAMBA', N'SABAINO', 818)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'030401', N'APURIMAC', N'AYMARAES', N'CHALHUANCA', 2825)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'030402', N'APURIMAC', N'AYMARAES', N'CAPAYA', 484)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'030403', N'APURIMAC', N'AYMARAES', N'CARAYBAMBA', 750)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'030404', N'APURIMAC', N'AYMARAES', N'CHAPIMARCA', 1037)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'030405', N'APURIMAC', N'AYMARAES', N'COLCABAMBA', 429)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'030406', N'APURIMAC', N'AYMARAES', N'COTARUSE', 3395)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'030407', N'APURIMAC', N'AYMARAES', N'HUAYLLO', 349)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'030408', N'APURIMAC', N'AYMARAES', N'JUSTO APU SAHUARAURA', 668)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'030409', N'APURIMAC', N'AYMARAES', N'LUCRE', 1023)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'030410', N'APURIMAC', N'AYMARAES', N'POCOHUANCA', 582)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'030411', N'APURIMAC', N'AYMARAES', N'SAN JUAN DE CHACÑA', 428)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'030412', N'APURIMAC', N'AYMARAES', N'SAÑAYCA', 725)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'030413', N'APURIMAC', N'AYMARAES', N'SORAYA', 405)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'030414', N'APURIMAC', N'AYMARAES', N'TAPAIRIHUA', 1100)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'030415', N'APURIMAC', N'AYMARAES', N'TINTAY', 1586)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'030416', N'APURIMAC', N'AYMARAES', N'TORAYA', 919)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'030417', N'APURIMAC', N'AYMARAES', N'YANACA', 582)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'030501', N'APURIMAC', N'COTABAMBAS', N'TAMBOBAMBA', 6160)
GO
print 'Processed 300 total records'
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'030502', N'APURIMAC', N'COTABAMBAS', N'COTABAMBAS', 2099)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'030503', N'APURIMAC', N'COTABAMBAS', N'COYLLURQUI', 4205)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'030504', N'APURIMAC', N'COTABAMBAS', N'HAQUIRA', 5786)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'030505', N'APURIMAC', N'COTABAMBAS', N'MARA', 3284)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'030506', N'APURIMAC', N'COTABAMBAS', N'CHALLHUAHUACHO', 5211)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'030601', N'APURIMAC', N'CHINCHEROS', N'CHINCHEROS', 3731)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'030602', N'APURIMAC', N'CHINCHEROS', N'ANCO-HUALLO', 6894)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'030603', N'APURIMAC', N'CHINCHEROS', N'COCHARCAS', 1410)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'030604', N'APURIMAC', N'CHINCHEROS', N'HUACCANA', 5290)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'030605', N'APURIMAC', N'CHINCHEROS', N'OCOBAMBA', 4294)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'030606', N'APURIMAC', N'CHINCHEROS', N'ONGOY', 4568)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'030607', N'APURIMAC', N'CHINCHEROS', N'URANMARCA', 1907)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'030608', N'APURIMAC', N'CHINCHEROS', N'RANRACANCHA', 2649)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'030701', N'APURIMAC', N'GRAU', N'CHUQUIBAMBILLA', 2828)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'030702', N'APURIMAC', N'GRAU', N'CURPAHUASI', 1158)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'030703', N'APURIMAC', N'GRAU', N'GAMARRA', 1902)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'030704', N'APURIMAC', N'GRAU', N'HUAYLLATI', 763)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'030705', N'APURIMAC', N'GRAU', N'MAMARA', 466)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'030706', N'APURIMAC', N'GRAU', N'MICAELA BASTIDAS', 949)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'030707', N'APURIMAC', N'GRAU', N'PATAYPAMPA', 534)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'030708', N'APURIMAC', N'GRAU', N'PROGRESO', 1708)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'030709', N'APURIMAC', N'GRAU', N'SAN ANTONIO', 188)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'030710', N'APURIMAC', N'GRAU', N'SANTA ROSA', 332)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'030711', N'APURIMAC', N'GRAU', N'TURPAY', 437)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'030712', N'APURIMAC', N'GRAU', N'VILCABAMBA', 843)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'030713', N'APURIMAC', N'GRAU', N'VIRUNDO', 686)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'030714', N'APURIMAC', N'GRAU', N'CURASCO', 753)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'040101', N'AREQUIPA', N'AREQUIPA', N'AREQUIPA', 32394)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'040102', N'AREQUIPA', N'AREQUIPA', N'ALTO SELVA ALEGRE', 51462)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'040103', N'AREQUIPA', N'AREQUIPA', N'CAYMA', 56937)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'040104', N'AREQUIPA', N'AREQUIPA', N'CERRO COLORADO', 89618)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'040105', N'AREQUIPA', N'AREQUIPA', N'CHARACATO', 5498)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'040106', N'AREQUIPA', N'AREQUIPA', N'CHIGUATA', 1669)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'040107', N'AREQUIPA', N'AREQUIPA', N'JACOBO HUNTER', 29837)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'040108', N'AREQUIPA', N'AREQUIPA', N'LA JOYA', 17631)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'040109', N'AREQUIPA', N'AREQUIPA', N'MARIANO MELGAR', 31744)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'040110', N'AREQUIPA', N'AREQUIPA', N'MIRAFLORES', 29701)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'040111', N'AREQUIPA', N'AREQUIPA', N'MOLLEBAYA', 1081)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'040112', N'AREQUIPA', N'AREQUIPA', N'PAUCARPATA', 75969)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'040113', N'AREQUIPA', N'AREQUIPA', N'POCSI', 262)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'040114', N'AREQUIPA', N'AREQUIPA', N'POLOBAYA', 916)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'040115', N'AREQUIPA', N'AREQUIPA', N'QUEQUEÑA', 782)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'040116', N'AREQUIPA', N'AREQUIPA', N'SABANDIA', 2378)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'040117', N'AREQUIPA', N'AREQUIPA', N'SACHACA', 11763)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'040118', N'AREQUIPA', N'AREQUIPA', N'SAN JUAN DE SIGUAS', 877)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'040119', N'AREQUIPA', N'AREQUIPA', N'SAN JUAN DE TARUCANI', 1325)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'040120', N'AREQUIPA', N'AREQUIPA', N'SANTA ISABEL DE SIGUAS', 759)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'040121', N'AREQUIPA', N'AREQUIPA', N'SANTA RITA DE SIGUAS', 3374)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'040122', N'AREQUIPA', N'AREQUIPA', N'SOCABAYA', 48975)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'040123', N'AREQUIPA', N'AREQUIPA', N'TIABAYA', 8782)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'040124', N'AREQUIPA', N'AREQUIPA', N'UCHUMAYO', 7532)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'040125', N'AREQUIPA', N'AREQUIPA', N'VITOR ', 1355)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'040126', N'AREQUIPA', N'AREQUIPA', N'YANAHUARA', 15264)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'040127', N'AREQUIPA', N'AREQUIPA', N'YARABAMBA', 608)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'040128', N'AREQUIPA', N'AREQUIPA', N'YURA', 15155)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'040129', N'AREQUIPA', N'AREQUIPA', N'JOSE LUIS BUSTAMANTE Y RIVERO', 46273)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'040201', N'AREQUIPA', N'CAMANÁ', N'CAMANÁ', 8440)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'040202', N'AREQUIPA', N'CAMANÁ', N'JOSE MARIA QUIMPER', 2439)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'040203', N'AREQUIPA', N'CAMANÁ', N'MARIANO NICOLAS VALCARCEL', 5020)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'040204', N'AREQUIPA', N'CAMANÁ', N'MARISCAL CACERES', 3833)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'040205', N'AREQUIPA', N'CAMANÁ', N'NICOLAS DE PIEROLA', 3672)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'040206', N'AREQUIPA', N'CAMANÁ', N'OCOÑA', 2816)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'040207', N'AREQUIPA', N'CAMANÁ', N'QUILCA', 400)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'040208', N'AREQUIPA', N'CAMANÁ', N'SAMUEL PASTOR', 9098)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'040301', N'AREQUIPA', N'CARAVELÍ', N'CARAVELÍ', 2002)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'040302', N'AREQUIPA', N'CARAVELÍ', N'ACARI', 1789)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'040303', N'AREQUIPA', N'CARAVELÍ', N'ATICO', 2536)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'040304', N'AREQUIPA', N'CARAVELÍ', N'ATIQUIPA', 606)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'040305', N'AREQUIPA', N'CARAVELÍ', N'BELLA UNIÓN', 4415)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'040306', N'AREQUIPA', N'CARAVELÍ', N'CAHUACHO', 437)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'040307', N'AREQUIPA', N'CARAVELÍ', N'CHALA', 4185)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'040308', N'AREQUIPA', N'CARAVELÍ', N'CHAPARRA', 3529)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'040309', N'AREQUIPA', N'CARAVELÍ', N'HUANUHUANU', 2210)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'040310', N'AREQUIPA', N'CARAVELÍ', N'JAQUI', 701)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'040311', N'AREQUIPA', N'CARAVELÍ', N'LOMAS', 836)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'040312', N'AREQUIPA', N'CARAVELÍ', N'QUICACHA', 1039)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'040313', N'AREQUIPA', N'CARAVELÍ', N'YAUCA', 835)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'040401', N'AREQUIPA', N'CASTILLA', N'APLAO', 5063)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'040402', N'AREQUIPA', N'CASTILLA', N'ANDAGUA', 574)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'040403', N'AREQUIPA', N'CASTILLA', N'AYO', 166)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'040404', N'AREQUIPA', N'CASTILLA', N'CHACHAS', 819)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'040405', N'AREQUIPA', N'CASTILLA', N'CHILCAYMARCA', 616)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'040406', N'AREQUIPA', N'CASTILLA', N'CHOCO', 482)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'040407', N'AREQUIPA', N'CASTILLA', N'HUANCARQUI', 717)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'040408', N'AREQUIPA', N'CASTILLA', N'MACHAGUAY', 340)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'040409', N'AREQUIPA', N'CASTILLA', N'ORCOPAMPA', 6004)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'040410', N'AREQUIPA', N'CASTILLA', N'PAMPACOLCA', 1303)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'040411', N'AREQUIPA', N'CASTILLA', N'TIPAN', 265)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'040412', N'AREQUIPA', N'CASTILLA', N'UÑON', 234)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'040413', N'AREQUIPA', N'CASTILLA', N'URACA', 4311)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'040414', N'AREQUIPA', N'CASTILLA', N'VIRACO', 846)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'040501', N'AREQUIPA', N'CAYLLOMA', N'CHIVAY', 4256)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'040502', N'AREQUIPA', N'CAYLLOMA', N'ACHOMA', 465)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'040503', N'AREQUIPA', N'CAYLLOMA', N'CABANACONDE', 1225)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'040504', N'AREQUIPA', N'CAYLLOMA', N'CALLALLI', 1087)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'040505', N'AREQUIPA', N'CAYLLOMA', N'CAYLLOMA', 1728)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'040506', N'AREQUIPA', N'CAYLLOMA', N'COPORAQUE', 864)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'040507', N'AREQUIPA', N'CAYLLOMA', N'HUAMBO', 280)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'040508', N'AREQUIPA', N'CAYLLOMA', N'HUANCA', 687)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'040509', N'AREQUIPA', N'CAYLLOMA', N'ICHUPAMPA', 326)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'040510', N'AREQUIPA', N'CAYLLOMA', N'LARI', 783)
GO
print 'Processed 400 total records'
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'040511', N'AREQUIPA', N'CAYLLOMA', N'LLUTA', 606)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'040512', N'AREQUIPA', N'CAYLLOMA', N'MACA', 336)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'040513', N'AREQUIPA', N'CAYLLOMA', N'MADRIGAL', 227)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'040514', N'AREQUIPA', N'CAYLLOMA', N'SAN ANTONIO DE CHUCA', 844)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'040515', N'AREQUIPA', N'CAYLLOMA', N'SIBAYO', 347)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'040516', N'AREQUIPA', N'CAYLLOMA', N'TAPAY', 231)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'040517', N'AREQUIPA', N'CAYLLOMA', N'TISCO', 698)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'040518', N'AREQUIPA', N'CAYLLOMA', N'TUTI', 364)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'040519', N'AREQUIPA', N'CAYLLOMA', N'YANQUE', 1135)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'040520', N'AREQUIPA', N'CAYLLOMA', N'MAJES', 36601)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'040601', N'AREQUIPA', N'CONDESUYOS', N'CHUQUIBAMBA', 1683)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'040602', N'AREQUIPA', N'CONDESUYOS', N'ANDARAY', 335)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'040603', N'AREQUIPA', N'CONDESUYOS', N'CAYARANI', 1843)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'040604', N'AREQUIPA', N'CONDESUYOS', N'CHICHAS', 319)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'040605', N'AREQUIPA', N'CONDESUYOS', N'IRAY', 300)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'040606', N'AREQUIPA', N'CONDESUYOS', N'RIO GRANDE', 1761)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'040607', N'AREQUIPA', N'CONDESUYOS', N'SALAMANCA', 389)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'040608', N'AREQUIPA', N'CONDESUYOS', N'YANAQUIHUA', 3709)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'040701', N'AREQUIPA', N'ISLAY', N'MOLLENDO', 13003)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'040702', N'AREQUIPA', N'ISLAY', N'COCACHACRA', 5379)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'040703', N'AREQUIPA', N'ISLAY', N'DEAN VALDIVIA', 3909)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'040704', N'AREQUIPA', N'ISLAY', N'ISLAY', 3759)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'040705', N'AREQUIPA', N'ISLAY', N'MEJIA', 666)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'040706', N'AREQUIPA', N'ISLAY', N'PUNTA DE BOMBON', 3718)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'040801', N'AREQUIPA', N'LA UNIÓN', N'COTAHUASI', 1524)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'040802', N'AREQUIPA', N'LA UNIÓN', N'ALCA', 911)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'040803', N'AREQUIPA', N'LA UNIÓN', N'CHARCANA', 263)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'040804', N'AREQUIPA', N'LA UNIÓN', N'HUAYNACOTAS', 1054)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'040805', N'AREQUIPA', N'LA UNIÓN', N'PAMPAMARCA', 554)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'040806', N'AREQUIPA', N'LA UNIÓN', N'PUYCA', 1312)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'040807', N'AREQUIPA', N'LA UNIÓN', N'QUECHUALLA', 115)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'040808', N'AREQUIPA', N'LA UNIÓN', N'SAYLA', 273)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'040809', N'AREQUIPA', N'LA UNIÓN', N'TAURIA', 164)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'040810', N'AREQUIPA', N'LA UNIÓN', N'TOMEPAMPA', 401)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'040811', N'AREQUIPA', N'LA UNIÓN', N'TORO', 355)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'050101', N'AYACUCHO', N'HUAMANGA', N'AYACUCHO', 71384)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'050102', N'AYACUCHO', N'HUAMANGA', N'ACOCRO', 5221)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'050103', N'AYACUCHO', N'HUAMANGA', N'ACOS VINCHOS', 3069)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'050104', N'AYACUCHO', N'HUAMANGA', N'CARMEN ALTO 1/', 12784)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'050105', N'AYACUCHO', N'HUAMANGA', N'CHIARA', 3894)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'050106', N'AYACUCHO', N'HUAMANGA', N'OCROS', 2701)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'050107', N'AYACUCHO', N'HUAMANGA', N'PACAYCASA', 1756)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'050108', N'AYACUCHO', N'HUAMANGA', N'QUINUA', 3397)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'050109', N'AYACUCHO', N'HUAMANGA', N'SAN JOSE DE TICLLAS', 1862)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'050110', N'AYACUCHO', N'HUAMANGA', N'SAN JUAN BAUTISTA', 31074)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'050111', N'AYACUCHO', N'HUAMANGA', N'SANTIAGO DE PISCHA', 836)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'050112', N'AYACUCHO', N'HUAMANGA', N'SOCOS', 3620)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'050113', N'AYACUCHO', N'HUAMANGA', N'TAMBILLO', 2951)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'050114', N'AYACUCHO', N'HUAMANGA', N'VINCHOS', 8176)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'050115', N'AYACUCHO', N'HUAMANGA', N'JESUS NAZARENO', 11457)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'050201', N'AYACUCHO', N'CANGALLO', N'CANGALLO', 3434)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'050202', N'AYACUCHO', N'CANGALLO', N'CHUSCHI', 4079)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'050203', N'AYACUCHO', N'CANGALLO', N'LOS MOROCHUCOS', 4386)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'050204', N'AYACUCHO', N'CANGALLO', N'MARIA PARADO DE BELLIDO', 1293)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'050205', N'AYACUCHO', N'CANGALLO', N'PARAS', 2234)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'050206', N'AYACUCHO', N'CANGALLO', N'TOTOS', 1812)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'050301', N'AYACUCHO', N'HUANCA SANCOS', N'SANCOS', 1976)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'050302', N'AYACUCHO', N'HUANCA SANCOS', N'CARAPO', 1347)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'050303', N'AYACUCHO', N'HUANCA SANCOS', N'SACSAMARCA', 829)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'050304', N'AYACUCHO', N'HUANCA SANCOS', N'SANTIAGO DE LUCANAMARCA', 1376)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'050401', N'AYACUCHO', N'HUANTA', N'HUANTA', 25141)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'050402', N'AYACUCHO', N'HUANTA', N'AYAHUANCO', 7291)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'050403', N'AYACUCHO', N'HUANTA', N'HUAMANGUILLA', 2465)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'050404', N'AYACUCHO', N'HUANTA', N'IGUAIN', 1526)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'050405', N'AYACUCHO', N'HUANTA', N'LURICOCHA', 2404)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'050406', N'AYACUCHO', N'HUANTA', N'SANTILLANA', 3334)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'050407', N'AYACUCHO', N'HUANTA', N'SIVIA', 7231)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'050408', N'AYACUCHO', N'HUANTA', N'LLOCHEGUA', 8745)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'050501', N'AYACUCHO', N'LA MAR', N'SAN MIGUEL', 8701)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'050502', N'AYACUCHO', N'LA MAR', N'ANCO', 9138)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'050503', N'AYACUCHO', N'LA MAR', N'AYNA', 6409)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'050504', N'AYACUCHO', N'LA MAR', N'CHILCAS', 1613)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'050505', N'AYACUCHO', N'LA MAR', N'CHUNGUI', 3351)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'050506', N'AYACUCHO', N'LA MAR', N'LUIS CARRANZA', 870)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'050507', N'AYACUCHO', N'LA MAR', N'SANTA ROSA', 6625)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'050508', N'AYACUCHO', N'LA MAR', N'TAMBO', 10907)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'050601', N'AYACUCHO', N'LUCANAS', N'PUQUIO', 7613)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'050602', N'AYACUCHO', N'LUCANAS', N'AUCARA', 2788)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'050603', N'AYACUCHO', N'LUCANAS', N'CABANA', 2656)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'050604', N'AYACUCHO', N'LUCANAS', N'CARMEN SALCEDO', 2398)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'050605', N'AYACUCHO', N'LUCANAS', N'CHAVIÑA', 932)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'050606', N'AYACUCHO', N'LUCANAS', N'CHIPAO', 1905)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'050607', N'AYACUCHO', N'LUCANAS', N'HUAC-HUAS', 1532)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'050608', N'AYACUCHO', N'LUCANAS', N'LARAMATE', 704)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'050609', N'AYACUCHO', N'LUCANAS', N'LEONCIO PRADO', 708)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'050610', N'AYACUCHO', N'LUCANAS', N'LLAUTA', 605)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'050611', N'AYACUCHO', N'LUCANAS', N'LUCANAS', 2213)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'050612', N'AYACUCHO', N'LUCANAS', N'OCAÑA', 1589)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'050613', N'AYACUCHO', N'LUCANAS', N'OTOCA', 1910)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'050614', N'AYACUCHO', N'LUCANAS', N'SAISA', 586)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'050615', N'AYACUCHO', N'LUCANAS', N'SAN CRISTOBAL', 994)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'050616', N'AYACUCHO', N'LUCANAS', N'SAN JUAN', 948)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'050617', N'AYACUCHO', N'LUCANAS', N'SAN PEDRO', 1389)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'050618', N'AYACUCHO', N'LUCANAS', N'SAN PEDRO DE PALCO', 662)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'050619', N'AYACUCHO', N'LUCANAS', N'SANCOS', 4402)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'050620', N'AYACUCHO', N'LUCANAS', N'SANTA ANA DE HUAYCAHUACHO', 326)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'050621', N'AYACUCHO', N'LUCANAS', N'SANTA LUCIA', 542)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'050701', N'AYACUCHO', N'PARINACOCHAS', N'CORACORA', 8259)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'050702', N'AYACUCHO', N'PARINACOCHAS', N'CHUMPI', 1272)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'050703', N'AYACUCHO', N'PARINACOCHAS', N'CORONEL CASTAÑEDA', 1173)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'050704', N'AYACUCHO', N'PARINACOCHAS', N'PACAPAUSA', 1707)
GO
print 'Processed 500 total records'
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'050705', N'AYACUCHO', N'PARINACOCHAS', N'PULLO', 2811)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'050706', N'AYACUCHO', N'PARINACOCHAS', N'PUYUSCA', 1008)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'050707', N'AYACUCHO', N'PARINACOCHAS', N'SAN FRANCISCO DE RAVACAYCO', 372)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'050708', N'AYACUCHO', N'PARINACOCHAS', N'UPAHUACHO', 1380)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'050801', N'AYACUCHO', N'PÁUCAR DEL SARA SARA', N'PAUSA', 1575)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'050802', N'AYACUCHO', N'PÁUCAR DEL SARA SARA', N'COLTA', 715)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'050803', N'AYACUCHO', N'PÁUCAR DEL SARA SARA', N'CORCULLA', 219)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'050804', N'AYACUCHO', N'PÁUCAR DEL SARA SARA', N'LAMPA', 1349)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'050805', N'AYACUCHO', N'PÁUCAR DEL SARA SARA', N'MARCABAMBA', 417)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'050806', N'AYACUCHO', N'PÁUCAR DEL SARA SARA', N'OYOLO', 544)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'050807', N'AYACUCHO', N'PÁUCAR DEL SARA SARA', N'PARARCA', 348)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'050808', N'AYACUCHO', N'PÁUCAR DEL SARA SARA', N'SAN JAVIER DE ALPABAMBA', 307)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'050809', N'AYACUCHO', N'PÁUCAR DEL SARA SARA', N'SAN JOSE DE USHUA', 91)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'050810', N'AYACUCHO', N'PÁUCAR DEL SARA SARA', N'SARA SARA', 350)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'050901', N'AYACUCHO', N'SUCRE', N'QUEROBAMBA', 1457)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'050902', N'AYACUCHO', N'SUCRE', N'BELEN', 401)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'050903', N'AYACUCHO', N'SUCRE', N'CHALCOS', 305)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'050904', N'AYACUCHO', N'SUCRE', N'CHILCAYOC', 280)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'050905', N'AYACUCHO', N'SUCRE', N'HUACAÑA', 340)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'050906', N'AYACUCHO', N'SUCRE', N'MORCOLLA', 493)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'050907', N'AYACUCHO', N'SUCRE', N'PAICO', 428)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'050908', N'AYACUCHO', N'SUCRE', N'SAN PEDRO DE LARCAY', 475)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'050909', N'AYACUCHO', N'SUCRE', N'SAN SALVADOR DE QUIJE', 809)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'050910', N'AYACUCHO', N'SUCRE', N'SANTIAGO DE PAUCARAY', 344)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'050911', N'AYACUCHO', N'SUCRE', N'SORAS', 619)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'051001', N'AYACUCHO', N'VÍCTOR FAJARDO', N'HUANCAPI', 1051)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'051002', N'AYACUCHO', N'VÍCTOR FAJARDO', N'ALCAMENCA', 1303)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'051003', N'AYACUCHO', N'VÍCTOR FAJARDO', N'APONGO', 756)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'051004', N'AYACUCHO', N'VÍCTOR FAJARDO', N'ASQUIPATA', 172)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'051005', N'AYACUCHO', N'VÍCTOR FAJARDO', N'CANARIA', 2327)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'051006', N'AYACUCHO', N'VÍCTOR FAJARDO', N'CAYARA', 542)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'051007', N'AYACUCHO', N'VÍCTOR FAJARDO', N'COLCA', 479)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'051008', N'AYACUCHO', N'VÍCTOR FAJARDO', N'HUAMANQUIQUIA', 626)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'051009', N'AYACUCHO', N'VÍCTOR FAJARDO', N'HUANCARAYLLA', 525)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'051010', N'AYACUCHO', N'VÍCTOR FAJARDO', N'HUAYA', 1663)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'051011', N'AYACUCHO', N'VÍCTOR FAJARDO', N'SARHUA', 1392)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'051012', N'AYACUCHO', N'VÍCTOR FAJARDO', N'VILCANCHOS', 1265)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'051101', N'AYACUCHO', N'VILCAS HUAMÁN', N'VILCAS HUAMÁN', 4419)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'051102', N'AYACUCHO', N'VILCAS HUAMÁN', N'ACCOMARCA', 458)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'051103', N'AYACUCHO', N'VILCAS HUAMÁN', N'CARHUANCA', 470)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'051104', N'AYACUCHO', N'VILCAS HUAMÁN', N'CONCEPCION', 1544)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'051105', N'AYACUCHO', N'VILCAS HUAMÁN', N'HUAMBALPA', 995)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'051106', N'AYACUCHO', N'VILCAS HUAMÁN', N'INDEPENDENCIA', 786)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'051107', N'AYACUCHO', N'VILCAS HUAMÁN', N'SAURAMA', 589)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'051108', N'AYACUCHO', N'VILCAS HUAMÁN', N'VISCHONGO', 2317)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'060101', N'CAJAMARCA', N'CAJAMARCA', N'CAJAMARCA', 160539)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'060102', N'CAJAMARCA', N'CAJAMARCA', N'ASUNCION', 7240)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'060103', N'CAJAMARCA', N'CAJAMARCA', N'CHETILLA', 2248)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'060104', N'CAJAMARCA', N'CAJAMARCA', N'COSPAN', 4076)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'060105', N'CAJAMARCA', N'CAJAMARCA', N'ENCAÑADA', 13727)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'060106', N'CAJAMARCA', N'CAJAMARCA', N'JESUS', 7687)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'060107', N'CAJAMARCA', N'CAJAMARCA', N'LLACANORA', 3055)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'060108', N'CAJAMARCA', N'CAJAMARCA', N'LOS BAÑOS DEL INCA', 26361)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'060109', N'CAJAMARCA', N'CAJAMARCA', N'MAGDALENA', 5404)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'060110', N'CAJAMARCA', N'CAJAMARCA', N'MATARA', 1887)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'060111', N'CAJAMARCA', N'CAJAMARCA', N'NAMORA', 5611)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'060112', N'CAJAMARCA', N'CAJAMARCA', N'SAN JUAN', 2723)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'060201', N'CAJAMARCA', N'CAJABAMBA', N'CAJABAMBA', 16814)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'060202', N'CAJAMARCA', N'CAJABAMBA', N'CACHACHI', 13949)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'060203', N'CAJAMARCA', N'CAJABAMBA', N'CONDEBAMBA', 7438)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'060204', N'CAJAMARCA', N'CAJABAMBA', N'SITACOCHA', 4477)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'060301', N'CAJAMARCA', N'CELENDÍN', N'CELENDÍN', 15713)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'060302', N'CAJAMARCA', N'CELENDÍN', N'CHUMUCH', 1602)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'060303', N'CAJAMARCA', N'CELENDÍN', N'CORTEGANA', 4456)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'060304', N'CAJAMARCA', N'CELENDÍN', N'HUASMIN', 7198)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'060305', N'CAJAMARCA', N'CELENDÍN', N'JORGE CHAVEZ', 325)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'060306', N'CAJAMARCA', N'CELENDÍN', N'JOSE GALVEZ', 1326)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'060307', N'CAJAMARCA', N'CELENDÍN', N'MIGUEL IGLESIAS', 3015)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'060308', N'CAJAMARCA', N'CELENDÍN', N'OXAMARCA', 3694)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'060309', N'CAJAMARCA', N'CELENDÍN', N'SOROCHUCO', 5418)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'060310', N'CAJAMARCA', N'CELENDÍN', N'SUCRE', 3173)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'060311', N'CAJAMARCA', N'CELENDÍN', N'UTCO', 743)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'060312', N'CAJAMARCA', N'CELENDÍN', N'LA LIBERTAD DE PALLAN', 4871)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'060401', N'CAJAMARCA', N'CHOTA', N'CHOTA', 28980)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'060402', N'CAJAMARCA', N'CHOTA', N'ANGUIA', 2207)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'060403', N'CAJAMARCA', N'CHOTA', N'CHADIN', 2265)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'060404', N'CAJAMARCA', N'CHOTA', N'CHIGUIRIP', 2575)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'060405', N'CAJAMARCA', N'CHOTA', N'CHIMBAN', 2008)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'060406', N'CAJAMARCA', N'CHOTA', N'CHOROPAMPA', 1416)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'060407', N'CAJAMARCA', N'CHOTA', N'COCHABAMBA', 3387)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'060408', N'CAJAMARCA', N'CHOTA', N'CONCHAN', 3737)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'060409', N'CAJAMARCA', N'CHOTA', N'HUAMBOS', 4987)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'060410', N'CAJAMARCA', N'CHOTA', N'LAJAS', 6985)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'060411', N'CAJAMARCA', N'CHOTA', N'LLAMA', 4507)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'060412', N'CAJAMARCA', N'CHOTA', N'MIRACOSTA', 1969)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'060413', N'CAJAMARCA', N'CHOTA', N'PACCHA', 2937)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'060414', N'CAJAMARCA', N'CHOTA', N'PION', 874)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'060415', N'CAJAMARCA', N'CHOTA', N'QUEROCOTO', 4883)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'060416', N'CAJAMARCA', N'CHOTA', N'SAN JUAN DE LICUPIS', 525)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'060417', N'CAJAMARCA', N'CHOTA', N'TACABAMBA', 10900)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'060418', N'CAJAMARCA', N'CHOTA', N'TOCMOCHE', 523)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'060419', N'CAJAMARCA', N'CHOTA', N'CHALAMARCA', 6475)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'060501', N'CAJAMARCA', N'CONTUMAZÁ', N'CONTUMAZÁ', 4775)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'060502', N'CAJAMARCA', N'CONTUMAZÁ', N'CHILETE', 1643)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'060503', N'CAJAMARCA', N'CONTUMAZÁ', N'CUPISNIQUE', 794)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'060504', N'CAJAMARCA', N'CONTUMAZÁ', N'GUZMANGO', 1617)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'060505', N'CAJAMARCA', N'CONTUMAZÁ', N'SAN BENITO', 2140)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'060506', N'CAJAMARCA', N'CONTUMAZÁ', N'SANTA CRUZ DE TOLED', 557)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'060507', N'CAJAMARCA', N'CONTUMAZÁ', N'TANTARICA', 1800)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'060508', N'CAJAMARCA', N'CONTUMAZÁ', N'YONAN', 4677)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'060601', N'CAJAMARCA', N'CUTERVO', N'CUTERVO', 32130)
GO
print 'Processed 600 total records'
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'060602', N'CAJAMARCA', N'CUTERVO', N'CALLAYUC', 5527)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'060603', N'CAJAMARCA', N'CUTERVO', N'CHOROS', 1918)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'060604', N'CAJAMARCA', N'CUTERVO', N'CUJILLO', 1649)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'060605', N'CAJAMARCA', N'CUTERVO', N'LA RAMADA', 2608)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'060606', N'CAJAMARCA', N'CUTERVO', N'PIMPINGOS', 2971)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'060607', N'CAJAMARCA', N'CUTERVO', N'QUEROCOTILLO', 8535)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'060608', N'CAJAMARCA', N'CUTERVO', N'SAN ANDRES DE CUTERVO', 2828)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'060609', N'CAJAMARCA', N'CUTERVO', N'SAN JUAN DE CUTERVO', 1077)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'060610', N'CAJAMARCA', N'CUTERVO', N'SAN LUIS DE LUCMA', 2220)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'060611', N'CAJAMARCA', N'CUTERVO', N'SANTA CRUZ', 1526)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'060612', N'CAJAMARCA', N'CUTERVO', N'SANTO DOMINGO DE LA CAPILLA', 2943)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'060613', N'CAJAMARCA', N'CUTERVO', N'SANTO TOMAS', 4190)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'060614', N'CAJAMARCA', N'CUTERVO', N'SOCOTA', 5678)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'060615', N'CAJAMARCA', N'CUTERVO', N'TORIBIO CASANOVA', 724)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'060701', N'CAJAMARCA', N'HUALGAYOC', N'BAMBAMARCA', 47060)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'060702', N'CAJAMARCA', N'HUALGAYOC', N'CHUGUR', 1989)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'060703', N'CAJAMARCA', N'HUALGAYOC', N'HUALGAYOC', 10115)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'060801', N'CAJAMARCA', N'JAEN', N'JAEN', 62230)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'060802', N'CAJAMARCA', N'JAEN', N'BELLAVISTA', 8933)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'060803', N'CAJAMARCA', N'JAEN', N'CHONTALI', 5562)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'060804', N'CAJAMARCA', N'JAEN', N'COLASAY', 5683)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'060805', N'CAJAMARCA', N'JAEN', N'HUABAL', 3826)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'060806', N'CAJAMARCA', N'JAEN', N'LAS PIRIAS', 2299)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'060807', N'CAJAMARCA', N'JAEN', N'POMAHUACA', 5352)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'060808', N'CAJAMARCA', N'JAEN', N'PUCARA', 4424)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'060809', N'CAJAMARCA', N'JAEN', N'SALLIQUE', 4234)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'060810', N'CAJAMARCA', N'JAEN', N'SAN FELIPE', 3227)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'060811', N'CAJAMARCA', N'JAEN', N'SAN JOSE DEL ALTO', 3960)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'060812', N'CAJAMARCA', N'JAEN', N'SANTA ROSA', 6609)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'060901', N'CAJAMARCA', N'SAN IGNACIO', N'SAN IGNACIO', 20468)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'060902', N'CAJAMARCA', N'SAN IGNACIO', N'CHIRINOS', 7955)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'060903', N'CAJAMARCA', N'SAN IGNACIO', N'HUARANGO', 11282)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'060904', N'CAJAMARCA', N'SAN IGNACIO', N'LA COIPA', 11258)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'060905', N'CAJAMARCA', N'SAN IGNACIO', N'NAMBALLE', 6264)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'060906', N'CAJAMARCA', N'SAN IGNACIO', N'SAN JOSE DE LOURDES', 11627)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'060907', N'CAJAMARCA', N'SAN IGNACIO', N'TABACONAS', 11284)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'061001', N'CAJAMARCA', N'SAN MARCOS', N'PEDRO GALVEZ', 12800)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'061002', N'CAJAMARCA', N'SAN MARCOS', N'CHANCAY', 1738)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'061003', N'CAJAMARCA', N'SAN MARCOS', N'EDUARDO VILLANUEVA', 1277)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'061004', N'CAJAMARCA', N'SAN MARCOS', N'GREGORIO PITA', 3603)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'061005', N'CAJAMARCA', N'SAN MARCOS', N'ICHOCAN', 920)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'061006', N'CAJAMARCA', N'SAN MARCOS', N'JOSE MANUEL QUIROZ', 2072)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'061007', N'CAJAMARCA', N'SAN MARCOS', N'JOSE SABOGAL', 8316)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'061101', N'CAJAMARCA', N'SAN MIGUEL', N'SAN MIGUEL', 9078)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'061102', N'CAJAMARCA', N'SAN MIGUEL', N'BOLIVAR', 811)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'061103', N'CAJAMARCA', N'SAN MIGUEL', N'CALQUIS', 2467)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'061104', N'CAJAMARCA', N'SAN MIGUEL', N'CATILLUC', 2075)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'061105', N'CAJAMARCA', N'SAN MIGUEL', N'EL PRADO', 804)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'061106', N'CAJAMARCA', N'SAN MIGUEL', N'LA FLORIDA', 1227)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'061107', N'CAJAMARCA', N'SAN MIGUEL', N'LLAPA', 3404)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'061108', N'CAJAMARCA', N'SAN MIGUEL', N'NANCHOC', 871)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'061109', N'CAJAMARCA', N'SAN MIGUEL', N'NIEPOS', 2075)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'061110', N'CAJAMARCA', N'SAN MIGUEL', N'SAN GREGORIO', 1274)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'061111', N'CAJAMARCA', N'SAN MIGUEL', N'SAN SILVESTRE DE COCHAN', 2661)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'061112', N'CAJAMARCA', N'SAN MIGUEL', N'TONGOD', 2815)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'061113', N'CAJAMARCA', N'SAN MIGUEL', N'UNION AGUA BLANCA', 2041)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'061201', N'CAJAMARCA', N'SAN PABLO', N'SAN PABLO', 7485)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'061202', N'CAJAMARCA', N'SAN PABLO', N'SAN BERNARDINO', 2699)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'061203', N'CAJAMARCA', N'SAN PABLO', N'SAN LUIS', 707)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'061204', N'CAJAMARCA', N'SAN PABLO', N'TUMBADEN', 1996)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'061301', N'CAJAMARCA', N'SANTA CRUZ', N'SANTA CRUZ', 6861)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'061302', N'CAJAMARCA', N'SANTA CRUZ', N'ANDABAMBA', 766)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'061303', N'CAJAMARCA', N'SANTA CRUZ', N'CATACHE', 5521)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'061304', N'CAJAMARCA', N'SANTA CRUZ', N'CHANCAYBAÑOS', 2073)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'061305', N'CAJAMARCA', N'SANTA CRUZ', N'LA ESPERANZA', 1358)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'061306', N'CAJAMARCA', N'SANTA CRUZ', N'NINABAMBA', 1428)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'061307', N'CAJAMARCA', N'SANTA CRUZ', N'PULAN', 2323)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'061308', N'CAJAMARCA', N'SANTA CRUZ', N'SAUCEPAMPA', 944)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'061309', N'CAJAMARCA', N'SANTA CRUZ', N'SEXI', 332)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'061310', N'CAJAMARCA', N'SANTA CRUZ', N'UTICYACU', 860)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'061311', N'CAJAMARCA', N'SANTA CRUZ', N'YAUYUCAN', 1833)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'070101', N'PROV. CONST. DEL CALLAO', N'PROV. CONST. DEL CALLAO', N'CALLAO', 248644)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'070102', N'PROV. CONST. DEL CALLAO', N'PROV. CONST. DEL CALLAO', N'BELLAVISTA', 41005)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'070103', N'PROV. CONST. DEL CALLAO', N'PROV. CONST. DEL CALLAO', N'CARMEN DE LA LEGUA REYNOSO', 24741)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'070104', N'PROV. CONST. DEL CALLAO', N'PROV. CONST. DEL CALLAO', N'LA PERLA', 33834)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'070105', N'PROV. CONST. DEL CALLAO', N'PROV. CONST. DEL CALLAO', N'LA PUNTA', 1761)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'070106', N'PROV. CONST. DEL CALLAO', N'PROV. CONST. DEL CALLAO', N'VENTANILLA', 264771)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'080101', N'CUSCO', N'CUSCO', N'CUSCO', 76304)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'080102', N'CUSCO', N'CUSCO', N'CCORCA', 1114)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'080103', N'CUSCO', N'CUSCO', N'POROY', 4365)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'080104', N'CUSCO', N'CUSCO', N'SAN JERONIMO', 29584)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'080105', N'CUSCO', N'CUSCO', N'SAN SEBASTIAN', 74646)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'080106', N'CUSCO', N'CUSCO', N'SANTIAGO', 57271)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'080107', N'CUSCO', N'CUSCO', N'SAYLLA', 3406)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'080108', N'CUSCO', N'CUSCO', N'WANCHAQ', 41627)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'080201', N'CUSCO', N'ACOMAYO', N'ACOMAYO', 2750)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'080202', N'CUSCO', N'ACOMAYO', N'ACOPIA', 1193)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'080203', N'CUSCO', N'ACOMAYO', N'ACOS', 1103)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'080204', N'CUSCO', N'ACOMAYO', N'MOSOC LLACTA', 1212)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'080205', N'CUSCO', N'ACOMAYO', N'POMACANCHI', 4325)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'080206', N'CUSCO', N'ACOMAYO', N'RONDOCAN', 1092)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'080207', N'CUSCO', N'ACOMAYO', N'SANGARARA', 1908)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'080301', N'CUSCO', N'ANTA', N'ANTA', 9498)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'080302', N'CUSCO', N'ANTA', N'ANCAHUASI', 3514)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'080303', N'CUSCO', N'ANTA', N'CACHIMAYO', 1331)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'080304', N'CUSCO', N'ANTA', N'CHINCHAYPUJIO', 1977)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'080305', N'CUSCO', N'ANTA', N'HUAROCONDO', 2920)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'080306', N'CUSCO', N'ANTA', N'LIMATAMBO', 5125)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'080307', N'CUSCO', N'ANTA', N'MOLLEPATA', 1298)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'080308', N'CUSCO', N'ANTA', N'PUCYURA', 2349)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'080309', N'CUSCO', N'ANTA', N'ZURITE', 1991)
GO
print 'Processed 700 total records'
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'080401', N'CUSCO', N'CALCA', N'CALCA', 13299)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'080402', N'CUSCO', N'CALCA', N'COYA', 2124)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'080403', N'CUSCO', N'CALCA', N'LAMAY', 3005)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'080404', N'CUSCO', N'CALCA', N'LARES', 3832)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'080405', N'CUSCO', N'CALCA', N'PISAC', 5669)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'080406', N'CUSCO', N'CALCA', N'SAN SALVADOR', 2896)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'080407', N'CUSCO', N'CALCA', N'TARAY', 2696)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'080408', N'CUSCO', N'CALCA', N'YANATILE', 7722)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'080501', N'CUSCO', N'CANAS', N'YANAOCA', 4933)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'080502', N'CUSCO', N'CANAS', N'CHECCA', 3068)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'080503', N'CUSCO', N'CANAS', N'KUNTURKANKI', 2905)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'080504', N'CUSCO', N'CANAS', N'LANGUI', 1211)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'080505', N'CUSCO', N'CANAS', N'LAYO', 3144)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'080506', N'CUSCO', N'CANAS', N'PAMPAMARCA', 1036)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'080507', N'CUSCO', N'CANAS', N'QUEHUE', 1792)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'080508', N'CUSCO', N'CANAS', N'TUPAC AMARU', 1485)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'080601', N'CUSCO', N'CANCHIS', N'SICUANI', 33601)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'080602', N'CUSCO', N'CANCHIS', N'CHECACUPE', 2662)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'080603', N'CUSCO', N'CANCHIS', N'COMBAPATA', 3032)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'080604', N'CUSCO', N'CANCHIS', N'MARANGANI', 5802)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'080605', N'CUSCO', N'CANCHIS', N'PITUMARCA', 3928)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'080606', N'CUSCO', N'CANCHIS', N'SAN PABLO', 2318)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'080607', N'CUSCO', N'CANCHIS', N'SAN PEDRO', 1447)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'080608', N'CUSCO', N'CANCHIS', N'TINTA', 3131)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'080701', N'CUSCO', N'CHUMBIVILCAS', N'SANTO TOMAS', 13167)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'080702', N'CUSCO', N'CHUMBIVILCAS', N'CAPACMARCA', 2216)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'080703', N'CUSCO', N'CHUMBIVILCAS', N'CHAMACA', 4490)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'080704', N'CUSCO', N'CHUMBIVILCAS', N'COLQUEMARCA', 4145)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'080705', N'CUSCO', N'CHUMBIVILCAS', N'LIVITACA', 6408)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'080706', N'CUSCO', N'CHUMBIVILCAS', N'LLUSCO', 3262)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'080707', N'CUSCO', N'CHUMBIVILCAS', N'QUIÑOTA', 2338)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'080708', N'CUSCO', N'CHUMBIVILCAS', N'VELILLE', 4221)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'080801', N'CUSCO', N'ESPINAR', N'ESPINAR', 19287)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'080802', N'CUSCO', N'ESPINAR', N'CONDOROMA', 801)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'080803', N'CUSCO', N'ESPINAR', N'COPORAQUE', 8774)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'080804', N'CUSCO', N'ESPINAR', N'OCORURO', 846)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'080805', N'CUSCO', N'ESPINAR', N'PALLPATA', 2882)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'080806', N'CUSCO', N'ESPINAR', N'PICHIGUA', 1992)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'080807', N'CUSCO', N'ESPINAR', N'SUYCKUTAMBO', 1438)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'080808', N'CUSCO', N'ESPINAR', N'ALTO PICHIGUA', 1498)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'080901', N'CUSCO', N'LA CONVENCIÓN', N'SANTA ANA', 21210)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'080902', N'CUSCO', N'LA CONVENCIÓN', N'ECHARATE', 25840)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'080903', N'CUSCO', N'LA CONVENCIÓN', N'HUAYOPATA', 2650)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'080904', N'CUSCO', N'LA CONVENCIÓN', N'MARANURA', 3433)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'080905', N'CUSCO', N'LA CONVENCIÓN', N'OCOBAMBA', 4035)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'080906', N'CUSCO', N'LA CONVENCIÓN', N'QUELLOUNO', 10501)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'080907', N'CUSCO', N'LA CONVENCIÓN', N'KIMBIRI', 9872)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'080908', N'CUSCO', N'LA CONVENCIÓN', N'SANTA TERESA', 3828)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'080909', N'CUSCO', N'LA CONVENCIÓN', N'VILCABAMBA', 11681)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'080910', N'CUSCO', N'LA CONVENCIÓN', N'PICHARI', 11911)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'081001', N'CUSCO', N'PARURO', N'PARURO', 1703)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'081002', N'CUSCO', N'PARURO', N'ACCHA', 1810)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'081003', N'CUSCO', N'PARURO', N'CCAPI', 1739)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'081004', N'CUSCO', N'PARURO', N'COLCHA', 520)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'081005', N'CUSCO', N'PARURO', N'HUANOQUITE', 2894)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'081006', N'CUSCO', N'PARURO', N'OMACHA', 3372)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'081007', N'CUSCO', N'PARURO', N'PACCARITAMBO', 1000)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'081008', N'CUSCO', N'PARURO', N'PILLPINTO', 531)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'081009', N'CUSCO', N'PARURO', N'YAURISQUE', 1291)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'081101', N'CUSCO', N'PAUCARTAMBO', N'PAUCARTAMBO', 6831)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'081102', N'CUSCO', N'PAUCARTAMBO', N'CAICAY', 1380)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'081103', N'CUSCO', N'PAUCARTAMBO', N'CHALLABAMBA', 5567)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'081104', N'CUSCO', N'PAUCARTAMBO', N'COLQUEPATA', 5422)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'081105', N'CUSCO', N'PAUCARTAMBO', N'HUANCARANI', 3932)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'081106', N'CUSCO', N'PAUCARTAMBO', N'KOSÑIPATA', 3179)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'081201', N'CUSCO', N'QUISPICANCHI', N'URCOS', 5314)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'081202', N'CUSCO', N'QUISPICANCHI', N'ANDAHUAYLILLAS', 3105)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'081203', N'CUSCO', N'QUISPICANCHI', N'CAMANTI', 1340)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'081204', N'CUSCO', N'QUISPICANCHI', N'CCARHUAYO', 1540)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'081205', N'CUSCO', N'QUISPICANCHI', N'CCATCA', 8943)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'081206', N'CUSCO', N'QUISPICANCHI', N'CUSIPATA', 2558)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'081207', N'CUSCO', N'QUISPICANCHI', N'HUARO', 2616)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'081208', N'CUSCO', N'QUISPICANCHI', N'LUCRE', 2240)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'081209', N'CUSCO', N'QUISPICANCHI', N'MARCAPATA', 2185)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'081210', N'CUSCO', N'QUISPICANCHI', N'OCONGATE', 8211)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'081211', N'CUSCO', N'QUISPICANCHI', N'OROPESA', 4242)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'081212', N'CUSCO', N'QUISPICANCHI', N'QUIQUIJANA', 5503)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'081301', N'CUSCO', N'URUBAMBA', N'URUBAMBA', 12041)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'081302', N'CUSCO', N'URUBAMBA', N'CHINCHERO', 5324)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'081303', N'CUSCO', N'URUBAMBA', N'HUAYLLABAMBA', 2898)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'081304', N'CUSCO', N'URUBAMBA', N'MACHUPICCHU', 6103)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'081305', N'CUSCO', N'URUBAMBA', N'MARAS', 2944)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'081306', N'CUSCO', N'URUBAMBA', N'OLLANTAYTAMBO', 6387)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'081307', N'CUSCO', N'URUBAMBA', N'YUCAY', 1794)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'090101', N'HUANCAVELICA', N'HUANCAVELICA', N'HUANCAVELICA', 24647)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'090102', N'HUANCAVELICA', N'HUANCAVELICA', N'ACOBAMBILLA', 2408)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'090103', N'HUANCAVELICA', N'HUANCAVELICA', N'ACORIA', 18903)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'090104', N'HUANCAVELICA', N'HUANCAVELICA', N'CONAYCA', 586)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'090105', N'HUANCAVELICA', N'HUANCAVELICA', N'CUENCA', 858)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'090106', N'HUANCAVELICA', N'HUANCAVELICA', N'HUACHOCOLPA', 1649)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'090107', N'HUANCAVELICA', N'HUANCAVELICA', N'HUAYLLAHUARA', 348)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'090108', N'HUANCAVELICA', N'HUANCAVELICA', N'IZCUCHACA', 469)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'090109', N'HUANCAVELICA', N'HUANCAVELICA', N'LARIA', 744)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'090110', N'HUANCAVELICA', N'HUANCAVELICA', N'MANTA', 1063)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'090111', N'HUANCAVELICA', N'HUANCAVELICA', N'MARISCAL CACERES', 588)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'090112', N'HUANCAVELICA', N'HUANCAVELICA', N'MOYA', 1305)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'090113', N'HUANCAVELICA', N'HUANCAVELICA', N'NUEVO OCCORO', 1306)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'090114', N'HUANCAVELICA', N'HUANCAVELICA', N'PALCA', 1639)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'090115', N'HUANCAVELICA', N'HUANCAVELICA', N'PILCHACA', 249)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'090116', N'HUANCAVELICA', N'HUANCAVELICA', N'VILCA', 1486)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'090117', N'HUANCAVELICA', N'HUANCAVELICA', N'YAULI', 16589)
GO
print 'Processed 800 total records'
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'090118', N'HUANCAVELICA', N'HUANCAVELICA', N'ASCENSION', 7351)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'090119', N'HUANCAVELICA', N'HUANCAVELICA', N'HUANDO', 3608)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'090201', N'HUANCAVELICA', N'ACOBAMBA', N'ACOBAMBA', 5318)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'090202', N'HUANCAVELICA', N'ACOBAMBA', N'ANDABAMBA', 2956)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'090203', N'HUANCAVELICA', N'ACOBAMBA', N'ANTA', 4811)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'090204', N'HUANCAVELICA', N'ACOBAMBA', N'CAJA', 1442)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'090205', N'HUANCAVELICA', N'ACOBAMBA', N'MARCAS', 1131)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'090206', N'HUANCAVELICA', N'ACOBAMBA', N'PAUCARA', 19727)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'090207', N'HUANCAVELICA', N'ACOBAMBA', N'POMACOCHA', 2093)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'090208', N'HUANCAVELICA', N'ACOBAMBA', N'ROSARIO', 3950)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'090301', N'HUANCAVELICA', N'ANGARAES', N'LIRCAY', 12067)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'090302', N'HUANCAVELICA', N'ANGARAES', N'ANCHONGA', 3548)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'090303', N'HUANCAVELICA', N'ANGARAES', N'CALLANMARCA', 364)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'090304', N'HUANCAVELICA', N'ANGARAES', N'CCOCHACCASA', 1370)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'090305', N'HUANCAVELICA', N'ANGARAES', N'CHINCHO', 1792)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'090306', N'HUANCAVELICA', N'ANGARAES', N'CONGALLA', 1882)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'090307', N'HUANCAVELICA', N'ANGARAES', N'HUANCA-HUANCA', 764)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'090308', N'HUANCAVELICA', N'ANGARAES', N'HUAYLLAY GRANDE', 1114)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'090309', N'HUANCAVELICA', N'ANGARAES', N'JULCAMARCA', 935)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'090310', N'HUANCAVELICA', N'ANGARAES', N'SAN ANTONIO DE ANTAPARCO', 4243)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'090311', N'HUANCAVELICA', N'ANGARAES', N'SANTO TOMAS DE PATA', 1330)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'090312', N'HUANCAVELICA', N'ANGARAES', N'SECCLLA', 1827)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'090401', N'HUANCAVELICA', N'CASTROVIRREYNA', N'CASTROVIRREYNA', 1648)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'090402', N'HUANCAVELICA', N'CASTROVIRREYNA', N'ARMA', 621)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'090403', N'HUANCAVELICA', N'CASTROVIRREYNA', N'AURAHUA', 1252)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'090404', N'HUANCAVELICA', N'CASTROVIRREYNA', N'CAPILLAS', 712)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'090405', N'HUANCAVELICA', N'CASTROVIRREYNA', N'CHUPAMARCA', 582)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'090406', N'HUANCAVELICA', N'CASTROVIRREYNA', N'COCAS', 412)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'090407', N'HUANCAVELICA', N'CASTROVIRREYNA', N'HUACHOS', 863)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'090408', N'HUANCAVELICA', N'CASTROVIRREYNA', N'HUAMATAMBO', 171)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'090409', N'HUANCAVELICA', N'CASTROVIRREYNA', N'MOLLEPAMPA', 813)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'090410', N'HUANCAVELICA', N'CASTROVIRREYNA', N'SAN JUAN', 214)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'090411', N'HUANCAVELICA', N'CASTROVIRREYNA', N'SANTA ANA', 1723)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'090412', N'HUANCAVELICA', N'CASTROVIRREYNA', N'TANTARA', 377)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'090413', N'HUANCAVELICA', N'CASTROVIRREYNA', N'TICRAPO', 842)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'090501', N'HUANCAVELICA', N'CHURCAMPA', N'CHURCAMPA', 2730)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'090502', N'HUANCAVELICA', N'CHURCAMPA', N'ANCO', 5437)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'090503', N'HUANCAVELICA', N'CHURCAMPA', N'CHINCHIHUASI', 2485)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'090504', N'HUANCAVELICA', N'CHURCAMPA', N'EL CARMEN', 1348)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'090505', N'HUANCAVELICA', N'CHURCAMPA', N'LA MERCED', 1022)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'090506', N'HUANCAVELICA', N'CHURCAMPA', N'LOCROJA', 1934)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'090507', N'HUANCAVELICA', N'CHURCAMPA', N'PAUCARBAMBA', 3595)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'090508', N'HUANCAVELICA', N'CHURCAMPA', N'SAN MIGUEL DE MAYOCC', 715)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'090509', N'HUANCAVELICA', N'CHURCAMPA', N'SAN PEDRO DE CORIS', 1653)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'090510', N'HUANCAVELICA', N'CHURCAMPA', N'PACHAMARCA ', 1231)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'090601', N'HUANCAVELICA', N'HUAYTARÁ', N'HUAYTARÁ', 1105)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'090602', N'HUANCAVELICA', N'HUAYTARÁ', N'AYAVI', 318)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'090603', N'HUANCAVELICA', N'HUAYTARÁ', N'CORDOVA', 1855)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'090604', N'HUANCAVELICA', N'HUAYTARÁ', N'HUAYACUNDO ARMA', 238)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'090605', N'HUANCAVELICA', N'HUAYTARÁ', N'LARAMARCA', 467)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'090606', N'HUANCAVELICA', N'HUAYTARÁ', N'OCOYO', 1540)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'090607', N'HUANCAVELICA', N'HUAYTARÁ', N'PILPICHACA', 1793)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'090608', N'HUANCAVELICA', N'HUAYTARÁ', N'QUERCO', 498)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'090609', N'HUANCAVELICA', N'HUAYTARÁ', N'QUITO-ARMA', 374)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'090610', N'HUANCAVELICA', N'HUAYTARÁ', N'SAN ANTONIO DE CUSICANCHA', 756)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'090611', N'HUANCAVELICA', N'HUAYTARÁ', N'SAN FRANCISCO DE SANGAYAICO', 278)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'090612', N'HUANCAVELICA', N'HUAYTARÁ', N'SAN ISIDRO', 691)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'090613', N'HUANCAVELICA', N'HUAYTARÁ', N'SANTIAGO DE CHOCORVOS', 1362)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'090614', N'HUANCAVELICA', N'HUAYTARÁ', N'SANTIAGO DE QUIRAHUARA', 289)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'090615', N'HUANCAVELICA', N'HUAYTARÁ', N'SANTO DOMINGO DE CAPILLAS', 550)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'090616', N'HUANCAVELICA', N'HUAYTARÁ', N'TAMBO', 179)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'090701', N'HUANCAVELICA', N'TAYACAJA', N'PAMPAS', 6003)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'090702', N'HUANCAVELICA', N'TAYACAJA', N'ACOSTAMBO', 1974)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'090703', N'HUANCAVELICA', N'TAYACAJA', N'ACRAQUIA', 2529)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'090704', N'HUANCAVELICA', N'TAYACAJA', N'AHUAYCHA', 2776)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'090705', N'HUANCAVELICA', N'TAYACAJA', N'COLCABAMBA', 9073)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'090706', N'HUANCAVELICA', N'TAYACAJA', N'DANIEL HERNANDEZ', 5352)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'090707', N'HUANCAVELICA', N'TAYACAJA', N'HUACHOCOLPA', 3694)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'090709', N'HUANCAVELICA', N'TAYACAJA', N'HUARIBAMBA', 4001)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'090710', N'HUANCAVELICA', N'TAYACAJA', N'ÑAHUIMPUQUIO', 892)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'090711', N'HUANCAVELICA', N'TAYACAJA', N'PAZOS', 3734)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'090713', N'HUANCAVELICA', N'TAYACAJA', N'QUISHUAR', 407)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'090714', N'HUANCAVELICA', N'TAYACAJA', N'SALCABAMBA', 2106)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'090715', N'HUANCAVELICA', N'TAYACAJA', N'SALCAHUASI', 1590)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'090716', N'HUANCAVELICA', N'TAYACAJA', N'SAN MARCOS DE ROCCHAC', 1444)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'090717', N'HUANCAVELICA', N'TAYACAJA', N'SURCUBAMBA', 2322)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'090718', N'HUANCAVELICA', N'TAYACAJA', N'TINTAY PUNCU', 7520)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'100101', N'HUÁNUCO', N'HUÁNUCO', N'HUÁNUCO', 46796)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'100102', N'HUÁNUCO', N'HUÁNUCO', N'AMARILIS', 42965)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'100103', N'HUÁNUCO', N'HUÁNUCO', N'CHINCHAO', 13834)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'100104', N'HUÁNUCO', N'HUÁNUCO', N'CHURUBAMBA', 16040)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'100105', N'HUÁNUCO', N'HUÁNUCO', N'MARGOS', 7691)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'100106', N'HUÁNUCO', N'HUÁNUCO', N'QUISQUI', 4224)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'100107', N'HUÁNUCO', N'HUÁNUCO', N'SAN FRANCISCO DE CAYRAN', 2758)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'100108', N'HUÁNUCO', N'HUÁNUCO', N'SAN PEDRO DE CHAULAN', 3941)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'100109', N'HUÁNUCO', N'HUÁNUCO', N'SANTA MARIA DEL VALLE', 9123)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'100110', N'HUÁNUCO', N'HUÁNUCO', N'YARUMAYO', 1438)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'100111', N'HUÁNUCO', N'HUÁNUCO', N'PILLCO MARCA', 33193)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'100201', N'HUÁNUCO', N'AMBO', N'AMBO', 9284)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'100202', N'HUÁNUCO', N'AMBO', N'CAYNA', 1799)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'100203', N'HUÁNUCO', N'AMBO', N'COLPAS', 1161)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'100204', N'HUÁNUCO', N'AMBO', N'CONCHAMARCA', 3889)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'100205', N'HUÁNUCO', N'AMBO', N'HUACAR', 4003)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'100206', N'HUÁNUCO', N'AMBO', N'SAN FRANCISCO', 1819)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'100207', N'HUÁNUCO', N'AMBO', N'SAN RAFAEL', 6248)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'100208', N'HUÁNUCO', N'AMBO', N'TOMAY KICHWA', 2404)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'100301', N'HUÁNUCO', N'DOS DE MAYO', N'LA UNION', 3549)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'100307', N'HUÁNUCO', N'DOS DE MAYO', N'CHUQUIS', 2982)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'100311', N'HUÁNUCO', N'DOS DE MAYO', N'MARIAS', 4733)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'100313', N'HUÁNUCO', N'DOS DE MAYO', N'PACHAS', 6897)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'100316', N'HUÁNUCO', N'DOS DE MAYO', N'QUIVILLA', 1747)
GO
print 'Processed 900 total records'
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'100317', N'HUÁNUCO', N'DOS DE MAYO', N'RIPAN', 3497)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'100321', N'HUÁNUCO', N'DOS DE MAYO', N'SHUNQUI', 1244)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'100322', N'HUÁNUCO', N'DOS DE MAYO', N'SILLAPATA', 1147)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'100323', N'HUÁNUCO', N'DOS DE MAYO', N'YANAS', 1578)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'100401', N'HUÁNUCO', N'HUACAYBAMBA', N'HUACAYBAMBA', 3425)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'100402', N'HUÁNUCO', N'HUACAYBAMBA', N'CANCHABAMBA', 1555)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'100403', N'HUÁNUCO', N'HUACAYBAMBA', N'COCHABAMBA', 1911)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'100404', N'HUÁNUCO', N'HUACAYBAMBA', N'PINRA', 4196)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'100501', N'HUÁNUCO', N'HUAMALÍES', N'LLATA', 7414)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'100502', N'HUÁNUCO', N'HUAMALÍES', N'ARANCAY', 690)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'100503', N'HUÁNUCO', N'HUAMALÍES', N'CHAVIN DE PARIARCA', 1899)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'100504', N'HUÁNUCO', N'HUAMALÍES', N'JACAS GRANDE', 2708)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'100505', N'HUÁNUCO', N'HUAMALÍES', N'JIRCAN', 1994)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'100506', N'HUÁNUCO', N'HUAMALÍES', N'MIRAFLORES', 1556)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'100507', N'HUÁNUCO', N'HUAMALÍES', N'MONZON', 17025)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'100508', N'HUÁNUCO', N'HUAMALÍES', N'PUNCHAO', 1202)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'100509', N'HUÁNUCO', N'HUAMALÍES', N'PUÑOS', 2034)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'100510', N'HUÁNUCO', N'HUAMALÍES', N'SINGA', 1627)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'100511', N'HUÁNUCO', N'HUAMALÍES', N'TANTAMAYO', 1420)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'100601', N'HUÁNUCO', N'LEONCIO PRADO', N'RUPA-RUPA', 40624)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'100602', N'HUÁNUCO', N'LEONCIO PRADO', N'DANIEL ALOMIA ROBLES', 4555)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'100603', N'HUÁNUCO', N'LEONCIO PRADO', N'HERMILIO VALDIZAN', 2299)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'100604', N'HUÁNUCO', N'LEONCIO PRADO', N'JOSE CRESPO Y CASTILLO', 23009)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'100605', N'HUÁNUCO', N'LEONCIO PRADO', N'LUYANDO', 5778)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'100606', N'HUÁNUCO', N'LEONCIO PRADO', N'MARIANO DAMASO BERAUN', 5393)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'100701', N'HUÁNUCO', N'MARAÑÓN', N'HUACRACHUCO', 7596)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'100702', N'HUÁNUCO', N'MARAÑÓN', N'CHOLON', 7775)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'100703', N'HUÁNUCO', N'MARAÑÓN', N'SAN BUENAVENTURA', 1244)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'100801', N'HUÁNUCO', N'PACHITEA', N'PANAO', 12301)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'100802', N'HUÁNUCO', N'PACHITEA', N'CHAGLLA', 6318)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'100803', N'HUÁNUCO', N'PACHITEA', N'MOLINO', 7692)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'100804', N'HUÁNUCO', N'PACHITEA', N'UMARI  ', 11509)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'100901', N'HUÁNUCO', N'PUERTO INCA', N'PUERTO INCA', 4395)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'100902', N'HUÁNUCO', N'PUERTO INCA', N'CODO DEL POZUZO', 3725)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'100903', N'HUÁNUCO', N'PUERTO INCA', N'HONORIA', 3580)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'100904', N'HUÁNUCO', N'PUERTO INCA', N'TOURNAVISTA', 2589)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'100905', N'HUÁNUCO', N'PUERTO INCA', N'YUYAPICHIS', 3535)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'101001', N'HUÁNUCO', N'LAURICOCHA', N'JESUS', 3009)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'101002', N'HUÁNUCO', N'LAURICOCHA', N'BAÑOS', 3877)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'101003', N'HUÁNUCO', N'LAURICOCHA', N'JIVIA', 1473)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'101004', N'HUÁNUCO', N'LAURICOCHA', N'QUEROPALCA', 1729)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'101005', N'HUÁNUCO', N'LAURICOCHA', N'RONDOS', 3708)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'101006', N'HUÁNUCO', N'LAURICOCHA', N'SAN FRANCISCO DE ASIS', 966)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'101007', N'HUÁNUCO', N'LAURICOCHA', N'SAN MIGUEL DE CAURI', 5698)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'101101', N'HUÁNUCO', N'YAROWILCA', N'CHAVINILLO', 2666)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'101102', N'HUÁNUCO', N'YAROWILCA', N'CAHUAC', 2742)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'101103', N'HUÁNUCO', N'YAROWILCA', N'CHACABAMBA', 2017)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'101104', N'HUÁNUCO', N'YAROWILCA', N'APARICIO POMARES', 2465)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'101105', N'HUÁNUCO', N'YAROWILCA', N'JACAS CHICO', 987)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'101106', N'HUÁNUCO', N'YAROWILCA', N'OBAS', 2482)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'101107', N'HUÁNUCO', N'YAROWILCA', N'PAMPAMARCA', 990)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'101108', N'HUÁNUCO', N'YAROWILCA', N'CHORAS', 1676)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'110101', N'ICA', N'ICA', N'ICA', 77624)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'110102', N'ICA', N'ICA', N'LA TINGUIÑA', 21107)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'110103', N'ICA', N'ICA', N'LOS AQUIJES', 11206)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'110104', N'ICA', N'ICA', N'OCUCAJE', 2061)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'110105', N'ICA', N'ICA', N'PACHACUTEC', 3982)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'110106', N'ICA', N'ICA', N'PARCONA', 32446)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'110107', N'ICA', N'ICA', N'PUEBLO NUEVO', 2726)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'110108', N'ICA', N'ICA', N'SALAS', 14273)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'110109', N'ICA', N'ICA', N'SAN JOSE DE LOS MOLINOS', 3665)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'110110', N'ICA', N'ICA', N'SAN JUAN BAUTISTA', 8630)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'110111', N'ICA', N'ICA', N'SANTIAGO', 17249)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'110112', N'ICA', N'ICA', N'SUBTANJALLA', 16446)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'110113', N'ICA', N'ICA', N'TATE', 2646)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'110114', N'ICA', N'ICA', N'YAUCA DEL ROSARIO', 434)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'110201', N'ICA', N'CHINCHA', N'CHINCHA ALTA', 36431)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'110202', N'ICA', N'CHINCHA', N'ALTO LARAN', 4282)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'110203', N'ICA', N'CHINCHA', N'CHAVIN', 887)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'110204', N'ICA', N'CHINCHA', N'CHINCHA BAJA', 7151)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'110205', N'ICA', N'CHINCHA', N'EL CARMEN', 7753)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'110206', N'ICA', N'CHINCHA', N'GROCIO PRADO', 13494)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'110207', N'ICA', N'CHINCHA', N'PUEBLO NUEVO', 35834)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'110208', N'ICA', N'CHINCHA', N'SAN JUAN DE YANAC', 158)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'110209', N'ICA', N'CHINCHA', N'SAN PEDRO DE HUACARPANA', 880)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'110210', N'ICA', N'CHINCHA', N'SUNAMPE', 16010)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'110211', N'ICA', N'CHINCHA', N'TAMBO DE MORA', 2849)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'110301', N'ICA', N'NAZCA', N'NAZCA', 15850)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'110302', N'ICA', N'NAZCA', N'CHANGUILLO', 866)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'110303', N'ICA', N'NAZCA', N'EL INGENIO', 1495)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'110304', N'ICA', N'NAZCA', N'MARCONA', 7639)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'110305', N'ICA', N'NAZCA', N'VISTA ALEGRE', 8888)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'110401', N'ICA', N'PALPA', N'PALPA', 4095)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'110402', N'ICA', N'PALPA', N'LLIPATA', 874)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'110403', N'ICA', N'PALPA', N'RIO GRANDE', 1281)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'110404', N'ICA', N'PALPA', N'SANTA CRUZ', 597)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'110405', N'ICA', N'PALPA', N'TIBILLO', 143)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'110501', N'ICA', N'PISCO', N'PISCO', 31983)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'110502', N'ICA', N'PISCO', N'HUANCANO', 856)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'110503', N'ICA', N'PISCO', N'HUMAY', 3370)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'110504', N'ICA', N'PISCO', N'INDEPENDENCIA', 8247)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'110505', N'ICA', N'PISCO', N'PARACAS', 4527)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'110506', N'ICA', N'PISCO', N'SAN ANDRES', 7909)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'110507', N'ICA', N'PISCO', N'SAN CLEMENTE', 12885)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'110508', N'ICA', N'PISCO', N'TUPAC AMARU INCA', 10338)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'120101', N'JUNIN', N'HUANCAYO', N'HUANCAYO', 69919)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'120104', N'JUNIN', N'HUANCAYO', N'CARHUACALLANGA', 703)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'120105', N'JUNIN', N'HUANCAYO', N'CHACAPAMPA', 320)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'120106', N'JUNIN', N'HUANCAYO', N'CHICCHE', 415)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'120107', N'JUNIN', N'HUANCAYO', N'CHILCA', 50109)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'120108', N'JUNIN', N'HUANCAYO', N'CHONGOS ALTO', 576)
GO
print 'Processed 1000 total records'
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'120111', N'JUNIN', N'HUANCAYO', N'CHUPURO', 895)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'120112', N'JUNIN', N'HUANCAYO', N'COLCA', 1005)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'120113', N'JUNIN', N'HUANCAYO', N'CULLHUAS', 1094)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'120114', N'JUNIN', N'HUANCAYO', N'EL TAMBO', 96454)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'120116', N'JUNIN', N'HUANCAYO', N'HUACRAPUQUIO', 583)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'120117', N'JUNIN', N'HUANCAYO', N'HUALHUAS', 2415)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'120119', N'JUNIN', N'HUANCAYO', N'HUANCAN', 11801)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'120120', N'JUNIN', N'HUANCAYO', N'HUASICANCHA', 370)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'120121', N'JUNIN', N'HUANCAYO', N'HUAYUCACHI', 4730)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'120122', N'JUNIN', N'HUANCAYO', N'INGENIO', 1219)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'120124', N'JUNIN', N'HUANCAYO', N'PARIAHUANCA', 2896)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'120125', N'JUNIN', N'HUANCAYO', N'PILCOMAYO', 9399)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'120126', N'JUNIN', N'HUANCAYO', N'PUCARA', 2631)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'120127', N'JUNIN', N'HUANCAYO', N'QUICHUAY', 862)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'120128', N'JUNIN', N'HUANCAYO', N'QUILCAS', 2139)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'120129', N'JUNIN', N'HUANCAYO', N'SAN AGUSTIN', 6531)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'120130', N'JUNIN', N'HUANCAYO', N'SAN JERONIMO DE TUNAN', 5499)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'120132', N'JUNIN', N'HUANCAYO', N'SAÑO', 2177)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'120133', N'JUNIN', N'HUANCAYO', N'SAPALLANGA', 6931)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'120134', N'JUNIN', N'HUANCAYO', N'SICAYA', 4052)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'120135', N'JUNIN', N'HUANCAYO', N'SANTO DOMINGO DE ACOBAMBA', 3603)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'120136', N'JUNIN', N'HUANCAYO', N'VIQUES', 1134)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'120201', N'JUNIN', N'CONCEPCIÓN', N'CONCEPCIÓN', 8392)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'120202', N'JUNIN', N'CONCEPCIÓN', N'ACO', 772)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'120203', N'JUNIN', N'CONCEPCIÓN', N'ANDAMARCA', 1997)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'120204', N'JUNIN', N'CONCEPCIÓN', N'CHAMBARA', 1385)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'120205', N'JUNIN', N'CONCEPCIÓN', N'COCHAS', 835)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'120206', N'JUNIN', N'CONCEPCIÓN', N'COMAS', 3222)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'120207', N'JUNIN', N'CONCEPCIÓN', N'HEROINAS TOLEDO', 571)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'120208', N'JUNIN', N'CONCEPCIÓN', N'MANZANARES', 716)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'120209', N'JUNIN', N'CONCEPCIÓN', N'MARISCAL CASTILLA', 753)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'120210', N'JUNIN', N'CONCEPCIÓN', N'MATAHUASI', 2812)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'120211', N'JUNIN', N'CONCEPCIÓN', N'MITO', 750)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'120212', N'JUNIN', N'CONCEPCIÓN', N'NUEVE DE JULIO', 831)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'120213', N'JUNIN', N'CONCEPCIÓN', N'ORCOTUNA', 2156)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'120214', N'JUNIN', N'CONCEPCIÓN', N'SAN JOSE DE QUERO', 2923)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'120215', N'JUNIN', N'CONCEPCIÓN', N'SANTA ROSA DE OCOPA', 1081)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'120301', N'JUNIN', N'CHANCHAMAYO', N'CHANCHAMAYO', 14680)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'120302', N'JUNIN', N'CHANCHAMAYO', N'PERENE', 40731)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'120303', N'JUNIN', N'CHANCHAMAYO', N'PICHANAQUI', 39183)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'120304', N'JUNIN', N'CHANCHAMAYO', N'SAN LUIS DE SHUARO', 4128)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'120305', N'JUNIN', N'CHANCHAMAYO', N'SAN RAMON', 15524)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'120306', N'JUNIN', N'CHANCHAMAYO', N'VITOC', 1138)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'120401', N'JUNIN', N'JAUJA', N'JAUJA', 8374)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'120402', N'JUNIN', N'JAUJA', N'ACOLLA', 3612)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'120403', N'JUNIN', N'JAUJA', N'APATA', 2029)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'120404', N'JUNIN', N'JAUJA', N'ATAURA', 614)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'120405', N'JUNIN', N'JAUJA', N'CANCHAYLLO', 865)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'120406', N'JUNIN', N'JAUJA', N'CURICACA', 872)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'120407', N'JUNIN', N'JAUJA', N'EL MANTARO', 1336)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'120408', N'JUNIN', N'JAUJA', N'HUAMALI', 927)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'120409', N'JUNIN', N'JAUJA', N'HUARIPAMPA', 433)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'120410', N'JUNIN', N'JAUJA', N'HUERTAS', 933)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'120411', N'JUNIN', N'JAUJA', N'JANJAILLO', 302)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'120412', N'JUNIN', N'JAUJA', N'JULCAN', 335)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'120413', N'JUNIN', N'JAUJA', N'LEONOR ORDOÑEZ', 767)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'120414', N'JUNIN', N'JAUJA', N'LLOCLLAPAMPA', 532)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'120415', N'JUNIN', N'JAUJA', N'MARCO', 771)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'120416', N'JUNIN', N'JAUJA', N'MASMA', 1030)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'120417', N'JUNIN', N'JAUJA', N'MASMA CHICCHE', 371)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'120418', N'JUNIN', N'JAUJA', N'MOLINOS', 715)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'120419', N'JUNIN', N'JAUJA', N'MONOBAMBA', 577)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'120420', N'JUNIN', N'JAUJA', N'MUQUI', 487)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'120421', N'JUNIN', N'JAUJA', N'MUQUIYAUYO', 1061)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'120422', N'JUNIN', N'JAUJA', N'PACA', 438)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'120423', N'JUNIN', N'JAUJA', N'PACCHA', 892)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'120424', N'JUNIN', N'JAUJA', N'PANCAN', 676)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'120425', N'JUNIN', N'JAUJA', N'PARCO', 592)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'120426', N'JUNIN', N'JAUJA', N'POMACANCHA', 843)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'120427', N'JUNIN', N'JAUJA', N'RICRAN', 743)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'120428', N'JUNIN', N'JAUJA', N'SAN LORENZO', 1289)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'120429', N'JUNIN', N'JAUJA', N'SAN PEDRO DE CHUNAN', 424)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'120430', N'JUNIN', N'JAUJA', N'SAUSA', 1596)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'120431', N'JUNIN', N'JAUJA', N'SINCOS', 2446)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'120432', N'JUNIN', N'JAUJA', N'TUNAN MARCA', 566)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'120433', N'JUNIN', N'JAUJA', N'YAULI', 630)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'120434', N'JUNIN', N'JAUJA', N'YAUYOS', 5159)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'120501', N'JUNIN', N'JUNÍN', N'JUNÍN', 5500)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'120502', N'JUNIN', N'JUNÍN', N'CARHUAMAYO', 4237)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'120503', N'JUNIN', N'JUNÍN', N'ONDORES', 1012)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'120504', N'JUNIN', N'JUNÍN', N'ULCUMAYO', 2882)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'120601', N'JUNIN', N'SATIPO', N'SATIPO', 24067)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'120602', N'JUNIN', N'SATIPO', N'COVIRIALI', 3385)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'120603', N'JUNIN', N'SATIPO', N'LLAYLLA', 3319)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'120604', N'JUNIN', N'SATIPO', N'MAZAMARI ', 37617)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'120605', N'JUNIN', N'SATIPO', N'PAMPA HERMOSA', 5783)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'120606', N'JUNIN', N'SATIPO', N'PANGOA', 31731)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'120607', N'JUNIN', N'SATIPO', N'RIO NEGRO', 16095)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'120608', N'JUNIN', N'SATIPO', N'RIO TAMBO', 30922)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'120701', N'JUNIN', N'TARMA', N'TARMA', 26311)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'120702', N'JUNIN', N'TARMA', N'ACOBAMBA', 7744)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'120703', N'JUNIN', N'TARMA', N'HUARICOLCA', 1625)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'120704', N'JUNIN', N'TARMA', N'HUASAHUASI', 8750)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'120705', N'JUNIN', N'TARMA', N'LA UNION', 1756)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'120706', N'JUNIN', N'TARMA', N'PALCA', 3063)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'120707', N'JUNIN', N'TARMA', N'PALCAMAYO', 5541)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'120708', N'JUNIN', N'TARMA', N'SAN PEDRO DE CAJAS', 2840)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'120709', N'JUNIN', N'TARMA', N'TAPO', 2934)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'120801', N'JUNIN', N'YAULI', N'LA OROYA', 8039)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'120802', N'JUNIN', N'YAULI', N'CHACAPALPA', 398)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'120803', N'JUNIN', N'YAULI', N'HUAY-HUAY', 937)
GO
print 'Processed 1100 total records'
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'120804', N'JUNIN', N'YAULI', N'MARCAPOMACOCHA', 767)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'120805', N'JUNIN', N'YAULI', N'MOROCOCHA', 2844)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'120806', N'JUNIN', N'YAULI', N'PACCHA', 959)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'120807', N'JUNIN', N'YAULI', N'SANTA BARBARA DE CARHUACAYAN', 1322)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'120808', N'JUNIN', N'YAULI', N'SANTA ROSA DE SACCO', 6336)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'120809', N'JUNIN', N'YAULI', N'SUITUCANCHA', 525)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'120810', N'JUNIN', N'YAULI', N'YAULI', 3517)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'120901', N'JUNIN', N'CHUPACA', N'CHUPACA', 12338)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'120902', N'JUNIN', N'CHUPACA', N'AHUAC', 3019)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'120903', N'JUNIN', N'CHUPACA', N'CHONGOS BAJO', 2022)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'120904', N'JUNIN', N'CHUPACA', N'HUACHAC', 2052)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'120905', N'JUNIN', N'CHUPACA', N'HUAMANCACA CHICO', 3652)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'120906', N'JUNIN', N'CHUPACA', N'SAN JUAN DE ISCOS', 1028)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'120907', N'JUNIN', N'CHUPACA', N'SAN JUAN DE JARPA', 1741)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'120908', N'JUNIN', N'CHUPACA', N'TRES DE DICIEMBRE', 1082)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'120909', N'JUNIN', N'CHUPACA', N'YANACANCHA', 1621)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'130101', N'LA LIBERTAD', N'TRUJILLO', N'TRUJILLO', 199225)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'130102', N'LA LIBERTAD', N'TRUJILLO', N'EL PORVENIR', 112665)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'130103', N'LA LIBERTAD', N'TRUJILLO', N'FLORENCIA DE MORA', 25583)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'130104', N'LA LIBERTAD', N'TRUJILLO', N'HUANCHACO', 42427)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'130105', N'LA LIBERTAD', N'TRUJILLO', N'LA ESPERANZA', 112106)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'130106', N'LA LIBERTAD', N'TRUJILLO', N'LAREDO', 21061)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'130107', N'LA LIBERTAD', N'TRUJILLO', N'MOCHE', 21029)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'130108', N'LA LIBERTAD', N'TRUJILLO', N'POROTO', 1845)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'130109', N'LA LIBERTAD', N'TRUJILLO', N'SALAVERRY', 10667)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'130110', N'LA LIBERTAD', N'TRUJILLO', N'SIMBAL', 2361)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'130111', N'LA LIBERTAD', N'TRUJILLO', N'VICTOR LARCO HERRERA', 39845)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'130201', N'LA LIBERTAD', N'ASCOPE', N'ASCOPE', 3863)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'130202', N'LA LIBERTAD', N'ASCOPE', N'CHICAMA', 8842)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'130203', N'LA LIBERTAD', N'ASCOPE', N'CHOCOPE', 5637)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'130204', N'LA LIBERTAD', N'ASCOPE', N'MAGDALENA DE CAO', 1902)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'130205', N'LA LIBERTAD', N'ASCOPE', N'PAIJAN', 14635)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'130206', N'LA LIBERTAD', N'ASCOPE', N'RAZURI', 5358)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'130207', N'LA LIBERTAD', N'ASCOPE', N'SANTIAGO DE CAO', 11709)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'130208', N'LA LIBERTAD', N'ASCOPE', N'CASA GRANDE', 18470)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'130301', N'LA LIBERTAD', N'BOLIVAR', N'BOLIVAR', 2346)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'130302', N'LA LIBERTAD', N'BOLIVAR', N'BAMBAMARCA', 1800)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'130303', N'LA LIBERTAD', N'BOLIVAR', N'CONDORMARCA', 1023)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'130304', N'LA LIBERTAD', N'BOLIVAR', N'LONGOTEA', 1177)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'130305', N'LA LIBERTAD', N'BOLIVAR', N'UCHUMARCA', 1358)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'130306', N'LA LIBERTAD', N'BOLIVAR', N'UCUNCHA', 431)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'130401', N'LA LIBERTAD', N'CHEPÉN', N'CHEPÉN', 28340)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'130402', N'LA LIBERTAD', N'CHEPÉN', N'PACANGA', 13827)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'130403', N'LA LIBERTAD', N'CHEPÉN', N'PUEBLO NUEVO', 8416)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'130501', N'LA LIBERTAD', N'JULCÁN', N'JULCÁN', 5987)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'130502', N'LA LIBERTAD', N'JULCÁN', N'CALAMARCA', 2807)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'130503', N'LA LIBERTAD', N'JULCÁN', N'CARABAMBA', 3308)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'130504', N'LA LIBERTAD', N'JULCÁN', N'HUASO', 3504)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'130601', N'LA LIBERTAD', N'OTUZCO', N'OTUZCO', 14856)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'130602', N'LA LIBERTAD', N'OTUZCO', N'AGALLPAMPA', 5188)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'130604', N'LA LIBERTAD', N'OTUZCO', N'CHARAT', 1511)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'130605', N'LA LIBERTAD', N'OTUZCO', N'HUARANCHAL', 2770)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'130606', N'LA LIBERTAD', N'OTUZCO', N'LA CUESTA', 339)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'130608', N'LA LIBERTAD', N'OTUZCO', N'MACHE', 1618)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'130610', N'LA LIBERTAD', N'OTUZCO', N'PARANDAY', 386)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'130611', N'LA LIBERTAD', N'OTUZCO', N'SALPO', 3243)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'130613', N'LA LIBERTAD', N'OTUZCO', N'SINSICAP', 4422)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'130614', N'LA LIBERTAD', N'OTUZCO', N'USQUIL', 14213)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'130701', N'LA LIBERTAD', N'PACASMAYO', N'SAN PEDRO DE LLOC', 9631)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'130702', N'LA LIBERTAD', N'PACASMAYO', N'GUADALUPE', 25738)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'130703', N'LA LIBERTAD', N'PACASMAYO', N'JEQUETEPEQUE', 2198)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'130704', N'LA LIBERTAD', N'PACASMAYO', N'PACASMAYO', 16465)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'130705', N'LA LIBERTAD', N'PACASMAYO', N'SAN JOSE', 7125)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'130801', N'LA LIBERTAD', N'PATAZ', N'TAYABAMBA', 7121)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'130802', N'LA LIBERTAD', N'PATAZ', N'BULDIBUYO', 1838)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'130803', N'LA LIBERTAD', N'PATAZ', N'CHILLIA', 6167)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'130804', N'LA LIBERTAD', N'PATAZ', N'HUANCASPATA', 2873)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'130805', N'LA LIBERTAD', N'PATAZ', N'HUAYLILLAS', 1801)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'130806', N'LA LIBERTAD', N'PATAZ', N'HUAYO', 2046)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'130807', N'LA LIBERTAD', N'PATAZ', N'ONGON', 859)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'130808', N'LA LIBERTAD', N'PATAZ', N'PARCOY', 13666)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'130809', N'LA LIBERTAD', N'PATAZ', N'PATAZ', 5281)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'130810', N'LA LIBERTAD', N'PATAZ', N'PIAS', 645)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'130811', N'LA LIBERTAD', N'PATAZ', N'SANTIAGO DE CHALLAS', 1114)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'130812', N'LA LIBERTAD', N'PATAZ', N'TAURIJA', 1358)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'130813', N'LA LIBERTAD', N'PATAZ', N'URPAY', 1260)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'130901', N'LA LIBERTAD', N'SÁNCHEZ CARRIÓN', N'HUAMACHUCO', 33521)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'130902', N'LA LIBERTAD', N'SÁNCHEZ CARRIÓN', N'CHUGAY', 8901)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'130903', N'LA LIBERTAD', N'SÁNCHEZ CARRIÓN', N'COCHORCO', 4388)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'130904', N'LA LIBERTAD', N'SÁNCHEZ CARRIÓN', N'CURGOS', 4132)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'130905', N'LA LIBERTAD', N'SÁNCHEZ CARRIÓN', N'MARCABAL', 8205)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'130906', N'LA LIBERTAD', N'SÁNCHEZ CARRIÓN', N'SANAGORAN', 7026)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'130907', N'LA LIBERTAD', N'SÁNCHEZ CARRIÓN', N'SARIN', 4519)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'130908', N'LA LIBERTAD', N'SÁNCHEZ CARRIÓN', N'SARTIMBAMBA', 6304)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'131001', N'LA LIBERTAD', N'SANTIAGO DE CHUCO', N'SANTIAGO DE CHUCO', 10275)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'131002', N'LA LIBERTAD', N'SANTIAGO DE CHUCO', N'ANGASMARCA', 4068)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'131003', N'LA LIBERTAD', N'SANTIAGO DE CHUCO', N'CACHICADAN', 4264)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'131004', N'LA LIBERTAD', N'SANTIAGO DE CHUCO', N'MOLLEBAMBA', 1189)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'131005', N'LA LIBERTAD', N'SANTIAGO DE CHUCO', N'MOLLEPATA', 1301)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'131006', N'LA LIBERTAD', N'SANTIAGO DE CHUCO', N'QUIRUVILCA', 8041)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'131007', N'LA LIBERTAD', N'SANTIAGO DE CHUCO', N'SANTA CRUZ DE CHUCA', 1571)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'131008', N'LA LIBERTAD', N'SANTIAGO DE CHUCO', N'SITABAMBA', 1510)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'131101', N'LA LIBERTAD', N'GRAN CHIMÚ', N'CASCAS', 7893)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'131102', N'LA LIBERTAD', N'GRAN CHIMÚ', N'LUCMA', 3833)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'131103', N'LA LIBERTAD', N'GRAN CHIMÚ', N'COMPIN', 1136)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'131104', N'LA LIBERTAD', N'GRAN CHIMÚ', N'SAYAPULLO', 4389)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'131201', N'LA LIBERTAD', N'VIRÚ', N'VIRÚ', 40636)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'131202', N'LA LIBERTAD', N'VIRÚ', N'CHAO', 24704)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'131203', N'LA LIBERTAD', N'VIRÚ', N'GUADALUPITO', 5554)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'140101', N'LAMBAYEQUE', N'CHICLAYO', N'CHICLAYO', 176708)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'140102', N'LAMBAYEQUE', N'CHICLAYO', N'CHONGOYAPE', 10120)
GO
print 'Processed 1200 total records'
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'140103', N'LAMBAYEQUE', N'CHICLAYO', N'ETEN', 5656)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'140104', N'LAMBAYEQUE', N'CHICLAYO', N'ETEN PUERTO', 1159)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'140105', N'LAMBAYEQUE', N'CHICLAYO', N'JOSE LEONARDO ORTIZ', 117881)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'140106', N'LAMBAYEQUE', N'CHICLAYO', N'LA VICTORIA', 53888)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'140107', N'LAMBAYEQUE', N'CHICLAYO', N'LAGUNAS   ', 5774)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'140108', N'LAMBAYEQUE', N'CHICLAYO', N'MONSEFU', 17983)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'140109', N'LAMBAYEQUE', N'CHICLAYO', N'NUEVA ARICA', 1247)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'140110', N'LAMBAYEQUE', N'CHICLAYO', N'OYOTUN', 5536)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'140111', N'LAMBAYEQUE', N'CHICLAYO', N'PICSI', 6407)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'140112', N'LAMBAYEQUE', N'CHICLAYO', N'PIMENTEL', 26572)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'140113', N'LAMBAYEQUE', N'CHICLAYO', N'REQUE', 8715)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'140114', N'LAMBAYEQUE', N'CHICLAYO', N'SANTA ROSA', 7366)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'140115', N'LAMBAYEQUE', N'CHICLAYO', N'SAÑA', 6768)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'140116', N'LAMBAYEQUE', N'CHICLAYO', N'CAYALTI', 8680)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'140117', N'LAMBAYEQUE', N'CHICLAYO', N'PATAPO', 13108)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'140118', N'LAMBAYEQUE', N'CHICLAYO', N'POMALCA', 14724)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'140119', N'LAMBAYEQUE', N'CHICLAYO', N'PUCALA', 5068)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'140120', N'LAMBAYEQUE', N'CHICLAYO', N'TUMAN', 17991)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'140201', N'LAMBAYEQUE', N'FERREÑAFE', N'FERREÑAFE', 20296)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'140202', N'LAMBAYEQUE', N'FERREÑAFE', N'CAÑARIS', 6708)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'140203', N'LAMBAYEQUE', N'FERREÑAFE', N'INCAHUASI', 7402)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'140204', N'LAMBAYEQUE', N'FERREÑAFE', N'MANUEL ANTONIO MESONES MURO', 2481)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'140205', N'LAMBAYEQUE', N'FERREÑAFE', N'PITIPO', 13134)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'140206', N'LAMBAYEQUE', N'FERREÑAFE', N'PUEBLO NUEVO', 7679)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'140301', N'LAMBAYEQUE', N'LAMBAYEQUE', N'LAMBAYEQUE', 46061)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'140302', N'LAMBAYEQUE', N'LAMBAYEQUE', N'CHOCHOPE', 568)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'140303', N'LAMBAYEQUE', N'LAMBAYEQUE', N'ILLIMO', 4849)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'140304', N'LAMBAYEQUE', N'LAMBAYEQUE', N'JAYANCA', 9472)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'140305', N'LAMBAYEQUE', N'LAMBAYEQUE', N'MOCHUMI', 10540)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'140306', N'LAMBAYEQUE', N'LAMBAYEQUE', N'MORROPE', 24186)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'140307', N'LAMBAYEQUE', N'LAMBAYEQUE', N'MOTUPE', 14544)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'140308', N'LAMBAYEQUE', N'LAMBAYEQUE', N'OLMOS', 21684)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'140309', N'LAMBAYEQUE', N'LAMBAYEQUE', N'PACORA', 3778)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'140310', N'LAMBAYEQUE', N'LAMBAYEQUE', N'SALAS', 6264)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'140311', N'LAMBAYEQUE', N'LAMBAYEQUE', N'SAN JOSE', 9269)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'140312', N'LAMBAYEQUE', N'LAMBAYEQUE', N'TUCUME', 12201)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'150101', N'LIMA', N'LIMA', N'LIMA', 161078)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'150102', N'LIMA', N'LIMA', N'ANCON', 25793)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'150103', N'LIMA', N'LIMA', N'ATE', 390838)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'150104', N'LIMA', N'LIMA', N'BARRANCO', 17019)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'150105', N'LIMA', N'LIMA', N'BREÑA', 44189)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'150106', N'LIMA', N'LIMA', N'CARABAYLLO', 180911)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'150107', N'LIMA', N'LIMA', N'CHACLACAYO', 25514)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'150108', N'LIMA', N'LIMA', N'CHORRILLOS', 199698)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'150109', N'LIMA', N'LIMA', N'CIENEGUILLA', 28273)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'150110', N'LIMA', N'LIMA', N'COMAS', 313537)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'150111', N'LIMA', N'LIMA', N'EL AGUSTINO', 117224)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'150112', N'LIMA', N'LIMA', N'INDEPENDENCIA', 130755)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'150113', N'LIMA', N'LIMA', N'JESUS MARIA', 41282)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'150114', N'LIMA', N'LIMA', N'LA MOLINA', 104444)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'150115', N'LIMA', N'LIMA', N'LA VICTORIA', 102852)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'150116', N'LIMA', N'LIMA', N'LINCE', 29355)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'150117', N'LIMA', N'LIMA', N'LOS OLIVOS', 232398)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'150118', N'LIMA', N'LIMA', N'LURIGANCHO', 131559)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'150119', N'LIMA', N'LIMA', N'LURIN', 51420)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'150120', N'LIMA', N'LIMA', N'MAGDALENA DEL MAR', 31820)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'150121', N'LIMA', N'LIMA', N'MAGDALENA VIEJA', 43695)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'150122', N'LIMA', N'LIMA', N'MIRAFLORES', 47056)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'150123', N'LIMA', N'LIMA', N'PACHACAMAC', 78893)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'150124', N'LIMA', N'LIMA', N'PUCUSANA', 9845)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'150125', N'LIMA', N'LIMA', N'PUENTE PIEDRA', 217947)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'150126', N'LIMA', N'LIMA', N'PUNTA HERMOSA', 4716)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'150127', N'LIMA', N'LIMA', N'PUNTA NEGRA', 4751)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'150128', N'LIMA', N'LIMA', N'RIMAC', 97334)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'150129', N'LIMA', N'LIMA', N'SAN BARTOLO', 4871)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'150130', N'LIMA', N'LIMA', N'SAN BORJA', 65454)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'150131', N'LIMA', N'LIMA', N'SAN ISIDRO', 30131)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'150132', N'LIMA', N'LIMA', N'SAN JUAN DE LURIGANCHO', 685021)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'150133', N'LIMA', N'LIMA', N'SAN JUAN DE MIRAFLORES', 249807)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'150134', N'LIMA', N'LIMA', N'SAN LUIS', 35275)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'150135', N'LIMA', N'LIMA', N'SAN MARTIN DE PORRES', 431666)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'150136', N'LIMA', N'LIMA', N'SAN MIGUEL', 80373)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'150137', N'LIMA', N'LIMA', N'SANTA ANITA', 143852)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'150138', N'LIMA', N'LIMA', N'SANTA MARIA DEL MAR', 1000)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'150139', N'LIMA', N'LIMA', N'SANTA ROSA', 11203)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'150140', N'LIMA', N'LIMA', N'SANTIAGO DE SURCO', 206242)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'150141', N'LIMA', N'LIMA', N'SURQUILLO', 53985)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'150142', N'LIMA', N'LIMA', N'VILLA EL SALVADOR', 282256)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'150143', N'LIMA', N'LIMA', N'VILLA MARIA DEL TRIUNFO', 271722)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'150201', N'LIMA', N'BARRANCA', N'BARRANCA', 40332)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'150202', N'LIMA', N'BARRANCA', N'PARAMONGA', 12228)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'150203', N'LIMA', N'BARRANCA', N'PATIVILCA', 10854)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'150204', N'LIMA', N'BARRANCA', N'SUPE', 12360)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'150205', N'LIMA', N'BARRANCA', N'SUPE PUERTO', 6352)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'150301', N'LIMA', N'CAJATAMBO', N'CAJATAMBO', 1056)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'150302', N'LIMA', N'CAJATAMBO', N'COPA', 359)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'150303', N'LIMA', N'CAJATAMBO', N'GORGOR', 1316)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'150304', N'LIMA', N'CAJATAMBO', N'HUANCAPON', 438)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'150305', N'LIMA', N'CAJATAMBO', N'MANAS', 472)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'150401', N'LIMA', N'CANTA', N'CANTA', 1419)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'150402', N'LIMA', N'CANTA', N'ARAHUAY', 299)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'150403', N'LIMA', N'CANTA', N'HUAMANTANGA', 653)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'150404', N'LIMA', N'CANTA', N'HUAROS', 368)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'150405', N'LIMA', N'CANTA', N'LACHAQUI', 362)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'150406', N'LIMA', N'CANTA', N'SAN BUENAVENTURA', 229)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'150407', N'LIMA', N'CANTA', N'SANTA ROSA DE QUIVES', 4562)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'150501', N'LIMA', N'CAÑETE', N'SAN VICENTE DE CAÑETE', 31434)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'150502', N'LIMA', N'CAÑETE', N'ASIA', 5345)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'150503', N'LIMA', N'CAÑETE', N'CALANGO', 1332)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'150504', N'LIMA', N'CAÑETE', N'CERRO AZUL', 4484)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'150505', N'LIMA', N'CAÑETE', N'CHILCA', 9040)
GO
print 'Processed 1300 total records'
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'150506', N'LIMA', N'CAÑETE', N'COAYLLO', 539)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'150507', N'LIMA', N'CAÑETE', N'IMPERIAL', 22247)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'150508', N'LIMA', N'CAÑETE', N'LUNAHUANA', 2368)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'150509', N'LIMA', N'CAÑETE', N'MALA', 19904)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'150510', N'LIMA', N'CAÑETE', N'NUEVO IMPERIAL', 12402)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'150511', N'LIMA', N'CAÑETE', N'PACARAN', 873)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'150512', N'LIMA', N'CAÑETE', N'QUILMANA', 8386)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'150513', N'LIMA', N'CAÑETE', N'SAN ANTONIO', 2294)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'150514', N'LIMA', N'CAÑETE', N'SAN LUIS', 7362)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'150515', N'LIMA', N'CAÑETE', N'SANTA CRUZ DE FLORES', 1523)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'150516', N'LIMA', N'CAÑETE', N'ZUÑIGA', 1127)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'150601', N'LIMA', N'HUARAL', N'HUARAL', 57840)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'150602', N'LIMA', N'HUARAL', N'ATAVILLOS ALTO', 321)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'150603', N'LIMA', N'HUARAL', N'ATAVILLOS BAJO', 577)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'150604', N'LIMA', N'HUARAL', N'AUCALLAMA', 11719)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'150605', N'LIMA', N'HUARAL', N'CHANCAY', 35489)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'150606', N'LIMA', N'HUARAL', N'IHUARI', 1216)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'150607', N'LIMA', N'HUARAL', N'LAMPIAN', 211)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'150608', N'LIMA', N'HUARAL', N'PACARAOS', 210)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'150609', N'LIMA', N'HUARAL', N'SAN MIGUEL DE ACOS', 415)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'150610', N'LIMA', N'HUARAL', N'SANTA CRUZ DE ANDAMARCA', 770)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'150611', N'LIMA', N'HUARAL', N'SUMBILCA', 442)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'150612', N'LIMA', N'HUARAL', N'VEINTISIETE DE NOVIEMBRE', 178)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'150701', N'LIMA', N'HUAROCHIRÍ', N'MATUCANA', 1916)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'150702', N'LIMA', N'HUAROCHIRÍ', N'ANTIOQUIA', 654)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'150703', N'LIMA', N'HUAROCHIRÍ', N'CALLAHUANCA', 2413)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'150704', N'LIMA', N'HUAROCHIRÍ', N'CARAMPOMA', 947)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'150705', N'LIMA', N'HUAROCHIRÍ', N'CHICLA', 5405)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'150706', N'LIMA', N'HUAROCHIRÍ', N'CUENCA', 189)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'150707', N'LIMA', N'HUAROCHIRÍ', N'HUACHUPAMPA', 1542)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'150708', N'LIMA', N'HUAROCHIRÍ', N'HUANZA', 1566)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'150709', N'LIMA', N'HUAROCHIRÍ', N'HUAROCHIRÍ', 622)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'150710', N'LIMA', N'HUAROCHIRÍ', N'LAHUAYTAMBO', 309)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'150711', N'LIMA', N'HUAROCHIRÍ', N'LANGA', 381)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'150712', N'LIMA', N'HUAROCHIRÍ', N'LARAOS', 1232)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'150713', N'LIMA', N'HUAROCHIRÍ', N'MARIATANA', 681)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'150714', N'LIMA', N'HUAROCHIRÍ', N'RICARDO PALMA', 3564)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'150715', N'LIMA', N'HUAROCHIRÍ', N'SAN ANDRES DE TUPICOCHA', 545)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'150716', N'LIMA', N'HUAROCHIRÍ', N'SAN ANTONIO', 3080)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'150717', N'LIMA', N'HUAROCHIRÍ', N'SAN BARTOLOME', 1251)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'150718', N'LIMA', N'HUAROCHIRÍ', N'SAN DAMIAN', 501)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'150719', N'LIMA', N'HUAROCHIRÍ', N'SAN JUAN DE IRIS', 983)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'150720', N'LIMA', N'HUAROCHIRÍ', N'SAN JUAN DE TANTARANCHE', 233)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'150721', N'LIMA', N'HUAROCHIRÍ', N'SAN LORENZO DE QUINTI', 747)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'150722', N'LIMA', N'HUAROCHIRÍ', N'SAN MATEO', 2925)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'150723', N'LIMA', N'HUAROCHIRÍ', N'SAN MATEO DE OTAO', 904)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'150724', N'LIMA', N'HUAROCHIRÍ', N'SAN PEDRO DE CASTA', 671)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'150725', N'LIMA', N'HUAROCHIRÍ', N'SAN PEDRO DE HUANCAYRE', 118)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'150726', N'LIMA', N'HUAROCHIRÍ', N'SANGALLAYA', 287)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'150727', N'LIMA', N'HUAROCHIRÍ', N'SANTA CRUZ DE COCACHACRA', 1455)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'150728', N'LIMA', N'HUAROCHIRÍ', N'SANTA EULALIA', 6904)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'150729', N'LIMA', N'HUAROCHIRÍ', N'SANTIAGO DE ANCHUCAYA', 246)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'150730', N'LIMA', N'HUAROCHIRÍ', N'SANTIAGO DE TUNA', 340)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'150731', N'LIMA', N'HUAROCHIRÍ', N'SANTO DOMINGO DE LOS OLLEROS', 2718)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'150732', N'LIMA', N'HUAROCHIRÍ', N'SURCO', 1108)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'150801', N'LIMA', N'HUAURA', N'HUACHO', 33517)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'150802', N'LIMA', N'HUAURA', N'AMBAR', 1348)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'150803', N'LIMA', N'HUAURA', N'CALETA DE CARQUIN', 4100)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'150804', N'LIMA', N'HUAURA', N'CHECRAS', 825)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'150805', N'LIMA', N'HUAURA', N'HUALMAY', 16302)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'150806', N'LIMA', N'HUAURA', N'HUAURA', 20683)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'150807', N'LIMA', N'HUAURA', N'LEONCIO PRADO', 1049)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'150808', N'LIMA', N'HUAURA', N'PACCHO', 1028)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'150809', N'LIMA', N'HUAURA', N'SANTA LEONOR', 705)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'150810', N'LIMA', N'HUAURA', N'SANTA MARIA', 18727)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'150811', N'LIMA', N'HUAURA', N'SAYAN', 13966)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'150812', N'LIMA', N'HUAURA', N'VEGUETA', 12465)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'150901', N'LIMA', N'OYÓN', N'OYÓN', 8097)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'150902', N'LIMA', N'OYÓN', N'ANDAJES', 484)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'150903', N'LIMA', N'OYÓN', N'CAUJUL', 531)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'150904', N'LIMA', N'OYÓN', N'COCHAMARCA', 789)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'150905', N'LIMA', N'OYÓN', N'NAVAN', 620)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'150906', N'LIMA', N'OYÓN', N'PACHANGARA', 1730)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'151001', N'LIMA', N'YAUYOS', N'YAUYOS', 1498)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'151002', N'LIMA', N'YAUYOS', N'ALIS', 1043)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'151003', N'LIMA', N'YAUYOS', N'AYAUCA', 1320)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'151004', N'LIMA', N'YAUYOS', N'AYAVIRI', 335)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'151005', N'LIMA', N'YAUYOS', N'AZANGARO', 220)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'151006', N'LIMA', N'YAUYOS', N'CACRA', 163)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'151007', N'LIMA', N'YAUYOS', N'CARANIA', 163)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'151008', N'LIMA', N'YAUYOS', N'CATAHUASI', 452)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'151009', N'LIMA', N'YAUYOS', N'CHOCOS', 506)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'151010', N'LIMA', N'YAUYOS', N'COCHAS', 187)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'151011', N'LIMA', N'YAUYOS', N'COLONIA', 569)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'151012', N'LIMA', N'YAUYOS', N'HONGOS', 163)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'151013', N'LIMA', N'YAUYOS', N'HUAMPARA', 80)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'151014', N'LIMA', N'YAUYOS', N'HUANCAYA', 824)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'151015', N'LIMA', N'YAUYOS', N'HUANGASCAR', 241)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'151016', N'LIMA', N'YAUYOS', N'HUANTAN', 455)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'151017', N'LIMA', N'YAUYOS', N'HUAÑEC', 221)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'151018', N'LIMA', N'YAUYOS', N'LARAOS', 431)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'151019', N'LIMA', N'YAUYOS', N'LINCHA', 390)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'151020', N'LIMA', N'YAUYOS', N'MADEAN', 350)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'151021', N'LIMA', N'YAUYOS', N'MIRAFLORES', 209)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'151022', N'LIMA', N'YAUYOS', N'OMAS', 286)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'151023', N'LIMA', N'YAUYOS', N'PUTINZA', 226)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'151024', N'LIMA', N'YAUYOS', N'QUINCHES', 431)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'151025', N'LIMA', N'YAUYOS', N'QUINOCAY', 296)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'151026', N'LIMA', N'YAUYOS', N'SAN JOAQUIN', 245)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'151027', N'LIMA', N'YAUYOS', N'SAN PEDRO DE PILAS', 164)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'151028', N'LIMA', N'YAUYOS', N'TANTA', 237)
GO
print 'Processed 1400 total records'
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'151029', N'LIMA', N'YAUYOS', N'TAURIPAMPA', 200)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'151030', N'LIMA', N'YAUYOS', N'TOMAS', 692)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'151031', N'LIMA', N'YAUYOS', N'TUPE', 267)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'151032', N'LIMA', N'YAUYOS', N'VIÑAC', 791)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'151033', N'LIMA', N'YAUYOS', N'VITIS', 303)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'160101', N'LORETO', N'MAYNAS', N'IQUITOS', 93018)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'160102', N'LORETO', N'MAYNAS', N'ALTO NANAY', 1489)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'160103', N'LORETO', N'MAYNAS', N'FERNANDO LORES', 10371)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'160104', N'LORETO', N'MAYNAS', N'INDIANA', 5857)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'160105', N'LORETO', N'MAYNAS', N'LAS AMAZONAS', 4942)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'160106', N'LORETO', N'MAYNAS', N'MAZAN', 7167)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'160107', N'LORETO', N'MAYNAS', N'NAPO', 8041)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'160108', N'LORETO', N'MAYNAS', N'PUNCHANA', 55131)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'160109', N'LORETO', N'MAYNAS', N'PUTUMAYO    ', 3627)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'160110', N'LORETO', N'MAYNAS', N'TORRES CAUSANA', 2720)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'160112', N'LORETO', N'MAYNAS', N'BELEN', 44499)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'160113', N'LORETO', N'MAYNAS', N'SAN JUAN BAUTISTA', 92081)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'160114', N'LORETO', N'MAYNAS', N'TENIENTE MANUEL CLAVERO', 3341)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'160201', N'LORETO', N'ALTO AMAZONAS', N'YURIMAGUAS', 40293)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'160202', N'LORETO', N'ALTO AMAZONAS', N'BALSAPUERTO', 8855)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'160205', N'LORETO', N'ALTO AMAZONAS', N'JEBEROS', 2596)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'160206', N'LORETO', N'ALTO AMAZONAS', N'LAGUNAS', 7264)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'160210', N'LORETO', N'ALTO AMAZONAS', N'SANTA CRUZ', 2174)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'160211', N'LORETO', N'ALTO AMAZONAS', N'TENIENTE CESAR LOPEZ ROJAS', 3399)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'160301', N'LORETO', N'LORETO', N'NAUTA', 15782)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'160302', N'LORETO', N'LORETO', N'PARINARI ', 3654)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'160303', N'LORETO', N'LORETO', N'TIGRE', 4229)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'160304', N'LORETO', N'LORETO', N'TROMPETEROS', 6862)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'160305', N'LORETO', N'LORETO', N'URARINAS', 7592)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'160401', N'LORETO', N'MARISCAL RAMÓN CASTILLA', N'RAMON CASTILLA', 13305)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'160402', N'LORETO', N'MARISCAL RAMÓN CASTILLA', N'PEBAS', 9150)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'160403', N'LORETO', N'MARISCAL RAMÓN CASTILLA', N'YAVARI', 8792)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'160404', N'LORETO', N'MARISCAL RAMÓN CASTILLA', N'SAN PABLO', 8452)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'160501', N'LORETO', N'REQUENA', N'REQUENA', 16246)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'160502', N'LORETO', N'REQUENA', N'ALTO TAPICHE', 1118)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'160503', N'LORETO', N'REQUENA', N'CAPELO', 2306)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'160504', N'LORETO', N'REQUENA', N'EMILIO SAN MARTIN', 3822)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'160505', N'LORETO', N'REQUENA', N'MAQUIA', 4180)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'160506', N'LORETO', N'REQUENA', N'PUINAHUA', 3156)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'160507', N'LORETO', N'REQUENA', N'SAQUENA', 2571)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'160508', N'LORETO', N'REQUENA', N'SOPLIN', 386)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'160509', N'LORETO', N'REQUENA', N'TAPICHE', 664)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'160510', N'LORETO', N'REQUENA', N'JENARO HERRERA', 2936)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'160511', N'LORETO', N'REQUENA', N'YAQUERANA    ', 1515)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'160601', N'LORETO', N'UCAYALI', N'CONTAMANA', 14986)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'160602', N'LORETO', N'UCAYALI', N'INAHUAYA', 1355)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'160603', N'LORETO', N'UCAYALI', N'PADRE MARQUEZ', 3962)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'160604', N'LORETO', N'UCAYALI', N'PAMPA HERMOSA', 5853)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'160605', N'LORETO', N'UCAYALI', N'SARAYACU', 8412)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'160606', N'LORETO', N'UCAYALI', N'VARGAS GUERRA', 4568)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'160701', N'LORETO', N'DATEM DEL MARAÑÓN', N'BARRANCA', 7030)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'160702', N'LORETO', N'DATEM DEL MARAÑÓN', N'CAHUAPANAS', 4035)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'160703', N'LORETO', N'DATEM DEL MARAÑÓN', N'MANSERICHE', 5222)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'160704', N'LORETO', N'DATEM DEL MARAÑÓN', N'MORONA', 6433)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'160705', N'LORETO', N'DATEM DEL MARAÑÓN', N'PASTAZA', 3077)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'160706', N'LORETO', N'DATEM DEL MARAÑÓN', N'ANDOAS', 6043)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'170101', N'MADRE DE DIOS', N'TAMBOPATA', N'TAMBOPATA', 47927)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'170102', N'MADRE DE DIOS', N'TAMBOPATA', N'INAMBARI ', 6834)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'170103', N'MADRE DE DIOS', N'TAMBOPATA', N'LAS PIEDRAS   ', 3228)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'170104', N'MADRE DE DIOS', N'TAMBOPATA', N'LABERINTO', 3024)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'170201', N'MADRE DE DIOS', N'MANU', N'MANU    ', 1710)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'170202', N'MADRE DE DIOS', N'MANU', N'FITZCARRALD    ', 803)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'170203', N'MADRE DE DIOS', N'MANU', N'MADRE DE DIOS    ', 9107)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'170204', N'MADRE DE DIOS', N'MANU', N'HUEPETUHE', 4226)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'170301', N'MADRE DE DIOS', N'TAHUAMANU', N'IÑAPARI', 948)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'170302', N'MADRE DE DIOS', N'TAHUAMANU', N'IBERIA', 5771)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'170303', N'MADRE DE DIOS', N'TAHUAMANU', N'TAHUAMANU', 2255)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'180101', N'MOQUEGUA', N'MARISCAL NIETO', N'MOQUEGUA', 35603)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'180102', N'MOQUEGUA', N'MARISCAL NIETO', N'CARUMAS', 3422)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'180103', N'MOQUEGUA', N'MARISCAL NIETO', N'CUCHUMBAYA', 1290)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'180104', N'MOQUEGUA', N'MARISCAL NIETO', N'SAMEGUA', 4093)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'180105', N'MOQUEGUA', N'MARISCAL NIETO', N'SAN CRISTOBAL', 2572)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'180106', N'MOQUEGUA', N'MARISCAL NIETO', N'TORATA', 3607)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'180201', N'MOQUEGUA', N'GENERAL SÁNCHEZ CERRO', N'OMATE', 2556)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'180202', N'MOQUEGUA', N'GENERAL SÁNCHEZ CERRO', N'CHOJATA', 1586)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'180203', N'MOQUEGUA', N'GENERAL SÁNCHEZ CERRO', N'COALAQUE', 586)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'180204', N'MOQUEGUA', N'GENERAL SÁNCHEZ CERRO', N'ICHUÑA', 2854)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'180205', N'MOQUEGUA', N'GENERAL SÁNCHEZ CERRO', N'LA CAPILLA', 1494)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'180206', N'MOQUEGUA', N'GENERAL SÁNCHEZ CERRO', N'LLOQUE', 1237)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'180207', N'MOQUEGUA', N'GENERAL SÁNCHEZ CERRO', N'MATALAQUE', 649)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'180208', N'MOQUEGUA', N'GENERAL SÁNCHEZ CERRO', N'PUQUINA', 1295)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'180209', N'MOQUEGUA', N'GENERAL SÁNCHEZ CERRO', N'QUINISTAQUILLAS', 827)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'180210', N'MOQUEGUA', N'GENERAL SÁNCHEZ CERRO', N'UBINAS', 2005)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'180211', N'MOQUEGUA', N'GENERAL SÁNCHEZ CERRO', N'YUNGA', 1383)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'180301', N'MOQUEGUA', N'ILO', N'ILO', 41388)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'180302', N'MOQUEGUA', N'ILO', N'EL ALGARROBAL', 179)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'180303', N'MOQUEGUA', N'ILO', N'PACOCHA', 2078)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'190101', N'PASCO', N'PASCO', N'CHAUPIMARCA', 16097)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'190102', N'PASCO', N'PASCO', N'HUACHON', 2561)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'190103', N'PASCO', N'PASCO', N'HUARIACA', 4699)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'190104', N'PASCO', N'PASCO', N'HUAYLLAY', 7478)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'190105', N'PASCO', N'PASCO', N'NINACACA', 1848)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'190106', N'PASCO', N'PASCO', N'PALLANCHACRA', 2901)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'190107', N'PASCO', N'PASCO', N'PAUCARTAMBO', 14440)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'190108', N'PASCO', N'PASCO', N'SAN FCO.DE ASIS DE YARUSYACAN', 6236)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'190109', N'PASCO', N'PASCO', N'SIMON BOLIVAR', 7345)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'190110', N'PASCO', N'PASCO', N'TICLACAYAN', 7420)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'190111', N'PASCO', N'PASCO', N'TINYAHUARCO', 3886)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'190112', N'PASCO', N'PASCO', N'VICCO', 1272)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'190113', N'PASCO', N'PASCO', N'YANACANCHA', 19306)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'190201', N'PASCO', N'DANIEL ALCIDES CARRIÓN', N'YANAHUANCA', 6772)
GO
print 'Processed 1500 total records'
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'190202', N'PASCO', N'DANIEL ALCIDES CARRIÓN', N'CHACAYAN', 2490)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'190203', N'PASCO', N'DANIEL ALCIDES CARRIÓN', N'GOYLLARISQUIZGA', 2444)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'190204', N'PASCO', N'DANIEL ALCIDES CARRIÓN', N'PAUCAR', 783)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'190205', N'PASCO', N'DANIEL ALCIDES CARRIÓN', N'SAN PEDRO DE PILLAO', 925)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'190206', N'PASCO', N'DANIEL ALCIDES CARRIÓN', N'SANTA ANA DE TUSI', 13401)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'190207', N'PASCO', N'DANIEL ALCIDES CARRIÓN', N'TAPUC', 2459)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'190208', N'PASCO', N'DANIEL ALCIDES CARRIÓN', N'VILCABAMBA', 845)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'190301', N'PASCO', N'OXAPAMPA', N'OXAPAMPA', 8273)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'190302', N'PASCO', N'OXAPAMPA', N'CHONTABAMBA', 1992)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'190303', N'PASCO', N'OXAPAMPA', N'HUANCABAMBA', 3778)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'190304', N'PASCO', N'OXAPAMPA', N'PALCAZU', 5901)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'190305', N'PASCO', N'OXAPAMPA', N'POZUZO', 4898)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'190306', N'PASCO', N'OXAPAMPA', N'PUERTO BERMUDEZ', 14790)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'190307', N'PASCO', N'OXAPAMPA', N'VILLA RICA', 11614)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'200101', N'PIURA', N'PIURA', N'PIURA', 183951)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'200104', N'PIURA', N'PIURA', N'CASTILLA', 85945)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'200105', N'PIURA', N'PIURA', N'CATACAOS', 41368)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'200107', N'PIURA', N'PIURA', N'CURA MORI', 9947)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'200108', N'PIURA', N'PIURA', N'EL TALLAN', 2563)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'200109', N'PIURA', N'PIURA', N'LA ARENA', 20542)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'200110', N'PIURA', N'PIURA', N'LA UNION', 22775)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'200111', N'PIURA', N'PIURA', N'LAS LOMAS', 15062)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'200114', N'PIURA', N'PIURA', N'TAMBO GRANDE', 67353)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'200201', N'PIURA', N'AYABACA', N'AYABACA', 18230)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'200202', N'PIURA', N'AYABACA', N'FRIAS', 11604)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'200203', N'PIURA', N'AYABACA', N'JILILI', 1447)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'200204', N'PIURA', N'AYABACA', N'LAGUNAS', 3300)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'200205', N'PIURA', N'AYABACA', N'MONTERO', 3308)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'200206', N'PIURA', N'AYABACA', N'PACAIPAMPA', 11708)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'200207', N'PIURA', N'AYABACA', N'PAIMAS', 5307)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'200208', N'PIURA', N'AYABACA', N'SAPILLICA', 5896)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'200209', N'PIURA', N'AYABACA', N'SICCHEZ', 902)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'200210', N'PIURA', N'AYABACA', N'SUYO', 6620)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'200301', N'PIURA', N'HUANCABAMBA', N'HUANCABAMBA', 15506)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'200302', N'PIURA', N'HUANCABAMBA', N'CANCHAQUE', 4251)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'200303', N'PIURA', N'HUANCABAMBA', N'EL CARMEN DE LA FRONTERA', 6999)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'200304', N'PIURA', N'HUANCABAMBA', N'HUARMACA', 19929)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'200305', N'PIURA', N'HUANCABAMBA', N'LALAQUIZ', 2332)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'200306', N'PIURA', N'HUANCABAMBA', N'SAN MIGUEL DE EL FAIQUE', 4481)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'200307', N'PIURA', N'HUANCABAMBA', N'SONDOR', 4039)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'200308', N'PIURA', N'HUANCABAMBA', N'SONDORILLO', 5360)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'200401', N'PIURA', N'MORROPÓN', N'CHULUCANAS', 42532)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'200402', N'PIURA', N'MORROPÓN', N'BUENOS AIRES', 4278)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'200403', N'PIURA', N'MORROPÓN', N'CHALACO', 4327)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'200404', N'PIURA', N'MORROPÓN', N'LA MATANZA', 7015)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'200405', N'PIURA', N'MORROPÓN', N'MORROPÓN', 7823)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'200406', N'PIURA', N'MORROPÓN', N'SALITRAL', 4554)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'200407', N'PIURA', N'MORROPÓN', N'SAN JUAN DE BIGOTE', 3454)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'200408', N'PIURA', N'MORROPÓN', N'SANTA CATALINA DE MOSSA', 2053)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'200409', N'PIURA', N'MORROPÓN', N'SANTO DOMINGO', 3495)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'200410', N'PIURA', N'MORROPÓN', N'YAMANGO', 4715)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'200501', N'PIURA', N'PAITA', N'PAITA', 55452)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'200502', N'PIURA', N'PAITA', N'AMOTAPE', 1324)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'200503', N'PIURA', N'PAITA', N'ARENAL', 556)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'200504', N'PIURA', N'PAITA', N'COLAN', 7024)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'200505', N'PIURA', N'PAITA', N'LA HUACA', 6888)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'200506', N'PIURA', N'PAITA', N'TAMARINDO', 2528)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'200507', N'PIURA', N'PAITA', N'VICHAYAL', 2525)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'200601', N'PIURA', N'SULLANA', N'SULLANA', 104238)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'200602', N'PIURA', N'SULLANA', N'BELLAVISTA', 22506)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'200603', N'PIURA', N'SULLANA', N'IGNACIO ESCUDERO', 11709)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'200604', N'PIURA', N'SULLANA', N'LANCONES', 7279)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'200605', N'PIURA', N'SULLANA', N'MARCAVELICA', 17299)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'200606', N'PIURA', N'SULLANA', N'MIGUEL CHECA', 5033)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'200607', N'PIURA', N'SULLANA', N'QUERECOTILLO', 15193)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'200608', N'PIURA', N'SULLANA', N'SALITRAL', 3983)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'200701', N'PIURA', N'TALARA', N'PARIÑAS', 53722)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'200702', N'PIURA', N'TALARA', N'EL ALTO', 4262)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'200703', N'PIURA', N'TALARA', N'LA BREA', 7057)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'200704', N'PIURA', N'TALARA', N'LOBITOS', 1103)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'200705', N'PIURA', N'TALARA', N'LOS ORGANOS', 5756)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'200706', N'PIURA', N'TALARA', N'MANCORA', 7938)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'200801', N'PIURA', N'SECHURA', N'SECHURA', 24882)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'200802', N'PIURA', N'SECHURA', N'BELLAVISTA DE LA UNION', 2505)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'200803', N'PIURA', N'SECHURA', N'BERNAL', 4064)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'200804', N'PIURA', N'SECHURA', N'CRISTO NOS VALGA', 2153)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'200805', N'PIURA', N'SECHURA', N'VICE', 7582)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'200806', N'PIURA', N'SECHURA', N'RINCONADA LLICUAR', 1801)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'210101', N'PUNO', N'PUNO', N'PUNO', 88091)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'210102', N'PUNO', N'PUNO', N'ACORA', 14547)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'210103', N'PUNO', N'PUNO', N'AMANTANI', 2271)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'210104', N'PUNO', N'PUNO', N'ATUNCOLLA', 2953)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'210105', N'PUNO', N'PUNO', N'CAPACHICA', 5620)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'210106', N'PUNO', N'PUNO', N'CHUCUITO', 3376)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'210107', N'PUNO', N'PUNO', N'COATA', 4292)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'210108', N'PUNO', N'PUNO', N'HUATA', 5870)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'210109', N'PUNO', N'PUNO', N'MAÑAZO', 2692)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'210110', N'PUNO', N'PUNO', N'PAUCARCOLLA', 2544)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'210111', N'PUNO', N'PUNO', N'PICHACANI', 2734)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'210112', N'PUNO', N'PUNO', N'PLATERIA', 3758)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'210113', N'PUNO', N'PUNO', N'SAN ANTONIO', 2197)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'210114', N'PUNO', N'PUNO', N'TIQUILLACA', 791)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'210115', N'PUNO', N'PUNO', N'VILQUE', 1710)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'210201', N'PUNO', N'AZÁNGARO', N'AZÁNGARO', 14704)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'210202', N'PUNO', N'AZÁNGARO', N'ACHAYA', 2262)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'210203', N'PUNO', N'AZÁNGARO', N'ARAPA', 3453)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'210204', N'PUNO', N'AZÁNGARO', N'ASILLO', 8564)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'210205', N'PUNO', N'AZÁNGARO', N'CAMINACA', 1678)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'210206', N'PUNO', N'AZÁNGARO', N'CHUPA', 7441)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'210207', N'PUNO', N'AZÁNGARO', N'JOSE DOMINGO CHOQUEHUANCA', 2976)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'210208', N'PUNO', N'AZÁNGARO', N'MUÑANI', 4013)
GO
print 'Processed 1600 total records'
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'210209', N'PUNO', N'AZÁNGARO', N'POTONI', 3456)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'210210', N'PUNO', N'AZÁNGARO', N'SAMAN', 7486)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'210211', N'PUNO', N'AZÁNGARO', N'SAN ANTON', 5288)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'210212', N'PUNO', N'AZÁNGARO', N'SAN JOSE', 2672)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'210213', N'PUNO', N'AZÁNGARO', N'SAN JUAN DE SALINAS', 2096)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'210214', N'PUNO', N'AZÁNGARO', N'SANTIAGO DE PUPUJA', 2541)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'210215', N'PUNO', N'AZÁNGARO', N'TIRAPATA', 1470)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'210301', N'PUNO', N'CARABAYA', N'MACUSANI', 6483)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'210302', N'PUNO', N'CARABAYA', N'AJOYANI', 1038)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'210303', N'PUNO', N'CARABAYA', N'AYAPATA', 6501)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'210304', N'PUNO', N'CARABAYA', N'COASA', 9057)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'210305', N'PUNO', N'CARABAYA', N'CORANI', 1854)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'210306', N'PUNO', N'CARABAYA', N'CRUCERO', 4719)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'210307', N'PUNO', N'CARABAYA', N'ITUATA', 3461)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'210308', N'PUNO', N'CARABAYA', N'OLLACHEA', 2670)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'210309', N'PUNO', N'CARABAYA', N'SAN GABAN', 2450)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'210310', N'PUNO', N'CARABAYA', N'USICAYOS', 13014)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'210401', N'PUNO', N'CHUCUITO', N'JULI', 11329)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'210402', N'PUNO', N'CHUCUITO', N'DESAGUADERO', 18794)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'210403', N'PUNO', N'CHUCUITO', N'HUACULLANI', 13096)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'210404', N'PUNO', N'CHUCUITO', N'KELLUYO', 15098)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'210405', N'PUNO', N'CHUCUITO', N'PISACOMA', 7972)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'210406', N'PUNO', N'CHUCUITO', N'POMATA', 8140)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'210407', N'PUNO', N'CHUCUITO', N'ZEPITA', 9244)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'210501', N'PUNO', N'EL COLLAO', N'ILAVE', 32532)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'210502', N'PUNO', N'EL COLLAO', N'CAPAZO', 1399)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'210503', N'PUNO', N'EL COLLAO', N'PILCUYO', 6299)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'210504', N'PUNO', N'EL COLLAO', N'SANTA ROSA', 4482)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'210505', N'PUNO', N'EL COLLAO', N'CONDURIRI', 2358)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'210601', N'PUNO', N'HUANCANÉ', N'HUANCANÉ', 8953)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'210602', N'PUNO', N'HUANCANÉ', N'COJATA', 2221)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'210603', N'PUNO', N'HUANCANÉ', N'HUATASANI', 2905)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'210604', N'PUNO', N'HUANCANÉ', N'INCHUPALLA', 1564)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'210605', N'PUNO', N'HUANCANÉ', N'PUSI', 3162)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'210606', N'PUNO', N'HUANCANÉ', N'ROSASPATA', 2215)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'210607', N'PUNO', N'HUANCANÉ', N'TARACO', 7271)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'210608', N'PUNO', N'HUANCANÉ', N'VILQUE CHICO', 3415)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'210701', N'PUNO', N'LAMPA', N'LAMPA', 5415)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'210702', N'PUNO', N'LAMPA', N'CABANILLA', 2676)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'210703', N'PUNO', N'LAMPA', N'CALAPUJA', 734)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'210704', N'PUNO', N'LAMPA', N'NICASIO', 1320)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'210705', N'PUNO', N'LAMPA', N'OCUVIRI', 1847)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'210706', N'PUNO', N'LAMPA', N'PALCA', 1730)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'210707', N'PUNO', N'LAMPA', N'PARATIA', 5672)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'210708', N'PUNO', N'LAMPA', N'PUCARA', 2717)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'210709', N'PUNO', N'LAMPA', N'SANTA LUCIA', 4052)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'210710', N'PUNO', N'LAMPA', N'VILAVILA', 2520)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'210801', N'PUNO', N'MELGAR', N'AYAVIRI', 12444)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'210802', N'PUNO', N'MELGAR', N'ANTAUTA', 2495)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'210803', N'PUNO', N'MELGAR', N'CUPI', 1696)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'210804', N'PUNO', N'MELGAR', N'LLALLI', 2586)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'210805', N'PUNO', N'MELGAR', N'MACARI', 4310)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'210806', N'PUNO', N'MELGAR', N'NUÑOA', 5450)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'210807', N'PUNO', N'MELGAR', N'ORURILLO', 5217)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'210808', N'PUNO', N'MELGAR', N'SANTA ROSA', 3720)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'210809', N'PUNO', N'MELGAR', N'UMACHIRI', 2285)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'210901', N'PUNO', N'MOHO', N'MOHO', 7139)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'210902', N'PUNO', N'MOHO', N'CONIMA', 1347)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'210903', N'PUNO', N'MOHO', N'HUAYRAPATA', 2105)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'210904', N'PUNO', N'MOHO', N'TILALI', 1275)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'211001', N'PUNO', N'SAN ANTONIO DE PUTINA', N'PUTINA', 15209)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'211002', N'PUNO', N'SAN ANTONIO DE PUTINA', N'ANANEA', 22755)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'211003', N'PUNO', N'SAN ANTONIO DE PUTINA', N'PEDRO VILCA APAZA', 1422)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'211004', N'PUNO', N'SAN ANTONIO DE PUTINA', N'QUILCAPUNCU', 2949)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'211005', N'PUNO', N'SAN ANTONIO DE PUTINA', N'SINA', 915)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'211101', N'PUNO', N'SAN ROMÁN', N'JULIACA', 171530)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'211102', N'PUNO', N'SAN ROMÁN', N'CABANA', 2094)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'211103', N'PUNO', N'SAN ROMÁN', N'CABANILLAS', 2896)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'211104', N'PUNO', N'SAN ROMÁN', N'CARACOTO', 2738)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'211201', N'PUNO', N'SANDIA', N'SANDIA', 6088)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'211202', N'PUNO', N'SANDIA', N'CUYOCUYO', 2278)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'211203', N'PUNO', N'SANDIA', N'LIMBANI', 2587)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'211204', N'PUNO', N'SANDIA', N'PATAMBUCO', 1784)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'211205', N'PUNO', N'SANDIA', N'PHARA', 2740)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'211206', N'PUNO', N'SANDIA', N'QUIACA', 1273)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'211207', N'PUNO', N'SANDIA', N'SAN JUAN DEL ORO', 8014)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'211208', N'PUNO', N'SANDIA', N'YANAHUAYA', 1267)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'211209', N'PUNO', N'SANDIA', N'ALTO INAMBARI', 5253)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'211210', N'PUNO', N'SANDIA', N'SAN PEDRO DE PUTINA PUNCO', 8427)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'211301', N'PUNO', N'YUNGUYO', N'YUNGUYO', 13946)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'211302', N'PUNO', N'YUNGUYO', N'ANAPIA', 2045)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'211303', N'PUNO', N'YUNGUYO', N'COPANI', 2290)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'211304', N'PUNO', N'YUNGUYO', N'CUTURAPI', 567)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'211305', N'PUNO', N'YUNGUYO', N'OLLARAYA', 2930)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'211306', N'PUNO', N'YUNGUYO', N'TINICACHI', 968)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'211307', N'PUNO', N'YUNGUYO', N'UNICACHI', 2356)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'220101', N'SAN MARTIN', N'MOYOBAMBA', N'MOYOBAMBA', 49625)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'220102', N'SAN MARTIN', N'MOYOBAMBA', N'CALZADA', 2510)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'220103', N'SAN MARTIN', N'MOYOBAMBA', N'HABANA', 1133)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'220104', N'SAN MARTIN', N'MOYOBAMBA', N'JEPELACIO', 12041)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'220105', N'SAN MARTIN', N'MOYOBAMBA', N'SORITOR', 19090)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'220106', N'SAN MARTIN', N'MOYOBAMBA', N'YANTALO', 1878)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'220201', N'SAN MARTIN', N'BELLAVISTA', N'BELLAVISTA', 8056)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'220202', N'SAN MARTIN', N'BELLAVISTA', N'ALTO BIAVO', 3962)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'220203', N'SAN MARTIN', N'BELLAVISTA', N'BAJO BIAVO', 11152)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'220204', N'SAN MARTIN', N'BELLAVISTA', N'HUALLAGA', 1702)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'220205', N'SAN MARTIN', N'BELLAVISTA', N'SAN PABLO', 5259)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'220206', N'SAN MARTIN', N'BELLAVISTA', N'SAN RAFAEL', 4365)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'220301', N'SAN MARTIN', N'EL DORADO', N'SAN JOSE DE SISA', 6727)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'220302', N'SAN MARTIN', N'EL DORADO', N'AGUA BLANCA', 1308)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'220303', N'SAN MARTIN', N'EL DORADO', N'SAN MARTÍN', 7221)
GO
print 'Processed 1700 total records'
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'220304', N'SAN MARTIN', N'EL DORADO', N'SANTA ROSA', 5690)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'220305', N'SAN MARTIN', N'EL DORADO', N'SHATOJA', 1736)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'220401', N'SAN MARTIN', N'HUALLAGA', N'SAPOSOA', 6615)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'220402', N'SAN MARTIN', N'HUALLAGA', N'ALTO SAPOSOA', 1836)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'220403', N'SAN MARTIN', N'HUALLAGA', N'EL ESLABON', 2250)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'220404', N'SAN MARTIN', N'HUALLAGA', N'PISCOYACU', 2240)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'220405', N'SAN MARTIN', N'HUALLAGA', N'SACANCHE', 1406)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'220406', N'SAN MARTIN', N'HUALLAGA', N'TINGO DE SAPOSOA', 387)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'220501', N'SAN MARTIN', N'LAMAS', N'LAMAS', 7349)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'220502', N'SAN MARTIN', N'LAMAS', N'ALONSO DE ALVARADO', 10860)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'220503', N'SAN MARTIN', N'LAMAS', N'BARRANQUITA', 2876)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'220504', N'SAN MARTIN', N'LAMAS', N'CAYNARACHI', 4449)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'220505', N'SAN MARTIN', N'LAMAS', N'CUÑUMBUQUI', 2742)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'220506', N'SAN MARTIN', N'LAMAS', N'PINTO RECODO', 5968)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'220507', N'SAN MARTIN', N'LAMAS', N'RUMISAPA', 1418)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'220508', N'SAN MARTIN', N'LAMAS', N'SAN ROQUE DE CUMBAZA', 826)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'220509', N'SAN MARTIN', N'LAMAS', N'SHANAO', 2004)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'220510', N'SAN MARTIN', N'LAMAS', N'TABALOSOS', 7549)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'220511', N'SAN MARTIN', N'LAMAS', N'ZAPATERO', 2745)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'220601', N'SAN MARTIN', N'MARISCAL CÁCERES', N'JUANJUI', 16028)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'220602', N'SAN MARTIN', N'MARISCAL CÁCERES', N'CAMPANILLA', 4521)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'220603', N'SAN MARTIN', N'MARISCAL CÁCERES', N'HUICUNGO', 3681)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'220604', N'SAN MARTIN', N'MARISCAL CÁCERES', N'PACHIZA', 2347)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'220605', N'SAN MARTIN', N'MARISCAL CÁCERES', N'PAJARILLO', 3399)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'220701', N'SAN MARTIN', N'PICOTA', N'PICOTA', 4906)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'220702', N'SAN MARTIN', N'PICOTA', N'BUENOS AIRES', 1783)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'220703', N'SAN MARTIN', N'PICOTA', N'CASPISAPA', 1176)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'220704', N'SAN MARTIN', N'PICOTA', N'PILLUANA', 383)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'220705', N'SAN MARTIN', N'PICOTA', N'PUCACACA', 1444)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'220706', N'SAN MARTIN', N'PICOTA', N'SAN CRISTOBAL', 779)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'220707', N'SAN MARTIN', N'PICOTA', N'SAN HILARION', 3369)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'220708', N'SAN MARTIN', N'PICOTA', N'SHAMBOYACU', 6388)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'220709', N'SAN MARTIN', N'PICOTA', N'TINGO DE PONASA', 2742)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'220710', N'SAN MARTIN', N'PICOTA', N'TRES UNIDOS', 2916)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'220801', N'SAN MARTIN', N'RIOJA', N'RIOJA', 14278)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'220802', N'SAN MARTIN', N'RIOJA', N'AWAJUN', 6482)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'220803', N'SAN MARTIN', N'RIOJA', N'ELIAS SOPLIN VARGAS', 6805)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'220804', N'SAN MARTIN', N'RIOJA', N'NUEVA CAJAMARCA', 26777)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'220805', N'SAN MARTIN', N'RIOJA', N'PARDO MIGUEL', 12566)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'220806', N'SAN MARTIN', N'RIOJA', N'POSIC', 950)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'220807', N'SAN MARTIN', N'RIOJA', N'SAN FERNANDO', 1975)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'220808', N'SAN MARTIN', N'RIOJA', N'YORONGOS', 2124)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'220809', N'SAN MARTIN', N'RIOJA', N'YURACYACU', 2331)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'220901', N'SAN MARTIN', N'SAN MARTÍN', N'TARAPOTO', 47735)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'220902', N'SAN MARTIN', N'SAN MARTÍN', N'ALBERTO LEVEAU', 378)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'220903', N'SAN MARTIN', N'SAN MARTÍN', N'CACATACHI', 2082)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'220904', N'SAN MARTIN', N'SAN MARTÍN', N'CHAZUTA', 4164)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'220905', N'SAN MARTIN', N'SAN MARTÍN', N'CHIPURANA', 995)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'220906', N'SAN MARTIN', N'SAN MARTÍN', N'EL PORVENIR', 1441)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'220907', N'SAN MARTIN', N'SAN MARTÍN', N'HUIMBAYOC', 1820)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'220908', N'SAN MARTIN', N'SAN MARTÍN', N'JUAN GUERRA', 1891)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'220909', N'SAN MARTIN', N'SAN MARTÍN', N'LA BANDA DE SHILCAYO', 26080)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'220910', N'SAN MARTIN', N'SAN MARTÍN', N'MORALES', 19145)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'220911', N'SAN MARTIN', N'SAN MARTÍN', N'PAPAPLAYA', 1039)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'220912', N'SAN MARTIN', N'SAN MARTÍN', N'SAN ANTONIO', 778)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'220913', N'SAN MARTIN', N'SAN MARTÍN', N'SAUCE', 9668)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'220914', N'SAN MARTIN', N'SAN MARTÍN', N'SHAPAJA', 842)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'221001', N'SAN MARTIN', N'TOCACHE', N'TOCACHE', 15683)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'221002', N'SAN MARTIN', N'TOCACHE', N'NUEVO PROGRESO', 7148)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'221003', N'SAN MARTIN', N'TOCACHE', N'POLVORA', 8335)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'221004', N'SAN MARTIN', N'TOCACHE', N'SHUNTE', 590)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'221005', N'SAN MARTIN', N'TOCACHE', N'UCHIZA', 13487)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'230101', N'TACNA', N'TACNA', N'TACNA', 51543)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'230102', N'TACNA', N'TACNA', N'ALTO DE LA ALIANZA', 24588)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'230103', N'TACNA', N'TACNA', N'CALANA', 1839)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'230104', N'TACNA', N'TACNA', N'CIUDAD NUEVA', 24071)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'230105', N'TACNA', N'TACNA', N'INCLAN', 4429)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'230106', N'TACNA', N'TACNA', N'PACHIA', 1125)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'230107', N'TACNA', N'TACNA', N'PALCA', 959)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'230108', N'TACNA', N'TACNA', N'POCOLLAY', 13115)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'230109', N'TACNA', N'TACNA', N'SAMA', 1478)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'230110', N'TACNA', N'TACNA', N'CORONEL GREGORIO ALBARRACIN LANCHIPA', 73510)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'230201', N'TACNA', N'CANDARAVE', N'CANDARAVE', 1650)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'230202', N'TACNA', N'CANDARAVE', N'CAIRANI', 733)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'230203', N'TACNA', N'CANDARAVE', N'CAMILACA', 907)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'230204', N'TACNA', N'CANDARAVE', N'CURIBAYA', 108)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'230205', N'TACNA', N'CANDARAVE', N'HUANUARA', 490)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'230206', N'TACNA', N'CANDARAVE', N'QUILAHUANI', 655)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'230301', N'TACNA', N'JORGE BASADRE', N'LOCUMBA', 1652)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'230302', N'TACNA', N'JORGE BASADRE', N'ILABAYA', 1920)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'230303', N'TACNA', N'JORGE BASADRE', N'ITE', 2412)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'230401', N'TACNA', N'TARATA', N'TARATA', 1760)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'230402', N'TACNA', N'TARATA', N'CHUCATAMANI', 339)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'230403', N'TACNA', N'TARATA', N'ESTIQUE', 398)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'230404', N'TACNA', N'TARATA', N'ESTIQUE-PAMPA', 385)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'230405', N'TACNA', N'TARATA', N'SITAJARA', 376)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'230406', N'TACNA', N'TARATA', N'SUSAPAYA', 395)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'230407', N'TACNA', N'TARATA', N'TARUCACHI', 221)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'230408', N'TACNA', N'TARATA', N'TICACO', 293)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'240101', N'TUMBES', N'TUMBES', N'TUMBES', 70575)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'240102', N'TUMBES', N'TUMBES', N'CORRALES', 15112)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'240103', N'TUMBES', N'TUMBES', N'LA CRUZ', 5884)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'240104', N'TUMBES', N'TUMBES', N'PAMPAS DE HOSPITAL', 4246)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'240105', N'TUMBES', N'TUMBES', N'SAN JACINTO', 5250)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'240106', N'TUMBES', N'TUMBES', N'SAN JUAN DE LA VIRGEN', 2544)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'240201', N'TUMBES', N'CONTRALMIRANTE VILLAR', N'ZORRITOS', 7564)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'240202', N'TUMBES', N'CONTRALMIRANTE VILLAR', N'CASITAS', 1186)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'240203', N'TUMBES', N'CONTRALMIRANTE VILLAR', N'CANOAS DE PUNTA SAL', 3403)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'240301', N'TUMBES', N'ZARUMILLA', N'ZARUMILLA', 14450)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'240302', N'TUMBES', N'ZARUMILLA', N'AGUAS VERDES', 15044)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'240303', N'TUMBES', N'ZARUMILLA', N'MATAPALO', 1400)
GO
print 'Processed 1800 total records'
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'240304', N'TUMBES', N'ZARUMILLA', N'PAPAYAL', 3304)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'250101', N'UCAYALI', N'CORONEL PORTILLO', N'CALLERIA', 93510)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'250102', N'UCAYALI', N'CORONEL PORTILLO', N'CAMPOVERDE', 9019)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'250103', N'UCAYALI', N'CORONEL PORTILLO', N'IPARIA', 6159)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'250104', N'UCAYALI', N'CORONEL PORTILLO', N'MASISEA', 6642)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'250105', N'UCAYALI', N'CORONEL PORTILLO', N'YARINACOCHA', 57938)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'250106', N'UCAYALI', N'CORONEL PORTILLO', N'NUEVA REQUENA', 2995)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'250107', N'UCAYALI', N'CORONEL PORTILLO', N'MANANTAY', 45992)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'250201', N'UCAYALI', N'ATALAYA', N'RAYMONDI', 18303)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'250202', N'UCAYALI', N'ATALAYA', N'SEPAHUA', 4704)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'250203', N'UCAYALI', N'ATALAYA', N'TAHUANIA', 4029)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'250204', N'UCAYALI', N'ATALAYA', N'YURUA', 1341)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'250301', N'UCAYALI', N'PADRE ABAD', N'PADRE ABAD', 16415)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'250302', N'UCAYALI', N'PADRE ABAD', N'IRAZOLA', 14914)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'250303', N'UCAYALI', N'PADRE ABAD', N'CURIMANA', 4905)
INSERT [dbo].[tb_ubigeo] ([codubigeo], [departamento], [provincia], [distrito], [poblacion]) VALUES (N'250401', N'UCAYALI', N'PURÚS', N'PURÚS', 2520)
/****** Object:  Table [dbo].[tb_postulante]    Script Date: 02/23/2019 12:03:59 ******/
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
SET IDENTITY_INSERT [dbo].[tb_postulante] ON
INSERT [dbo].[tb_postulante] ([codpostulante], [nompostulante], [apepostulante], [fchpostulante], [docpostulante], [corpostulante], [obspostulante], [estpostulante], [fchregistro]) VALUES (1, N'NOMPOS1', N'APAPOS1 AMAPOS1', CAST(0x0000806800000000 AS DateTime), N'10872524120', N'pos1@gmail.com', N'', N'ACT', CAST(0x0000A9E800000000 AS DateTime))
INSERT [dbo].[tb_postulante] ([codpostulante], [nompostulante], [apepostulante], [fchpostulante], [docpostulante], [corpostulante], [obspostulante], [estpostulante], [fchregistro]) VALUES (2, N'NOMPOS2', N'APAPOS2 AMAPOS2', CAST(0x0000806800000000 AS DateTime), N'10752124990', N'pos2@gmail.com', N'', N'ACT', CAST(0x0000A9E800000000 AS DateTime))
INSERT [dbo].[tb_postulante] ([codpostulante], [nompostulante], [apepostulante], [fchpostulante], [docpostulante], [corpostulante], [obspostulante], [estpostulante], [fchregistro]) VALUES (3, N'NOMPOS3', N'APAPOS3 AMAPOS3', CAST(0x0000806800000000 AS DateTime), N'10878765130', N'pos3@gmail.com', N'', N'ACT', CAST(0x0000A9E800000000 AS DateTime))
INSERT [dbo].[tb_postulante] ([codpostulante], [nompostulante], [apepostulante], [fchpostulante], [docpostulante], [corpostulante], [obspostulante], [estpostulante], [fchregistro]) VALUES (4, N'NOMPOS4', N'APAPOS4 AMAPOS4', CAST(0x0000806800000000 AS DateTime), N'10432165130', N'pos4@gmail.com', N'', N'ACT', CAST(0x0000A9E800000000 AS DateTime))
INSERT [dbo].[tb_postulante] ([codpostulante], [nompostulante], [apepostulante], [fchpostulante], [docpostulante], [corpostulante], [obspostulante], [estpostulante], [fchregistro]) VALUES (5, N'NOMPOS5', N'APAPOS5 AMAPOS5', CAST(0x0000806800000000 AS DateTime), N'10877655130', N'pos5@gmail.com', N'', N'ACT', CAST(0x0000A9E800000000 AS DateTime))
SET IDENTITY_INSERT [dbo].[tb_postulante] OFF
/****** Object:  StoredProcedure [dbo].[sp_tb_ubigeo_pro]    Script Date: 02/23/2019 12:04:00 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_tb_ubigeo_dis]    Script Date: 02/23/2019 12:04:00 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_tb_ubigeo_dep]    Script Date: 02/23/2019 12:04:00 ******/
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
/****** Object:  Table [dbo].[tb_et]    Script Date: 02/23/2019 12:03:59 ******/
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
SET IDENTITY_INSERT [dbo].[tb_et] ON
INSERT [dbo].[tb_et] ([codet], [codpostulante], [codusuario], [nomet], [apeet], [estet], [fchregistro]) VALUES (1, 1, 1, N'NOMPOS1', N'APAPOS1 AMAPOS1', N'ACT', N'2019-02-02')
INSERT [dbo].[tb_et] ([codet], [codpostulante], [codusuario], [nomet], [apeet], [estet], [fchregistro]) VALUES (2, 2, 2, N'NOMPOS2', N'APAPOS2 AMAPOS2', N'ACT', N'2019-02-02')
INSERT [dbo].[tb_et] ([codet], [codpostulante], [codusuario], [nomet], [apeet], [estet], [fchregistro]) VALUES (3, 3, 3, N'NOMPOS3', N'APAPOS3 AMAPOS3', N'ACT', N'2019-02-02')
INSERT [dbo].[tb_et] ([codet], [codpostulante], [codusuario], [nomet], [apeet], [estet], [fchregistro]) VALUES (4, 4, 4, N'NOMPOS4', N'APAPOS4 AMAPOS4', N'ACT', N'2019-02-02')
INSERT [dbo].[tb_et] ([codet], [codpostulante], [codusuario], [nomet], [apeet], [estet], [fchregistro]) VALUES (5, 5, 5, N'NOMPOS5', N'APAPOS5 AMAPOS5', N'ACT', N'2019-02-02')
SET IDENTITY_INSERT [dbo].[tb_et] OFF
/****** Object:  Table [dbo].[tb_competencia]    Script Date: 02/23/2019 12:03:59 ******/
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
/****** Object:  Table [dbo].[tb_zona]    Script Date: 02/23/2019 12:03:59 ******/
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
SET IDENTITY_INSERT [dbo].[tb_zona] ON
INSERT [dbo].[tb_zona] ([codzona], [codubigeo], [dsczona], [estzona], [fchregistro]) VALUES (1, N'150101', N'CAMPO DE MARTE', N'0', CAST(0x0000A9F600FD8490 AS DateTime))
INSERT [dbo].[tb_zona] ([codzona], [codubigeo], [dsczona], [estzona], [fchregistro]) VALUES (2, N'150101', N'CENTRO CIVICO', N'0', CAST(0x0000A9F600FD8490 AS DateTime))
INSERT [dbo].[tb_zona] ([codzona], [codubigeo], [dsczona], [estzona], [fchregistro]) VALUES (3, N'150101', N'SANTA BEATRIZ', N'0', CAST(0x0000A9F600FD8490 AS DateTime))
INSERT [dbo].[tb_zona] ([codzona], [codubigeo], [dsczona], [estzona], [fchregistro]) VALUES (4, N'150136', N'ZONA LIMA-SAN MIGUEL', N'0', CAST(0x0000A9F80113455C AS DateTime))
INSERT [dbo].[tb_zona] ([codzona], [codubigeo], [dsczona], [estzona], [fchregistro]) VALUES (13, N'020108', N'qfwfqwfwqfqwfwq', N'0', CAST(0x0000A9F9012C79E0 AS DateTime))
INSERT [dbo].[tb_zona] ([codzona], [codubigeo], [dsczona], [estzona], [fchregistro]) VALUES (14, N'050107', N'21f21', N'0', CAST(0x0000A9F9012D0680 AS DateTime))
INSERT [dbo].[tb_zona] ([codzona], [codubigeo], [dsczona], [estzona], [fchregistro]) VALUES (15, N'150105', N'Prueba de zona', N'0', CAST(0x0000A9F9012D0680 AS DateTime))
INSERT [dbo].[tb_zona] ([codzona], [codubigeo], [dsczona], [estzona], [fchregistro]) VALUES (16, N'150122', N'Prueba hoy 23', N'0', CAST(0x0000A9FD00BE5690 AS DateTime))
SET IDENTITY_INSERT [dbo].[tb_zona] OFF
/****** Object:  Table [dbo].[tb_zona_det]    Script Date: 02/23/2019 12:03:59 ******/
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
SET IDENTITY_INSERT [dbo].[tb_zona_det] ON
INSERT [dbo].[tb_zona_det] ([codzonadet], [codzona], [orden], [lat], [lon]) VALUES (1, 1, 1, N'-77.0441528913752', N'-12.0651926335749')
INSERT [dbo].[tb_zona_det] ([codzonadet], [codzona], [orden], [lat], [lon]) VALUES (2, 1, 2, N'-77.0418640732341', N'-12.0649408292879')
INSERT [dbo].[tb_zona_det] ([codzonadet], [codzona], [orden], [lat], [lon]) VALUES (3, 1, 3, N'-77.0398041367106', N'-12.0646610462558')
INSERT [dbo].[tb_zona_det] ([codzonadet], [codzona], [orden], [lat], [lon]) VALUES (4, 1, 4, N'-77.0394178986125', N'-12.0648149270556')
INSERT [dbo].[tb_zona_det] ([codzonadet], [codzona], [orden], [lat], [lon]) VALUES (5, 1, 5, N'-77.0392462372355', N'-12.0651366769804')
INSERT [dbo].[tb_zona_det] ([codzonadet], [codzona], [orden], [lat], [lon]) VALUES (6, 1, 6, N'-77.0392605414772', N'-12.0657382087186')
INSERT [dbo].[tb_zona_det] ([codzonadet], [codzona], [orden], [lat], [lon]) VALUES (7, 1, 7, N'-77.0396038642311', N'-12.0677246522101')
INSERT [dbo].[tb_zona_det] ([codzonadet], [codzona], [orden], [lat], [lon]) VALUES (8, 1, 8, N'-77.0399471869850', N'-12.0688018023605')
INSERT [dbo].[tb_zona_det] ([codzonadet], [codzona], [orden], [lat], [lon]) VALUES (9, 1, 9, N'-77.0405193920114', N'-12.0700608032924')
INSERT [dbo].[tb_zona_det] ([codzonadet], [codzona], [orden], [lat], [lon]) VALUES (10, 1, 10, N'-77.0407196631813', N'-12.0706903015400')
INSERT [dbo].[tb_zona_det] ([codzonadet], [codzona], [orden], [lat], [lon]) VALUES (11, 1, 11, N'-77.0409914607980', N'-12.0706763129196')
INSERT [dbo].[tb_zona_det] ([codzonadet], [codzona], [orden], [lat], [lon]) VALUES (12, 1, 12, N'-77.0412489528635', N'-12.0706203571499')
INSERT [dbo].[tb_zona_det] ([codzonadet], [codzona], [orden], [lat], [lon]) VALUES (13, 1, 13, N'-77.0416638014093', N'-12.0708162010121')
INSERT [dbo].[tb_zona_det] ([codzonadet], [codzona], [orden], [lat], [lon]) VALUES (14, 1, 14, N'-77.0419785137155', N'-12.0707602459119')
INSERT [dbo].[tb_zona_det] ([codzonadet], [codzona], [orden], [lat], [lon]) VALUES (15, 1, 15, N'-77.0424648880534', N'-12.0706623236581')
INSERT [dbo].[tb_zona_det] ([codzonadet], [codzona], [orden], [lat], [lon]) VALUES (16, 1, 16, N'-77.0427080745676', N'-12.0705783906351')
INSERT [dbo].[tb_zona_det] ([codzonadet], [codzona], [orden], [lat], [lon]) VALUES (17, 1, 17, N'-77.0430370924250', N'-12.0706763129196')
INSERT [dbo].[tb_zona_det] ([codzonadet], [codzona], [orden], [lat], [lon]) VALUES (18, 1, 18, N'-77.0434662458674', N'-12.0706763129196')
INSERT [dbo].[tb_zona_det] ([codzonadet], [codzona], [orden], [lat], [lon]) VALUES (19, 1, 19, N'-77.0437094330363', N'-12.0704105245102')
INSERT [dbo].[tb_zona_det] ([codzonadet], [codzona], [orden], [lat], [lon]) VALUES (20, 1, 20, N'-77.0438810944133', N'-12.0699768700810')
INSERT [dbo].[tb_zona_det] ([codzonadet], [codzona], [orden], [lat], [lon]) VALUES (21, 1, 21, N'-77.0442816374079', N'-12.0695012482665')
INSERT [dbo].[tb_zona_det] ([codzonadet], [codzona], [orden], [lat], [lon]) VALUES (22, 1, 22, N'-77.0448252319865', N'-12.0691795032612')
INSERT [dbo].[tb_zona_det] ([codzonadet], [codzona], [orden], [lat], [lon]) VALUES (23, 1, 23, N'-77.0454546565988', N'-12.0686479238497')
INSERT [dbo].[tb_zona_det] ([codzonadet], [codzona], [orden], [lat], [lon]) VALUES (24, 1, 24, N'-77.0462128278986', N'-12.0680743771172')
INSERT [dbo].[tb_zona_det] ([codzonadet], [codzona], [orden], [lat], [lon]) VALUES (25, 1, 25, N'-77.0452973007731', N'-12.0671091364435')
INSERT [dbo].[tb_zona_det] ([codzonadet], [codzona], [orden], [lat], [lon]) VALUES (26, 1, 26, N'-77.0448109264352', N'-12.0664096842943')
INSERT [dbo].[tb_zona_det] ([codzonadet], [codzona], [orden], [lat], [lon]) VALUES (27, 1, 27, N'-77.0442959423044', N'-12.0657661867945')
INSERT [dbo].[tb_zona_det] ([codzonadet], [codzona], [orden], [lat], [lon]) VALUES (28, 1, 28, N'-77.0441528913752', N'-12.0651926335749')
INSERT [dbo].[tb_zona_det] ([codzonadet], [codzona], [orden], [lat], [lon]) VALUES (29, 2, 1, N'-77.0383224170216', N'-12.0558989689686')
INSERT [dbo].[tb_zona_det] ([codzonadet], [codzona], [orden], [lat], [lon]) VALUES (30, 2, 2, N'-77.0366487185963', N'-12.0557940469082')
INSERT [dbo].[tb_zona_det] ([codzonadet], [codzona], [orden], [lat], [lon]) VALUES (31, 2, 3, N'-77.0356402080067', N'-12.0556891248068')
INSERT [dbo].[tb_zona_det] ([codzonadet], [codzona], [orden], [lat], [lon]) VALUES (32, 2, 4, N'-77.0355329196461', N'-12.0570531089244')
INSERT [dbo].[tb_zona_det] ([codzonadet], [codzona], [orden], [lat], [lon]) VALUES (33, 2, 5, N'-77.0354256312855', N'-12.0586688965198')
INSERT [dbo].[tb_zona_det] ([codzonadet], [codzona], [orden], [lat], [lon]) VALUES (34, 2, 6, N'-77.0353612582691', N'-12.0594872787312')
INSERT [dbo].[tb_zona_det] ([codzonadet], [codzona], [orden], [lat], [lon]) VALUES (35, 2, 7, N'-77.0349321048267', N'-12.0600118813993')
INSERT [dbo].[tb_zona_det] ([codzonadet], [codzona], [orden], [lat], [lon]) VALUES (36, 2, 8, N'-77.0343527476795', N'-12.0618374906844')
INSERT [dbo].[tb_zona_det] ([codzonadet], [codzona], [orden], [lat], [lon]) VALUES (37, 2, 9, N'-77.0336017291554', N'-12.0635371847074')
INSERT [dbo].[tb_zona_det] ([codzonadet], [codzona], [orden], [lat], [lon]) VALUES (38, 2, 10, N'-77.0335588138111', N'-12.0638729254621')
INSERT [dbo].[tb_zona_det] ([codzonadet], [codzona], [orden], [lat], [lon]) VALUES (39, 2, 11, N'-77.0375928561695', N'-12.0644185032918')
INSERT [dbo].[tb_zona_det] ([codzonadet], [codzona], [orden], [lat], [lon]) VALUES (40, 2, 12, N'-77.0378074328907', N'-12.0630965243287')
INSERT [dbo].[tb_zona_det] ([codzonadet], [codzona], [orden], [lat], [lon]) VALUES (41, 2, 13, N'-77.0380220096119', N'-12.0603056584452')
INSERT [dbo].[tb_zona_det] ([codzonadet], [codzona], [orden], [lat], [lon]) VALUES (42, 2, 14, N'-77.0380005519398', N'-12.0596761358099')
INSERT [dbo].[tb_zona_det] ([codzonadet], [codzona], [orden], [lat], [lon]) VALUES (43, 2, 15, N'-77.0381722133167', N'-12.0581233069916')
INSERT [dbo].[tb_zona_det] ([codzonadet], [codzona], [orden], [lat], [lon]) VALUES (44, 2, 16, N'-77.0382151286610', N'-12.0575147635163')
INSERT [dbo].[tb_zona_det] ([codzonadet], [codzona], [orden], [lat], [lon]) VALUES (45, 2, 17, N'-77.0383009593494', N'-12.0562137349035')
INSERT [dbo].[tb_zona_det] ([codzonadet], [codzona], [orden], [lat], [lon]) VALUES (46, 2, 18, N'-77.0383224170216', N'-12.0558989689686')
INSERT [dbo].[tb_zona_det] ([codzonadet], [codzona], [orden], [lat], [lon]) VALUES (47, 3, 1, N'-77.0361679496764', N'-12.0642242874193')
INSERT [dbo].[tb_zona_det] ([codzonadet], [codzona], [orden], [lat], [lon]) VALUES (48, 3, 2, N'-77.0342796745299', N'-12.0639724822226')
INSERT [dbo].[tb_zona_det] ([codzonadet], [codzona], [orden], [lat], [lon]) VALUES (49, 3, 3, N'-77.0331209602355', N'-12.0668262606007')
INSERT [dbo].[tb_zona_det] ([codzonadet], [codzona], [orden], [lat], [lon]) VALUES (50, 3, 4, N'-77.0323055686949', N'-12.0687987073092')
INSERT [dbo].[tb_zona_det] ([codzonadet], [codzona], [orden], [lat], [lon]) VALUES (51, 3, 5, N'-77.0318764152526', N'-12.0702255746015')
INSERT [dbo].[tb_zona_det] ([codzonadet], [codzona], [orden], [lat], [lon]) VALUES (52, 3, 6, N'-77.0316189231871', N'-12.0709809718566')
INSERT [dbo].[tb_zona_det] ([codzonadet], [codzona], [orden], [lat], [lon]) VALUES (53, 3, 7, N'-77.0309322776793', N'-12.0724917599773')
INSERT [dbo].[tb_zona_det] ([codzonadet], [codzona], [orden], [lat], [lon]) VALUES (54, 3, 8, N'-77.0307177009581', N'-12.0735828794323')
INSERT [dbo].[tb_zona_det] ([codzonadet], [codzona], [orden], [lat], [lon]) VALUES (55, 3, 9, N'-77.0316189231871', N'-12.0737927095872')
INSERT [dbo].[tb_zona_det] ([codzonadet], [codzona], [orden], [lat], [lon]) VALUES (56, 3, 10, N'-77.0333784523009', N'-12.0740025395777')
INSERT [dbo].[tb_zona_det] ([codzonadet], [codzona], [orden], [lat], [lon]) VALUES (57, 3, 11, N'-77.0347946586607', N'-12.0741704034518')
INSERT [dbo].[tb_zona_det] ([codzonadet], [codzona], [orden], [lat], [lon]) VALUES (58, 3, 12, N'-77.0351808967589', N'-12.0705193404538')
INSERT [dbo].[tb_zona_det] ([codzonadet], [codzona], [orden], [lat], [lon]) VALUES (59, 3, 13, N'-77.0351808967589', N'-12.0699318084272')
INSERT [dbo].[tb_zona_det] ([codzonadet], [codzona], [orden], [lat], [lon]) VALUES (60, 3, 14, N'-77.0358675422667', N'-12.0661967532762')
INSERT [dbo].[tb_zona_det] ([codzonadet], [codzona], [orden], [lat], [lon]) VALUES (61, 3, 15, N'-77.0361679496764', N'-12.0642242874193')
INSERT [dbo].[tb_zona_det] ([codzonadet], [codzona], [orden], [lat], [lon]) VALUES (62, 4, 1, N'-77.0804345524239', N'-12.0785619796342')
INSERT [dbo].[tb_zona_det] ([codzonadet], [codzona], [orden], [lat], [lon]) VALUES (63, 4, 2, N'-77.0654427930431', N'-12.0839894316516')
INSERT [dbo].[tb_zona_det] ([codzonadet], [codzona], [orden], [lat], [lon]) VALUES (64, 4, 3, N'-77.0647561475353', N'-12.0846049099039')
INSERT [dbo].[tb_zona_det] ([codzonadet], [codzona], [orden], [lat], [lon]) VALUES (65, 4, 4, N'-77.0646989253301', N'-12.0853322896051')
INSERT [dbo].[tb_zona_det] ([codzonadet], [codzona], [orden], [lat], [lon]) VALUES (66, 4, 5, N'-77.0640122798223', N'-12.0860596686099')
INSERT [dbo].[tb_zona_det] ([codzonadet], [codzona], [orden], [lat], [lon]) VALUES (67, 4, 6, N'-77.0637261792736', N'-12.0865072847866')
INSERT [dbo].[tb_zona_det] ([codzonadet], [codzona], [orden], [lat], [lon]) VALUES (68, 4, 7, N'-77.0675599491524', N'-12.0910953135022')
INSERT [dbo].[tb_zona_det] ([codzonadet], [codzona], [orden], [lat], [lon]) VALUES (69, 4, 8, N'-77.0727670126662', N'-12.0974736593059')
INSERT [dbo].[tb_zona_det] ([codzonadet], [codzona], [orden], [lat], [lon]) VALUES (70, 4, 9, N'-77.0788896000313', N'-12.0943964070566')
INSERT [dbo].[tb_zona_det] ([codzonadet], [codzona], [orden], [lat], [lon]) VALUES (71, 4, 10, N'-77.0838677812726', N'-12.091878626895')
INSERT [dbo].[tb_zona_det] ([codzonadet], [codzona], [orden], [lat], [lon]) VALUES (72, 4, 11, N'-77.0854127336652', N'-12.0904798501807')
INSERT [dbo].[tb_zona_det] ([codzonadet], [codzona], [orden], [lat], [lon]) VALUES (73, 4, 12, N'-77.0830528046106', N'-12.0854018228588')
INSERT [dbo].[tb_zona_det] ([codzonadet], [codzona], [orden], [lat], [lon]) VALUES (74, 4, 13, N'-77.0821944977259', N'-12.083275627686')
INSERT [dbo].[tb_zona_det] ([codzonadet], [codzona], [orden], [lat], [lon]) VALUES (75, 4, 14, N'-77.0820800572445', N'-12.0819887128192')
INSERT [dbo].[tb_zona_det] ([codzonadet], [codzona], [orden], [lat], [lon]) VALUES (76, 4, 15, N'-77.0816222940091', N'-12.0800303520147')
INSERT [dbo].[tb_zona_det] ([codzonadet], [codzona], [orden], [lat], [lon]) VALUES (77, 4, 16, N'-77.0813361908411', N'-12.0787993743384')
INSERT [dbo].[tb_zona_det] ([codzonadet], [codzona], [orden], [lat], [lon]) VALUES (78, 4, 17, N'-77.0804345524239', N'-12.0785619796342')
INSERT [dbo].[tb_zona_det] ([codzonadet], [codzona], [orden], [lat], [lon]) VALUES (79, 13, 0, N'-77.0558820182979', N'-12.054879303697959')
INSERT [dbo].[tb_zona_det] ([codzonadet], [codzona], [orden], [lat], [lon]) VALUES (80, 13, 1, N'-77.02909170437559', N'-12.055116994042265')
INSERT [dbo].[tb_zona_det] ([codzonadet], [codzona], [orden], [lat], [lon]) VALUES (81, 13, 2, N'-77.02517567921385', N'-12.06130734100806')
INSERT [dbo].[tb_zona_det] ([codzonadet], [codzona], [orden], [lat], [lon]) VALUES (82, 13, 3, N'-77.0558820182979', N'-12.054879303697959')
INSERT [dbo].[tb_zona_det] ([codzonadet], [codzona], [orden], [lat], [lon]) VALUES (83, 14, 1, N'-77.05094675371049', N'-12.059076168414265')
INSERT [dbo].[tb_zona_det] ([codzonadet], [codzona], [orden], [lat], [lon]) VALUES (84, 14, 2, N'-77.03388790437579', N'-12.060282754866364')
INSERT [dbo].[tb_zona_det] ([codzonadet], [codzona], [orden], [lat], [lon]) VALUES (85, 14, 3, N'-77.04713801690934', N'-12.070617207689153')
INSERT [dbo].[tb_zona_det] ([codzonadet], [codzona], [orden], [lat], [lon]) VALUES (86, 14, 4, N'-77.06795195886492', N'-12.06489920942623')
INSERT [dbo].[tb_zona_det] ([codzonadet], [codzona], [orden], [lat], [lon]) VALUES (87, 14, 5, N'-77.06763009378311', N'-12.060282754866364')
INSERT [dbo].[tb_zona_det] ([codzonadet], [codzona], [orden], [lat], [lon]) VALUES (88, 14, 6, N'-77.05094675371049', N'-12.059076168414265')
INSERT [dbo].[tb_zona_det] ([codzonadet], [codzona], [orden], [lat], [lon]) VALUES (89, 15, 1, N'-77.05749134370683', N'-12.055980987041806')
INSERT [dbo].[tb_zona_det] ([codzonadet], [codzona], [orden], [lat], [lon]) VALUES (90, 15, 2, N'-77.04509953805803', N'-12.059338470278675')
INSERT [dbo].[tb_zona_det] ([codzonadet], [codzona], [orden], [lat], [lon]) VALUES (91, 15, 3, N'-77.04864005395768', N'-12.06426969757608')
INSERT [dbo].[tb_zona_det] ([codzonadet], [codzona], [orden], [lat], [lon]) VALUES (92, 15, 4, N'-77.05373625108598', N'-12.066315605683812')
INSERT [dbo].[tb_zona_det] ([codzonadet], [codzona], [orden], [lat], [lon]) VALUES (93, 15, 5, N'-77.06022719690203', N'-12.067207406894966')
INSERT [dbo].[tb_zona_det] ([codzonadet], [codzona], [orden], [lat], [lon]) VALUES (94, 15, 6, N'-77.0607099945247', N'-12.066577900465717')
INSERT [dbo].[tb_zona_det] ([codzonadet], [codzona], [orden], [lat], [lon]) VALUES (95, 15, 7, N'-77.05904702493548', N'-12.061909014972883')
INSERT [dbo].[tb_zona_det] ([codzonadet], [codzona], [orden], [lat], [lon]) VALUES (96, 15, 8, N'-77.05749134370683', N'-12.055980987041806')
INSERT [dbo].[tb_zona_det] ([codzonadet], [codzona], [orden], [lat], [lon]) VALUES (97, 16, 1, N'-77.0369765047119', N'-12.114256306181161')
INSERT [dbo].[tb_zona_det] ([codzonadet], [codzona], [orden], [lat], [lon]) VALUES (98, 16, 2, N'-77.02646224537354', N'-12.113679360170082')
INSERT [dbo].[tb_zona_det] ([codzonadet], [codzona], [orden], [lat], [lon]) VALUES (99, 16, 3, N'-77.02673046627503', N'-12.116511628622789')
INSERT [dbo].[tb_zona_det] ([codzonadet], [codzona], [orden], [lat], [lon]) VALUES (100, 16, 4, N'-77.02630131283264', N'-12.118766932005911')
GO
print 'Processed 100 total records'
INSERT [dbo].[tb_zona_det] ([codzonadet], [codzona], [orden], [lat], [lon]) VALUES (101, 16, 5, N'-77.03665463963011', N'-12.118766932005911')
INSERT [dbo].[tb_zona_det] ([codzonadet], [codzona], [orden], [lat], [lon]) VALUES (102, 16, 6, N'-77.0369765047119', N'-12.114256306181161')
SET IDENTITY_INSERT [dbo].[tb_zona_det] OFF
/****** Object:  Table [dbo].[tb_visita]    Script Date: 02/23/2019 12:03:59 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_tb_zona_det]    Script Date: 02/23/2019 12:04:00 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_tb_zona_ddl]    Script Date: 02/23/2019 12:04:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_tb_zona_ddl] AS 
SELECT codzona, dsczona
FROM tb_zona where estzona <> 'X'
GO
/****** Object:  StoredProcedure [dbo].[sp_tb_zona_lst]    Script Date: 02/23/2019 12:04:00 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_tb_zona_ins]    Script Date: 02/23/2019 12:04:00 ******/
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
/****** Object:  Table [dbo].[tb_subzona]    Script Date: 02/23/2019 12:03:59 ******/
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
/****** Object:  Table [dbo].[tb_gcp]    Script Date: 02/23/2019 12:03:59 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_tb_et_ddl]    Script Date: 02/23/2019 12:04:00 ******/
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
/****** Object:  Table [dbo].[tb_subzona_et]    Script Date: 02/23/2019 12:03:59 ******/
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
/****** Object:  Table [dbo].[tb_prospecto]    Script Date: 02/23/2019 12:03:59 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_tb_zona_dib]    Script Date: 02/23/2019 12:04:00 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_tb_zona_det_ins]    Script Date: 02/23/2019 12:04:00 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_tb_subzona_ins]    Script Date: 02/23/2019 12:04:00 ******/
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
/****** Object:  Table [dbo].[tb_documento]    Script Date: 02/23/2019 12:03:59 ******/
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
/****** Object:  Table [dbo].[tb_agente]    Script Date: 02/23/2019 12:03:59 ******/
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
/****** Object:  Table [dbo].[tb_transacciones]    Script Date: 02/23/2019 12:03:59 ******/
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
/****** Object:  ForeignKey [tb_prospecto_tb_agente]    Script Date: 02/23/2019 12:03:59 ******/
ALTER TABLE [dbo].[tb_agente]  WITH CHECK ADD  CONSTRAINT [tb_prospecto_tb_agente] FOREIGN KEY([codprospecto])
REFERENCES [dbo].[tb_prospecto] ([codprospecto])
GO
ALTER TABLE [dbo].[tb_agente] CHECK CONSTRAINT [tb_prospecto_tb_agente]
GO
/****** Object:  ForeignKey [tb_ubigeo_tb_agente]    Script Date: 02/23/2019 12:03:59 ******/
ALTER TABLE [dbo].[tb_agente]  WITH CHECK ADD  CONSTRAINT [tb_ubigeo_tb_agente] FOREIGN KEY([codubigeo])
REFERENCES [dbo].[tb_ubigeo] ([codubigeo])
GO
ALTER TABLE [dbo].[tb_agente] CHECK CONSTRAINT [tb_ubigeo_tb_agente]
GO
/****** Object:  ForeignKey [tb_ubigeo_tb_competencia]    Script Date: 02/23/2019 12:03:59 ******/
ALTER TABLE [dbo].[tb_competencia]  WITH CHECK ADD  CONSTRAINT [tb_ubigeo_tb_competencia] FOREIGN KEY([codubigeo])
REFERENCES [dbo].[tb_ubigeo] ([codubigeo])
GO
ALTER TABLE [dbo].[tb_competencia] CHECK CONSTRAINT [tb_ubigeo_tb_competencia]
GO
/****** Object:  ForeignKey [tb_prospecto_tb_documento]    Script Date: 02/23/2019 12:03:59 ******/
ALTER TABLE [dbo].[tb_documento]  WITH CHECK ADD  CONSTRAINT [tb_prospecto_tb_documento] FOREIGN KEY([codprospecto])
REFERENCES [dbo].[tb_prospecto] ([codprospecto])
GO
ALTER TABLE [dbo].[tb_documento] CHECK CONSTRAINT [tb_prospecto_tb_documento]
GO
/****** Object:  ForeignKey [tb_postulante_tb_et]    Script Date: 02/23/2019 12:03:59 ******/
ALTER TABLE [dbo].[tb_et]  WITH CHECK ADD  CONSTRAINT [tb_postulante_tb_et] FOREIGN KEY([codpostulante])
REFERENCES [dbo].[tb_postulante] ([codpostulante])
GO
ALTER TABLE [dbo].[tb_et] CHECK CONSTRAINT [tb_postulante_tb_et]
GO
/****** Object:  ForeignKey [tb_usuario_tb_et]    Script Date: 02/23/2019 12:03:59 ******/
ALTER TABLE [dbo].[tb_et]  WITH CHECK ADD  CONSTRAINT [tb_usuario_tb_et] FOREIGN KEY([codusuario])
REFERENCES [dbo].[tb_usuario] ([codusuario])
GO
ALTER TABLE [dbo].[tb_et] CHECK CONSTRAINT [tb_usuario_tb_et]
GO
/****** Object:  ForeignKey [tb_zona_tb_gcp]    Script Date: 02/23/2019 12:03:59 ******/
ALTER TABLE [dbo].[tb_gcp]  WITH CHECK ADD  CONSTRAINT [tb_zona_tb_gcp] FOREIGN KEY([codzona])
REFERENCES [dbo].[tb_zona] ([codzona])
GO
ALTER TABLE [dbo].[tb_gcp] CHECK CONSTRAINT [tb_zona_tb_gcp]
GO
/****** Object:  ForeignKey [tb_visita_tb_prospecto]    Script Date: 02/23/2019 12:03:59 ******/
ALTER TABLE [dbo].[tb_prospecto]  WITH CHECK ADD  CONSTRAINT [tb_visita_tb_prospecto] FOREIGN KEY([codvisita])
REFERENCES [dbo].[tb_visita] ([codvisita])
GO
ALTER TABLE [dbo].[tb_prospecto] CHECK CONSTRAINT [tb_visita_tb_prospecto]
GO
/****** Object:  ForeignKey [tb_zona_tb_subzona]    Script Date: 02/23/2019 12:03:59 ******/
ALTER TABLE [dbo].[tb_subzona]  WITH CHECK ADD  CONSTRAINT [tb_zona_tb_subzona] FOREIGN KEY([codzona])
REFERENCES [dbo].[tb_zona] ([codzona])
GO
ALTER TABLE [dbo].[tb_subzona] CHECK CONSTRAINT [tb_zona_tb_subzona]
GO
/****** Object:  ForeignKey [tb_et_tb_subzona_et]    Script Date: 02/23/2019 12:03:59 ******/
ALTER TABLE [dbo].[tb_subzona_et]  WITH CHECK ADD  CONSTRAINT [tb_et_tb_subzona_et] FOREIGN KEY([codet])
REFERENCES [dbo].[tb_et] ([codet])
GO
ALTER TABLE [dbo].[tb_subzona_et] CHECK CONSTRAINT [tb_et_tb_subzona_et]
GO
/****** Object:  ForeignKey [tb_subzona_tb_subzona_et]    Script Date: 02/23/2019 12:03:59 ******/
ALTER TABLE [dbo].[tb_subzona_et]  WITH CHECK ADD  CONSTRAINT [tb_subzona_tb_subzona_et] FOREIGN KEY([codsubzona])
REFERENCES [dbo].[tb_subzona] ([codsubzona])
GO
ALTER TABLE [dbo].[tb_subzona_et] CHECK CONSTRAINT [tb_subzona_tb_subzona_et]
GO
/****** Object:  ForeignKey [tb_agente_tb_transacciones]    Script Date: 02/23/2019 12:03:59 ******/
ALTER TABLE [dbo].[tb_transacciones]  WITH CHECK ADD  CONSTRAINT [tb_agente_tb_transacciones] FOREIGN KEY([codagente])
REFERENCES [dbo].[tb_agente] ([codagente])
GO
ALTER TABLE [dbo].[tb_transacciones] CHECK CONSTRAINT [tb_agente_tb_transacciones]
GO
/****** Object:  ForeignKey [tb_ubigeo_tb_transacciones]    Script Date: 02/23/2019 12:03:59 ******/
ALTER TABLE [dbo].[tb_transacciones]  WITH CHECK ADD  CONSTRAINT [tb_ubigeo_tb_transacciones] FOREIGN KEY([codubigeo])
REFERENCES [dbo].[tb_ubigeo] ([codubigeo])
GO
ALTER TABLE [dbo].[tb_transacciones] CHECK CONSTRAINT [tb_ubigeo_tb_transacciones]
GO
/****** Object:  ForeignKey [tb_et_tb_visita]    Script Date: 02/23/2019 12:03:59 ******/
ALTER TABLE [dbo].[tb_visita]  WITH CHECK ADD  CONSTRAINT [tb_et_tb_visita] FOREIGN KEY([codet])
REFERENCES [dbo].[tb_et] ([codet])
GO
ALTER TABLE [dbo].[tb_visita] CHECK CONSTRAINT [tb_et_tb_visita]
GO
/****** Object:  ForeignKey [tb_ubigeo_tb_zona]    Script Date: 02/23/2019 12:03:59 ******/
ALTER TABLE [dbo].[tb_zona]  WITH CHECK ADD  CONSTRAINT [tb_ubigeo_tb_zona] FOREIGN KEY([codubigeo])
REFERENCES [dbo].[tb_ubigeo] ([codubigeo])
GO
ALTER TABLE [dbo].[tb_zona] CHECK CONSTRAINT [tb_ubigeo_tb_zona]
GO
/****** Object:  ForeignKey [FK_tb_zona_det_tb_zona]    Script Date: 02/23/2019 12:03:59 ******/
ALTER TABLE [dbo].[tb_zona_det]  WITH CHECK ADD  CONSTRAINT [FK_tb_zona_det_tb_zona] FOREIGN KEY([codzona])
REFERENCES [dbo].[tb_zona] ([codzona])
GO
ALTER TABLE [dbo].[tb_zona_det] CHECK CONSTRAINT [FK_tb_zona_det_tb_zona]
GO


CREATE PROCEDURE sp_tb_zona_upd 
		@codzona int, 
		@codubigeo varchar(6), 
		@dsczona varchar(40), 
		@estzona varchar(40) 
AS 
UPDATE	tb_zona 
SET		codubigeo = @codubigeo, 
		dsczona = @dsczona, 
		estzona = @estzona
WHERE	codzona = @codzona ;
