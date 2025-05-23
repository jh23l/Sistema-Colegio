USE [Sistema_Colegio]
GO
/****** Object:  Table [dbo].[Curso]    Script Date: 4/22/2025 8:54:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Curso](
	[id_Curso] [int] IDENTITY(1,1) NOT NULL,
	[nombre_curso] [varchar](100) NULL,
	[grado] [varchar](10) NULL,
	[seccion] [char](1) NULL,
	[id_profesor] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id_Curso] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CursoMateria]    Script Date: 4/22/2025 8:54:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CursoMateria](
	[id_CursoMateria] [int] IDENTITY(1,1) NOT NULL,
	[id_Curso] [int] NOT NULL,
	[id_Materia] [int] NOT NULL,
	[id_Profesor] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_CursoMateria] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Estudiantes]    Script Date: 4/22/2025 8:54:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Estudiantes](
	[id_Estudiante] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [nvarchar](50) NOT NULL,
	[Apellidos] [nvarchar](50) NOT NULL,
	[Edad] [int] NOT NULL,
	[fecha_ingreso] [datetime] NOT NULL,
	[curso_actual] [int] NOT NULL,
	[estado] [nvarchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_Estudiante] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Materias]    Script Date: 4/22/2025 8:54:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Materias](
	[id_Materia] [int] IDENTITY(1,1) NOT NULL,
	[nombre_materia] [varchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_Materia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Matricula]    Script Date: 4/22/2025 8:54:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Matricula](
	[id_Matricula] [int] IDENTITY(1,1) NOT NULL,
	[id_Estudiante] [int] NULL,
	[id_Curso] [int] NULL,
	[año_lectivo] [varchar](9) NULL,
	[fecha_matricula] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[id_Matricula] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Notas]    Script Date: 4/22/2025 8:54:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Notas](
	[id_Nota] [int] IDENTITY(1,1) NOT NULL,
	[id_Matricula] [int] NOT NULL,
	[id_CursoMateria] [int] NOT NULL,
	[trimestre] [char](2) NULL,
	[nota] [decimal](5, 2) NULL,
PRIMARY KEY CLUSTERED 
(
	[id_Nota] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Profesores]    Script Date: 4/22/2025 8:54:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Profesores](
	[id_profesor] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](50) NOT NULL,
	[apellido] [varchar](50) NOT NULL,
	[titulo_profesional] [varchar](100) NULL,
	[fecha_ingreso] [date] NULL,
	[estado] [varchar](20) NULL,
	[fecha_nacimiento] [date] NULL,
	[sexo] [varchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[id_profesor] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Usuarios]    Script Date: 4/22/2025 8:54:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Usuarios](
	[id_Usuario] [int] NULL,
	[Nombre_Usuario] [varchar](50) NULL,
	[Clave] [varchar](50) NULL
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Curso] ON 

INSERT [dbo].[Curso] ([id_Curso], [nombre_curso], [grado], [seccion], [id_profesor]) VALUES (1, N'3ro de secundaria', N'3ro', N'A', 1)
INSERT [dbo].[Curso] ([id_Curso], [nombre_curso], [grado], [seccion], [id_profesor]) VALUES (2, N'3ro de secundaria', N'3ro', N'B', 2)
INSERT [dbo].[Curso] ([id_Curso], [nombre_curso], [grado], [seccion], [id_profesor]) VALUES (3, N'3ro de secundaria', N'3ro', N'C', 3)
INSERT [dbo].[Curso] ([id_Curso], [nombre_curso], [grado], [seccion], [id_profesor]) VALUES (4, N'4to de secundaria', N'4to', N'A', 4)
INSERT [dbo].[Curso] ([id_Curso], [nombre_curso], [grado], [seccion], [id_profesor]) VALUES (5, N'4to de secundaria', N'4to', N'B', 5)
INSERT [dbo].[Curso] ([id_Curso], [nombre_curso], [grado], [seccion], [id_profesor]) VALUES (6, N'4to de secundaria', N'4to', N'C', 6)
INSERT [dbo].[Curso] ([id_Curso], [nombre_curso], [grado], [seccion], [id_profesor]) VALUES (7, N'5to de secundaria', N'5to', N'A', 7)
INSERT [dbo].[Curso] ([id_Curso], [nombre_curso], [grado], [seccion], [id_profesor]) VALUES (8, N'5to de secundaria', N'5to', N'B', 8)
INSERT [dbo].[Curso] ([id_Curso], [nombre_curso], [grado], [seccion], [id_profesor]) VALUES (9, N'6to de secundaria', N'6to', N'A', 9)
INSERT [dbo].[Curso] ([id_Curso], [nombre_curso], [grado], [seccion], [id_profesor]) VALUES (10, N'6to de secundaria', N'6to', N'B', 10)
SET IDENTITY_INSERT [dbo].[Curso] OFF
GO
SET IDENTITY_INSERT [dbo].[CursoMateria] ON 

INSERT [dbo].[CursoMateria] ([id_CursoMateria], [id_Curso], [id_Materia], [id_Profesor]) VALUES (1, 1, 1, 1)
INSERT [dbo].[CursoMateria] ([id_CursoMateria], [id_Curso], [id_Materia], [id_Profesor]) VALUES (2, 2, 2, 2)
INSERT [dbo].[CursoMateria] ([id_CursoMateria], [id_Curso], [id_Materia], [id_Profesor]) VALUES (3, 3, 3, 3)
INSERT [dbo].[CursoMateria] ([id_CursoMateria], [id_Curso], [id_Materia], [id_Profesor]) VALUES (4, 4, 4, 4)
INSERT [dbo].[CursoMateria] ([id_CursoMateria], [id_Curso], [id_Materia], [id_Profesor]) VALUES (5, 5, 5, 5)
INSERT [dbo].[CursoMateria] ([id_CursoMateria], [id_Curso], [id_Materia], [id_Profesor]) VALUES (6, 6, 6, 6)
INSERT [dbo].[CursoMateria] ([id_CursoMateria], [id_Curso], [id_Materia], [id_Profesor]) VALUES (7, 7, 7, 7)
INSERT [dbo].[CursoMateria] ([id_CursoMateria], [id_Curso], [id_Materia], [id_Profesor]) VALUES (8, 8, 8, 9)
INSERT [dbo].[CursoMateria] ([id_CursoMateria], [id_Curso], [id_Materia], [id_Profesor]) VALUES (9, 9, 9, 9)
INSERT [dbo].[CursoMateria] ([id_CursoMateria], [id_Curso], [id_Materia], [id_Profesor]) VALUES (10, 10, 10, 10)
INSERT [dbo].[CursoMateria] ([id_CursoMateria], [id_Curso], [id_Materia], [id_Profesor]) VALUES (11, 1, 5, 11)
SET IDENTITY_INSERT [dbo].[CursoMateria] OFF
GO
SET IDENTITY_INSERT [dbo].[Estudiantes] ON 

INSERT [dbo].[Estudiantes] ([id_Estudiante], [Nombre], [Apellidos], [Edad], [fecha_ingreso], [curso_actual], [estado]) VALUES (1, N'Juan', N'Pérez', 20, CAST(N'2021-03-15T00:00:00.000' AS DateTime), 1, N'Activo')
INSERT [dbo].[Estudiantes] ([id_Estudiante], [Nombre], [Apellidos], [Edad], [fecha_ingreso], [curso_actual], [estado]) VALUES (2, N'María', N'González', 18, CAST(N'2020-07-10T00:00:00.000' AS DateTime), 2, N'Inactivo')
INSERT [dbo].[Estudiantes] ([id_Estudiante], [Nombre], [Apellidos], [Edad], [fecha_ingreso], [curso_actual], [estado]) VALUES (3, N'Luis', N'Rodríguez', 21, CAST(N'2023-01-22T00:00:00.000' AS DateTime), 3, N'Activo')
INSERT [dbo].[Estudiantes] ([id_Estudiante], [Nombre], [Apellidos], [Edad], [fecha_ingreso], [curso_actual], [estado]) VALUES (4, N'Ana', N'Fernández', 19, CAST(N'2022-11-08T00:00:00.000' AS DateTime), 4, N'Inactivo')
INSERT [dbo].[Estudiantes] ([id_Estudiante], [Nombre], [Apellidos], [Edad], [fecha_ingreso], [curso_actual], [estado]) VALUES (5, N'José', N'Martínez', 22, CAST(N'2020-04-19T00:00:00.000' AS DateTime), 5, N'Activo')
INSERT [dbo].[Estudiantes] ([id_Estudiante], [Nombre], [Apellidos], [Edad], [fecha_ingreso], [curso_actual], [estado]) VALUES (6, N'Carmen', N'López', 20, CAST(N'2021-06-30T00:00:00.000' AS DateTime), 6, N'Activo')
INSERT [dbo].[Estudiantes] ([id_Estudiante], [Nombre], [Apellidos], [Edad], [fecha_ingreso], [curso_actual], [estado]) VALUES (7, N'Pablo', N'Sánchez', 23, CAST(N'2019-12-14T00:00:00.000' AS DateTime), 7, N'Inactivo')
INSERT [dbo].[Estudiantes] ([id_Estudiante], [Nombre], [Apellidos], [Edad], [fecha_ingreso], [curso_actual], [estado]) VALUES (8, N'Elena', N'Ramírez', 18, CAST(N'2023-05-04T00:00:00.000' AS DateTime), 8, N'Activo')
INSERT [dbo].[Estudiantes] ([id_Estudiante], [Nombre], [Apellidos], [Edad], [fecha_ingreso], [curso_actual], [estado]) VALUES (9, N'Diego', N'Cruz', 21, CAST(N'2021-09-27T00:00:00.000' AS DateTime), 9, N'Activo')
INSERT [dbo].[Estudiantes] ([id_Estudiante], [Nombre], [Apellidos], [Edad], [fecha_ingreso], [curso_actual], [estado]) VALUES (10, N'Sofia', N'Morales', 19, CAST(N'2020-02-16T00:00:00.000' AS DateTime), 10, N'Inactivo')
INSERT [dbo].[Estudiantes] ([id_Estudiante], [Nombre], [Apellidos], [Edad], [fecha_ingreso], [curso_actual], [estado]) VALUES (11, N'Jhael', N'Adames', 19, CAST(N'2025-04-15T21:46:59.267' AS DateTime), 1, N'Activo')
INSERT [dbo].[Estudiantes] ([id_Estudiante], [Nombre], [Apellidos], [Edad], [fecha_ingreso], [curso_actual], [estado]) VALUES (12, N'Luis', N'Cabrera', 18, CAST(N'2023-01-15T00:00:00.000' AS DateTime), 1, N'Activo')
INSERT [dbo].[Estudiantes] ([id_Estudiante], [Nombre], [Apellidos], [Edad], [fecha_ingreso], [curso_actual], [estado]) VALUES (13, N'Mariana', N'Torres', 19, CAST(N'2022-02-10T00:00:00.000' AS DateTime), 2, N'Activo')
INSERT [dbo].[Estudiantes] ([id_Estudiante], [Nombre], [Apellidos], [Edad], [fecha_ingreso], [curso_actual], [estado]) VALUES (14, N'Fernando', N'López', 20, CAST(N'2021-03-05T00:00:00.000' AS DateTime), 3, N'Inactivo')
INSERT [dbo].[Estudiantes] ([id_Estudiante], [Nombre], [Apellidos], [Edad], [fecha_ingreso], [curso_actual], [estado]) VALUES (15, N'Laura', N'Guzmán', 18, CAST(N'2023-01-15T00:00:00.000' AS DateTime), 1, N'Activo')
INSERT [dbo].[Estudiantes] ([id_Estudiante], [Nombre], [Apellidos], [Edad], [fecha_ingreso], [curso_actual], [estado]) VALUES (16, N'Ricardo', N'Mendoza', 21, CAST(N'2020-04-20T00:00:00.000' AS DateTime), 4, N'Activo')
INSERT [dbo].[Estudiantes] ([id_Estudiante], [Nombre], [Apellidos], [Edad], [fecha_ingreso], [curso_actual], [estado]) VALUES (17, N'Daniela', N'Suárez', 22, CAST(N'2019-05-10T00:00:00.000' AS DateTime), 5, N'Activo')
INSERT [dbo].[Estudiantes] ([id_Estudiante], [Nombre], [Apellidos], [Edad], [fecha_ingreso], [curso_actual], [estado]) VALUES (18, N'Martín', N'Vega', 19, CAST(N'2022-06-11T00:00:00.000' AS DateTime), 3, N'Activo')
INSERT [dbo].[Estudiantes] ([id_Estudiante], [Nombre], [Apellidos], [Edad], [fecha_ingreso], [curso_actual], [estado]) VALUES (19, N'Camila', N'Flores', 18, CAST(N'2023-02-20T00:00:00.000' AS DateTime), 1, N'Activo')
INSERT [dbo].[Estudiantes] ([id_Estudiante], [Nombre], [Apellidos], [Edad], [fecha_ingreso], [curso_actual], [estado]) VALUES (20, N'David', N'Carrillo', 23, CAST(N'2018-09-15T00:00:00.000' AS DateTime), 6, N'Inactivo')
INSERT [dbo].[Estudiantes] ([id_Estudiante], [Nombre], [Apellidos], [Edad], [fecha_ingreso], [curso_actual], [estado]) VALUES (24, N'Prueba', N'Prueba', 12, CAST(N'2025-04-19T17:03:59.210' AS DateTime), 1, N'Activo')
INSERT [dbo].[Estudiantes] ([id_Estudiante], [Nombre], [Apellidos], [Edad], [fecha_ingreso], [curso_actual], [estado]) VALUES (25, N'jhael', N'adames', 19, CAST(N'2025-04-22T20:47:26.340' AS DateTime), 1, N'Activo')
SET IDENTITY_INSERT [dbo].[Estudiantes] OFF
GO
SET IDENTITY_INSERT [dbo].[Materias] ON 

INSERT [dbo].[Materias] ([id_Materia], [nombre_materia]) VALUES (1, N'Matemáticas')
INSERT [dbo].[Materias] ([id_Materia], [nombre_materia]) VALUES (2, N'Lengua y Literatura')
INSERT [dbo].[Materias] ([id_Materia], [nombre_materia]) VALUES (3, N'Ciencias Naturales')
INSERT [dbo].[Materias] ([id_Materia], [nombre_materia]) VALUES (4, N'Historia')
INSERT [dbo].[Materias] ([id_Materia], [nombre_materia]) VALUES (5, N'Inglés')
INSERT [dbo].[Materias] ([id_Materia], [nombre_materia]) VALUES (6, N'Educación Física')
INSERT [dbo].[Materias] ([id_Materia], [nombre_materia]) VALUES (7, N'Arte')
INSERT [dbo].[Materias] ([id_Materia], [nombre_materia]) VALUES (8, N'Computación')
INSERT [dbo].[Materias] ([id_Materia], [nombre_materia]) VALUES (9, N'Física')
INSERT [dbo].[Materias] ([id_Materia], [nombre_materia]) VALUES (10, N'Química')
INSERT [dbo].[Materias] ([id_Materia], [nombre_materia]) VALUES (11, N'Prueba')
INSERT [dbo].[Materias] ([id_Materia], [nombre_materia]) VALUES (12, N'ingles')
SET IDENTITY_INSERT [dbo].[Materias] OFF
GO
SET IDENTITY_INSERT [dbo].[Matricula] ON 

INSERT [dbo].[Matricula] ([id_Matricula], [id_Estudiante], [id_Curso], [año_lectivo], [fecha_matricula]) VALUES (1, 1, 1, N'2024-2025', CAST(N'2024-03-01' AS Date))
INSERT [dbo].[Matricula] ([id_Matricula], [id_Estudiante], [id_Curso], [año_lectivo], [fecha_matricula]) VALUES (2, 2, 2, N'2024-2025', CAST(N'2024-03-02' AS Date))
INSERT [dbo].[Matricula] ([id_Matricula], [id_Estudiante], [id_Curso], [año_lectivo], [fecha_matricula]) VALUES (3, 3, 3, N'2024-2025', CAST(N'2024-03-03' AS Date))
INSERT [dbo].[Matricula] ([id_Matricula], [id_Estudiante], [id_Curso], [año_lectivo], [fecha_matricula]) VALUES (4, 4, 4, N'2024-2025', CAST(N'2024-03-04' AS Date))
INSERT [dbo].[Matricula] ([id_Matricula], [id_Estudiante], [id_Curso], [año_lectivo], [fecha_matricula]) VALUES (5, 5, 5, N'2024-2025', CAST(N'2024-03-05' AS Date))
INSERT [dbo].[Matricula] ([id_Matricula], [id_Estudiante], [id_Curso], [año_lectivo], [fecha_matricula]) VALUES (6, 6, 6, N'2024-2025', CAST(N'2024-03-06' AS Date))
INSERT [dbo].[Matricula] ([id_Matricula], [id_Estudiante], [id_Curso], [año_lectivo], [fecha_matricula]) VALUES (7, 7, 7, N'2024-2025', CAST(N'2024-03-07' AS Date))
INSERT [dbo].[Matricula] ([id_Matricula], [id_Estudiante], [id_Curso], [año_lectivo], [fecha_matricula]) VALUES (8, 8, 8, N'2024-2025', CAST(N'2024-03-08' AS Date))
INSERT [dbo].[Matricula] ([id_Matricula], [id_Estudiante], [id_Curso], [año_lectivo], [fecha_matricula]) VALUES (9, 9, 9, N'2024-2025', CAST(N'2024-03-09' AS Date))
INSERT [dbo].[Matricula] ([id_Matricula], [id_Estudiante], [id_Curso], [año_lectivo], [fecha_matricula]) VALUES (10, 10, 10, N'2024-2025', CAST(N'2024-03-10' AS Date))
INSERT [dbo].[Matricula] ([id_Matricula], [id_Estudiante], [id_Curso], [año_lectivo], [fecha_matricula]) VALUES (11, 11, 1, N'2024-2025', CAST(N'2024-03-11' AS Date))
INSERT [dbo].[Matricula] ([id_Matricula], [id_Estudiante], [id_Curso], [año_lectivo], [fecha_matricula]) VALUES (12, 12, 2, N'2024-2025', CAST(N'2024-03-12' AS Date))
INSERT [dbo].[Matricula] ([id_Matricula], [id_Estudiante], [id_Curso], [año_lectivo], [fecha_matricula]) VALUES (13, 13, 3, N'2024-2025', CAST(N'2024-03-13' AS Date))
INSERT [dbo].[Matricula] ([id_Matricula], [id_Estudiante], [id_Curso], [año_lectivo], [fecha_matricula]) VALUES (14, 14, 4, N'2024-2025', CAST(N'2024-03-14' AS Date))
INSERT [dbo].[Matricula] ([id_Matricula], [id_Estudiante], [id_Curso], [año_lectivo], [fecha_matricula]) VALUES (15, 15, 5, N'2024-2025', CAST(N'2024-03-15' AS Date))
INSERT [dbo].[Matricula] ([id_Matricula], [id_Estudiante], [id_Curso], [año_lectivo], [fecha_matricula]) VALUES (16, 16, 6, N'2024-2025', CAST(N'2024-03-16' AS Date))
INSERT [dbo].[Matricula] ([id_Matricula], [id_Estudiante], [id_Curso], [año_lectivo], [fecha_matricula]) VALUES (17, 17, 7, N'2024-2025', CAST(N'2024-03-17' AS Date))
INSERT [dbo].[Matricula] ([id_Matricula], [id_Estudiante], [id_Curso], [año_lectivo], [fecha_matricula]) VALUES (18, 18, 8, N'2024-2025', CAST(N'2024-03-18' AS Date))
INSERT [dbo].[Matricula] ([id_Matricula], [id_Estudiante], [id_Curso], [año_lectivo], [fecha_matricula]) VALUES (19, 19, 9, N'2024-2025', CAST(N'2024-03-19' AS Date))
INSERT [dbo].[Matricula] ([id_Matricula], [id_Estudiante], [id_Curso], [año_lectivo], [fecha_matricula]) VALUES (20, 20, 10, N'2024-2025', CAST(N'2024-03-20' AS Date))
INSERT [dbo].[Matricula] ([id_Matricula], [id_Estudiante], [id_Curso], [año_lectivo], [fecha_matricula]) VALUES (23, 24, 1, N'2024-2025', CAST(N'2025-04-19' AS Date))
INSERT [dbo].[Matricula] ([id_Matricula], [id_Estudiante], [id_Curso], [año_lectivo], [fecha_matricula]) VALUES (24, 25, 1, N'2024-2025', CAST(N'2025-04-22' AS Date))
SET IDENTITY_INSERT [dbo].[Matricula] OFF
GO
SET IDENTITY_INSERT [dbo].[Notas] ON 

INSERT [dbo].[Notas] ([id_Nota], [id_Matricula], [id_CursoMateria], [trimestre], [nota]) VALUES (1, 1, 1, N'P1', CAST(85.50 AS Decimal(5, 2)))
INSERT [dbo].[Notas] ([id_Nota], [id_Matricula], [id_CursoMateria], [trimestre], [nota]) VALUES (2, 1, 1, N'P2', CAST(88.00 AS Decimal(5, 2)))
INSERT [dbo].[Notas] ([id_Nota], [id_Matricula], [id_CursoMateria], [trimestre], [nota]) VALUES (3, 1, 1, N'P3', CAST(90.25 AS Decimal(5, 2)))
INSERT [dbo].[Notas] ([id_Nota], [id_Matricula], [id_CursoMateria], [trimestre], [nota]) VALUES (4, 1, 1, N'P4', CAST(87.75 AS Decimal(5, 2)))
INSERT [dbo].[Notas] ([id_Nota], [id_Matricula], [id_CursoMateria], [trimestre], [nota]) VALUES (5, 1, 2, N'P1', CAST(80.00 AS Decimal(5, 2)))
INSERT [dbo].[Notas] ([id_Nota], [id_Matricula], [id_CursoMateria], [trimestre], [nota]) VALUES (6, 1, 2, N'P2', CAST(82.50 AS Decimal(5, 2)))
INSERT [dbo].[Notas] ([id_Nota], [id_Matricula], [id_CursoMateria], [trimestre], [nota]) VALUES (7, 1, 2, N'P3', CAST(84.00 AS Decimal(5, 2)))
INSERT [dbo].[Notas] ([id_Nota], [id_Matricula], [id_CursoMateria], [trimestre], [nota]) VALUES (8, 1, 2, N'P4', CAST(81.25 AS Decimal(5, 2)))
INSERT [dbo].[Notas] ([id_Nota], [id_Matricula], [id_CursoMateria], [trimestre], [nota]) VALUES (9, 2, 1, N'P1', CAST(78.00 AS Decimal(5, 2)))
INSERT [dbo].[Notas] ([id_Nota], [id_Matricula], [id_CursoMateria], [trimestre], [nota]) VALUES (10, 2, 1, N'P2', CAST(80.50 AS Decimal(5, 2)))
INSERT [dbo].[Notas] ([id_Nota], [id_Matricula], [id_CursoMateria], [trimestre], [nota]) VALUES (11, 2, 1, N'P3', CAST(82.00 AS Decimal(5, 2)))
INSERT [dbo].[Notas] ([id_Nota], [id_Matricula], [id_CursoMateria], [trimestre], [nota]) VALUES (12, 2, 1, N'P4', CAST(79.50 AS Decimal(5, 2)))
INSERT [dbo].[Notas] ([id_Nota], [id_Matricula], [id_CursoMateria], [trimestre], [nota]) VALUES (13, 2, 2, N'P1', CAST(76.50 AS Decimal(5, 2)))
INSERT [dbo].[Notas] ([id_Nota], [id_Matricula], [id_CursoMateria], [trimestre], [nota]) VALUES (14, 2, 2, N'P2', CAST(77.00 AS Decimal(5, 2)))
INSERT [dbo].[Notas] ([id_Nota], [id_Matricula], [id_CursoMateria], [trimestre], [nota]) VALUES (15, 2, 2, N'P3', CAST(78.25 AS Decimal(5, 2)))
INSERT [dbo].[Notas] ([id_Nota], [id_Matricula], [id_CursoMateria], [trimestre], [nota]) VALUES (16, 2, 2, N'P4', CAST(75.00 AS Decimal(5, 2)))
INSERT [dbo].[Notas] ([id_Nota], [id_Matricula], [id_CursoMateria], [trimestre], [nota]) VALUES (17, 3, 1, N'P1', CAST(92.25 AS Decimal(5, 2)))
INSERT [dbo].[Notas] ([id_Nota], [id_Matricula], [id_CursoMateria], [trimestre], [nota]) VALUES (18, 3, 1, N'P2', CAST(94.00 AS Decimal(5, 2)))
INSERT [dbo].[Notas] ([id_Nota], [id_Matricula], [id_CursoMateria], [trimestre], [nota]) VALUES (19, 3, 1, N'P3', CAST(91.75 AS Decimal(5, 2)))
INSERT [dbo].[Notas] ([id_Nota], [id_Matricula], [id_CursoMateria], [trimestre], [nota]) VALUES (20, 3, 1, N'P4', CAST(93.00 AS Decimal(5, 2)))
INSERT [dbo].[Notas] ([id_Nota], [id_Matricula], [id_CursoMateria], [trimestre], [nota]) VALUES (21, 3, 2, N'P1', CAST(89.50 AS Decimal(5, 2)))
INSERT [dbo].[Notas] ([id_Nota], [id_Matricula], [id_CursoMateria], [trimestre], [nota]) VALUES (22, 3, 2, N'P2', CAST(90.00 AS Decimal(5, 2)))
INSERT [dbo].[Notas] ([id_Nota], [id_Matricula], [id_CursoMateria], [trimestre], [nota]) VALUES (23, 3, 2, N'P3', CAST(91.00 AS Decimal(5, 2)))
INSERT [dbo].[Notas] ([id_Nota], [id_Matricula], [id_CursoMateria], [trimestre], [nota]) VALUES (24, 3, 2, N'P4', CAST(90.75 AS Decimal(5, 2)))
INSERT [dbo].[Notas] ([id_Nota], [id_Matricula], [id_CursoMateria], [trimestre], [nota]) VALUES (25, 4, 1, N'P1', CAST(70.00 AS Decimal(5, 2)))
INSERT [dbo].[Notas] ([id_Nota], [id_Matricula], [id_CursoMateria], [trimestre], [nota]) VALUES (26, 4, 1, N'P2', CAST(72.25 AS Decimal(5, 2)))
INSERT [dbo].[Notas] ([id_Nota], [id_Matricula], [id_CursoMateria], [trimestre], [nota]) VALUES (27, 4, 1, N'P3', CAST(75.00 AS Decimal(5, 2)))
INSERT [dbo].[Notas] ([id_Nota], [id_Matricula], [id_CursoMateria], [trimestre], [nota]) VALUES (28, 4, 1, N'P4', CAST(73.50 AS Decimal(5, 2)))
INSERT [dbo].[Notas] ([id_Nota], [id_Matricula], [id_CursoMateria], [trimestre], [nota]) VALUES (29, 4, 2, N'P1', CAST(67.00 AS Decimal(5, 2)))
INSERT [dbo].[Notas] ([id_Nota], [id_Matricula], [id_CursoMateria], [trimestre], [nota]) VALUES (30, 4, 2, N'P2', CAST(68.50 AS Decimal(5, 2)))
INSERT [dbo].[Notas] ([id_Nota], [id_Matricula], [id_CursoMateria], [trimestre], [nota]) VALUES (31, 4, 2, N'P3', CAST(69.75 AS Decimal(5, 2)))
INSERT [dbo].[Notas] ([id_Nota], [id_Matricula], [id_CursoMateria], [trimestre], [nota]) VALUES (32, 4, 2, N'P4', CAST(66.25 AS Decimal(5, 2)))
INSERT [dbo].[Notas] ([id_Nota], [id_Matricula], [id_CursoMateria], [trimestre], [nota]) VALUES (33, 5, 1, N'P1', CAST(88.50 AS Decimal(5, 2)))
INSERT [dbo].[Notas] ([id_Nota], [id_Matricula], [id_CursoMateria], [trimestre], [nota]) VALUES (34, 5, 1, N'P2', CAST(89.75 AS Decimal(5, 2)))
INSERT [dbo].[Notas] ([id_Nota], [id_Matricula], [id_CursoMateria], [trimestre], [nota]) VALUES (35, 5, 1, N'P3', CAST(90.00 AS Decimal(5, 2)))
INSERT [dbo].[Notas] ([id_Nota], [id_Matricula], [id_CursoMateria], [trimestre], [nota]) VALUES (36, 5, 1, N'P4', CAST(91.25 AS Decimal(5, 2)))
INSERT [dbo].[Notas] ([id_Nota], [id_Matricula], [id_CursoMateria], [trimestre], [nota]) VALUES (37, 5, 2, N'P1', CAST(85.00 AS Decimal(5, 2)))
INSERT [dbo].[Notas] ([id_Nota], [id_Matricula], [id_CursoMateria], [trimestre], [nota]) VALUES (38, 5, 2, N'P2', CAST(87.50 AS Decimal(5, 2)))
INSERT [dbo].[Notas] ([id_Nota], [id_Matricula], [id_CursoMateria], [trimestre], [nota]) VALUES (39, 5, 2, N'P3', CAST(89.25 AS Decimal(5, 2)))
INSERT [dbo].[Notas] ([id_Nota], [id_Matricula], [id_CursoMateria], [trimestre], [nota]) VALUES (40, 5, 2, N'P4', CAST(88.00 AS Decimal(5, 2)))
INSERT [dbo].[Notas] ([id_Nota], [id_Matricula], [id_CursoMateria], [trimestre], [nota]) VALUES (41, 6, 1, N'P1', CAST(65.00 AS Decimal(5, 2)))
INSERT [dbo].[Notas] ([id_Nota], [id_Matricula], [id_CursoMateria], [trimestre], [nota]) VALUES (42, 6, 1, N'P2', CAST(68.25 AS Decimal(5, 2)))
INSERT [dbo].[Notas] ([id_Nota], [id_Matricula], [id_CursoMateria], [trimestre], [nota]) VALUES (43, 6, 1, N'P3', CAST(70.50 AS Decimal(5, 2)))
INSERT [dbo].[Notas] ([id_Nota], [id_Matricula], [id_CursoMateria], [trimestre], [nota]) VALUES (44, 6, 1, N'P4', CAST(69.00 AS Decimal(5, 2)))
INSERT [dbo].[Notas] ([id_Nota], [id_Matricula], [id_CursoMateria], [trimestre], [nota]) VALUES (45, 6, 2, N'P1', CAST(63.00 AS Decimal(5, 2)))
INSERT [dbo].[Notas] ([id_Nota], [id_Matricula], [id_CursoMateria], [trimestre], [nota]) VALUES (46, 6, 2, N'P2', CAST(64.50 AS Decimal(5, 2)))
INSERT [dbo].[Notas] ([id_Nota], [id_Matricula], [id_CursoMateria], [trimestre], [nota]) VALUES (47, 6, 2, N'P3', CAST(65.00 AS Decimal(5, 2)))
INSERT [dbo].[Notas] ([id_Nota], [id_Matricula], [id_CursoMateria], [trimestre], [nota]) VALUES (48, 6, 2, N'P4', CAST(66.00 AS Decimal(5, 2)))
INSERT [dbo].[Notas] ([id_Nota], [id_Matricula], [id_CursoMateria], [trimestre], [nota]) VALUES (49, 7, 1, N'P1', CAST(80.00 AS Decimal(5, 2)))
INSERT [dbo].[Notas] ([id_Nota], [id_Matricula], [id_CursoMateria], [trimestre], [nota]) VALUES (50, 7, 1, N'P2', CAST(82.00 AS Decimal(5, 2)))
INSERT [dbo].[Notas] ([id_Nota], [id_Matricula], [id_CursoMateria], [trimestre], [nota]) VALUES (51, 7, 1, N'P3', CAST(83.25 AS Decimal(5, 2)))
INSERT [dbo].[Notas] ([id_Nota], [id_Matricula], [id_CursoMateria], [trimestre], [nota]) VALUES (52, 7, 1, N'P4', CAST(81.75 AS Decimal(5, 2)))
INSERT [dbo].[Notas] ([id_Nota], [id_Matricula], [id_CursoMateria], [trimestre], [nota]) VALUES (53, 7, 2, N'P1', CAST(78.25 AS Decimal(5, 2)))
INSERT [dbo].[Notas] ([id_Nota], [id_Matricula], [id_CursoMateria], [trimestre], [nota]) VALUES (54, 7, 2, N'P2', CAST(79.75 AS Decimal(5, 2)))
INSERT [dbo].[Notas] ([id_Nota], [id_Matricula], [id_CursoMateria], [trimestre], [nota]) VALUES (55, 7, 2, N'P3', CAST(80.00 AS Decimal(5, 2)))
INSERT [dbo].[Notas] ([id_Nota], [id_Matricula], [id_CursoMateria], [trimestre], [nota]) VALUES (56, 7, 2, N'P4', CAST(81.50 AS Decimal(5, 2)))
INSERT [dbo].[Notas] ([id_Nota], [id_Matricula], [id_CursoMateria], [trimestre], [nota]) VALUES (57, 8, 1, N'P1', CAST(90.00 AS Decimal(5, 2)))
INSERT [dbo].[Notas] ([id_Nota], [id_Matricula], [id_CursoMateria], [trimestre], [nota]) VALUES (58, 8, 1, N'P2', CAST(88.25 AS Decimal(5, 2)))
INSERT [dbo].[Notas] ([id_Nota], [id_Matricula], [id_CursoMateria], [trimestre], [nota]) VALUES (59, 8, 1, N'P3', CAST(89.75 AS Decimal(5, 2)))
INSERT [dbo].[Notas] ([id_Nota], [id_Matricula], [id_CursoMateria], [trimestre], [nota]) VALUES (60, 8, 1, N'P4', CAST(90.50 AS Decimal(5, 2)))
INSERT [dbo].[Notas] ([id_Nota], [id_Matricula], [id_CursoMateria], [trimestre], [nota]) VALUES (61, 8, 2, N'P1', CAST(86.50 AS Decimal(5, 2)))
INSERT [dbo].[Notas] ([id_Nota], [id_Matricula], [id_CursoMateria], [trimestre], [nota]) VALUES (62, 8, 2, N'P2', CAST(87.25 AS Decimal(5, 2)))
INSERT [dbo].[Notas] ([id_Nota], [id_Matricula], [id_CursoMateria], [trimestre], [nota]) VALUES (63, 8, 2, N'P3', CAST(89.00 AS Decimal(5, 2)))
INSERT [dbo].[Notas] ([id_Nota], [id_Matricula], [id_CursoMateria], [trimestre], [nota]) VALUES (64, 8, 2, N'P4', CAST(88.75 AS Decimal(5, 2)))
INSERT [dbo].[Notas] ([id_Nota], [id_Matricula], [id_CursoMateria], [trimestre], [nota]) VALUES (65, 9, 1, N'P1', CAST(74.00 AS Decimal(5, 2)))
INSERT [dbo].[Notas] ([id_Nota], [id_Matricula], [id_CursoMateria], [trimestre], [nota]) VALUES (66, 9, 1, N'P2', CAST(75.50 AS Decimal(5, 2)))
INSERT [dbo].[Notas] ([id_Nota], [id_Matricula], [id_CursoMateria], [trimestre], [nota]) VALUES (67, 9, 1, N'P3', CAST(76.00 AS Decimal(5, 2)))
INSERT [dbo].[Notas] ([id_Nota], [id_Matricula], [id_CursoMateria], [trimestre], [nota]) VALUES (68, 9, 1, N'P4', CAST(77.25 AS Decimal(5, 2)))
INSERT [dbo].[Notas] ([id_Nota], [id_Matricula], [id_CursoMateria], [trimestre], [nota]) VALUES (69, 9, 2, N'P1', CAST(72.00 AS Decimal(5, 2)))
INSERT [dbo].[Notas] ([id_Nota], [id_Matricula], [id_CursoMateria], [trimestre], [nota]) VALUES (70, 9, 2, N'P2', CAST(73.25 AS Decimal(5, 2)))
INSERT [dbo].[Notas] ([id_Nota], [id_Matricula], [id_CursoMateria], [trimestre], [nota]) VALUES (71, 9, 2, N'P3', CAST(74.00 AS Decimal(5, 2)))
INSERT [dbo].[Notas] ([id_Nota], [id_Matricula], [id_CursoMateria], [trimestre], [nota]) VALUES (72, 9, 2, N'P4', CAST(75.50 AS Decimal(5, 2)))
INSERT [dbo].[Notas] ([id_Nota], [id_Matricula], [id_CursoMateria], [trimestre], [nota]) VALUES (73, 10, 1, N'P1', CAST(82.00 AS Decimal(5, 2)))
INSERT [dbo].[Notas] ([id_Nota], [id_Matricula], [id_CursoMateria], [trimestre], [nota]) VALUES (74, 10, 1, N'P2', CAST(84.00 AS Decimal(5, 2)))
INSERT [dbo].[Notas] ([id_Nota], [id_Matricula], [id_CursoMateria], [trimestre], [nota]) VALUES (75, 10, 1, N'P3', CAST(85.50 AS Decimal(5, 2)))
INSERT [dbo].[Notas] ([id_Nota], [id_Matricula], [id_CursoMateria], [trimestre], [nota]) VALUES (76, 10, 1, N'P4', CAST(83.75 AS Decimal(5, 2)))
INSERT [dbo].[Notas] ([id_Nota], [id_Matricula], [id_CursoMateria], [trimestre], [nota]) VALUES (77, 10, 2, N'P1', CAST(79.50 AS Decimal(5, 2)))
INSERT [dbo].[Notas] ([id_Nota], [id_Matricula], [id_CursoMateria], [trimestre], [nota]) VALUES (78, 10, 2, N'P2', CAST(80.75 AS Decimal(5, 2)))
INSERT [dbo].[Notas] ([id_Nota], [id_Matricula], [id_CursoMateria], [trimestre], [nota]) VALUES (79, 10, 2, N'P3', CAST(81.25 AS Decimal(5, 2)))
INSERT [dbo].[Notas] ([id_Nota], [id_Matricula], [id_CursoMateria], [trimestre], [nota]) VALUES (80, 10, 2, N'P4', CAST(80.00 AS Decimal(5, 2)))
INSERT [dbo].[Notas] ([id_Nota], [id_Matricula], [id_CursoMateria], [trimestre], [nota]) VALUES (81, 11, 1, N'P1', CAST(82.50 AS Decimal(5, 2)))
INSERT [dbo].[Notas] ([id_Nota], [id_Matricula], [id_CursoMateria], [trimestre], [nota]) VALUES (82, 11, 1, N'P2', CAST(84.00 AS Decimal(5, 2)))
INSERT [dbo].[Notas] ([id_Nota], [id_Matricula], [id_CursoMateria], [trimestre], [nota]) VALUES (83, 11, 1, N'P3', CAST(85.25 AS Decimal(5, 2)))
INSERT [dbo].[Notas] ([id_Nota], [id_Matricula], [id_CursoMateria], [trimestre], [nota]) VALUES (84, 11, 1, N'P4', CAST(83.75 AS Decimal(5, 2)))
INSERT [dbo].[Notas] ([id_Nota], [id_Matricula], [id_CursoMateria], [trimestre], [nota]) VALUES (85, 11, 2, N'P1', CAST(79.50 AS Decimal(5, 2)))
INSERT [dbo].[Notas] ([id_Nota], [id_Matricula], [id_CursoMateria], [trimestre], [nota]) VALUES (86, 11, 2, N'P2', CAST(80.75 AS Decimal(5, 2)))
INSERT [dbo].[Notas] ([id_Nota], [id_Matricula], [id_CursoMateria], [trimestre], [nota]) VALUES (87, 11, 2, N'P3', CAST(81.00 AS Decimal(5, 2)))
INSERT [dbo].[Notas] ([id_Nota], [id_Matricula], [id_CursoMateria], [trimestre], [nota]) VALUES (88, 11, 2, N'P4', CAST(82.25 AS Decimal(5, 2)))
INSERT [dbo].[Notas] ([id_Nota], [id_Matricula], [id_CursoMateria], [trimestre], [nota]) VALUES (89, 12, 1, N'P1', CAST(77.00 AS Decimal(5, 2)))
INSERT [dbo].[Notas] ([id_Nota], [id_Matricula], [id_CursoMateria], [trimestre], [nota]) VALUES (90, 12, 1, N'P2', CAST(78.50 AS Decimal(5, 2)))
INSERT [dbo].[Notas] ([id_Nota], [id_Matricula], [id_CursoMateria], [trimestre], [nota]) VALUES (91, 12, 1, N'P3', CAST(79.75 AS Decimal(5, 2)))
INSERT [dbo].[Notas] ([id_Nota], [id_Matricula], [id_CursoMateria], [trimestre], [nota]) VALUES (92, 12, 1, N'P4', CAST(80.25 AS Decimal(5, 2)))
INSERT [dbo].[Notas] ([id_Nota], [id_Matricula], [id_CursoMateria], [trimestre], [nota]) VALUES (93, 12, 2, N'P1', CAST(74.50 AS Decimal(5, 2)))
INSERT [dbo].[Notas] ([id_Nota], [id_Matricula], [id_CursoMateria], [trimestre], [nota]) VALUES (94, 12, 2, N'P2', CAST(76.00 AS Decimal(5, 2)))
INSERT [dbo].[Notas] ([id_Nota], [id_Matricula], [id_CursoMateria], [trimestre], [nota]) VALUES (95, 12, 2, N'P3', CAST(77.25 AS Decimal(5, 2)))
INSERT [dbo].[Notas] ([id_Nota], [id_Matricula], [id_CursoMateria], [trimestre], [nota]) VALUES (96, 12, 2, N'P4', CAST(75.50 AS Decimal(5, 2)))
INSERT [dbo].[Notas] ([id_Nota], [id_Matricula], [id_CursoMateria], [trimestre], [nota]) VALUES (97, 13, 1, N'P1', CAST(88.25 AS Decimal(5, 2)))
INSERT [dbo].[Notas] ([id_Nota], [id_Matricula], [id_CursoMateria], [trimestre], [nota]) VALUES (98, 13, 1, N'P2', CAST(89.50 AS Decimal(5, 2)))
INSERT [dbo].[Notas] ([id_Nota], [id_Matricula], [id_CursoMateria], [trimestre], [nota]) VALUES (99, 13, 1, N'P3', CAST(90.00 AS Decimal(5, 2)))
GO
INSERT [dbo].[Notas] ([id_Nota], [id_Matricula], [id_CursoMateria], [trimestre], [nota]) VALUES (100, 13, 1, N'P4', CAST(89.75 AS Decimal(5, 2)))
INSERT [dbo].[Notas] ([id_Nota], [id_Matricula], [id_CursoMateria], [trimestre], [nota]) VALUES (101, 13, 2, N'P1', CAST(86.00 AS Decimal(5, 2)))
INSERT [dbo].[Notas] ([id_Nota], [id_Matricula], [id_CursoMateria], [trimestre], [nota]) VALUES (102, 13, 2, N'P2', CAST(87.25 AS Decimal(5, 2)))
INSERT [dbo].[Notas] ([id_Nota], [id_Matricula], [id_CursoMateria], [trimestre], [nota]) VALUES (103, 13, 2, N'P3', CAST(88.00 AS Decimal(5, 2)))
INSERT [dbo].[Notas] ([id_Nota], [id_Matricula], [id_CursoMateria], [trimestre], [nota]) VALUES (104, 13, 2, N'P4', CAST(87.50 AS Decimal(5, 2)))
INSERT [dbo].[Notas] ([id_Nota], [id_Matricula], [id_CursoMateria], [trimestre], [nota]) VALUES (105, 14, 1, N'P1', CAST(69.50 AS Decimal(5, 2)))
INSERT [dbo].[Notas] ([id_Nota], [id_Matricula], [id_CursoMateria], [trimestre], [nota]) VALUES (106, 14, 1, N'P2', CAST(70.75 AS Decimal(5, 2)))
INSERT [dbo].[Notas] ([id_Nota], [id_Matricula], [id_CursoMateria], [trimestre], [nota]) VALUES (107, 14, 1, N'P3', CAST(72.00 AS Decimal(5, 2)))
INSERT [dbo].[Notas] ([id_Nota], [id_Matricula], [id_CursoMateria], [trimestre], [nota]) VALUES (108, 14, 1, N'P4', CAST(71.25 AS Decimal(5, 2)))
INSERT [dbo].[Notas] ([id_Nota], [id_Matricula], [id_CursoMateria], [trimestre], [nota]) VALUES (109, 14, 2, N'P1', CAST(68.00 AS Decimal(5, 2)))
INSERT [dbo].[Notas] ([id_Nota], [id_Matricula], [id_CursoMateria], [trimestre], [nota]) VALUES (110, 14, 2, N'P2', CAST(69.25 AS Decimal(5, 2)))
INSERT [dbo].[Notas] ([id_Nota], [id_Matricula], [id_CursoMateria], [trimestre], [nota]) VALUES (111, 14, 2, N'P3', CAST(70.50 AS Decimal(5, 2)))
INSERT [dbo].[Notas] ([id_Nota], [id_Matricula], [id_CursoMateria], [trimestre], [nota]) VALUES (112, 14, 2, N'P4', CAST(69.75 AS Decimal(5, 2)))
INSERT [dbo].[Notas] ([id_Nota], [id_Matricula], [id_CursoMateria], [trimestre], [nota]) VALUES (113, 15, 1, N'P1', CAST(90.00 AS Decimal(5, 2)))
INSERT [dbo].[Notas] ([id_Nota], [id_Matricula], [id_CursoMateria], [trimestre], [nota]) VALUES (114, 15, 1, N'P2', CAST(91.25 AS Decimal(5, 2)))
INSERT [dbo].[Notas] ([id_Nota], [id_Matricula], [id_CursoMateria], [trimestre], [nota]) VALUES (115, 15, 1, N'P3', CAST(92.50 AS Decimal(5, 2)))
INSERT [dbo].[Notas] ([id_Nota], [id_Matricula], [id_CursoMateria], [trimestre], [nota]) VALUES (116, 15, 1, N'P4', CAST(91.75 AS Decimal(5, 2)))
INSERT [dbo].[Notas] ([id_Nota], [id_Matricula], [id_CursoMateria], [trimestre], [nota]) VALUES (117, 15, 2, N'P1', CAST(88.50 AS Decimal(5, 2)))
INSERT [dbo].[Notas] ([id_Nota], [id_Matricula], [id_CursoMateria], [trimestre], [nota]) VALUES (118, 15, 2, N'P2', CAST(89.75 AS Decimal(5, 2)))
INSERT [dbo].[Notas] ([id_Nota], [id_Matricula], [id_CursoMateria], [trimestre], [nota]) VALUES (119, 15, 2, N'P3', CAST(90.20 AS Decimal(5, 2)))
INSERT [dbo].[Notas] ([id_Nota], [id_Matricula], [id_CursoMateria], [trimestre], [nota]) VALUES (120, 15, 2, N'P4', CAST(89.00 AS Decimal(5, 2)))
INSERT [dbo].[Notas] ([id_Nota], [id_Matricula], [id_CursoMateria], [trimestre], [nota]) VALUES (121, 16, 1, N'P1', CAST(75.00 AS Decimal(5, 2)))
INSERT [dbo].[Notas] ([id_Nota], [id_Matricula], [id_CursoMateria], [trimestre], [nota]) VALUES (122, 16, 1, N'P2', CAST(76.50 AS Decimal(5, 2)))
INSERT [dbo].[Notas] ([id_Nota], [id_Matricula], [id_CursoMateria], [trimestre], [nota]) VALUES (123, 16, 1, N'P3', CAST(77.75 AS Decimal(5, 2)))
INSERT [dbo].[Notas] ([id_Nota], [id_Matricula], [id_CursoMateria], [trimestre], [nota]) VALUES (124, 16, 1, N'P4', CAST(78.25 AS Decimal(5, 2)))
INSERT [dbo].[Notas] ([id_Nota], [id_Matricula], [id_CursoMateria], [trimestre], [nota]) VALUES (125, 16, 2, N'P1', CAST(73.25 AS Decimal(5, 2)))
INSERT [dbo].[Notas] ([id_Nota], [id_Matricula], [id_CursoMateria], [trimestre], [nota]) VALUES (126, 16, 2, N'P2', CAST(74.50 AS Decimal(5, 2)))
INSERT [dbo].[Notas] ([id_Nota], [id_Matricula], [id_CursoMateria], [trimestre], [nota]) VALUES (127, 16, 2, N'P3', CAST(75.65 AS Decimal(5, 2)))
INSERT [dbo].[Notas] ([id_Nota], [id_Matricula], [id_CursoMateria], [trimestre], [nota]) VALUES (128, 16, 2, N'P4', CAST(76.80 AS Decimal(5, 2)))
INSERT [dbo].[Notas] ([id_Nota], [id_Matricula], [id_CursoMateria], [trimestre], [nota]) VALUES (129, 17, 1, N'P1', CAST(83.00 AS Decimal(5, 2)))
INSERT [dbo].[Notas] ([id_Nota], [id_Matricula], [id_CursoMateria], [trimestre], [nota]) VALUES (130, 17, 1, N'P2', CAST(84.50 AS Decimal(5, 2)))
INSERT [dbo].[Notas] ([id_Nota], [id_Matricula], [id_CursoMateria], [trimestre], [nota]) VALUES (131, 17, 1, N'P3', CAST(85.75 AS Decimal(5, 2)))
INSERT [dbo].[Notas] ([id_Nota], [id_Matricula], [id_CursoMateria], [trimestre], [nota]) VALUES (132, 17, 1, N'P4', CAST(84.90 AS Decimal(5, 2)))
INSERT [dbo].[Notas] ([id_Nota], [id_Matricula], [id_CursoMateria], [trimestre], [nota]) VALUES (133, 17, 2, N'P1', CAST(81.50 AS Decimal(5, 2)))
INSERT [dbo].[Notas] ([id_Nota], [id_Matricula], [id_CursoMateria], [trimestre], [nota]) VALUES (134, 17, 2, N'P2', CAST(82.75 AS Decimal(5, 2)))
INSERT [dbo].[Notas] ([id_Nota], [id_Matricula], [id_CursoMateria], [trimestre], [nota]) VALUES (135, 17, 2, N'P3', CAST(83.80 AS Decimal(5, 2)))
INSERT [dbo].[Notas] ([id_Nota], [id_Matricula], [id_CursoMateria], [trimestre], [nota]) VALUES (136, 17, 2, N'P4', CAST(82.95 AS Decimal(5, 2)))
INSERT [dbo].[Notas] ([id_Nota], [id_Matricula], [id_CursoMateria], [trimestre], [nota]) VALUES (137, 18, 1, N'P1', CAST(94.00 AS Decimal(5, 2)))
INSERT [dbo].[Notas] ([id_Nota], [id_Matricula], [id_CursoMateria], [trimestre], [nota]) VALUES (138, 18, 1, N'P2', CAST(95.25 AS Decimal(5, 2)))
INSERT [dbo].[Notas] ([id_Nota], [id_Matricula], [id_CursoMateria], [trimestre], [nota]) VALUES (139, 18, 1, N'P3', CAST(96.50 AS Decimal(5, 2)))
INSERT [dbo].[Notas] ([id_Nota], [id_Matricula], [id_CursoMateria], [trimestre], [nota]) VALUES (140, 18, 1, N'P4', CAST(95.75 AS Decimal(5, 2)))
INSERT [dbo].[Notas] ([id_Nota], [id_Matricula], [id_CursoMateria], [trimestre], [nota]) VALUES (141, 18, 2, N'P1', CAST(92.50 AS Decimal(5, 2)))
INSERT [dbo].[Notas] ([id_Nota], [id_Matricula], [id_CursoMateria], [trimestre], [nota]) VALUES (142, 18, 2, N'P2', CAST(93.75 AS Decimal(5, 2)))
INSERT [dbo].[Notas] ([id_Nota], [id_Matricula], [id_CursoMateria], [trimestre], [nota]) VALUES (143, 18, 2, N'P3', CAST(94.80 AS Decimal(5, 2)))
INSERT [dbo].[Notas] ([id_Nota], [id_Matricula], [id_CursoMateria], [trimestre], [nota]) VALUES (144, 18, 2, N'P4', CAST(93.95 AS Decimal(5, 2)))
INSERT [dbo].[Notas] ([id_Nota], [id_Matricula], [id_CursoMateria], [trimestre], [nota]) VALUES (145, 19, 1, N'P1', CAST(78.25 AS Decimal(5, 2)))
INSERT [dbo].[Notas] ([id_Nota], [id_Matricula], [id_CursoMateria], [trimestre], [nota]) VALUES (146, 19, 1, N'P2', CAST(79.50 AS Decimal(5, 2)))
INSERT [dbo].[Notas] ([id_Nota], [id_Matricula], [id_CursoMateria], [trimestre], [nota]) VALUES (147, 19, 1, N'P3', CAST(80.75 AS Decimal(5, 2)))
INSERT [dbo].[Notas] ([id_Nota], [id_Matricula], [id_CursoMateria], [trimestre], [nota]) VALUES (148, 19, 1, N'P4', CAST(80.00 AS Decimal(5, 2)))
INSERT [dbo].[Notas] ([id_Nota], [id_Matricula], [id_CursoMateria], [trimestre], [nota]) VALUES (149, 19, 2, N'P1', CAST(76.25 AS Decimal(5, 2)))
INSERT [dbo].[Notas] ([id_Nota], [id_Matricula], [id_CursoMateria], [trimestre], [nota]) VALUES (150, 19, 2, N'P2', CAST(77.50 AS Decimal(5, 2)))
INSERT [dbo].[Notas] ([id_Nota], [id_Matricula], [id_CursoMateria], [trimestre], [nota]) VALUES (151, 19, 2, N'P3', CAST(78.80 AS Decimal(5, 2)))
INSERT [dbo].[Notas] ([id_Nota], [id_Matricula], [id_CursoMateria], [trimestre], [nota]) VALUES (152, 19, 2, N'P4', CAST(77.95 AS Decimal(5, 2)))
INSERT [dbo].[Notas] ([id_Nota], [id_Matricula], [id_CursoMateria], [trimestre], [nota]) VALUES (153, 20, 1, N'P1', CAST(87.00 AS Decimal(5, 2)))
INSERT [dbo].[Notas] ([id_Nota], [id_Matricula], [id_CursoMateria], [trimestre], [nota]) VALUES (154, 20, 1, N'P2', CAST(88.50 AS Decimal(5, 2)))
INSERT [dbo].[Notas] ([id_Nota], [id_Matricula], [id_CursoMateria], [trimestre], [nota]) VALUES (155, 20, 1, N'P3', CAST(89.75 AS Decimal(5, 2)))
INSERT [dbo].[Notas] ([id_Nota], [id_Matricula], [id_CursoMateria], [trimestre], [nota]) VALUES (156, 20, 1, N'P4', CAST(88.90 AS Decimal(5, 2)))
INSERT [dbo].[Notas] ([id_Nota], [id_Matricula], [id_CursoMateria], [trimestre], [nota]) VALUES (157, 20, 2, N'P1', CAST(85.50 AS Decimal(5, 2)))
INSERT [dbo].[Notas] ([id_Nota], [id_Matricula], [id_CursoMateria], [trimestre], [nota]) VALUES (158, 20, 2, N'P2', CAST(86.75 AS Decimal(5, 2)))
INSERT [dbo].[Notas] ([id_Nota], [id_Matricula], [id_CursoMateria], [trimestre], [nota]) VALUES (159, 20, 2, N'P3', CAST(87.80 AS Decimal(5, 2)))
INSERT [dbo].[Notas] ([id_Nota], [id_Matricula], [id_CursoMateria], [trimestre], [nota]) VALUES (160, 20, 2, N'P4', CAST(86.95 AS Decimal(5, 2)))
INSERT [dbo].[Notas] ([id_Nota], [id_Matricula], [id_CursoMateria], [trimestre], [nota]) VALUES (161, 1, 3, N'P1', CAST(88.00 AS Decimal(5, 2)))
INSERT [dbo].[Notas] ([id_Nota], [id_Matricula], [id_CursoMateria], [trimestre], [nota]) VALUES (162, 1, 3, N'P2', CAST(89.50 AS Decimal(5, 2)))
INSERT [dbo].[Notas] ([id_Nota], [id_Matricula], [id_CursoMateria], [trimestre], [nota]) VALUES (163, 1, 3, N'P3', CAST(90.00 AS Decimal(5, 2)))
INSERT [dbo].[Notas] ([id_Nota], [id_Matricula], [id_CursoMateria], [trimestre], [nota]) VALUES (164, 1, 3, N'P4', CAST(88.75 AS Decimal(5, 2)))
INSERT [dbo].[Notas] ([id_Nota], [id_Matricula], [id_CursoMateria], [trimestre], [nota]) VALUES (165, 1, 4, N'P1', CAST(82.00 AS Decimal(5, 2)))
INSERT [dbo].[Notas] ([id_Nota], [id_Matricula], [id_CursoMateria], [trimestre], [nota]) VALUES (166, 1, 4, N'P2', CAST(83.50 AS Decimal(5, 2)))
INSERT [dbo].[Notas] ([id_Nota], [id_Matricula], [id_CursoMateria], [trimestre], [nota]) VALUES (167, 1, 4, N'P3', CAST(84.25 AS Decimal(5, 2)))
INSERT [dbo].[Notas] ([id_Nota], [id_Matricula], [id_CursoMateria], [trimestre], [nota]) VALUES (168, 1, 4, N'P4', CAST(82.50 AS Decimal(5, 2)))
INSERT [dbo].[Notas] ([id_Nota], [id_Matricula], [id_CursoMateria], [trimestre], [nota]) VALUES (169, 2, 3, N'P1', CAST(76.50 AS Decimal(5, 2)))
INSERT [dbo].[Notas] ([id_Nota], [id_Matricula], [id_CursoMateria], [trimestre], [nota]) VALUES (170, 2, 3, N'P2', CAST(78.00 AS Decimal(5, 2)))
INSERT [dbo].[Notas] ([id_Nota], [id_Matricula], [id_CursoMateria], [trimestre], [nota]) VALUES (171, 2, 3, N'P3', CAST(79.25 AS Decimal(5, 2)))
INSERT [dbo].[Notas] ([id_Nota], [id_Matricula], [id_CursoMateria], [trimestre], [nota]) VALUES (172, 2, 3, N'P4', CAST(77.75 AS Decimal(5, 2)))
INSERT [dbo].[Notas] ([id_Nota], [id_Matricula], [id_CursoMateria], [trimestre], [nota]) VALUES (173, 2, 4, N'P1', CAST(70.25 AS Decimal(5, 2)))
INSERT [dbo].[Notas] ([id_Nota], [id_Matricula], [id_CursoMateria], [trimestre], [nota]) VALUES (174, 2, 4, N'P2', CAST(71.50 AS Decimal(5, 2)))
INSERT [dbo].[Notas] ([id_Nota], [id_Matricula], [id_CursoMateria], [trimestre], [nota]) VALUES (175, 2, 4, N'P3', CAST(72.00 AS Decimal(5, 2)))
INSERT [dbo].[Notas] ([id_Nota], [id_Matricula], [id_CursoMateria], [trimestre], [nota]) VALUES (176, 2, 4, N'P4', CAST(71.25 AS Decimal(5, 2)))
INSERT [dbo].[Notas] ([id_Nota], [id_Matricula], [id_CursoMateria], [trimestre], [nota]) VALUES (177, 3, 3, N'P1', CAST(93.50 AS Decimal(5, 2)))
INSERT [dbo].[Notas] ([id_Nota], [id_Matricula], [id_CursoMateria], [trimestre], [nota]) VALUES (178, 3, 3, N'P2', CAST(94.00 AS Decimal(5, 2)))
INSERT [dbo].[Notas] ([id_Nota], [id_Matricula], [id_CursoMateria], [trimestre], [nota]) VALUES (179, 3, 3, N'P3', CAST(95.25 AS Decimal(5, 2)))
INSERT [dbo].[Notas] ([id_Nota], [id_Matricula], [id_CursoMateria], [trimestre], [nota]) VALUES (180, 3, 3, N'P4', CAST(94.75 AS Decimal(5, 2)))
INSERT [dbo].[Notas] ([id_Nota], [id_Matricula], [id_CursoMateria], [trimestre], [nota]) VALUES (181, 3, 4, N'P1', CAST(88.25 AS Decimal(5, 2)))
INSERT [dbo].[Notas] ([id_Nota], [id_Matricula], [id_CursoMateria], [trimestre], [nota]) VALUES (182, 3, 4, N'P2', CAST(89.00 AS Decimal(5, 2)))
INSERT [dbo].[Notas] ([id_Nota], [id_Matricula], [id_CursoMateria], [trimestre], [nota]) VALUES (183, 3, 4, N'P3', CAST(89.75 AS Decimal(5, 2)))
INSERT [dbo].[Notas] ([id_Nota], [id_Matricula], [id_CursoMateria], [trimestre], [nota]) VALUES (184, 3, 4, N'P4', CAST(88.50 AS Decimal(5, 2)))
INSERT [dbo].[Notas] ([id_Nota], [id_Matricula], [id_CursoMateria], [trimestre], [nota]) VALUES (185, 4, 3, N'P1', CAST(69.25 AS Decimal(5, 2)))
INSERT [dbo].[Notas] ([id_Nota], [id_Matricula], [id_CursoMateria], [trimestre], [nota]) VALUES (186, 4, 3, N'P2', CAST(70.50 AS Decimal(5, 2)))
INSERT [dbo].[Notas] ([id_Nota], [id_Matricula], [id_CursoMateria], [trimestre], [nota]) VALUES (187, 4, 3, N'P3', CAST(71.25 AS Decimal(5, 2)))
INSERT [dbo].[Notas] ([id_Nota], [id_Matricula], [id_CursoMateria], [trimestre], [nota]) VALUES (188, 4, 3, N'P4', CAST(69.75 AS Decimal(5, 2)))
INSERT [dbo].[Notas] ([id_Nota], [id_Matricula], [id_CursoMateria], [trimestre], [nota]) VALUES (189, 4, 4, N'P1', CAST(65.00 AS Decimal(5, 2)))
INSERT [dbo].[Notas] ([id_Nota], [id_Matricula], [id_CursoMateria], [trimestre], [nota]) VALUES (190, 4, 4, N'P2', CAST(66.25 AS Decimal(5, 2)))
INSERT [dbo].[Notas] ([id_Nota], [id_Matricula], [id_CursoMateria], [trimestre], [nota]) VALUES (191, 4, 4, N'P3', CAST(67.00 AS Decimal(5, 2)))
INSERT [dbo].[Notas] ([id_Nota], [id_Matricula], [id_CursoMateria], [trimestre], [nota]) VALUES (192, 4, 4, N'P4', CAST(66.50 AS Decimal(5, 2)))
INSERT [dbo].[Notas] ([id_Nota], [id_Matricula], [id_CursoMateria], [trimestre], [nota]) VALUES (193, 5, 3, N'P1', CAST(85.25 AS Decimal(5, 2)))
INSERT [dbo].[Notas] ([id_Nota], [id_Matricula], [id_CursoMateria], [trimestre], [nota]) VALUES (194, 5, 3, N'P2', CAST(86.00 AS Decimal(5, 2)))
INSERT [dbo].[Notas] ([id_Nota], [id_Matricula], [id_CursoMateria], [trimestre], [nota]) VALUES (195, 5, 3, N'P3', CAST(87.50 AS Decimal(5, 2)))
INSERT [dbo].[Notas] ([id_Nota], [id_Matricula], [id_CursoMateria], [trimestre], [nota]) VALUES (196, 5, 3, N'P4', CAST(86.75 AS Decimal(5, 2)))
INSERT [dbo].[Notas] ([id_Nota], [id_Matricula], [id_CursoMateria], [trimestre], [nota]) VALUES (197, 5, 4, N'P1', CAST(80.50 AS Decimal(5, 2)))
INSERT [dbo].[Notas] ([id_Nota], [id_Matricula], [id_CursoMateria], [trimestre], [nota]) VALUES (198, 5, 4, N'P2', CAST(81.25 AS Decimal(5, 2)))
INSERT [dbo].[Notas] ([id_Nota], [id_Matricula], [id_CursoMateria], [trimestre], [nota]) VALUES (199, 5, 4, N'P3', CAST(82.50 AS Decimal(5, 2)))
GO
INSERT [dbo].[Notas] ([id_Nota], [id_Matricula], [id_CursoMateria], [trimestre], [nota]) VALUES (200, 5, 4, N'P4', CAST(81.75 AS Decimal(5, 2)))
INSERT [dbo].[Notas] ([id_Nota], [id_Matricula], [id_CursoMateria], [trimestre], [nota]) VALUES (201, 6, 3, N'P1', CAST(74.00 AS Decimal(5, 2)))
INSERT [dbo].[Notas] ([id_Nota], [id_Matricula], [id_CursoMateria], [trimestre], [nota]) VALUES (202, 6, 3, N'P2', CAST(75.25 AS Decimal(5, 2)))
INSERT [dbo].[Notas] ([id_Nota], [id_Matricula], [id_CursoMateria], [trimestre], [nota]) VALUES (203, 6, 3, N'P3', CAST(76.00 AS Decimal(5, 2)))
INSERT [dbo].[Notas] ([id_Nota], [id_Matricula], [id_CursoMateria], [trimestre], [nota]) VALUES (204, 6, 3, N'P4', CAST(75.50 AS Decimal(5, 2)))
INSERT [dbo].[Notas] ([id_Nota], [id_Matricula], [id_CursoMateria], [trimestre], [nota]) VALUES (205, 6, 4, N'P1', CAST(68.75 AS Decimal(5, 2)))
INSERT [dbo].[Notas] ([id_Nota], [id_Matricula], [id_CursoMateria], [trimestre], [nota]) VALUES (206, 6, 4, N'P2', CAST(70.00 AS Decimal(5, 2)))
INSERT [dbo].[Notas] ([id_Nota], [id_Matricula], [id_CursoMateria], [trimestre], [nota]) VALUES (207, 6, 4, N'P3', CAST(71.50 AS Decimal(5, 2)))
INSERT [dbo].[Notas] ([id_Nota], [id_Matricula], [id_CursoMateria], [trimestre], [nota]) VALUES (208, 6, 4, N'P4', CAST(69.25 AS Decimal(5, 2)))
INSERT [dbo].[Notas] ([id_Nota], [id_Matricula], [id_CursoMateria], [trimestre], [nota]) VALUES (209, 7, 3, N'P1', CAST(80.00 AS Decimal(5, 2)))
INSERT [dbo].[Notas] ([id_Nota], [id_Matricula], [id_CursoMateria], [trimestre], [nota]) VALUES (210, 7, 3, N'P2', CAST(81.50 AS Decimal(5, 2)))
INSERT [dbo].[Notas] ([id_Nota], [id_Matricula], [id_CursoMateria], [trimestre], [nota]) VALUES (211, 7, 3, N'P3', CAST(83.00 AS Decimal(5, 2)))
INSERT [dbo].[Notas] ([id_Nota], [id_Matricula], [id_CursoMateria], [trimestre], [nota]) VALUES (212, 7, 3, N'P4', CAST(82.25 AS Decimal(5, 2)))
INSERT [dbo].[Notas] ([id_Nota], [id_Matricula], [id_CursoMateria], [trimestre], [nota]) VALUES (213, 7, 4, N'P1', CAST(75.75 AS Decimal(5, 2)))
INSERT [dbo].[Notas] ([id_Nota], [id_Matricula], [id_CursoMateria], [trimestre], [nota]) VALUES (214, 7, 4, N'P2', CAST(77.00 AS Decimal(5, 2)))
INSERT [dbo].[Notas] ([id_Nota], [id_Matricula], [id_CursoMateria], [trimestre], [nota]) VALUES (215, 7, 4, N'P3', CAST(78.50 AS Decimal(5, 2)))
INSERT [dbo].[Notas] ([id_Nota], [id_Matricula], [id_CursoMateria], [trimestre], [nota]) VALUES (216, 7, 4, N'P4', CAST(77.25 AS Decimal(5, 2)))
INSERT [dbo].[Notas] ([id_Nota], [id_Matricula], [id_CursoMateria], [trimestre], [nota]) VALUES (217, 8, 3, N'P1', CAST(90.00 AS Decimal(5, 2)))
INSERT [dbo].[Notas] ([id_Nota], [id_Matricula], [id_CursoMateria], [trimestre], [nota]) VALUES (218, 8, 3, N'P2', CAST(91.00 AS Decimal(5, 2)))
INSERT [dbo].[Notas] ([id_Nota], [id_Matricula], [id_CursoMateria], [trimestre], [nota]) VALUES (219, 8, 3, N'P3', CAST(92.25 AS Decimal(5, 2)))
INSERT [dbo].[Notas] ([id_Nota], [id_Matricula], [id_CursoMateria], [trimestre], [nota]) VALUES (220, 8, 3, N'P4', CAST(91.75 AS Decimal(5, 2)))
INSERT [dbo].[Notas] ([id_Nota], [id_Matricula], [id_CursoMateria], [trimestre], [nota]) VALUES (221, 8, 4, N'P1', CAST(86.50 AS Decimal(5, 2)))
INSERT [dbo].[Notas] ([id_Nota], [id_Matricula], [id_CursoMateria], [trimestre], [nota]) VALUES (222, 8, 4, N'P2', CAST(87.00 AS Decimal(5, 2)))
INSERT [dbo].[Notas] ([id_Nota], [id_Matricula], [id_CursoMateria], [trimestre], [nota]) VALUES (223, 8, 4, N'P3', CAST(88.00 AS Decimal(5, 2)))
INSERT [dbo].[Notas] ([id_Nota], [id_Matricula], [id_CursoMateria], [trimestre], [nota]) VALUES (224, 8, 4, N'P4', CAST(87.50 AS Decimal(5, 2)))
INSERT [dbo].[Notas] ([id_Nota], [id_Matricula], [id_CursoMateria], [trimestre], [nota]) VALUES (225, 9, 3, N'P1', CAST(72.25 AS Decimal(5, 2)))
INSERT [dbo].[Notas] ([id_Nota], [id_Matricula], [id_CursoMateria], [trimestre], [nota]) VALUES (226, 9, 3, N'P2', CAST(73.00 AS Decimal(5, 2)))
INSERT [dbo].[Notas] ([id_Nota], [id_Matricula], [id_CursoMateria], [trimestre], [nota]) VALUES (227, 9, 3, N'P3', CAST(74.50 AS Decimal(5, 2)))
INSERT [dbo].[Notas] ([id_Nota], [id_Matricula], [id_CursoMateria], [trimestre], [nota]) VALUES (228, 9, 3, N'P4', CAST(73.75 AS Decimal(5, 2)))
INSERT [dbo].[Notas] ([id_Nota], [id_Matricula], [id_CursoMateria], [trimestre], [nota]) VALUES (229, 9, 4, N'P1', CAST(68.00 AS Decimal(5, 2)))
INSERT [dbo].[Notas] ([id_Nota], [id_Matricula], [id_CursoMateria], [trimestre], [nota]) VALUES (230, 9, 4, N'P2', CAST(69.25 AS Decimal(5, 2)))
INSERT [dbo].[Notas] ([id_Nota], [id_Matricula], [id_CursoMateria], [trimestre], [nota]) VALUES (231, 9, 4, N'P3', CAST(70.00 AS Decimal(5, 2)))
INSERT [dbo].[Notas] ([id_Nota], [id_Matricula], [id_CursoMateria], [trimestre], [nota]) VALUES (232, 9, 4, N'P4', CAST(69.50 AS Decimal(5, 2)))
INSERT [dbo].[Notas] ([id_Nota], [id_Matricula], [id_CursoMateria], [trimestre], [nota]) VALUES (233, 10, 3, N'P1', CAST(84.75 AS Decimal(5, 2)))
INSERT [dbo].[Notas] ([id_Nota], [id_Matricula], [id_CursoMateria], [trimestre], [nota]) VALUES (234, 10, 3, N'P2', CAST(85.50 AS Decimal(5, 2)))
INSERT [dbo].[Notas] ([id_Nota], [id_Matricula], [id_CursoMateria], [trimestre], [nota]) VALUES (235, 10, 3, N'P3', CAST(86.00 AS Decimal(5, 2)))
INSERT [dbo].[Notas] ([id_Nota], [id_Matricula], [id_CursoMateria], [trimestre], [nota]) VALUES (236, 10, 3, N'P4', CAST(85.25 AS Decimal(5, 2)))
INSERT [dbo].[Notas] ([id_Nota], [id_Matricula], [id_CursoMateria], [trimestre], [nota]) VALUES (237, 10, 4, N'P1', CAST(80.00 AS Decimal(5, 2)))
INSERT [dbo].[Notas] ([id_Nota], [id_Matricula], [id_CursoMateria], [trimestre], [nota]) VALUES (238, 10, 4, N'P2', CAST(81.25 AS Decimal(5, 2)))
INSERT [dbo].[Notas] ([id_Nota], [id_Matricula], [id_CursoMateria], [trimestre], [nota]) VALUES (239, 10, 4, N'P3', CAST(82.00 AS Decimal(5, 2)))
INSERT [dbo].[Notas] ([id_Nota], [id_Matricula], [id_CursoMateria], [trimestre], [nota]) VALUES (240, 10, 4, N'P4', CAST(81.50 AS Decimal(5, 2)))
INSERT [dbo].[Notas] ([id_Nota], [id_Matricula], [id_CursoMateria], [trimestre], [nota]) VALUES (241, 11, 3, N'P1', CAST(86.50 AS Decimal(5, 2)))
INSERT [dbo].[Notas] ([id_Nota], [id_Matricula], [id_CursoMateria], [trimestre], [nota]) VALUES (242, 11, 3, N'P2', CAST(87.00 AS Decimal(5, 2)))
INSERT [dbo].[Notas] ([id_Nota], [id_Matricula], [id_CursoMateria], [trimestre], [nota]) VALUES (243, 11, 3, N'P3', CAST(88.25 AS Decimal(5, 2)))
INSERT [dbo].[Notas] ([id_Nota], [id_Matricula], [id_CursoMateria], [trimestre], [nota]) VALUES (244, 11, 3, N'P4', CAST(87.75 AS Decimal(5, 2)))
INSERT [dbo].[Notas] ([id_Nota], [id_Matricula], [id_CursoMateria], [trimestre], [nota]) VALUES (245, 11, 4, N'P1', CAST(82.25 AS Decimal(5, 2)))
INSERT [dbo].[Notas] ([id_Nota], [id_Matricula], [id_CursoMateria], [trimestre], [nota]) VALUES (246, 11, 4, N'P2', CAST(83.00 AS Decimal(5, 2)))
INSERT [dbo].[Notas] ([id_Nota], [id_Matricula], [id_CursoMateria], [trimestre], [nota]) VALUES (247, 11, 4, N'P3', CAST(84.50 AS Decimal(5, 2)))
INSERT [dbo].[Notas] ([id_Nota], [id_Matricula], [id_CursoMateria], [trimestre], [nota]) VALUES (248, 11, 4, N'P4', CAST(83.75 AS Decimal(5, 2)))
INSERT [dbo].[Notas] ([id_Nota], [id_Matricula], [id_CursoMateria], [trimestre], [nota]) VALUES (249, 12, 3, N'P1', CAST(76.00 AS Decimal(5, 2)))
INSERT [dbo].[Notas] ([id_Nota], [id_Matricula], [id_CursoMateria], [trimestre], [nota]) VALUES (250, 12, 3, N'P2', CAST(77.25 AS Decimal(5, 2)))
INSERT [dbo].[Notas] ([id_Nota], [id_Matricula], [id_CursoMateria], [trimestre], [nota]) VALUES (251, 12, 3, N'P3', CAST(78.50 AS Decimal(5, 2)))
INSERT [dbo].[Notas] ([id_Nota], [id_Matricula], [id_CursoMateria], [trimestre], [nota]) VALUES (252, 12, 3, N'P4', CAST(79.00 AS Decimal(5, 2)))
INSERT [dbo].[Notas] ([id_Nota], [id_Matricula], [id_CursoMateria], [trimestre], [nota]) VALUES (253, 12, 4, N'P1', CAST(68.50 AS Decimal(5, 2)))
INSERT [dbo].[Notas] ([id_Nota], [id_Matricula], [id_CursoMateria], [trimestre], [nota]) VALUES (254, 12, 4, N'P2', CAST(69.75 AS Decimal(5, 2)))
INSERT [dbo].[Notas] ([id_Nota], [id_Matricula], [id_CursoMateria], [trimestre], [nota]) VALUES (255, 12, 4, N'P3', CAST(70.00 AS Decimal(5, 2)))
INSERT [dbo].[Notas] ([id_Nota], [id_Matricula], [id_CursoMateria], [trimestre], [nota]) VALUES (256, 12, 4, N'P4', CAST(71.25 AS Decimal(5, 2)))
INSERT [dbo].[Notas] ([id_Nota], [id_Matricula], [id_CursoMateria], [trimestre], [nota]) VALUES (257, 13, 3, N'P1', CAST(91.00 AS Decimal(5, 2)))
INSERT [dbo].[Notas] ([id_Nota], [id_Matricula], [id_CursoMateria], [trimestre], [nota]) VALUES (258, 13, 3, N'P2', CAST(92.50 AS Decimal(5, 2)))
INSERT [dbo].[Notas] ([id_Nota], [id_Matricula], [id_CursoMateria], [trimestre], [nota]) VALUES (259, 13, 3, N'P3', CAST(93.25 AS Decimal(5, 2)))
INSERT [dbo].[Notas] ([id_Nota], [id_Matricula], [id_CursoMateria], [trimestre], [nota]) VALUES (260, 13, 3, N'P4', CAST(94.00 AS Decimal(5, 2)))
INSERT [dbo].[Notas] ([id_Nota], [id_Matricula], [id_CursoMateria], [trimestre], [nota]) VALUES (261, 13, 4, N'P1', CAST(83.50 AS Decimal(5, 2)))
INSERT [dbo].[Notas] ([id_Nota], [id_Matricula], [id_CursoMateria], [trimestre], [nota]) VALUES (262, 13, 4, N'P2', CAST(84.75 AS Decimal(5, 2)))
INSERT [dbo].[Notas] ([id_Nota], [id_Matricula], [id_CursoMateria], [trimestre], [nota]) VALUES (263, 13, 4, N'P3', CAST(85.00 AS Decimal(5, 2)))
INSERT [dbo].[Notas] ([id_Nota], [id_Matricula], [id_CursoMateria], [trimestre], [nota]) VALUES (264, 13, 4, N'P4', CAST(85.25 AS Decimal(5, 2)))
INSERT [dbo].[Notas] ([id_Nota], [id_Matricula], [id_CursoMateria], [trimestre], [nota]) VALUES (265, 14, 3, N'P1', CAST(67.00 AS Decimal(5, 2)))
INSERT [dbo].[Notas] ([id_Nota], [id_Matricula], [id_CursoMateria], [trimestre], [nota]) VALUES (266, 14, 3, N'P2', CAST(68.75 AS Decimal(5, 2)))
INSERT [dbo].[Notas] ([id_Nota], [id_Matricula], [id_CursoMateria], [trimestre], [nota]) VALUES (267, 14, 3, N'P3', CAST(69.50 AS Decimal(5, 2)))
INSERT [dbo].[Notas] ([id_Nota], [id_Matricula], [id_CursoMateria], [trimestre], [nota]) VALUES (268, 14, 3, N'P4', CAST(70.00 AS Decimal(5, 2)))
INSERT [dbo].[Notas] ([id_Nota], [id_Matricula], [id_CursoMateria], [trimestre], [nota]) VALUES (269, 14, 4, N'P1', CAST(60.25 AS Decimal(5, 2)))
INSERT [dbo].[Notas] ([id_Nota], [id_Matricula], [id_CursoMateria], [trimestre], [nota]) VALUES (270, 14, 4, N'P2', CAST(61.50 AS Decimal(5, 2)))
INSERT [dbo].[Notas] ([id_Nota], [id_Matricula], [id_CursoMateria], [trimestre], [nota]) VALUES (271, 14, 4, N'P3', CAST(62.75 AS Decimal(5, 2)))
INSERT [dbo].[Notas] ([id_Nota], [id_Matricula], [id_CursoMateria], [trimestre], [nota]) VALUES (272, 14, 4, N'P4', CAST(63.00 AS Decimal(5, 2)))
INSERT [dbo].[Notas] ([id_Nota], [id_Matricula], [id_CursoMateria], [trimestre], [nota]) VALUES (273, 15, 3, N'P1', CAST(89.00 AS Decimal(5, 2)))
INSERT [dbo].[Notas] ([id_Nota], [id_Matricula], [id_CursoMateria], [trimestre], [nota]) VALUES (274, 15, 3, N'P2', CAST(90.25 AS Decimal(5, 2)))
INSERT [dbo].[Notas] ([id_Nota], [id_Matricula], [id_CursoMateria], [trimestre], [nota]) VALUES (275, 15, 3, N'P3', CAST(91.50 AS Decimal(5, 2)))
INSERT [dbo].[Notas] ([id_Nota], [id_Matricula], [id_CursoMateria], [trimestre], [nota]) VALUES (276, 15, 3, N'P4', CAST(92.00 AS Decimal(5, 2)))
INSERT [dbo].[Notas] ([id_Nota], [id_Matricula], [id_CursoMateria], [trimestre], [nota]) VALUES (277, 15, 4, N'P1', CAST(84.00 AS Decimal(5, 2)))
INSERT [dbo].[Notas] ([id_Nota], [id_Matricula], [id_CursoMateria], [trimestre], [nota]) VALUES (278, 15, 4, N'P2', CAST(85.25 AS Decimal(5, 2)))
INSERT [dbo].[Notas] ([id_Nota], [id_Matricula], [id_CursoMateria], [trimestre], [nota]) VALUES (279, 15, 4, N'P3', CAST(86.50 AS Decimal(5, 2)))
INSERT [dbo].[Notas] ([id_Nota], [id_Matricula], [id_CursoMateria], [trimestre], [nota]) VALUES (280, 15, 4, N'P4', CAST(87.00 AS Decimal(5, 2)))
INSERT [dbo].[Notas] ([id_Nota], [id_Matricula], [id_CursoMateria], [trimestre], [nota]) VALUES (281, 16, 3, N'P1', CAST(77.50 AS Decimal(5, 2)))
INSERT [dbo].[Notas] ([id_Nota], [id_Matricula], [id_CursoMateria], [trimestre], [nota]) VALUES (282, 16, 3, N'P2', CAST(78.75 AS Decimal(5, 2)))
INSERT [dbo].[Notas] ([id_Nota], [id_Matricula], [id_CursoMateria], [trimestre], [nota]) VALUES (283, 16, 3, N'P3', CAST(79.00 AS Decimal(5, 2)))
INSERT [dbo].[Notas] ([id_Nota], [id_Matricula], [id_CursoMateria], [trimestre], [nota]) VALUES (284, 16, 3, N'P4', CAST(80.25 AS Decimal(5, 2)))
INSERT [dbo].[Notas] ([id_Nota], [id_Matricula], [id_CursoMateria], [trimestre], [nota]) VALUES (285, 16, 4, N'P1', CAST(72.00 AS Decimal(5, 2)))
INSERT [dbo].[Notas] ([id_Nota], [id_Matricula], [id_CursoMateria], [trimestre], [nota]) VALUES (286, 16, 4, N'P2', CAST(73.25 AS Decimal(5, 2)))
INSERT [dbo].[Notas] ([id_Nota], [id_Matricula], [id_CursoMateria], [trimestre], [nota]) VALUES (287, 16, 4, N'P3', CAST(74.50 AS Decimal(5, 2)))
INSERT [dbo].[Notas] ([id_Nota], [id_Matricula], [id_CursoMateria], [trimestre], [nota]) VALUES (288, 16, 4, N'P4', CAST(75.00 AS Decimal(5, 2)))
INSERT [dbo].[Notas] ([id_Nota], [id_Matricula], [id_CursoMateria], [trimestre], [nota]) VALUES (289, 17, 3, N'P1', CAST(85.25 AS Decimal(5, 2)))
INSERT [dbo].[Notas] ([id_Nota], [id_Matricula], [id_CursoMateria], [trimestre], [nota]) VALUES (290, 17, 3, N'P2', CAST(86.00 AS Decimal(5, 2)))
INSERT [dbo].[Notas] ([id_Nota], [id_Matricula], [id_CursoMateria], [trimestre], [nota]) VALUES (291, 17, 3, N'P3', CAST(87.00 AS Decimal(5, 2)))
INSERT [dbo].[Notas] ([id_Nota], [id_Matricula], [id_CursoMateria], [trimestre], [nota]) VALUES (292, 17, 3, N'P4', CAST(88.50 AS Decimal(5, 2)))
INSERT [dbo].[Notas] ([id_Nota], [id_Matricula], [id_CursoMateria], [trimestre], [nota]) VALUES (293, 17, 4, N'P1', CAST(78.75 AS Decimal(5, 2)))
INSERT [dbo].[Notas] ([id_Nota], [id_Matricula], [id_CursoMateria], [trimestre], [nota]) VALUES (294, 17, 4, N'P2', CAST(79.50 AS Decimal(5, 2)))
INSERT [dbo].[Notas] ([id_Nota], [id_Matricula], [id_CursoMateria], [trimestre], [nota]) VALUES (295, 17, 4, N'P3', CAST(80.00 AS Decimal(5, 2)))
INSERT [dbo].[Notas] ([id_Nota], [id_Matricula], [id_CursoMateria], [trimestre], [nota]) VALUES (296, 17, 4, N'P4', CAST(81.25 AS Decimal(5, 2)))
INSERT [dbo].[Notas] ([id_Nota], [id_Matricula], [id_CursoMateria], [trimestre], [nota]) VALUES (297, 18, 3, N'P1', CAST(95.00 AS Decimal(5, 2)))
INSERT [dbo].[Notas] ([id_Nota], [id_Matricula], [id_CursoMateria], [trimestre], [nota]) VALUES (298, 18, 3, N'P2', CAST(96.25 AS Decimal(5, 2)))
INSERT [dbo].[Notas] ([id_Nota], [id_Matricula], [id_CursoMateria], [trimestre], [nota]) VALUES (299, 18, 3, N'P3', CAST(97.50 AS Decimal(5, 2)))
GO
INSERT [dbo].[Notas] ([id_Nota], [id_Matricula], [id_CursoMateria], [trimestre], [nota]) VALUES (300, 18, 3, N'P4', CAST(98.00 AS Decimal(5, 2)))
INSERT [dbo].[Notas] ([id_Nota], [id_Matricula], [id_CursoMateria], [trimestre], [nota]) VALUES (301, 18, 4, N'P1', CAST(90.25 AS Decimal(5, 2)))
INSERT [dbo].[Notas] ([id_Nota], [id_Matricula], [id_CursoMateria], [trimestre], [nota]) VALUES (302, 18, 4, N'P2', CAST(91.50 AS Decimal(5, 2)))
INSERT [dbo].[Notas] ([id_Nota], [id_Matricula], [id_CursoMateria], [trimestre], [nota]) VALUES (303, 18, 4, N'P3', CAST(92.00 AS Decimal(5, 2)))
INSERT [dbo].[Notas] ([id_Nota], [id_Matricula], [id_CursoMateria], [trimestre], [nota]) VALUES (304, 18, 4, N'P4', CAST(93.25 AS Decimal(5, 2)))
INSERT [dbo].[Notas] ([id_Nota], [id_Matricula], [id_CursoMateria], [trimestre], [nota]) VALUES (305, 19, 3, N'P1', CAST(82.25 AS Decimal(5, 2)))
INSERT [dbo].[Notas] ([id_Nota], [id_Matricula], [id_CursoMateria], [trimestre], [nota]) VALUES (306, 19, 3, N'P2', CAST(83.50 AS Decimal(5, 2)))
INSERT [dbo].[Notas] ([id_Nota], [id_Matricula], [id_CursoMateria], [trimestre], [nota]) VALUES (307, 19, 3, N'P3', CAST(84.75 AS Decimal(5, 2)))
INSERT [dbo].[Notas] ([id_Nota], [id_Matricula], [id_CursoMateria], [trimestre], [nota]) VALUES (308, 19, 3, N'P4', CAST(85.00 AS Decimal(5, 2)))
INSERT [dbo].[Notas] ([id_Nota], [id_Matricula], [id_CursoMateria], [trimestre], [nota]) VALUES (309, 19, 4, N'P1', CAST(75.00 AS Decimal(5, 2)))
INSERT [dbo].[Notas] ([id_Nota], [id_Matricula], [id_CursoMateria], [trimestre], [nota]) VALUES (310, 19, 4, N'P2', CAST(76.25 AS Decimal(5, 2)))
INSERT [dbo].[Notas] ([id_Nota], [id_Matricula], [id_CursoMateria], [trimestre], [nota]) VALUES (311, 19, 4, N'P3', CAST(77.50 AS Decimal(5, 2)))
INSERT [dbo].[Notas] ([id_Nota], [id_Matricula], [id_CursoMateria], [trimestre], [nota]) VALUES (312, 19, 4, N'P4', CAST(78.00 AS Decimal(5, 2)))
INSERT [dbo].[Notas] ([id_Nota], [id_Matricula], [id_CursoMateria], [trimestre], [nota]) VALUES (313, 20, 3, N'P1', CAST(88.75 AS Decimal(5, 2)))
INSERT [dbo].[Notas] ([id_Nota], [id_Matricula], [id_CursoMateria], [trimestre], [nota]) VALUES (314, 20, 3, N'P2', CAST(89.50 AS Decimal(5, 2)))
INSERT [dbo].[Notas] ([id_Nota], [id_Matricula], [id_CursoMateria], [trimestre], [nota]) VALUES (315, 20, 3, N'P3', CAST(90.25 AS Decimal(5, 2)))
INSERT [dbo].[Notas] ([id_Nota], [id_Matricula], [id_CursoMateria], [trimestre], [nota]) VALUES (316, 20, 3, N'P4', CAST(91.00 AS Decimal(5, 2)))
INSERT [dbo].[Notas] ([id_Nota], [id_Matricula], [id_CursoMateria], [trimestre], [nota]) VALUES (317, 20, 4, N'P1', CAST(82.50 AS Decimal(5, 2)))
INSERT [dbo].[Notas] ([id_Nota], [id_Matricula], [id_CursoMateria], [trimestre], [nota]) VALUES (318, 20, 4, N'P2', CAST(83.75 AS Decimal(5, 2)))
INSERT [dbo].[Notas] ([id_Nota], [id_Matricula], [id_CursoMateria], [trimestre], [nota]) VALUES (319, 20, 4, N'P3', CAST(84.00 AS Decimal(5, 2)))
INSERT [dbo].[Notas] ([id_Nota], [id_Matricula], [id_CursoMateria], [trimestre], [nota]) VALUES (320, 20, 4, N'P4', CAST(85.25 AS Decimal(5, 2)))
INSERT [dbo].[Notas] ([id_Nota], [id_Matricula], [id_CursoMateria], [trimestre], [nota]) VALUES (321, 23, 1, N'P1', CAST(100.00 AS Decimal(5, 2)))
INSERT [dbo].[Notas] ([id_Nota], [id_Matricula], [id_CursoMateria], [trimestre], [nota]) VALUES (322, 24, 1, N'P1', CAST(100.00 AS Decimal(5, 2)))
SET IDENTITY_INSERT [dbo].[Notas] OFF
GO
SET IDENTITY_INSERT [dbo].[Profesores] ON 

INSERT [dbo].[Profesores] ([id_profesor], [nombre], [apellido], [titulo_profesional], [fecha_ingreso], [estado], [fecha_nacimiento], [sexo]) VALUES (1, N'María', N'González', N'Licenciada en Lengua y Literatura', CAST(N'2018-03-15' AS Date), N'activo', CAST(N'1985-06-20' AS Date), N'F')
INSERT [dbo].[Profesores] ([id_profesor], [nombre], [apellido], [titulo_profesional], [fecha_ingreso], [estado], [fecha_nacimiento], [sexo]) VALUES (2, N'Juan', N'Pérez', N'Profesor de Matemática', CAST(N'2017-02-10' AS Date), N'activo', CAST(N'1980-12-10' AS Date), N'M')
INSERT [dbo].[Profesores] ([id_profesor], [nombre], [apellido], [titulo_profesional], [fecha_ingreso], [estado], [fecha_nacimiento], [sexo]) VALUES (3, N'Lucía', N'Martínez', N'Licenciada en Historia', CAST(N'2019-08-01' AS Date), N'activo', CAST(N'1988-09-14' AS Date), N'F')
INSERT [dbo].[Profesores] ([id_profesor], [nombre], [apellido], [titulo_profesional], [fecha_ingreso], [estado], [fecha_nacimiento], [sexo]) VALUES (4, N'Carlos', N'Ramírez', N'Profesor de Educación Física', CAST(N'2020-01-12' AS Date), N'licencia', CAST(N'1983-04-03' AS Date), N'M')
INSERT [dbo].[Profesores] ([id_profesor], [nombre], [apellido], [titulo_profesional], [fecha_ingreso], [estado], [fecha_nacimiento], [sexo]) VALUES (5, N'Ana', N'Suárez', N'Profesora de Química', CAST(N'2021-04-25' AS Date), N'activo', CAST(N'1990-02-18' AS Date), N'F')
INSERT [dbo].[Profesores] ([id_profesor], [nombre], [apellido], [titulo_profesional], [fecha_ingreso], [estado], [fecha_nacimiento], [sexo]) VALUES (6, N'Diego', N'Fernández', N'Licenciado en Física', CAST(N'2016-09-10' AS Date), N'retirado', CAST(N'1972-11-30' AS Date), N'M')
INSERT [dbo].[Profesores] ([id_profesor], [nombre], [apellido], [titulo_profesional], [fecha_ingreso], [estado], [fecha_nacimiento], [sexo]) VALUES (7, N'Laura', N'Torres', N'Profesora de Música', CAST(N'2019-05-20' AS Date), N'activo', CAST(N'1987-03-05' AS Date), N'F')
INSERT [dbo].[Profesores] ([id_profesor], [nombre], [apellido], [titulo_profesional], [fecha_ingreso], [estado], [fecha_nacimiento], [sexo]) VALUES (8, N'Pedro', N'Morales', N'Licenciado en Ciencias Sociales', CAST(N'2015-07-07' AS Date), N'activo', CAST(N'1979-08-22' AS Date), N'M')
INSERT [dbo].[Profesores] ([id_profesor], [nombre], [apellido], [titulo_profesional], [fecha_ingreso], [estado], [fecha_nacimiento], [sexo]) VALUES (9, N'Sofía', N'López', N'Profesora de Biología', CAST(N'2022-03-17' AS Date), N'activo', CAST(N'1992-10-12' AS Date), N'F')
INSERT [dbo].[Profesores] ([id_profesor], [nombre], [apellido], [titulo_profesional], [fecha_ingreso], [estado], [fecha_nacimiento], [sexo]) VALUES (10, N'Matías', N'Herrera', N'Profesor de Geografía', CAST(N'2018-11-03' AS Date), N'activo', CAST(N'1984-06-09' AS Date), N'M')
INSERT [dbo].[Profesores] ([id_profesor], [nombre], [apellido], [titulo_profesional], [fecha_ingreso], [estado], [fecha_nacimiento], [sexo]) VALUES (11, N'Prueba', N'Prueba', N'Prueba', CAST(N'2025-04-19' AS Date), N'activo', CAST(N'2005-12-07' AS Date), N'M')
INSERT [dbo].[Profesores] ([id_profesor], [nombre], [apellido], [titulo_profesional], [fecha_ingreso], [estado], [fecha_nacimiento], [sexo]) VALUES (12, N'jhael', N'adames', N'licenciado en biologia ', CAST(N'2025-04-22' AS Date), N'activo', CAST(N'2005-12-07' AS Date), N'M')
SET IDENTITY_INSERT [dbo].[Profesores] OFF
GO
INSERT [dbo].[Usuarios] ([id_Usuario], [Nombre_Usuario], [Clave]) VALUES (1, N'admin', N'admin123')
INSERT [dbo].[Usuarios] ([id_Usuario], [Nombre_Usuario], [Clave]) VALUES (2, N'jlopez', N'clave456')
INSERT [dbo].[Usuarios] ([id_Usuario], [Nombre_Usuario], [Clave]) VALUES (NULL, N'jhael', N'adames10')
GO
ALTER TABLE [dbo].[Profesores] ADD  DEFAULT ('activo') FOR [estado]
GO
ALTER TABLE [dbo].[Curso]  WITH CHECK ADD FOREIGN KEY([id_profesor])
REFERENCES [dbo].[Profesores] ([id_profesor])
GO
ALTER TABLE [dbo].[CursoMateria]  WITH CHECK ADD FOREIGN KEY([id_Curso])
REFERENCES [dbo].[Curso] ([id_Curso])
GO
ALTER TABLE [dbo].[CursoMateria]  WITH CHECK ADD FOREIGN KEY([id_Materia])
REFERENCES [dbo].[Materias] ([id_Materia])
GO
ALTER TABLE [dbo].[CursoMateria]  WITH CHECK ADD FOREIGN KEY([id_Profesor])
REFERENCES [dbo].[Profesores] ([id_profesor])
GO
ALTER TABLE [dbo].[Matricula]  WITH CHECK ADD FOREIGN KEY([id_Curso])
REFERENCES [dbo].[Curso] ([id_Curso])
GO
ALTER TABLE [dbo].[Matricula]  WITH CHECK ADD FOREIGN KEY([id_Estudiante])
REFERENCES [dbo].[Estudiantes] ([id_Estudiante])
GO
ALTER TABLE [dbo].[Notas]  WITH CHECK ADD FOREIGN KEY([id_CursoMateria])
REFERENCES [dbo].[CursoMateria] ([id_CursoMateria])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Notas]  WITH CHECK ADD FOREIGN KEY([id_Matricula])
REFERENCES [dbo].[Matricula] ([id_Matricula])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Notas]  WITH CHECK ADD CHECK  (([nota]>=(0) AND [nota]<=(100)))
GO
ALTER TABLE [dbo].[Notas]  WITH CHECK ADD CHECK  (([trimestre]='P4' OR [trimestre]='P3' OR [trimestre]='P2' OR [trimestre]='P1'))
GO
