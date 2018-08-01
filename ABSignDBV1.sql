USE [master]
GO
/****** Object:  Database [ABSign]    Script Date: 8/1/2018 3:09:54 PM ******/
CREATE DATABASE [ABSign]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ABSign', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\ABSign.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'ABSign_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\ABSign_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [ABSign] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ABSign].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ABSign] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ABSign] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ABSign] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ABSign] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ABSign] SET ARITHABORT OFF 
GO
ALTER DATABASE [ABSign] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [ABSign] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ABSign] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ABSign] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ABSign] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ABSign] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ABSign] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ABSign] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ABSign] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ABSign] SET  DISABLE_BROKER 
GO
ALTER DATABASE [ABSign] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ABSign] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ABSign] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ABSign] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ABSign] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ABSign] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ABSign] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ABSign] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [ABSign] SET  MULTI_USER 
GO
ALTER DATABASE [ABSign] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ABSign] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ABSign] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ABSign] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [ABSign] SET DELAYED_DURABILITY = DISABLED 
GO
USE [ABSign]
GO
/****** Object:  Table [dbo].[__MigrationHistory]    Script Date: 8/1/2018 3:09:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[__MigrationHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ContextKey] [nvarchar](300) NOT NULL,
	[Model] [varbinary](max) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK_dbo.__MigrationHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC,
	[ContextKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 8/1/2018 3:09:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 8/1/2018 3:09:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 8/1/2018 3:09:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](128) NOT NULL,
	[ProviderKey] [nvarchar](128) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC,
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 8/1/2018 3:09:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](128) NOT NULL,
	[RoleId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 8/1/2018 3:09:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](128) NOT NULL,
	[Email] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEndDateUtc] [datetime] NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[UserName] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Profiles]    Script Date: 8/1/2018 3:09:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Profiles](
	[ProfileID] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](50) NULL,
	[LastName] [nvarchar](50) NULL,
	[UserNameID] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_Profiles] PRIMARY KEY CLUSTERED 
(
	[ProfileID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Signs]    Script Date: 8/1/2018 3:09:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Signs](
	[SignID] [int] IDENTITY(1,1) NOT NULL,
	[Text] [nvarchar](50) NULL,
	[Image] [nvarchar](50) NULL,
	[FancyText] [nvarchar](50) NULL,
 CONSTRAINT [PK_Signs] PRIMARY KEY CLUSTERED 
(
	[SignID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TestScores]    Script Date: 8/1/2018 3:09:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TestScores](
	[TestScoreID] [int] IDENTITY(1,1) NOT NULL,
	[Score] [int] NULL,
	[ProfileID] [int] NOT NULL,
 CONSTRAINT [PK_TestScores] PRIMARY KEY CLUSTERED 
(
	[TestScoreID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
INSERT [dbo].[__MigrationHistory] ([MigrationId], [ContextKey], [Model], [ProductVersion]) VALUES (N'201808011905022_InitialCreate', N'ABSignMVC1.Models.ApplicationDbContext', 0x1F8B0800000000000400DD5CDB6EE4B8117D0F907F10F49404DE962F99C1C468EFC2D3B61323E30BA63D83BC0DD812BB4D8C446925CA6B23D82FCBC37ED2FE428A1275E345976EB9BBBD1860D0228BA78AC522592C16FDFBFF7E9BFEF41CF8D6138E1312D233FB6872685B98BAA147E8EACC4ED9F2870FF64F3FFEF94FD34B2F78B6BE1674279C0E5AD2E4CC7E642C3A759CC47DC4014A260171E33009976CE2868183BCD0393E3CFC877374E46080B001CBB2A69F53CA4880B30FF89C85D4C5114B917F137AD84F4439D4CC3354EB16053889908BCFECF38F73B2A2375F6747939CD8B6CE7D82409039F697B685280D196220E6E99704CF591CD2D53C8202E43FBC4418E896C84FB010FFB422EFDB93C363DE13A76A5840B969C2C26020E0D189508D23375F4BC176A93A50DE252899BDF05E670A3CB3AF3D9C157D0E7D5080CCF074E6C79CF8CCBE29599C27D12D6693A2E12487BC8A01EE9730FE3EA9231E58BDDB1D94A6743C39E4FF0EAC59EAB334C66714A72C46FE81759F2E7CE2FE1BBF3C84DF313D3B395A2C4F3EBC7B8FBC93F77FC727EFEA3D85BE025DA3008AEEE330C231C8869765FF6DCB69B673E48665B35A9B5C2B604B302B6CEB063D7FC274C51E61BE1C7FB0AD2BF28CBDA24418D7174A6012412316A7F0799BFA3E5AF8B8AC775A79F2FF5BB81EBF7B3F0AD75BF44456D9D04BFC61E2C430AF3E633FAB4D1E49944FAFC6787F1364577118F0EFA67DE5B5DFE6611ABBBC33A191E401C52BCC9AD24D9DCA787B9934871ADFAC0BD4FD376D2EA96ADE5A52DEA1756642C162DBB3A190F775F9F6B6B8F32882C1CB4C8B6BA4CDE094BD6A22353EB02A92CA708EFA1A0E850EFD91D7C1CB00117F8485B00717704196240E70D9CB8F21981DA28365BE474902EB80F72F943CB6880E3F47107D8EDD3406F39C331444AFCEEDFE31A4F8360D16DCEAB7C76BB4A179F825BC422E0BE34BCA5B6D8CF72974BF8729BBA4DE0562F80B730B40FEF94082FE00A38873EEBA3849AEC098B1370BC1C32E00AF293B391E0CC7D7A75D3B22331F9140EF89482BE9B782B4F246F4148A476220D379256DA27E0A5784F613B520358B9A53748A2AC8868ACAC1FA492A28CD8266049D72E654A3F979D9088DEFE865B0FBEFE96DB6799BD6829A1AE7B042E27F628A6358C6BC7BC4188E6935027DD68D5D380BD9F071A6AFBE37659CBE223F1D9BD55AB3215B04C69F0D19ECFECF864C4C287E221EF74A7A1C7F0A6280EF45AF3F5975CF3949B26D4F874637B7CD7C3B6B8069BA9C2749E8926C1668025F226CD1941F7C38AB3B8691F7468E8340C7C0D009DFF2A004FA66CB4675472FB08F19B6CEDD3C303843898B3C558DD0216F8060C58EAA11AC8A873485FB9BC2132C1DC7BC11E287A004662AA14C9D1684BA24427EA796A4963DB730DEF792875C7381234C39C34E4DF461AE0F7F70014A3ED2A0746968EAD42CAEDD100D5EAB69CCBB5CD86ADC95A8C4566CB2C37736D8A5F0DF5EC530DB35B605E36C57491F018CA1BC5D18A838ABF43500F9E0B26F062A9D980C062A5CAAAD186853633B30D0A64ADE9C81E647D4BEE32F9D57F7CD3C9B07E5ED6FEBADEADA816D36F4B167A699FB9ED086410B1CABE679B1E095F899690E6720A7389F25C2D5954D8483CF316B866C2A7F57EB873AED20B211B5015686D6012A2E01152065420D10AE88E5B54A27BC8801B045DCAD1556ACFD126CCD0654ECFA65688DD07C652A1B67AFD347D9B3D21A1423EF7558A8E1680C425EBC9A1DEFA114535C56554C1F5F7888375CEB98188C16057578AE0625159D195D4B8569766B49E7900D71C936D292E43E19B4547466742D091BED5692C62918E0166CA4A2E6163ED2642B221DE56E53D64D9D3C454A144C1D432ED5F4064511A1AB5A6E9528B1E67962D5EC87F9F094A320C770DC449379544A5B7262618C5658AA05D620E91589137681185A201EE799798142A6DD5B0DCB7FC1B2BE7DAA8358EC030535FF2D4C4FB9BA6F6CB5AA2F2220AEA083017768B228BA66F8F5CD2D9EEA867C146B02F7B3D04F036AF6AFCCADF3EBBB7AFBBC4445983A92FC8AFFA4284BF1729B9AEF352EEA9C18678C4AEF65FD71324398B45DF89E757D9BFC51334A119EAAA39842563B1B37931B3364AC640771F8507522BCCEAC1259297500513410A396D8A080D5EAFAA336734FEA98CD9AFE885282491D52AA1A20653D8DA42164BD622D3C8346F514FD39A889237574B5B63FB22685A40EADA95E035B23B35CD71F5593655207D654F7C7AE524EE435748FF72DE3B165DD8D2B3FD86EB67319305E67411C67E3ABDDDFD7816AC503B1C40DBD0226CAF7D2988CA7BB758D290F676C664C060CF3BAD3B8F86E2E3BADB7F566CCC66D7663696FBBCD37E30D33D957350CE56C279394DCCB339E74969B8A7355F7E319E5A09593D856A146D8D65F128683092798CC7FF6673EC17C112F086E10254B9CB03C83C33E3E3C3A961EE0ECCF631827493C5F732E35BD88698ED91692B1E8138ADD4714ABA9111B3C18A94095A8F335F5F0F399FDDFACD56916C0E0BFB2E203EB3AF942C9CF29543CC429B67E55533DC749A0EFF164A314F4D737F116A2BFCAAFFFF32D6F7A60DDC5309D4EAD4349D1EB0C7FF385C42069F2A61B48B3F6BB89B73BDB1ACF12B4A8D26C59FF15C282B0515E201452FE2540CF7F1D2A9AF695C146889A970463E18DA242D34B8175B08CAF043CF864D92B81619DD5BF1A584734E38B01428783C9EF05FA2F4345CB1DEE439AF3D23696A44CCF9DF9D61B255FEE7A6F52D2B2379AE86AEAF500B851D3AB377351DE58DAF2685BA7262B7934EC5DDAFDABA722EF4BF671E5B4EF36E9789B79C62DB7497FA8F4E23D4888D324F8EC3E8978DBB6660A00EF7926E6B054E13D3336B1CDEF3E2178DBC6660A10EFB9B10D4AFBDD335BDBD5FEB9634BEBBD85EE3C8957CD47325CE4E8A2C85D49BA79C81D8EFF8B108C20F728F3B795FAACB0B68CD60E86158999A9391D4D66AC4C1C85AF42D1CE76585FC586DFDA5941D3CED690C4D9C65BACFFADBC054D3B6F436AE42ED28BB5C989BA94EF8E75AC2D77EA2DA513377AD291BDDEE5B3B6DECABFA5ECE15194D2983D86DBE5B7932C3C8A4AC69C3A039283D58B62D83B6B7F8B11F6EF84AC2A08FE971929761BBB6649734D9761B1794B1215245284E60633E4C1967A1E33B2442E836A1E80CE1E8767413D7E0DB2C0DE35BD4B599432E8320E167E23E0C59D8036FE59067453E6E95DC4BF9231BA0062121EB8BFA31F53E27BA5DC579A989001827B1722DCCBC792F1B0EFEAA544BA0D694F20A1BED2297AC041E403587247E7E809AF231B98DF27BC42EE4B15013481740F4453EDD30B8256310A128151B5874FB0612F78FEF1FFD45046EB92540000, N'6.2.0-61023')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'9ab39682-01b1-437d-bc1d-2b4e78749b75', N'john@yahoo.com', 0, N'AHrg0rSLUC/AUqmGxSAozXcFandcAeRlnl4KIydoM1CRekXlCRyXuphaH24gzx/USg==', N'925574ee-5bdd-44ea-927d-124a64ef8b88', NULL, 0, 0, NULL, 1, 0, N'john@yahoo.com')
SET ANSI_PADDING ON

GO
/****** Object:  Index [RoleNameIndex]    Script Date: 8/1/2018 3:09:54 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_UserId]    Script Date: 8/1/2018 3:09:54 PM ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_UserId]    Script Date: 8/1/2018 3:09:54 PM ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_RoleId]    Script Date: 8/1/2018 3:09:54 PM ******/
CREATE NONCLUSTERED INDEX [IX_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_UserId]    Script Date: 8/1/2018 3:09:54 PM ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserRoles]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [UserNameIndex]    Script Date: 8/1/2018 3:09:54 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[UserName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[TestScores]  WITH CHECK ADD  CONSTRAINT [FK_TestScores_Profiles] FOREIGN KEY([ProfileID])
REFERENCES [dbo].[Profiles] ([ProfileID])
GO
ALTER TABLE [dbo].[TestScores] CHECK CONSTRAINT [FK_TestScores_Profiles]
GO
USE [master]
GO
ALTER DATABASE [ABSign] SET  READ_WRITE 
GO
