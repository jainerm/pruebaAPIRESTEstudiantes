USE [Estudiantes]
GO
/****** Object:  Table [dbo].[Curso]    Script Date: 4/08/2021 11:18:15 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Curso](
	[id_curso] [int] IDENTITY(1,1) NOT NULL,
	[CodigoCurso] [varchar](10) NULL,
	[NombreCurso] [varchar](3) NULL,
	[FechaInicio] [date] NOT NULL,
	[FechaFin] [date] NOT NULL,
 CONSTRAINT [PK_curso] PRIMARY KEY CLUSTERED 
(
	[id_curso] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Direccion]    Script Date: 4/08/2021 11:18:15 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Direccion](
	[id_direccion] [int] IDENTITY(1,1) NOT NULL,
	[Direccion] [varchar](60) NULL,
	[TipoDireccion] [int] NULL,
	[EstudianteId] [int] NOT NULL,
 CONSTRAINT [PK_direccion] PRIMARY KEY CLUSTERED 
(
	[id_direccion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EntidadEstudiantes]    Script Date: 4/08/2021 11:18:15 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EntidadEstudiantes](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[EstaBorrado] [bit] NULL,
	[FechaCreacion] [datetime] NULL,
	[FechaBorrado] [datetime] NULL,
	[FechaActualizacion] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Estudiante]    Script Date: 4/08/2021 11:18:15 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Estudiante](
	[id_estudiante] [int] IDENTITY(1,1) NOT NULL,
	[Nombres] [bit] NULL,
	[Apellidos] [date] NOT NULL,
	[FechaNacimento] [date] NOT NULL,
	[Genero] [int] NOT NULL,
	[id_direccion] [int] NOT NULL,
	[EstudianteId] [int] NOT NULL,
 CONSTRAINT [PK_estudiante] PRIMARY KEY CLUSTERED 
(
	[id_estudiante] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EstudianteCurso]    Script Date: 4/08/2021 11:18:15 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EstudianteCurso](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[id_estudiante] [int] NOT NULL,
	[id_curso] [int] NOT NULL,
 CONSTRAINT [PK_estudiantecurso] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Direccion] ADD  DEFAULT ((0)) FOR [TipoDireccion]
GO
ALTER TABLE [dbo].[Direccion]  WITH CHECK ADD  CONSTRAINT [FK_Direccion_Estudiante] FOREIGN KEY([EstudianteId])
REFERENCES [dbo].[Estudiante] ([id_estudiante])
GO
ALTER TABLE [dbo].[Direccion] CHECK CONSTRAINT [FK_Direccion_Estudiante]
GO
ALTER TABLE [dbo].[EstudianteCurso]  WITH CHECK ADD  CONSTRAINT [FK_EstudianteCurso_Curso] FOREIGN KEY([id_curso])
REFERENCES [dbo].[Curso] ([id_curso])
GO
ALTER TABLE [dbo].[EstudianteCurso] CHECK CONSTRAINT [FK_EstudianteCurso_Curso]
GO
ALTER TABLE [dbo].[EstudianteCurso]  WITH CHECK ADD  CONSTRAINT [FK_EstudianteCurso_Estudiante] FOREIGN KEY([id_estudiante])
REFERENCES [dbo].[Estudiante] ([id_estudiante])
GO
ALTER TABLE [dbo].[EstudianteCurso] CHECK CONSTRAINT [FK_EstudianteCurso_Estudiante]
GO
