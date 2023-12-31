USE [master]
GO
/****** Object:  Database [Nasa]    Script Date: 22/12/2023 11:48:40 a. m. ******/
CREATE DATABASE [Nasa]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Nasa', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\Nasa.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Nasa_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\Nasa_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [Nasa] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Nasa].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Nasa] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Nasa] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Nasa] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Nasa] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Nasa] SET ARITHABORT OFF 
GO
ALTER DATABASE [Nasa] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Nasa] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Nasa] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Nasa] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Nasa] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Nasa] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Nasa] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Nasa] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Nasa] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Nasa] SET  ENABLE_BROKER 
GO
ALTER DATABASE [Nasa] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Nasa] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Nasa] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Nasa] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Nasa] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Nasa] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Nasa] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Nasa] SET RECOVERY FULL 
GO
ALTER DATABASE [Nasa] SET  MULTI_USER 
GO
ALTER DATABASE [Nasa] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Nasa] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Nasa] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Nasa] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Nasa] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Nasa] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'Nasa', N'ON'
GO
ALTER DATABASE [Nasa] SET QUERY_STORE = ON
GO
ALTER DATABASE [Nasa] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [Nasa]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 22/12/2023 11:48:41 a. m. ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[astronautas]    Script Date: 22/12/2023 11:48:41 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[astronautas](
	[id_n] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [nvarchar](max) NULL,
	[nacionalidad] [nvarchar](max) NULL,
	[descripcion] [nvarchar](max) NULL,
	[fecha_nacimiento] [datetime2](7) NULL,
	[edad] [int] NULL,
	[redes_sociales] [nvarchar](max) NULL,
	[Estado] [nvarchar](max) NULL,
 CONSTRAINT [PK_astronautas] PRIMARY KEY CLUSTERED 
(
	[id_n] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Misiones]    Script Date: 22/12/2023 11:48:41 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Misiones](
	[id_mision] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [nvarchar](max) NULL,
	[objetivo] [nvarchar](max) NULL,
	[fecha_iniciada] [datetime2](7) NULL,
	[fecha_terminada] [datetime2](7) NULL,
	[id_n] [int] NOT NULL,
 CONSTRAINT [PK_Misiones] PRIMARY KEY CLUSTERED 
(
	[id_mision] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20231215003352_iniDB', N'6.0.5')
GO
SET IDENTITY_INSERT [dbo].[astronautas] ON 

INSERT [dbo].[astronautas] ([id_n], [nombre], [nacionalidad], [descripcion], [fecha_nacimiento], [edad], [redes_sociales], [Estado]) VALUES (1, N'Neil Armstrong:', N'estadounidense', N'Neil Armstrong fue un astronauta estadounidense y el primer ser humano en caminar sobre la Luna. Nació el 5 de agosto de 1930 en Ohio, Estados Unidos, y falleció el 25 de agosto de 2012. Armstrong comandó la misión del Apolo 11 en 1969, donde se convirtió en el primer hombre en pisar la superficie lunar.', CAST(N'1934-03-01T00:00:00.0000000' AS DateTime2), 82, N'Neil Armstrong (@neilarmstrongofficialL', N'Muerto')
INSERT [dbo].[astronautas] ([id_n], [nombre], [nacionalidad], [descripcion], [fecha_nacimiento], [edad], [redes_sociales], [Estado]) VALUES (2, N'Jasmin Moghbeli', N'aleman', N'es una piloto de pruebas estadounidense del Cuerpo de Marines de Estados Unidos y astronauta de la NASA. Está graduada del Instituto de Tecnología de Massachusetts, la Escuela de Posgrado Naval y la Escuela de Pilotos de Pruebas Navales, y a 2019, ha acumulado más de 2.000 horas de vuelo y ha realizado 150 misiones de combate, incluidas salidas en Afganistán.', CAST(N'1983-06-24T00:00:00.0000000' AS DateTime2), 40, N'
astrojaws', N'Vivo')
INSERT [dbo].[astronautas] ([id_n], [nombre], [nacionalidad], [descripcion], [fecha_nacimiento], [edad], [redes_sociales], [Estado]) VALUES (3, N'André Kuipers', N'Neerlandesa', N'André Kuipers (kœʏpərs ɑndreɪ; nacido el 5 de octubre de 1958) es un médico neerlandés y astronauta de la ESA. Se convirtió en el segundo ciudadano astronauta neerlandés, tercero de origen neerlandés y quinto astronauta hablante [cita requerida] neerlandés sobre el lanzamiento de la Soyuz TMA-4, el 19 de abril de 2004. Kuipers volvió a la Tierra a bordo de la Soyuz TMA-3 11 días más tarde.

Kuipers es el primer astronauta neerlandés en volver al espacio. El 5 de agosto de 2009, el Ministro de Economía Neerlandés Maria van der Hoeven, anunció Kuipers fue seleccionado como astronauta para las expediciones 30 y 31 a la Estación Espacial Internacional (ISS). Fue lanzado al espacio el 21 de diciembre de 2011 y volvió a la Tierra el 1 de julio de 2012.1​2​', CAST(N'1958-10-05T00:00:00.0000000' AS DateTime2), 65, N'
andre_kuipers_officieel', N'Vivo')
INSERT [dbo].[astronautas] ([id_n], [nombre], [nacionalidad], [descripcion], [fecha_nacimiento], [edad], [redes_sociales], [Estado]) VALUES (4, N'Sally Ride', N'estadounidense', N'Sally Ride (Encino, 26 de mayo de 19511​-La Jolla, 23 de julio de 20122​) fue una física estadounidense y astronauta de la NASA que en 1983 se convirtió en la primera mujer de su país y la tercera del mundo en explorar el espacio exterior,3​ siendo a su vez la estadounidense más joven en lograrlo a la edad de 32 años. Llegó a ser también una jugadora profesional de tenis.

Era una graduada de la Universidad de Stanford donde lograba un grado en física y un grado en literatura inglés en 1973, una maestría de física en 1975, y un doctorado en física en 1978 para su estudio en la interacción de rayos X con el medio interestelar. A finales de los años setenta respondió a un aviso de prensa solicitando voluntarios para el programa de la NASA, dando inicio a su carrera espacial. En el espacio, Ride fue antecedida por dos mujeres soviéticas, Valentina Tereshkova (en 1963) y Svetlana Savitskaja (en 1982), siendo ella la tercera mujer en el espacio.3​ Pasaba más que 343 horas en total en el espacio exterior. Salió NASA en 1987.', CAST(N'1951-03-26T00:00:00.0000000' AS DateTime2), 61, N'Sally Ride Science (@sallyridescience)', N'Muerto')
INSERT [dbo].[astronautas] ([id_n], [nombre], [nacionalidad], [descripcion], [fecha_nacimiento], [edad], [redes_sociales], [Estado]) VALUES (5, N'Michael R. Barratt', N'Estadounidense', N'Michael Reed Barratt, (nacido el 16 de abril de 1959) es un médico estadounidense y un astronauta de la NASA. Especializado en medicina aeroespacial, Barratt sirvió como médico de vuelo para la NASA antes de ser elegido astronauta, y ha jugado un papel importante desarrollando los programas de medicina de la NASA tanto para el Programa Shuttle-Mir como para la Estación Espacial Internacional. Fue ingeniero de vuelo en la Expedición 19, su primer vuelo, y seguirá su estancia allí como parte de la tripulación de la Expedición 20.', CAST(N'1959-04-16T00:00:00.0000000' AS DateTime2), 64, N'Michael Barratt (@mickbarra)', N'vivo')
INSERT [dbo].[astronautas] ([id_n], [nombre], [nacionalidad], [descripcion], [fecha_nacimiento], [edad], [redes_sociales], [Estado]) VALUES (6, N'Nicole Stott', N'Estadounidense', N'Nicole Marie Passonno Stott es una ingeniera estadounidense y astronauta de la NASA. Trabaja en misiones espaciales a la Estación Espacial Internacional. Fue ingeniera de vuelo en la Expedición 20. Además fue asignada a la futura misión STS-133, que fue el penúltimo vuelo previsto para los transbordadores espaciales.', CAST(N'1962-11-19T00:00:00.0000000' AS DateTime2), 61, N'Nicole Stott (@astro_nicole)', N'vivo')
SET IDENTITY_INSERT [dbo].[astronautas] OFF
GO
SET IDENTITY_INSERT [dbo].[Misiones] ON 

INSERT [dbo].[Misiones] ([id_mision], [nombre], [objetivo], [fecha_iniciada], [fecha_terminada], [id_n]) VALUES (1, N'Gemini 11', N' objetivos principales: poner a prueba la capacidad de un astronauta de volar en misiones de larga duración; comprobar cómo una nave espacial podía encontrarse y atracar en órbita alrededor de la Tierra y la Luna; probar los métodos de reentrada y aterrizaje y conocer mejor los efectos de los vuelos', CAST(N'1966-09-12T00:00:00.0000000' AS DateTime2), CAST(N'1966-09-15T00:00:00.0000000' AS DateTime2), 1)
INSERT [dbo].[Misiones] ([id_mision], [nombre], [objetivo], [fecha_iniciada], [fecha_terminada], [id_n]) VALUES (2, N'SpaceX', N' lanzamiento del Crew 7, SpaceX ha vuelto a transportar con éxito una tripulación de astronautas a la Estación Espacial Internacional (ISS). Esta misión forma parte del Programa de Tripulación Comercial de la NASA y sirve para rotar a los miembros de la tripulación, garantizando el funcionamiento continuo de la ISS y apoyando la investigación científica en curso y los experimentos realizados a bordo de la estación espacial. También contribuye al objetivo a largo plazo de la cooperación internacional en la exploración espacial. Esta misión forma parte del Programa de Tripulación Comercial de la NASA, una asociación pionera entre la NASA y empresas privadas como SpaceX.', CAST(N'2023-08-26T00:00:00.0000000' AS DateTime2), CAST(N'2023-08-27T00:00:00.0000000' AS DateTime2), 2)
INSERT [dbo].[Misiones] ([id_mision], [nombre], [objetivo], [fecha_iniciada], [fecha_terminada], [id_n]) VALUES (4, N' DELTA', N'Los experimentos han arrojado resultados que podrían contribuir al desarrollo de la industria, por ejemplo, para desarrollar sistemas de iluminación para estadios deportivos y carreteras y sistemas de refrigeración más eficientes. Miles de escolares holandeses, alemanes y de otras nacionalidades realizaron el mismo experimento de germinación de semillas que André Kuipers en la ISS, con lo que también sacaron provecho de la misión. Los beneficios educativos de la misión se prolongarán en el futuro gracias a la elaboración de materiales educativos que van a distribuirse a lo largo de 10.000 colegios de toda Europa. Estos materiales se han recopilado utilizando secuencias de vídeo de experimentos tomadas en la ISS durante la misión.', CAST(N'2004-04-19T00:00:00.0000000' AS DateTime2), CAST(N'2004-04-30T00:00:00.0000000' AS DateTime2), 3)
INSERT [dbo].[Misiones] ([id_mision], [nombre], [objetivo], [fecha_iniciada], [fecha_terminada], [id_n]) VALUES (6, N'STS-7', N'era una misión del Transbordador espacial por la NASA usando el Challenger, fue lanzado el 18 de junio de 1983. Esta es la séptima misión del Transbordador, era la segunda misión para el Challenger. Era también la primera misión estadounidense en tener un astronauta del sexo femenino.', CAST(N'1983-06-18T00:00:00.0000000' AS DateTime2), CAST(N'1983-06-24T00:00:00.0000000' AS DateTime2), 4)
INSERT [dbo].[Misiones] ([id_mision], [nombre], [objetivo], [fecha_iniciada], [fecha_terminada], [id_n]) VALUES (8, N'Shuttle-Mir', N'El programa, en ocasiones denominado ''Fase Uno'', se diseñó para permitir a los Estados Unidos aprender de la experiencia rusa en vuelos espaciales de larga duración y para fomentar un espíritu cooperativo entre las dos naciones y sus respectivas agencias espaciales, la NASA y la Roscosmos. Este prepararía el camino para futuras aventuras espaciales cooperativas; en concreto, para la ''Fase Dos'' del proyecto conjunto, la construcción de la Estación Espacial Internacional. Anunciado en 1993 y con el inicio de las misiones en 1994, el programa continuo hasta su finalización programada en 1998, y consistía en once misiones del transbordador, un vuelo conjunto Soyuz y casi 1000 días en el espacio para astronautas estadounidenses durante siete expediciones.', CAST(N'1994-02-03T00:00:00.0000000' AS DateTime2), CAST(N'1998-04-17T00:00:00.0000000' AS DateTime2), 5)
INSERT [dbo].[Misiones] ([id_mision], [nombre], [objetivo], [fecha_iniciada], [fecha_terminada], [id_n]) VALUES (9, N'STS-133', N'fue la última misión del transbordador espacial Discovery dentro del Programa del Transbordador Espacial. La misión, que originalmente fue programada para su lanzamiento el 1 de noviembre de 2010, tuvo que ser reprogramada en 9 ocasiones hasta su lanzamiento el 24 de febrero de 2011 a las 4:50 p. m. EST. Comandado por Steve Lindsey, único comandante de la historia del transbordador en conseguir 5 vuelos de Transbordador, el vuelo llevó el Módulo Multipropósito "Leonardo" a la Estación Espacial Internacional y lo dejó acoplado a esta de manera permanente. También llevó consigo el tercero de 4 ELCs (ExPRESS Logistic Carrier), un Robot humanoide llamado "Robonaut 2" y el DE (SpaceX''s Dragon-Eye). Además de otros componentes y objetos de uso terrestre (como banderas, ladrillos LEGO, e insignias en honor al final del programa del transbordador espacial). La misión constituyó el trigésimonoveno y último vuelo del Transbordador espacial Discovery y a su vez el vuelo 133 del programa del transbordador espacial, que comenzó el 12 de abril de 1981, siendo esta la penúltima misión del programa y la primera del año (2011).', CAST(N'2011-02-24T00:00:00.0000000' AS DateTime2), CAST(N'2011-03-09T00:00:00.0000000' AS DateTime2), 6)
SET IDENTITY_INSERT [dbo].[Misiones] OFF
GO
/****** Object:  Index [IX_Misiones_id_n]    Script Date: 22/12/2023 11:48:41 a. m. ******/
CREATE NONCLUSTERED INDEX [IX_Misiones_id_n] ON [dbo].[Misiones]
(
	[id_n] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Misiones]  WITH CHECK ADD  CONSTRAINT [FK_Misiones_astronautas_id_n] FOREIGN KEY([id_n])
REFERENCES [dbo].[astronautas] ([id_n])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Misiones] CHECK CONSTRAINT [FK_Misiones_astronautas_id_n]
GO
USE [master]
GO
ALTER DATABASE [Nasa] SET  READ_WRITE 
GO
