USE [master]
GO
/****** Object:  Database [MCITTrainingDB]    Script Date: 8/11/2022 1:48:53 PM ******/
CREATE DATABASE [MCITTrainingDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'MCITTrainingDB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\MCITTrainingDB.mdf' , SIZE = 73728KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'MCITTrainingDB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\MCITTrainingDB_log.ldf' , SIZE = 335872KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [MCITTrainingDB] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [MCITTrainingDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [MCITTrainingDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [MCITTrainingDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [MCITTrainingDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [MCITTrainingDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [MCITTrainingDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [MCITTrainingDB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [MCITTrainingDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [MCITTrainingDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [MCITTrainingDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [MCITTrainingDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [MCITTrainingDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [MCITTrainingDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [MCITTrainingDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [MCITTrainingDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [MCITTrainingDB] SET  DISABLE_BROKER 
GO
ALTER DATABASE [MCITTrainingDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [MCITTrainingDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [MCITTrainingDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [MCITTrainingDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [MCITTrainingDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [MCITTrainingDB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [MCITTrainingDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [MCITTrainingDB] SET RECOVERY FULL 
GO
ALTER DATABASE [MCITTrainingDB] SET  MULTI_USER 
GO
ALTER DATABASE [MCITTrainingDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [MCITTrainingDB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [MCITTrainingDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [MCITTrainingDB] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [MCITTrainingDB] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [MCITTrainingDB] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'MCITTrainingDB', N'ON'
GO
ALTER DATABASE [MCITTrainingDB] SET QUERY_STORE = OFF
GO
USE [MCITTrainingDB]
GO
/****** Object:  Table [dbo].[__MigrationHistory]    Script Date: 8/11/2022 1:48:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 8/11/2022 1:48:53 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 8/11/2022 1:48:53 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 8/11/2022 1:48:53 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 8/11/2022 1:48:53 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 8/11/2022 1:48:53 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LU_CourseProvider]    Script Date: 8/11/2022 1:48:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LU_CourseProvider](
	[CourseProvideID] [int] IDENTITY(1,1) NOT NULL,
	[CourseProviderName] [nvarchar](500) NULL,
 CONSTRAINT [PK_LU_CourseProvider] PRIMARY KEY CLUSTERED 
(
	[CourseProvideID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LU_EmploymentDegree]    Script Date: 8/11/2022 1:48:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LU_EmploymentDegree](
	[EmploymentDegreeID] [int] IDENTITY(1,1) NOT NULL,
	[EmploymentDegreeName] [nvarchar](500) NULL,
	[EmploymentLevelID] [int] NULL,
 CONSTRAINT [PK_LU_EmploymentDegree] PRIMARY KEY CLUSTERED 
(
	[EmploymentDegreeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LU_EmploymentLevel]    Script Date: 8/11/2022 1:48:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LU_EmploymentLevel](
	[EmploymentLevelID] [int] IDENTITY(1,1) NOT NULL,
	[EmploymentName] [nvarchar](500) NULL,
 CONSTRAINT [PK_LU_EmploymentLevel] PRIMARY KEY CLUSTERED 
(
	[EmploymentLevelID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LU_StudyMechanism]    Script Date: 8/11/2022 1:48:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LU_StudyMechanism](
	[StudyMechanismID] [int] IDENTITY(1,1) NOT NULL,
	[StudyMechanismName] [nvarchar](500) NULL,
 CONSTRAINT [PK_LU_StudyMechanism] PRIMARY KEY CLUSTERED 
(
	[StudyMechanismID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LU_TrainingCourse]    Script Date: 8/11/2022 1:48:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LU_TrainingCourse](
	[TrainingCourseID] [int] IDENTITY(1,1) NOT NULL,
	[TrainingCourseName] [nvarchar](500) NULL,
	[TrainingProgramID] [int] NOT NULL,
	[TrainingCourseCost] [decimal](18, 2) NULL,
 CONSTRAINT [PK_LU_TrainingCourse] PRIMARY KEY CLUSTERED 
(
	[TrainingCourseID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LU_TrainingProgram]    Script Date: 8/11/2022 1:48:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LU_TrainingProgram](
	[TrainingProgramID] [int] IDENTITY(1,1) NOT NULL,
	[TrainingProgramName] [nvarchar](500) NULL,
 CONSTRAINT [PK_LU_TrainingProgram] PRIMARY KEY CLUSTERED 
(
	[TrainingProgramID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TBL_Candidates_Courses]    Script Date: 8/11/2022 1:48:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TBL_Candidates_Courses](
	[CandID] [int] IDENTITY(1,1) NOT NULL,
	[CandWorkSector] [nvarchar](500) NULL,
	[CandWorkDept] [nvarchar](500) NULL,
	[CandWorkTitle] [nvarchar](500) NULL,
	[CandSubMinistryID] [int] NULL,
	[CandTrainingCourse] [int] NULL,
	[CandCourseDuration] [nvarchar](255) NULL,
	[CandCourseProvider] [int] NULL,
	[CandCourseStudyMechanism] [int] NULL,
	[CandEmploymentDegree] [int] NULL,
	[CandStartDate] [datetime] NULL,
	[CandEndDate] [datetime] NULL,
	[CandCapitalStatus] [bit] NULL,
	[CandFiscalYearID] [int] NULL,
	[CandInfoID] [int] NULL,
 CONSTRAINT [PK_CandidatesTbl_1] PRIMARY KEY CLUSTERED 
(
	[CandID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TBL_CandidatesInfo]    Script Date: 8/11/2022 1:48:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TBL_CandidatesInfo](
	[CandID] [int] IDENTITY(1,1) NOT NULL,
	[CandFullName] [nvarchar](255) NULL,
	[CandNationalID] [nvarchar](35) NULL,
	[CandMobileNumber] [nvarchar](255) NULL,
	[CandEmail] [nvarchar](max) NULL,
 CONSTRAINT [PK_CandidatesInfoTbl_1] PRIMARY KEY CLUSTERED 
(
	[CandID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TBL_FiscalYear]    Script Date: 8/11/2022 1:48:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TBL_FiscalYear](
	[FiscalYearID] [int] IDENTITY(1,1) NOT NULL,
	[FiscalYear] [nvarchar](9) NULL,
 CONSTRAINT [PK_TBL_FiscalYear] PRIMARY KEY CLUSTERED 
(
	[FiscalYearID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TBL_Ministries]    Script Date: 8/11/2022 1:48:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TBL_Ministries](
	[MinistryID] [int] IDENTITY(1,1) NOT NULL,
	[MinistryName] [nvarchar](255) NULL,
	[MinistryQuote] [int] NULL,
 CONSTRAINT [PK_TBL_MinistriesGovEmp] PRIMARY KEY CLUSTERED 
(
	[MinistryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TBL_SubMinistry]    Script Date: 8/11/2022 1:48:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TBL_SubMinistry](
	[SubMinistryID] [int] IDENTITY(1,1) NOT NULL,
	[SubMinistryName] [nvarchar](255) NULL,
	[MinistryID] [int] NULL,
 CONSTRAINT [PK_TBL_SubMinistryGovEmp] PRIMARY KEY CLUSTERED 
(
	[SubMinistryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[__MigrationHistory] ([MigrationId], [ContextKey], [Model], [ProductVersion]) VALUES (N'202208102022512_InitialCreate', N'MCITTrainingAPP.Models.ApplicationDbContext', 0x1F8B0800000000000400DD5C5B6FE336167E2FB0FF41D053B748AD5C3A83D9C099227592DDA0930BC69E41DF06B4443BC248942A5199048BFEB27DE84FEA5FD8438992C59B2EB6623B45812216C9EF1C1E7E240F0F0FE7AFFFFD39FEF9290CAC479CA47E44CEECA3D1A16D61E2469E4F96677646173FBEB37F7EFF8FEFC6975EF8647D2EEB9DB07AD092A467F603A5F1A9E3A4EE030E513A0A7D3789D26841476E143AC88B9CE3C3C37F3947470E06081BB02C6BFC3123D40F71FE037E4E22E2E2986628B8893C1CA4FC3B944C7354EB1685388D918BCFEC9BC9F56C96209F8086E7F7F7A3A2856D9D073E026DA63858D8162224A28882AEA79F523CA5494496D3183EA060F61C63A8B740418A791F4E57D5BB76E7F09875C759352CA1DC2CA551D813F0E884DBC7919BAF6565BBB21F58F0122C4D9F59AF732B9ED9D71ECE3F7D8C0230802CF0741224AC3218BA12719EC6B7988ECA86A302F22A01B86F51F27554473CB03AB73BA8F8743C3A64FF1D58932CA05982CF08CE68828203EB3E9B07BEFB2B7E9E455F31393B399A2F4EDEBD798BBC93B73FE19337F59E425FA19EF0013EDD27518C13D00D2FAAFEDB9623B673E48655B35A9BC22AC025209E6DDDA0A70F982CE9034C9AE377B675E53F61AFFCC2C9F589F83093A0114D32F8799B05019A07B82A771A65B2FF37483D7EF37610A9B7E8D15FE6432FC9878993C0BCFA8883BC347DF0E3627A09E3FD8557BB4AA290FD16F955947E994659E2B2CE44C62A33942C3115B51B3B2BF276A234831A9ED625EAFE539B69AAD25B5B9575689D99508AD8F66C28F57D59B99D19771EC7307839B598451A09A7DDB0461202904BACB7A2D051570A11E8DADF7945BC0C911F0CB0247690021EC9C24F425CF5F297080888486F9DEF519AC28AE0FD07A50F0DAAC39F03A83EC56E960051A71485F18B4BBB7F8808BECDC239E3FFF6640D3634B36FD1157269945C12D66A63BC0F91FB35CAE825F12E10C59FA85B02B29F333FEC0E30883AE7AE8BD3F40AC88CBD49040E7709784DE8C9716F38B648EDDA259904C80FF53E89B49C7E29ABAEFC127D0DC5373154D3F9274DAA7E88963EE9A66A59D5AC6A51A355555EADAFAA0CAC9BA6BCA659D1BC42AB9E45ADC13CBE7C848677F972D8FDF7F936DBBC4D6B41CD8C535821F1BF31C1092C63DE3DA214276435025DD68D5D380BF9F031A12FBE37E5923EA3201B5AD45AB3215F04869F0D39ECFECF865C4DF8FCE87BCC2BE970102A2B037CA7FAFA3356FB9C9334DBF67410BAB96DE1DB59034CD3E53C4D23D7CF67812604C60318A2FEE0C359EDD18CA2377244043A0644F7D996075FA06FB64CAA3B7281034CB175EE1621C2094A5DE4A966840E793D142B77548D62ABC888A8DC0F8A4C603A4E5823C40E4129652752AA4E0B9FB87E8C82562B492D3B6E61ACEF950CB9E402C7983081AD96E8225C1F08610A5472A44169B3D0D8A931AE998806AFD534E66D2EEC6ADC95F8C45638D9E23B1B78C9FDB7172166B3C5B640CE66937451C018D4DB0541F959A52B01E483CBBE11543A311908CA5DAAAD1054B4D80E082A9AE4D511B438A2761D7FE9BCBA6FF4140FCADBDFD61BCDB5036E0AF6D8336A16BE27B4A1D002272A3D2FE6AC103F51CDE10CF4E4E7B394BBBA324518F814533164B3F277B57EA8D30C2293A8097045B416507E1DA8002913AA8772652CAF513BEE45F4802DE36E8DB07CED97606B1C50B1EBD7A2B58AE6CB53999C9D4E1F55CF2A362824EF7458A8E16808212F5E62C73B18C51497550DD3C517EEE30DD73AC607A3C1402D9EABC148656706B75249CD762BE91CB23E2ED9465692DC278395CACE0C6E25CED17623699C821E6EC1462612B7F081265B19E9A8769BAA6CEC141953FCC3D831A4568D6F501CFB64594BB5E25FAC69916735F971DA3FF9282C301C37D5E42055DA56926894A025964A4134687AE52729BD4014CD118BF34CBC50A9A6DD5B0DCB7F29B2BE7DAA8358EE03656DF677D1C270892FECB7AA43C271AEA09721F36AF250BA8603FAE6164B7F43014A34D1FB49146421313B59E6D6C51D5EBD7DF14545183B92FE8A13A5584C717545F3771A1C75620C3850951FB3FE6099214C262FBDD0BAD14D9EA919A50C54D5514CC1AB9D0D9EC9A1E93D60B2BFD87FBC5A115E667EF124953A00FFD413A396E7A080D5CABAA38AA928754CB1A43BA2946F5287948A7A6859CF2A1194AC17AC8567B0A8BE4677096A1E491D5D2DED8EACC928A9436B8AD7C0D6E82C977547D5249DD48135C5DDB1571928F242BAC73B98F114B3D116561C7637DBC30C182FB32A0EB305D6EEF4EB40B5CF3DB1F8ADBD02C6BFEF25A38C27BE8D1855C43936639401C3BC020937E2E202D4788D6FC614AEB98545BEE99ADF8CD78FB72FCA0EE5D02757A9A457873FE99037E607AEF64736CA09ACA8625BA51961837F4E290E47ACC268FA7B30097CCC96F3B2C20D22FE02A7B448EDB08F0F8F8EA5373AFBF35EC649532FD01C584D8F66C431DB429616794489FB80123567628337252B50251C7D4D3CFC7466FF376F759A4736D85FF9E703EB3AFD44FCDF3328982519B6FE50734087C9B1EFF0AAA352F48F57F15CA2BBC9AF7FFB52343DB0EE12984EA7D6A164E875865F7C44D14B9BA2E906DAACFDB4E2F5CE36E1BD8216559A2DEB3F4F98FB7490A709A596DF87E8E99F7D55D33E3FD80851F3C46028BC414C687A42B00E96F1F980073F69FE7CA05F67F5CF09D651CDF894C027FDC1E48704DD97A1B2E50EF721CDA1691B4B526EE7D644EC8DB23277BD3729F9DA1B4D743527BB07DCA079D79BB928AF2C9F79B0AD5393AE3C18F62E79FFE239CAFB9296BC72DA779B8DBCCD04E486CBA5BF55DEF11E64CA69327F769F5DBC6DAE99A2C07B9EA2D92F8778CFC8C6B7F9DD670A6F9B6CA600F19E93AD573EF09E716D57FBE78E99D6790BDD7976AF9AA864B8CDD14591DBB2778B903B1CFFE71190A0F0288B4797FA74B1A654D71681AB2A66A1E63C3559B0327114B94A8D66B1FDFACA37FCC6CEF23ACD620DD99D4DB2F9FADF289BD769966DC899DC45DEB1366B51970BDEB28E35A552BDA63C63A1272D69ED6D3E6BE3D5FC6B4A2B1EC428C2EC31DC2EBF9E2CE2414C32E4D4E99135AC5E14C3DE59FB371B61FF4EFDE50A82FD0B8E04BBC2AE59D5B9268BA8DCBC258DCA2A5284E60653E4C1967A9E507F815C0AC52C009DBF1ACF837AEC1A648EBD6B7297D138A3D0651CCE0321E0C59C8026F9796AB4A8F3F82E66BFD221BA006AFA2C707F477EC9FCC0ABF4BED2C4840C10CCBBE0E15E369694857D97CF15D26D443A0271F3554ED10C87710060E91D99A247BC8E6E40BF0F7889DCE75504D004D23E10A2D9C7173E5A26284C39C6AA3DFC040E7BE1D3FBFF03287C47D6BA540000, N'6.4.4')
GO
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'932af200-d4ef-429f-b87e-e673ccc4bf97', N'gamal@hotmail.com', 0, N'AHWhNK4N+KwRVIy86iJ1yJNaMwCzoSsM7ODwDlxOSbgpEqZW7xKHew4aZI1yeDBDKQ==', N'1f70a751-01c2-4594-a86e-1ff76021e523', NULL, 0, 0, NULL, 1, 0, N'gamal@hotmail.com')
GO
SET IDENTITY_INSERT [dbo].[LU_CourseProvider] ON 
GO
INSERT [dbo].[LU_CourseProvider] ([CourseProvideID], [CourseProviderName]) VALUES (1, N'هيئة تنمية صناعة تكنولوجيا المعلومات - ITIDA')
GO
INSERT [dbo].[LU_CourseProvider] ([CourseProvideID], [CourseProviderName]) VALUES (2, N'المعهد القومي للاتصالات NTI')
GO
INSERT [dbo].[LU_CourseProvider] ([CourseProvideID], [CourseProviderName]) VALUES (3, N'مؤسسة العربية ICDL')
GO
INSERT [dbo].[LU_CourseProvider] ([CourseProvideID], [CourseProviderName]) VALUES (4, N'Cisco - Network Academy')
GO
INSERT [dbo].[LU_CourseProvider] ([CourseProvideID], [CourseProviderName]) VALUES (5, N'الأكاديمية الوطنية للتدريب')
GO
INSERT [dbo].[LU_CourseProvider] ([CourseProvideID], [CourseProviderName]) VALUES (6, N'الاكاديمية الوطنية لمكافحة الفساد')
GO
INSERT [dbo].[LU_CourseProvider] ([CourseProvideID], [CourseProviderName]) VALUES (7, N'Global Knowledge')
GO
INSERT [dbo].[LU_CourseProvider] ([CourseProvideID], [CourseProviderName]) VALUES (8, N'EY')
GO
INSERT [dbo].[LU_CourseProvider] ([CourseProvideID], [CourseProviderName]) VALUES (9, N'الجهاز المركزي للتنظيم والإدارة')
GO
INSERT [dbo].[LU_CourseProvider] ([CourseProvideID], [CourseProviderName]) VALUES (10, N'المعهد الإقليمي لتكنولوجيا المعلومات - RITI')
GO
INSERT [dbo].[LU_CourseProvider] ([CourseProvideID], [CourseProviderName]) VALUES (11, N'وزارة التخطيط والتنمية الاقتصادية')
GO
INSERT [dbo].[LU_CourseProvider] ([CourseProvideID], [CourseProviderName]) VALUES (12, N'Certiport- Pearson')
GO
INSERT [dbo].[LU_CourseProvider] ([CourseProvideID], [CourseProviderName]) VALUES (13, N'شركة الخليج للتدريب وتقنية المعلومات - نيوهورايزون')
GO
INSERT [dbo].[LU_CourseProvider] ([CourseProvideID], [CourseProviderName]) VALUES (14, N'brisk-business')
GO
INSERT [dbo].[LU_CourseProvider] ([CourseProvideID], [CourseProviderName]) VALUES (15, N'CLSLearning Solutions')
GO
INSERT [dbo].[LU_CourseProvider] ([CourseProvideID], [CourseProviderName]) VALUES (16, N'Simple Way')
GO
INSERT [dbo].[LU_CourseProvider] ([CourseProvideID], [CourseProviderName]) VALUES (17, N'وزارة الاتصالات وتكنولوجيا المعلومات - التطوير المؤسسى')
GO
INSERT [dbo].[LU_CourseProvider] ([CourseProvideID], [CourseProviderName]) VALUES (18, N'EDGE')
GO
INSERT [dbo].[LU_CourseProvider] ([CourseProvideID], [CourseProviderName]) VALUES (19, N'ديناميك مايندز - بيرلتز مصر')
GO
INSERT [dbo].[LU_CourseProvider] ([CourseProvideID], [CourseProviderName]) VALUES (20, N'شركة ميكروسوفت - مصر')
GO
INSERT [dbo].[LU_CourseProvider] ([CourseProvideID], [CourseProviderName]) VALUES (21, N'Digital Transformation Mindset')
GO
INSERT [dbo].[LU_CourseProvider] ([CourseProvideID], [CourseProviderName]) VALUES (22, N'Nile Age Information Technology')
GO
INSERT [dbo].[LU_CourseProvider] ([CourseProvideID], [CourseProviderName]) VALUES (23, N'أكاديمية نكست')
GO
INSERT [dbo].[LU_CourseProvider] ([CourseProvideID], [CourseProviderName]) VALUES (24, N'ITValley')
GO
INSERT [dbo].[LU_CourseProvider] ([CourseProvideID], [CourseProviderName]) VALUES (25, N'Arts')
GO
INSERT [dbo].[LU_CourseProvider] ([CourseProvideID], [CourseProviderName]) VALUES (26, N'Next Academy')
GO
INSERT [dbo].[LU_CourseProvider] ([CourseProvideID], [CourseProviderName]) VALUES (27, N'Ibm-MSA')
GO
INSERT [dbo].[LU_CourseProvider] ([CourseProvideID], [CourseProviderName]) VALUES (28, N'المعهد الأمني للتنمية البشرية')
GO
INSERT [dbo].[LU_CourseProvider] ([CourseProvideID], [CourseProviderName]) VALUES (29, N'RAKICT')
GO
INSERT [dbo].[LU_CourseProvider] ([CourseProvideID], [CourseProviderName]) VALUES (30, N'المركز التعليمى لنظم المعلومات باسيوط')
GO
INSERT [dbo].[LU_CourseProvider] ([CourseProvideID], [CourseProviderName]) VALUES (31, N'وزارة الاتصالات وتكنولوجيا المعلومات - البنية المعلوماتية')
GO
INSERT [dbo].[LU_CourseProvider] ([CourseProvideID], [CourseProviderName]) VALUES (32, N'CAPMAS')
GO
INSERT [dbo].[LU_CourseProvider] ([CourseProvideID], [CourseProviderName]) VALUES (33, N'المركز العربي لاستشارات التنمية البشرية - نكست')
GO
SET IDENTITY_INSERT [dbo].[LU_CourseProvider] OFF
GO
SET IDENTITY_INSERT [dbo].[LU_EmploymentDegree] ON 
GO
INSERT [dbo].[LU_EmploymentDegree] ([EmploymentDegreeID], [EmploymentDegreeName], [EmploymentLevelID]) VALUES (1, N'وكيل وزارة', 1)
GO
INSERT [dbo].[LU_EmploymentDegree] ([EmploymentDegreeID], [EmploymentDegreeName], [EmploymentLevelID]) VALUES (2, N'مدير عام', 1)
GO
INSERT [dbo].[LU_EmploymentDegree] ([EmploymentDegreeID], [EmploymentDegreeName], [EmploymentLevelID]) VALUES (3, N'كبير', 1)
GO
INSERT [dbo].[LU_EmploymentDegree] ([EmploymentDegreeID], [EmploymentDegreeName], [EmploymentLevelID]) VALUES (4, N'العالية', 1)
GO
INSERT [dbo].[LU_EmploymentDegree] ([EmploymentDegreeID], [EmploymentDegreeName], [EmploymentLevelID]) VALUES (5, N'الممتازة', 2)
GO
INSERT [dbo].[LU_EmploymentDegree] ([EmploymentDegreeID], [EmploymentDegreeName], [EmploymentLevelID]) VALUES (6, N'الأولي', 2)
GO
INSERT [dbo].[LU_EmploymentDegree] ([EmploymentDegreeID], [EmploymentDegreeName], [EmploymentLevelID]) VALUES (7, N'الثانية', 3)
GO
INSERT [dbo].[LU_EmploymentDegree] ([EmploymentDegreeID], [EmploymentDegreeName], [EmploymentLevelID]) VALUES (8, N'الثالثة', 3)
GO
INSERT [dbo].[LU_EmploymentDegree] ([EmploymentDegreeID], [EmploymentDegreeName], [EmploymentLevelID]) VALUES (9, N'الرابعة', 3)
GO
INSERT [dbo].[LU_EmploymentDegree] ([EmploymentDegreeID], [EmploymentDegreeName], [EmploymentLevelID]) VALUES (10, N'تعاقد عاملين', 3)
GO
INSERT [dbo].[LU_EmploymentDegree] ([EmploymentDegreeID], [EmploymentDegreeName], [EmploymentLevelID]) VALUES (11, N'تعاقد قيادات عليا', 1)
GO
INSERT [dbo].[LU_EmploymentDegree] ([EmploymentDegreeID], [EmploymentDegreeName], [EmploymentLevelID]) VALUES (12, N'تعاقد اشرافية', 2)
GO
INSERT [dbo].[LU_EmploymentDegree] ([EmploymentDegreeID], [EmploymentDegreeName], [EmploymentLevelID]) VALUES (13, N'مستشار', 1)
GO
INSERT [dbo].[LU_EmploymentDegree] ([EmploymentDegreeID], [EmploymentDegreeName], [EmploymentLevelID]) VALUES (14, N'نائب الوزير', 1)
GO
INSERT [dbo].[LU_EmploymentDegree] ([EmploymentDegreeID], [EmploymentDegreeName], [EmploymentLevelID]) VALUES (15, N'رئيس ادارة مركزية', 1)
GO
INSERT [dbo].[LU_EmploymentDegree] ([EmploymentDegreeID], [EmploymentDegreeName], [EmploymentLevelID]) VALUES (16, N'رئيس قطاع', 1)
GO
INSERT [dbo].[LU_EmploymentDegree] ([EmploymentDegreeID], [EmploymentDegreeName], [EmploymentLevelID]) VALUES (17, N'معاون الوزير', 1)
GO
INSERT [dbo].[LU_EmploymentDegree] ([EmploymentDegreeID], [EmploymentDegreeName], [EmploymentLevelID]) VALUES (18, N'الخامسة', 3)
GO
INSERT [dbo].[LU_EmploymentDegree] ([EmploymentDegreeID], [EmploymentDegreeName], [EmploymentLevelID]) VALUES (19, N'مؤقت', 3)
GO
INSERT [dbo].[LU_EmploymentDegree] ([EmploymentDegreeID], [EmploymentDegreeName], [EmploymentLevelID]) VALUES (20, N'السادسة', 3)
GO
INSERT [dbo].[LU_EmploymentDegree] ([EmploymentDegreeID], [EmploymentDegreeName], [EmploymentLevelID]) VALUES (21, N'نائب الوزير', 1)
GO
INSERT [dbo].[LU_EmploymentDegree] ([EmploymentDegreeID], [EmploymentDegreeName], [EmploymentLevelID]) VALUES (22, N'نائب الأمين العام', 1)
GO
INSERT [dbo].[LU_EmploymentDegree] ([EmploymentDegreeID], [EmploymentDegreeName], [EmploymentLevelID]) VALUES (23, N'مساعد وزير', 1)
GO
INSERT [dbo].[LU_EmploymentDegree] ([EmploymentDegreeID], [EmploymentDegreeName], [EmploymentLevelID]) VALUES (24, N'سفير', 1)
GO
INSERT [dbo].[LU_EmploymentDegree] ([EmploymentDegreeID], [EmploymentDegreeName], [EmploymentLevelID]) VALUES (25, N'وزير مفوض', 1)
GO
INSERT [dbo].[LU_EmploymentDegree] ([EmploymentDegreeID], [EmploymentDegreeName], [EmploymentLevelID]) VALUES (26, N'رئيس نيابة', 1)
GO
INSERT [dbo].[LU_EmploymentDegree] ([EmploymentDegreeID], [EmploymentDegreeName], [EmploymentLevelID]) VALUES (27, N'مدير إدارة', 1)
GO
INSERT [dbo].[LU_EmploymentDegree] ([EmploymentDegreeID], [EmploymentDegreeName], [EmploymentLevelID]) VALUES (28, N'رئيس استئناف', 1)
GO
INSERT [dbo].[LU_EmploymentDegree] ([EmploymentDegreeID], [EmploymentDegreeName], [EmploymentLevelID]) VALUES (29, N'رئيس محكمة', 1)
GO
INSERT [dbo].[LU_EmploymentDegree] ([EmploymentDegreeID], [EmploymentDegreeName], [EmploymentLevelID]) VALUES (30, N'نائب إستئناف', 1)
GO
INSERT [dbo].[LU_EmploymentDegree] ([EmploymentDegreeID], [EmploymentDegreeName], [EmploymentLevelID]) VALUES (31, N'نائب مساعد', 1)
GO
INSERT [dbo].[LU_EmploymentDegree] ([EmploymentDegreeID], [EmploymentDegreeName], [EmploymentLevelID]) VALUES (32, N'وكيل بهيئة قضايا الدولة', 1)
GO
INSERT [dbo].[LU_EmploymentDegree] ([EmploymentDegreeID], [EmploymentDegreeName], [EmploymentLevelID]) VALUES (33, N'وكيل عام اول بهيئة النيابة الادارية', 1)
GO
SET IDENTITY_INSERT [dbo].[LU_EmploymentDegree] OFF
GO
SET IDENTITY_INSERT [dbo].[LU_EmploymentLevel] ON 
GO
INSERT [dbo].[LU_EmploymentLevel] ([EmploymentLevelID], [EmploymentName]) VALUES (1, N'قيادات عليا')
GO
INSERT [dbo].[LU_EmploymentLevel] ([EmploymentLevelID], [EmploymentName]) VALUES (2, N'اشرافية')
GO
INSERT [dbo].[LU_EmploymentLevel] ([EmploymentLevelID], [EmploymentName]) VALUES (3, N'عاملين')
GO
SET IDENTITY_INSERT [dbo].[LU_EmploymentLevel] OFF
GO
SET IDENTITY_INSERT [dbo].[LU_StudyMechanism] ON 
GO
INSERT [dbo].[LU_StudyMechanism] ([StudyMechanismID], [StudyMechanismName]) VALUES (1, N'تدريب نمطى')
GO
INSERT [dbo].[LU_StudyMechanism] ([StudyMechanismID], [StudyMechanismName]) VALUES (2, N'تعلم عن بُعد')
GO
INSERT [dbo].[LU_StudyMechanism] ([StudyMechanismID], [StudyMechanismName]) VALUES (3, N'القرية الذكية')
GO
SET IDENTITY_INSERT [dbo].[LU_StudyMechanism] OFF
GO
SET IDENTITY_INSERT [dbo].[LU_TrainingCourse] ON 
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (1, N'المهارات الرقمية الأساسية ICDL', 1, CAST(1000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (2, N'المهارات الرقمية المتقدمة -MOS-OutLook', 1, CAST(400.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (3, N'المهارات الرقمية المتقدمة - الأمن السيبراني', 1, CAST(0.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (4, N'دبلومة إدارة المشروعات الرقمية', 2, CAST(7000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (5, N'دبلومة الموارد البشرية الرقمية', 2, CAST(12000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (6, N'مهارات صياغة التقارير', 2, CAST(1100.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (7, N'Agile Configuration Management', 9, CAST(2000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (8, N'Artificial Intelligence for Exectives', 9, CAST(2000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (9, N'Enterprise Blockchain for Executives', 9, CAST(2000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (10, N'ITIL', 9, CAST(750.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (11, N'TOGAF Foundation', 9, CAST(4500.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (12, N'اجراءات النزاهة والشفافية والتوعية بمخاطر الفساد', 9, CAST(0.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (13, N'اخصائى التدريب', 9, CAST(0.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (14, N'اخصائى ترتيب وموازنة الوظائف', 9, CAST(0.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (15, N'اخصائي شئون مالية', 9, CAST(0.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (16, N'ادارة الاجتماعات', 9, CAST(0.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (17, N'ادارة الجودة الشاملة', 9, CAST(0.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (18, N'ادارة المشروعات (PMP)', 9, CAST(5000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (19, N'اساسيات الإدارة باللغة الإنجليزية', 9, CAST(0.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (20, N'الاعداد لشغل الوظائف الاشرافية', 9, CAST(0.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (21, N'التاهيل المتكامل لبناء القدرات', 9, CAST(0.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (22, N'التحكيم الدولى', 9, CAST(0.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (23, N'التخطيط الفعال', 9, CAST(0.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (24, N'العقود الادارية', 9, CAST(0.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (25, N'تسويق الخدمات الحكومية', 9, CAST(0.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (26, N'دور الجهاز الادارى فى مواجهة مخططات اسقاط الدولة', 9, CAST(0.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (27, N'قانون التأمينات والمعاشات رقم 148', 9, CAST(0.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (28, N'مهارات المتابعة والتقييم', 9, CAST(0.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (29, N'نظام إدارة المعلومات المالية الحكومية GFMIS', 9, CAST(0.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (30, N'نظم المعلومات والتحول الرقمى', 9, CAST(0.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (32, N'Access', 7, CAST(400.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (33, N'Advanced Excel', 9, CAST(400.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (34, N'Advanced Word', 9, CAST(400.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (35, N'Excel-Powerpoint', 7, CAST(400.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (36, N'Microsoft Office 2016', 7, CAST(990.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (37, N'Outlook', 7, CAST(400.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (38, N'Typing -Word', 7, CAST(400.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (39, N'Windows-Word', 7, CAST(400.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (40, N'Word', 7, CAST(400.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (41, N'الابداع التكنولوجي والتحول الرقمي', 8, CAST(0.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (42, N'التحول الرقمى للقادة الحكوميين', 8, CAST(400.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (43, N'التفكير التصميمي للقادة الحكوميين', 8, CAST(400.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (44, N'المتقدم للتحول الرقمي', 9, CAST(1500.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (45, N'3D Max', 9, CAST(1500.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (46, N'Adobe After Effect', 9, CAST(823.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (47, N'Adobe Flash', 9, CAST(823.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (48, N'Adobe Photoshop', 9, CAST(823.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (49, N'CCNA Academy', 9, CAST(1500.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (50, N'CCNA Security', 9, CAST(1500.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (51, N'Ethical Hacking', 9, CAST(1500.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (52, N'Graphics Fundamentals', 9, CAST(823.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (53, N'Information Security', 9, CAST(1500.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (54, N'Linux Fundamentals', 9, CAST(1500.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (55, N'N+', 9, CAST(1500.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (56, N'Network Fundamentals', 9, CAST(1500.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (57, N'Online Digital Transformation', 9, CAST(1500.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (58, N'Python', 9, CAST(1500.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (59, N'Voip', 9, CAST(1500.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (60, N'Web Design', 9, CAST(1500.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (61, N'التحول الرقمي المتقدم- Graphics', 9, CAST(823.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (62, N'Business Architecture', 10, CAST(5500.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (63, N'Coaching', 10, CAST(0.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (64, N'leading digital transformation', 10, CAST(0.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (65, N'الابداع التكنولوجي والتحول الرقمي', 12, CAST(0.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (66, N'التحول الرقمى للقادة الحكوميين', 12, CAST(400.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (67, N'مبادرة استخدام مواقع التواصل الاجتماعي', 12, CAST(0.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (68, N'مبادرة الأمن السيبراني', 12, CAST(0.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (69, N'Digital Transformation Fundamintals', 7, CAST(1500.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (70, N'Programming Fundamentals', 9, CAST(1500.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (71, N'مكافحة الفساد والحوكمة', 5, CAST(1000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (72, N'المبادرة القومية المسئول الحكومى المحترف', 3, CAST(15000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (74, N'Graphics and Multimedia', 9, CAST(823.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (75, N'المهارات الرقمية المتقدمة - MOS Word', 1, CAST(400.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (76, N'المهارات الرقمية المتقدمة - MOS Excel', 1, CAST(400.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (77, N'المهارات الرقمية المتقدمة -MOS Power Point', 1, CAST(400.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (78, N'Business Analysis Professional program', 10, CAST(4500.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (80, N'التطوير المؤسسى والتحول الرقمي', 7, CAST(0.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (81, N'Customized English Program for ICT & DT', 10, CAST(1600.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (82, N'Digital Transformation Mindset', 7, CAST(250.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (83, N'Microsoft DT-Workshop', 7, CAST(0.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (84, N'Microsoft Teams Workshop', 7, CAST(0.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (85, N'VMware vSphere: Install, Configure, Manage [V7]', 10, CAST(9000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (86, N'أساسيات التحول الرقمى Microsoft Office', 7, CAST(990.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (87, N'Digital Transformation Fundamintals DX', 7, CAST(1000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (88, N'التهيئة للتحول الرقمى', 7, CAST(0.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (89, N'Cyber security Awareness for Users', 9, CAST(500.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (90, N'Data Analysis with Microsoft Excel', 9, CAST(4500.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (91, N'Project Management Essential', 10, CAST(7000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (92, N'Project Management Professional', 10, CAST(12000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (93, N'تنمية وتطوير القدرات الرقمية التخصصية للجهاز الاداري للدولة', 13, CAST(919.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (94, N'مبادرة المهارات الدولية Microsoft', 12, CAST(0.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (95, N'Certified Business Analysis Professional (CBAP)', 10, CAST(7500.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (96, N'Blockchain Workshop', 10, CAST(0.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (97, N'المهارات الأساسيه للحاسب Microsoft Office', 7, CAST(1000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (98, N'Linux Sytem Administration', 10, CAST(1600.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (99, N'Linux Sytem Network', 10, CAST(1600.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (100, N'VMware NSX', 10, CAST(9000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (101, N'ITIL v4 - Foundation', 10, CAST(1200.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (102, N'Linux Fundamentals', 10, CAST(1500.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (103, N'CompTIA A+', 10, CAST(1300.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (104, N'Business Architecture', 9, CAST(5500.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (105, N'Certified Business Analysis Professional (CBAP)', 9, CAST(7500.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (106, N'Cyber security Awareness for Users', 10, CAST(500.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (107, N'ITIL Ver. 4 - Awareness Session', 10, CAST(750.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (108, N'ورشة العمل التهيئة للتحول الرقمى للحكومة المصرية', 10, CAST(0.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (109, N'التحول الرقمى للقادة الحكوميين', 10, CAST(400.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (110, N'التفكير التصميمي للقادة الحكوميين', 10, CAST(400.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (111, N'Graphics Fundamentals', 7, CAST(823.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (112, N'TOGAF Foundation', 8, CAST(4500.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (113, N'دبلومة إدارة المشروعات الرقمية', 14, CAST(7000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (114, N'دبلومة الموارد البشرية الرقمية', 14, CAST(12000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (115, N'مهارات صياغة التقارير', 14, CAST(1100.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (116, N'مكافحة الفساد والحوكمة', 16, CAST(1000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (117, N'Access', 18, CAST(400.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (118, N'Digital Transformation Fundamintals', 18, CAST(1500.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (119, N'Digital Transformation Fundamintals DX', 18, CAST(1000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (120, N'Digital Transformation Mindset', 18, CAST(250.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (121, N'Excel-Powerpoint', 18, CAST(400.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (122, N'Graphics Fundamentals', 18, CAST(823.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (123, N'Microsoft DT-Workshop', 18, CAST(0.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (124, N'Microsoft Office 2016', 18, CAST(990.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (125, N'Microsoft Teams Workshop', 18, CAST(0.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (126, N'Outlook', 18, CAST(400.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (127, N'Typing -Word', 18, CAST(400.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (128, N'Word', 18, CAST(400.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (129, N'أساسيات التحول الرقمى Microsoft Office', 18, CAST(990.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (130, N'التطوير المؤسسى والتحول الرقمي', 18, CAST(0.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (131, N'التهيئة للتحول الرقمى', 18, CAST(0.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (133, N'TOGAF Foundation', 19, CAST(4500.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (134, N'الابداع التكنولوجي والتحول الرقمي', 19, CAST(0.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (135, N'التحول الرقمى للقادة الحكوميين', 19, CAST(400.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (136, N'التفكير التصميمي للقادة الحكوميين', 19, CAST(400.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (137, N'Agile Configuration Management', 20, CAST(2000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (138, N'Artificial Intelligence for Exectives', 20, CAST(2000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (139, N'Enterprise Blockchain for Executives', 20, CAST(2000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (140, N'ITIL', 20, CAST(750.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (141, N'TOGAF Foundation', 20, CAST(4500.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (142, N'اجراءات النزاهة والشفافية والتوعية بمخاطر الفساد', 20, CAST(0.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (143, N'اخصائى التدريب', 20, CAST(0.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (144, N'اخصائى ترتيب وموازنة الوظائف', 20, CAST(0.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (145, N'اخصائي شئون مالية', 20, CAST(0.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (146, N'ادارة الاجتماعات', 20, CAST(0.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (147, N'ادارة الجودة الشاملة', 20, CAST(0.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (148, N'ادارة المشروعات (PMP)', 20, CAST(5000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (149, N'اساسيات الإدارة باللغة الإنجليزية', 20, CAST(0.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (150, N'الاعداد لشغل الوظائف الاشرافية', 20, CAST(0.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (151, N'التاهيل المتكامل لبناء القدرات', 20, CAST(0.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (152, N'التحكيم الدولى', 20, CAST(0.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (153, N'التخطيط الفعال', 20, CAST(0.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (154, N'العقود الادارية', 20, CAST(0.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (155, N'تسويق الخدمات الحكومية', 20, CAST(0.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (156, N'دور الجهاز الادارى فى مواجهة مخططات اسقاط الدولة', 20, CAST(0.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (157, N'قانون التأمينات والمعاشات رقم 148', 20, CAST(0.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (158, N'مهارات المتابعة والتقييم', 20, CAST(0.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (159, N'نظام إدارة المعلومات المالية الحكومية GFMIS', 20, CAST(0.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (160, N'نظم المعلومات والتحول الرقمى', 20, CAST(0.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (161, N'Advanced Excel', 20, CAST(400.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (162, N'Advanced Word', 20, CAST(400.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (163, N'المتقدم للتحول الرقمي', 20, CAST(1500.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (164, N'3D Max', 20, CAST(1500.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (165, N'Adobe After Effect', 20, CAST(823.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (166, N'Adobe Flash', 20, CAST(823.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (167, N'Adobe Photoshop', 20, CAST(823.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (168, N'CCNA Academy', 20, CAST(1500.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (169, N'CCNA Security', 20, CAST(1500.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (170, N'Ethical Hacking', 20, CAST(1500.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (171, N'Graphics Fundamentals', 20, CAST(823.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (172, N'Information Security', 20, CAST(1500.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (173, N'Linux Fundamentals', 20, CAST(1500.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (174, N'N+', 20, CAST(1500.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (175, N'Network Fundamentals', 20, CAST(1500.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (176, N'Online Digital Transformation', 20, CAST(1500.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (177, N'Python', 20, CAST(1500.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (178, N'Voip', 20, CAST(1500.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (179, N'Web Design', 20, CAST(1500.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (180, N'التحول الرقمي المتقدم- Graphics', 20, CAST(823.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (181, N'Programming Fundamentals', 20, CAST(1500.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (182, N'Graphics and Multimedia', 20, CAST(823.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (183, N'Cyber security Awareness for Users', 20, CAST(500.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (184, N'Data Analysis with Microsoft Excel', 20, CAST(4500.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (185, N'Business Architecture', 20, CAST(5500.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (186, N'Certified Business Analysis Professional (CBAP)', 20, CAST(7500.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (187, N'Business Architecture', 21, CAST(5500.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (188, N'Coaching', 21, CAST(0.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (189, N'leading digital transformation', 21, CAST(0.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (190, N'Business Analysis Professional program', 21, CAST(4500.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (191, N'Customized English Program for ICT & DT', 21, CAST(1600.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (192, N'VMware vSphere: Install, Configure, Manage [V7]', 21, CAST(9000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (193, N'Project Management Essential', 21, CAST(7000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (194, N'Project Management Professional', 21, CAST(12000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (195, N'Certified Business Analysis Professional (CBAP)', 21, CAST(7500.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (196, N'Blockchain Workshop', 21, CAST(0.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (197, N'Linux Sytem Administration', 21, CAST(1600.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (198, N'Linux Sytem Network', 21, CAST(1600.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (199, N'VMware NSX', 21, CAST(9000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (200, N'ITIL v4 - Foundation', 21, CAST(1200.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (201, N'Linux Fundamentals', 21, CAST(1500.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (202, N'CompTIA A+', 21, CAST(1300.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (203, N'Cyber security Awareness for Users', 21, CAST(500.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (204, N'ITIL Ver. 4 - Awareness Session', 21, CAST(750.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (205, N'التهيئة للتحول الرقمى', 21, CAST(0.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (206, N'التحول الرقمى للقادة الحكوميين', 21, CAST(400.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (207, N'التفكير التصميمي للقادة الحكوميين', 21, CAST(400.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (212, N'Business Porcess Reengineering', 10, CAST(5500.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (213, N'المهارات الرقمية المتقدمة -MOS-OutLook', 23, CAST(400.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (214, N'Digital transformation fundamental DTCLS', 7, CAST(1000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (215, N'Digital transformation fundamental DTRI', 7, CAST(1000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (216, N'Digital transformation fundamental DTCLS', 9, CAST(1000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (217, N'Customized English Program for ICT & DT 1st Level', 10, CAST(1600.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (218, N'Customized English Program for ICT & DT 2nd Level', 10, CAST(1600.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (219, N'Customized English Program for ICT & DT 3rd Level', 10, CAST(1600.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (220, N'Customized English Program for ICT & DT 4th Level', 10, CAST(1600.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (221, N'المهارات الأساسيه للحاسب Microsoft Office', 9, CAST(1000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (222, N'الابداع التكنولوجي والتحول الرقمي', 25, CAST(0.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (223, N'التحول الرقمى للقادة الحكوميين', 25, CAST(400.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (224, N'مبادرة استخدام مواقع التواصل الاجتماعي', 25, CAST(0.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (225, N'مبادرة الأمن السيبراني', 25, CAST(0.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (226, N'مبادرة المهارات الدولية Microsoft', 25, CAST(0.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (227, N'تنمية وتطوير القدرات الرقمية التخصصية للجهاز الاداري للدولة', 26, CAST(919.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (228, N'الابداع التكنولوجي والتحول الرقمي', 27, CAST(0.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (229, N'التحول الرقمى للقادة الحكوميين', 27, CAST(400.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (230, N'التفكير التصميمي للقادة الحكوميين', 27, CAST(400.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (231, N'Data Analysis with Microsoft Excel', 18, CAST(4500.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (232, N'Introduction to Cybersecurity certificate', 28, CAST(0.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (233, N'Get-Connected Certificate', 28, CAST(0.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (234, N'Cybersecurity Essential Certificate', 28, CAST(0.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (235, N'Introduction to IoT', 28, CAST(0.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (236, N'ندوات التثقيف الرقمي', 29, CAST(0.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (237, N'التواصل الاجتماعي والأمن والسلامة علي الإنترنت', 29, CAST(0.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (238, N'Data Analysis Using Tableau,Excel,Power BI', 9, CAST(1800.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (239, N'ISTQB® Foundation Level Part 1', 10, CAST(5853.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (240, N'استراتيجية التحو ل الرقمى للحكومة المصرية', 10, CAST(0.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (241, N'AI', 30, CAST(0.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (242, N'IOT', 30, CAST(0.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (243, N'IoT Fundamentals: Big Data &amp; Analytics', 28, CAST(0.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (244, N'IoT Fundamentals: Connecting Things', 28, CAST(0.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (245, N'IT Essentials', 28, CAST(0.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (246, N'Networking Essentials', 28, CAST(0.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (247, N'PCAP: Programming Essentials in Python', 28, CAST(0.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (248, N'ICDL Social Media', 31, CAST(0.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (249, N'Digital Transformation', 32, CAST(0.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (250, N'Mos - Access 2019', 32, CAST(0.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (251, N'Mos - Excel 2019', 32, CAST(0.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (252, N'Mos - Word 2019', 32, CAST(0.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (253, N'windows 10', 32, CAST(3392.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (254, N'Customer service specialist', 33, CAST(0.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (255, N'Data analyst', 33, CAST(0.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (256, N'Digital marketer', 33, CAST(0.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (257, N'Financial analyst', 33, CAST(0.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (258, N'Graphic designer', 33, CAST(0.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (259, N'IT administrator', 33, CAST(0.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (260, N'IT support-helpdesk', 33, CAST(0.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (261, N'Project manager', 33, CAST(0.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (262, N'Sales representative', 33, CAST(0.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (263, N'Software developer', 33, CAST(0.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (264, N'Cybersecurity Essential Certificate', 34, CAST(0.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (265, N'Get-Connected Certificate', 34, CAST(0.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (266, N'Introduction to Cybersecurity certificate', 34, CAST(0.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (267, N'Artificial Intelligence Workshop', 10, CAST(0.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (268, N'Cyber security Awareness for Users', 7, CAST(500.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (270, N'دبلومة إدارة المشروعات الرقمية', 39, CAST(7000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (272, N'3D Design', 35, CAST(5500.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (273, N'3D Design and Development', 35, CAST(5500.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (274, N'Advanced Network (CCNP)', 35, CAST(5500.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (280, N'Big Data Essentials', 35, CAST(5500.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (281, N'C and Embedded C Programming', 35, CAST(5500.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (282, N'Career Development', 35, CAST(5500.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (283, N'CCNA v7', 35, CAST(5500.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (292, N'Closed Circuit Television (CCTV)', 35, CAST(5500.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (293, N'Devops and Public Cloud Computing', 35, CAST(5500.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (294, N'Ethical Hacking', 35, CAST(5500.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (295, N'Ethical Hacking and Network Monitoring', 35, CAST(5500.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (296, N'Graphic Design', 35, CAST(5500.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (297, N'Internet of things (IoT) and artificial Intelligence (AI)', 35, CAST(5500.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (298, N'LTE-A and 5G Mobile Technologies', 35, CAST(5500.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (299, N'MCSA: Windows Server 2016', 35, CAST(5500.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (300, N'MCSE: Private and Public Cloud Computing', 35, CAST(5500.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (301, N'Microcontroller Architecture and Interfacing with ARM Cortex', 35, CAST(5500.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (302, N'Microcontroller Architecture and Interfacing with AVR', 35, CAST(5500.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (303, N'Microwave and Optical Transmission', 35, CAST(5500.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (304, N'Mobile Technologies and Quality of Service', 35, CAST(5500.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (305, N'Multimedia Design', 35, CAST(5500.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (306, N'Network and Information Security (NIS)', 35, CAST(5500.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (307, N'Network and Unified Communication Security', 35, CAST(5500.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (308, N'Network Attacks and Mitigation', 35, CAST(5500.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (309, N'Operating Systems Administration (OSA)', 35, CAST(5500.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (310, N'Optical Distribution Networks (FTTH)', 35, CAST(5500.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (311, N'Optical Fiber Network Planning and installations', 35, CAST(5500.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (312, N'RTOS and Automotive', 35, CAST(5500.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (313, N'Soft Skills and Project Management', 35, CAST(5500.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (314, N'Unified Collaboration', 35, CAST(5500.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (315, N'Unified Communications and Collaboration', 35, CAST(5500.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (316, N'VMware Data Center Virtualization', 35, CAST(5500.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (317, N'Web Design', 35, CAST(5500.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (318, N'Web Development using Node JS and Angular', 35, CAST(5500.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (319, N'Web Development using PHP, MySQL and Laravel', 35, CAST(5500.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (320, N'الأولمبياد المصري للمعلوماتية التصفية الأولي', 36, CAST(0.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (321, N'الأولمبياد المصريللمعلوماتية التصفية الثانية', 36, CAST(0.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (322, N'الأولمبياد المصري للمعلوماتية التصفية النهائية', 36, CAST(0.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (323, N'Digital Transformation Fundamintals', 37, CAST(1500.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (324, N'Digital Transformation Fundamintals DX', 37, CAST(1000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (325, N'Digital Transformation Workshop', 37, CAST(0.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (326, N'ICDL Social Media', 37, CAST(0.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (327, N'Artificial Intelligence', 38, CAST(0.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (328, N'ورشة عمل التحول الرقمي', 40, CAST(0.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (329, N'Agile Certified Practitioner PMI-ACP', 10, CAST(10910.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (330, N'Customized English Program for ICT & DT 5th Level', 10, CAST(1600.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (331, N'Customized English Program for ICT & DT 6th Level', 10, CAST(1600.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (332, N'Customized English Program for ICT & DT 7th Level', 10, CAST(1600.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (333, N'Customized English Program for ICT & DT 8th Level', 10, CAST(1600.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (334, N'Customized English Program for ICT & DT StartUP', 10, CAST(1600.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (335, N'Customized English Program for ICT & DT TB', 10, CAST(1600.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (336, N'Cybersecurity Essential (CSE1)', 10, CAST(1100.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (337, N'Data Analysis with Microsoft Excel', 10, CAST(4500.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (338, N'ISTQB® Foundation Level Part 2', 10, CAST(0.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (339, N'MD- 100T00-A: Windows 10', 10, CAST(3392.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (340, N'Microsoft Teams Workshop', 10, CAST(0.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (341, N'Network Fundamentals', 10, CAST(1500.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (342, N'Programming Fundamentals', 10, CAST(1500.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (343, N'ورشة العمل البنية التحتية للحكومة المصرية', 10, CAST(0.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (344, N'Cybersecurity Essential (CSE2)', 10, CAST(5500.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (345, N'Widows 10 & Modern Desktop', 10, CAST(3392.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (346, N'Digital transformation fundamental RITI', 7, CAST(1000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (347, N'MD-101T00-A: Managing Modern Desktops', 10, CAST(3392.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (348, N'VMware NSX Advanced Load web application firewall security', 10, CAST(24300.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (349, N'المهارات الأساسيه Microsoft Office', 7, CAST(1000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (350, N'Risk and Information Systems Control (CRISC)', 10, CAST(22578.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (352, N'المهارات الرقمية المتقدمة -MOS-OutLook', 25, CAST(400.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (353, N'Digital transformation fundamental DTCLS', 18, CAST(1000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (354, N'المهارات الأساسيه Microsoft Office', 18, CAST(1000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (355, N'المهارات الأساسيه للحاسب Microsoft Office', 18, CAST(1000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (356, N'أمن البيانات والمعلومات', 18, CAST(100.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (357, N'تنمية وتطوير القدرات الرقمية التخصصية للمشروعات', 18, CAST(919.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (358, N'أداره الجوده الشامله(CPHQ)', 20, CAST(10000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (359, N'Digital Transformation Mindset 2', 7, CAST(1300.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (360, N'SPSS COURSE', 21, CAST(3500.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (361, N'Big Data Workshop', 10, CAST(0.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (362, N'Cybersecurity DXClS', 7, CAST(100.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (363, N'أساسيات الحاسب الآلي', 7, CAST(1000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (365, N'Cyber_Save Workshop', 10, CAST(0.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (366, N'EC-Council Certified Incident Handler', 10, CAST(7600.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (367, N'إدارة خدمات تكنولوجيا المعلومات (ITSM)', 10, CAST(350.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (368, N'Certificate of Cloud Security Knowledge - CCSK', 10, CAST(26922.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (369, N'optical fiber operation , installation and maintenance', 20, CAST(1500.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (370, N'الابداع التكنولوجي والتحول الرقمي', 10, CAST(0.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (371, N'ISTQB® Foundation Level Part 1', 21, CAST(5853.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (372, N'اساسيات الحاسب الالى-ذوى الهمم', 29, CAST(0.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (373, N'Lap View Software', 9, CAST(2000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (374, N'ISTQB Foundation', 10, CAST(4500.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (375, N'Digital Transformation Fundamintals NTI', 7, CAST(1500.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (376, N'التحول الرقمى ومكافحة الفساد', 5, CAST(1200.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (377, N'إدارة خدمات تكنولوجيا المعلومات (ITSM)', 21, CAST(350.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (378, N'السلوك التكنولوجي للعاملين بالجهاز الإدارى للدولة', 8, CAST(1600.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (379, N'Cyber_Security WorkShop', 7, NULL)
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (380, N'شهادة ITIL الدولية', 10, CAST(5400.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (381, N'ADS', 9, CAST(2500.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (382, N'Basic Electronics', 9, CAST(2000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (383, N'C & C#', 9, CAST(4000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (384, N'Digital Communications', 9, CAST(2000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (385, N'Embedded C', 9, CAST(2000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (386, N'Java', 9, CAST(5000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (387, N'Linux', 9, CAST(2000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (388, N'PCB', 9, CAST(4000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (389, N'Solid Works', 9, CAST(2500.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (390, N'VHDL', 9, CAST(4000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (391, N'Digital Transformation Mindset 2', 18, CAST(1300.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (392, N'شهادة ITIL الدولية', 21, CAST(5400.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (393, N'تنمية و تطوير القدرات الرقمية التخصصية للجهاز الإداري للدولة', 42, CAST(919.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (394, N'تنمية و تطوير القدرات الرقمية التخصصية للجهاز الإداري للدولة', 43, CAST(919.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (395, N'ورشة عمل البنية المعلوماتية الدولية للاتصالات', 10, NULL)
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (402, N'CCNA V7 NPD', 35, CAST(5500.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (403, N'دبلومة إدارة المشروعات الرقمية', 44, CAST(7000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (404, N'التواصل الاجتماعي والأمن والسلامة علي الإنترنت - ذوى  الهمم', 29, CAST(0.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (405, N'اساسيات الحاسب الالى', 29, CAST(0.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (406, N'التواصل الاجتماعي والأمن والسلامة علي الإنترنت - مكلفات', 29, CAST(0.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (407, N'Advanced Access 2010', 20, CAST(0.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (408, N'Advanced Adobe Flash', 20, CAST(823.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (409, N'Advanced Excel 2010', 20, CAST(400.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (410, N'Advanced Power Point 2010', 20, CAST(400.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (411, N'Advanced Word 2010', 20, CAST(400.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (412, N'Graphics Diploma', 20, CAST(0.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (413, N'Human Resources Skills', 20, CAST(0.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (414, N'Office 2010', 20, CAST(1000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (415, N'TOT', 20, NULL)
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (416, N'Web Design Diploma', 20, NULL)
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (417, N'إدارة المستشفيات', 20, NULL)
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (418, N'الادارة الاستراتيجية والتخطيط الاستراتيجي', 20, NULL)
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (419, N'القيادة الادارية الفعالة', 20, NULL)
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (420, N'تنمية المهارات الأساسية في تكنولوجيا المعلومات', 18, NULL)
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (421, N'تنمية وإدارة الموارد البشرية', 20, NULL)
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (422, N'A+', 20, CAST(2600.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (423, N'Microsoft Word 2010', 18, CAST(400.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (424, N'Office 2010', 18, NULL)
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (425, N'optical fiber operation , installation and maintenance', 9, CAST(1500.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (426, N'SPSS COURSE', 10, CAST(3500.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (427, N'دبلومة المهارات الرقمية -ذوي الهمم بصرى', 29, NULL)
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (428, N'Cisco Get Connected  ذوى الهمم', 29, NULL)
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (429, N'أداره الجوده الشامله(CPHQ)', 9, CAST(10000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (430, N'IC3 Spark  الطلاب والخرجين والمعيلات', 29, NULL)
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (431, N'البرامج المكتبية المتقدمة (MOS)', 45, NULL)
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (433, N'Harvard Business Review Project Management WorkShop', 10, NULL)
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (434, N'السلوك التكنولوجي للعاملين بالجهاز الإدارى للدولة', 46, CAST(1600.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (435, N'Business Architecture "TOGAF Foundation"', 10, NULL)
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (436, N'Linux Sytem Administration1', 10, NULL)
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (437, N'دبلومة المهارات الرقمية -ذوي الهمم حركى', 29, NULL)
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (438, N'المهارات المتقدمه Microsoft Office', 9, NULL)
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (439, N'Customized English Program for ICT & DT 1st Leader', 9, NULL)
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (440, N'Customized English Program for ICT & DT 2nd Leader', 9, NULL)
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (441, N'المهارات الأساسيه Microsoft Office + Typing', 18, NULL)
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (442, N'المهارات المتقدمه Microsoft Office', 20, NULL)
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (443, N'المهارات الأساسيه Microsoft Office', 20, NULL)
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (444, N'Digital Marketing', 29, NULL)
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (445, N'Cyber_Security WorkShop', 18, NULL)
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (446, N'ورشة عمل التحول الرقمي', 47, NULL)
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (447, N'Cyber security workshop', 20, NULL)
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (448, N'Project Management workshop', 14, NULL)
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (449, N'Digital Transformation Mindset Session 2', 7, NULL)
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (450, N'Digital Transformation Mindset Session 2', 18, NULL)
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (451, N'المهارات المتقدمه Microsoft Office', 18, NULL)
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (452, N'ورشة الآمن السيبراني للمؤسسات الحكومية', 10, NULL)
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (453, N'ندوات التثقيف الرقمي - طلاب الجامعات', 29, NULL)
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (454, N'Customized English Program for ICT & DT 1st Level DTU', 10, NULL)
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (455, N'Customized English Program for ICT & DT 2nd Level DTU', 10, NULL)
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (456, N'Microsoft Project', 9, NULL)
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (457, N'Operation& Management For Modern Communication Networks', 9, NULL)
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (458, N'ندوات التثقيف الرقمي', 48, NULL)
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (459, N'منظومة إنفاذ القانون', 49, NULL)
GO
INSERT [dbo].[LU_TrainingCourse] ([TrainingCourseID], [TrainingCourseName], [TrainingProgramID], [TrainingCourseCost]) VALUES (460, N'ورشة عمل التوقيع الالكترونى', 10, NULL)
GO
SET IDENTITY_INSERT [dbo].[LU_TrainingCourse] OFF
GO
SET IDENTITY_INSERT [dbo].[LU_TrainingProgram] ON 
GO
INSERT [dbo].[LU_TrainingProgram] ([TrainingProgramID], [TrainingProgramName]) VALUES (1, N'برامج تنمية وبناء القدرات استرشاداً بنتائج تقييم العاملين')
GO
INSERT [dbo].[LU_TrainingProgram] ([TrainingProgramID], [TrainingProgramName]) VALUES (2, N'برنامج الإدارة الرقمية للمشروعات')
GO
INSERT [dbo].[LU_TrainingProgram] ([TrainingProgramID], [TrainingProgramName]) VALUES (3, N'المبادرة القومية المسئول الحكومى المحترف')
GO
INSERT [dbo].[LU_TrainingProgram] ([TrainingProgramID], [TrainingProgramName]) VALUES (4, N'مركز الخدمات الحكومية')
GO
INSERT [dbo].[LU_TrainingProgram] ([TrainingProgramID], [TrainingProgramName]) VALUES (5, N'برنامج التحول الرقمي لمكافحة الفساد')
GO
INSERT [dbo].[LU_TrainingProgram] ([TrainingProgramID], [TrainingProgramName]) VALUES (6, N'برامج تدريبية تخصصية')
GO
INSERT [dbo].[LU_TrainingProgram] ([TrainingProgramID], [TrainingProgramName]) VALUES (7, N'برنامج أساسيات التحول الرقمي')
GO
INSERT [dbo].[LU_TrainingProgram] ([TrainingProgramID], [TrainingProgramName]) VALUES (8, N'برنامج التحول الرقمي للقيادات التنفيذية والإشرافية')
GO
INSERT [dbo].[LU_TrainingProgram] ([TrainingProgramID], [TrainingProgramName]) VALUES (9, N'برنامج المتقدم للتحول الرقمي')
GO
INSERT [dbo].[LU_TrainingProgram] ([TrainingProgramID], [TrainingProgramName]) VALUES (10, N'التطوير المؤسسي لوحدات نظم المعلومات والتحول الرقمى')
GO
INSERT [dbo].[LU_TrainingProgram] ([TrainingProgramID], [TrainingProgramName]) VALUES (12, N'المبادرات لتنمية وبناء القدرات')
GO
INSERT [dbo].[LU_TrainingProgram] ([TrainingProgramID], [TrainingProgramName]) VALUES (13, N'برنامج تنمية وبناء القدرات')
GO
INSERT [dbo].[LU_TrainingProgram] ([TrainingProgramID], [TrainingProgramName]) VALUES (14, N'برنامج الإدارة الرقمية للمشروعات')
GO
INSERT [dbo].[LU_TrainingProgram] ([TrainingProgramID], [TrainingProgramName]) VALUES (15, N'مركز الخدمات الحكومية')
GO
INSERT [dbo].[LU_TrainingProgram] ([TrainingProgramID], [TrainingProgramName]) VALUES (16, N'برنامج التحول الرقمي لمكافحة الفساد')
GO
INSERT [dbo].[LU_TrainingProgram] ([TrainingProgramID], [TrainingProgramName]) VALUES (17, N'برامج تدريبية تخصصية')
GO
INSERT [dbo].[LU_TrainingProgram] ([TrainingProgramID], [TrainingProgramName]) VALUES (18, N'برنامج أساسيات التحول الرقمي')
GO
INSERT [dbo].[LU_TrainingProgram] ([TrainingProgramID], [TrainingProgramName]) VALUES (19, N'برنامج التحول الرقمي للقيادات التنفيذية والإشرافية')
GO
INSERT [dbo].[LU_TrainingProgram] ([TrainingProgramID], [TrainingProgramName]) VALUES (20, N'برنامج المتقدم للتحول الرقمي')
GO
INSERT [dbo].[LU_TrainingProgram] ([TrainingProgramID], [TrainingProgramName]) VALUES (21, N'التطوير المؤسسي لوحدات نظم المعلومات والتحول الرقمى')
GO
INSERT [dbo].[LU_TrainingProgram] ([TrainingProgramID], [TrainingProgramName]) VALUES (23, N'المبادرات لتنمية وبناء القدرات')
GO
INSERT [dbo].[LU_TrainingProgram] ([TrainingProgramID], [TrainingProgramName]) VALUES (25, N'المبادرات لتنمية وبناء القدرات')
GO
INSERT [dbo].[LU_TrainingProgram] ([TrainingProgramID], [TrainingProgramName]) VALUES (26, N'برنامج تنمية وبناء القدرات')
GO
INSERT [dbo].[LU_TrainingProgram] ([TrainingProgramID], [TrainingProgramName]) VALUES (27, N'برنامج التحول الرقمي للقيادات التنفيذية والإشرافية- مبادرة حياة كريمة')
GO
INSERT [dbo].[LU_TrainingProgram] ([TrainingProgramID], [TrainingProgramName]) VALUES (28, N'مبادرة مجتمع رقمى امن')
GO
INSERT [dbo].[LU_TrainingProgram] ([TrainingProgramID], [TrainingProgramName]) VALUES (29, N'حياة كريمة رقمية')
GO
INSERT [dbo].[LU_TrainingProgram] ([TrainingProgramID], [TrainingProgramName]) VALUES (30, N'مبادرة التحول الرقمى لطلاب الجامعات')
GO
INSERT [dbo].[LU_TrainingProgram] ([TrainingProgramID], [TrainingProgramName]) VALUES (31, N'مبادرة تعلم عن بعد لاستخدام مواقع التواصل الاجتماعى والامن والسلامة على الانترنت')
GO
INSERT [dbo].[LU_TrainingProgram] ([TrainingProgramID], [TrainingProgramName]) VALUES (32, N'مبادرة بكرة ديجيتال')
GO
INSERT [dbo].[LU_TrainingProgram] ([TrainingProgramID], [TrainingProgramName]) VALUES (33, N'مبادرة المهارات الدولية')
GO
INSERT [dbo].[LU_TrainingProgram] ([TrainingProgramID], [TrainingProgramName]) VALUES (34, N'مبادرة الامن السيبرانى')
GO
INSERT [dbo].[LU_TrainingProgram] ([TrainingProgramID], [TrainingProgramName]) VALUES (35, N'مبادرة شباب مصر الرقمية')
GO
INSERT [dbo].[LU_TrainingProgram] ([TrainingProgramID], [TrainingProgramName]) VALUES (36, N'الأولمبياد المصري للمعلوماتية')
GO
INSERT [dbo].[LU_TrainingProgram] ([TrainingProgramID], [TrainingProgramName]) VALUES (37, N'برامج تنمية وبناء القدرات الرقمية لمراكز الخدمات الحكومية')
GO
INSERT [dbo].[LU_TrainingProgram] ([TrainingProgramID], [TrainingProgramName]) VALUES (38, N'مبادرة الذكاء الصطناعى لطلاب التعليم العالى')
GO
INSERT [dbo].[LU_TrainingProgram] ([TrainingProgramID], [TrainingProgramName]) VALUES (39, N'برنامج الإدارة الرقمية للمشروعات - حياة كريمة')
GO
INSERT [dbo].[LU_TrainingProgram] ([TrainingProgramID], [TrainingProgramName]) VALUES (40, N'برنامج تأهيل الكوادر - حياة كريمة')
GO
INSERT [dbo].[LU_TrainingProgram] ([TrainingProgramID], [TrainingProgramName]) VALUES (42, N'تنمية و تطوير القدرات الرقمية التخصصية للجهاز الإداري للدولة')
GO
INSERT [dbo].[LU_TrainingProgram] ([TrainingProgramID], [TrainingProgramName]) VALUES (43, N'تنمية و تطوير القدرات الرقمية التخصصية للجهاز الإداري للدولة -مبادرة حياة كريمة')
GO
INSERT [dbo].[LU_TrainingProgram] ([TrainingProgramID], [TrainingProgramName]) VALUES (44, N'برنامج الإدارة الرقمية للمشروعات - حياة كريمة')
GO
INSERT [dbo].[LU_TrainingProgram] ([TrainingProgramID], [TrainingProgramName]) VALUES (45, N'البرامج المكتبية المتقدمة - حياة كريمة')
GO
INSERT [dbo].[LU_TrainingProgram] ([TrainingProgramID], [TrainingProgramName]) VALUES (46, N'السلوك التكنولوجي للعاملين بالجهاز الإدارى للدولة')
GO
INSERT [dbo].[LU_TrainingProgram] ([TrainingProgramID], [TrainingProgramName]) VALUES (47, N'برنامج مبادئ التحول الرقمي')
GO
INSERT [dbo].[LU_TrainingProgram] ([TrainingProgramID], [TrainingProgramName]) VALUES (48, N'برنامج التوعية الرقمية والمالية للعاملين بمحافظات حياة كريمة')
GO
INSERT [dbo].[LU_TrainingProgram] ([TrainingProgramID], [TrainingProgramName]) VALUES (49, N'منظومة إنفاذ القانون والقيادة والسيطرة')
GO
SET IDENTITY_INSERT [dbo].[LU_TrainingProgram] OFF
GO
SET IDENTITY_INSERT [dbo].[TBL_Candidates_Courses] ON 
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (3, N'نظم المعلومات والتحول الرقمى', N'نظم المعلومات والتحول الرقمى', N'مهندس تكامل تطبيقات', 2, 91, N'7', 10, 1, 7, CAST(N'2022-07-17T00:00:00.000' AS DateTime), CAST(N'2022-07-27T00:00:00.000' AS DateTime), 1, 2009, 1003)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (4, N'نظم المعلومات والتحول الرقمى', N'نظم المعلومات والتحول الرقمى', N'مهندس تكامل تطبيقات', 2, 91, N'7', 10, 1, 7, CAST(N'2022-07-17T00:00:00.000' AS DateTime), CAST(N'2022-07-27T00:00:00.000' AS DateTime), 1, 2009, 1004)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (5, N'نظم المعلومات والتحول الرقمى', N'نظم المعلومات والتحول الرقمى', N'أخصائي إدارة مشروعات', 18, 91, N'7', 10, 1, 7, CAST(N'2022-07-17T00:00:00.000' AS DateTime), CAST(N'2022-07-27T00:00:00.000' AS DateTime), 1, 2009, 1005)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (6, N'نظم المعلومات والتحول الرقمى', N'نظم المعلومات والتحول الرقمى', N'أخصائي إدارة مشروعات', 18, 91, N'7', 10, 1, 6, CAST(N'2022-07-17T00:00:00.000' AS DateTime), CAST(N'2022-07-27T00:00:00.000' AS DateTime), 1, 2009, 1006)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (7, N'نظم المعلومات والتحول الرقمى', N'نظم المعلومات والتحول الرقمى', N'أخصائي إدارة مشروعات', 18, 91, N'7', 10, 1, 7, CAST(N'2022-07-17T00:00:00.000' AS DateTime), CAST(N'2022-07-27T00:00:00.000' AS DateTime), 1, 2009, 1007)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (8, N'نظم المعلومات والتحول الرقمى', N'نظم المعلومات والتحول الرقمى', N'اخصائي إدارة مشروعات', 440, 91, N'7', 10, 1, 3, CAST(N'2022-07-17T00:00:00.000' AS DateTime), CAST(N'2022-07-27T00:00:00.000' AS DateTime), 1, 2009, 1008)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (9, N'نظم المعلومات والتحول الرقمى', N'نظم المعلومات والتحول الرقمى', N'اخصائي رقمنة', 440, 91, N'7', 10, 1, 7, CAST(N'2022-07-17T00:00:00.000' AS DateTime), CAST(N'2022-07-27T00:00:00.000' AS DateTime), 1, 2009, 1009)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (10, N'نظم المعلومات والتحول الرقمى', N'نظم المعلومات والتحول الرقمى', N'أخصائي إدارة مشروعات', 27, 91, N'7', 10, 1, 6, CAST(N'2022-07-17T00:00:00.000' AS DateTime), CAST(N'2022-07-27T00:00:00.000' AS DateTime), 1, 2009, 1010)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (11, N'نظم المعلومات والتحول الرقمى', N'نظم المعلومات والتحول الرقمى', N'أخصائي رقمنة', 33, 91, N'7', 10, 1, 7, CAST(N'2022-07-17T00:00:00.000' AS DateTime), CAST(N'2022-07-27T00:00:00.000' AS DateTime), 1, 2009, 1011)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (12, N'نظم المعلومات والتحول الرقمى', N'نظم المعلومات والتحول الرقمى', N'مصمم بنية معلوماتية مؤسسية، نائب مدير الوحدة', 35, 91, N'7', 10, 1, 7, CAST(N'2022-07-17T00:00:00.000' AS DateTime), CAST(N'2022-07-27T00:00:00.000' AS DateTime), 1, 2009, 1012)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (13, N'نظم المعلومات والتحول الرقمى', N'نظم المعلومات والتحول الرقمى', N'أخصائي إدارة مشروعات', 35, 91, N'7', 10, 1, 7, CAST(N'2022-07-17T00:00:00.000' AS DateTime), CAST(N'2022-07-27T00:00:00.000' AS DateTime), 1, 2009, 1013)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (14, N'نظم المعلومات والتحول الرقمى', N'نظم المعلومات والتحول الرقمى', N'أخصائي إدارة مشروعات', 461, 91, N'7', 10, 1, 6, CAST(N'2022-07-17T00:00:00.000' AS DateTime), CAST(N'2022-07-27T00:00:00.000' AS DateTime), 1, 2009, 1014)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (15, N'نظم المعلومات والتحول الرقمى', N'نظم المعلومات والتحول الرقمى', N'مدير وحدة التحول الرقمي', 45, 91, N'7', 10, 1, 7, CAST(N'2022-07-17T00:00:00.000' AS DateTime), CAST(N'2022-07-27T00:00:00.000' AS DateTime), 1, 2009, 1015)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (16, N'قطاع مكتب الوزير', N'نظم المعلومات والتحول الرقمى', N'', 61, 91, N'7', 10, 1, 6, CAST(N'2022-07-17T00:00:00.000' AS DateTime), CAST(N'2022-07-27T00:00:00.000' AS DateTime), 1, 2009, 1016)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (17, N'قطاع التخطيط', N'نظم المعلومات والتحول الرقمى', N'مهندس تكامل التطبيقات', 65, 91, N'7', 10, 1, 7, CAST(N'2022-07-17T00:00:00.000' AS DateTime), CAST(N'2022-07-27T00:00:00.000' AS DateTime), 1, 2009, 1017)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (18, N'نظم المعلومات والتحول الرقمى', N'نظم المعلومات والتحول الرقمى', N'مدير ادارة تكنولوجيا', 74, 91, N'7', 10, 1, 6, CAST(N'2022-07-17T00:00:00.000' AS DateTime), CAST(N'2022-07-27T00:00:00.000' AS DateTime), 1, 2009, 1018)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (19, N'نظم المعلومات والتحول الرقمى', N'نظم المعلومات والتحول الرقمى', N'مدير عام نظم المعلومات والتحول الرقمى', 74, 91, N'7', 10, 1, 2, CAST(N'2022-07-17T00:00:00.000' AS DateTime), CAST(N'2022-07-27T00:00:00.000' AS DateTime), 1, 2009, 1019)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (20, N'نظم المعلومات والتحول الرقمى', N'نظم المعلومات والتحول الرقمى', N'مدير مركز المعلومات', 140, 91, N'7', 10, 1, 7, CAST(N'2022-07-17T00:00:00.000' AS DateTime), CAST(N'2022-07-27T00:00:00.000' AS DateTime), 1, 2009, 1020)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (21, N'نظم المعلومات والتحول الرقمى', N'نظم المعلومات والتحول الرقمى', N'أخصائي رقمنه مستندات', 60, 329, N'24', 10, 1, 7, CAST(N'2022-07-17T00:00:00.000' AS DateTime), CAST(N'2022-09-08T00:00:00.000' AS DateTime), 1, 2009, 1021)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (22, N'قطاع التخطيط', N'نظم المعلومات والتحول الرقمى', N'مدير وحدة نظم المعلومات والتحول الرقمى', 65, 329, N'24', 10, 1, 6, CAST(N'2022-07-17T00:00:00.000' AS DateTime), CAST(N'2022-09-08T00:00:00.000' AS DateTime), 1, 2009, 1022)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (23, N'البحوث والدراسات', N'وحدة نظم المعلومات والتحول الرقمى', N'أخصائي إدارة الأنظمة', 18, 329, N'24', 10, 1, 6, CAST(N'2022-07-17T00:00:00.000' AS DateTime), CAST(N'2022-09-08T00:00:00.000' AS DateTime), 1, 2009, 1023)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (24, N'نظم المعلومات والتحول الرقمى', N'نظم المعلومات والتحول الرقمى', N'أخصائي إدارة مشروعات', 60, 329, N'24', 10, 1, 7, CAST(N'2022-07-17T00:00:00.000' AS DateTime), CAST(N'2022-09-08T00:00:00.000' AS DateTime), 1, 2009, 1024)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (25, N'نظم المعلومات والتحول الرقمى', N'نظم المعلومات والتحول الرقمى', N'مدير وحدة نظم المعلومات والتحول الرقمى', 59, 329, N'24', 10, 1, 2, CAST(N'2022-07-17T00:00:00.000' AS DateTime), CAST(N'2022-09-08T00:00:00.000' AS DateTime), 1, 2009, 1025)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (26, N'نظم المعلومات والتحول الرقمى', N'نظم المعلومات والتحول الرقمى', N'أخصائي رقمنه', 59, 329, N'24', 10, 1, 7, CAST(N'2022-07-17T00:00:00.000' AS DateTime), CAST(N'2022-09-08T00:00:00.000' AS DateTime), 1, 2009, 1026)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (27, N'نظم المعلومات والتحول الرقمى', N'نظم المعلومات والتحول الرقمى', N'اخصائي رقمنة مستندات', 70, 329, N'24', 10, 1, 6, CAST(N'2022-07-17T00:00:00.000' AS DateTime), CAST(N'2022-09-08T00:00:00.000' AS DateTime), 1, 2009, 1027)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (28, N'نظم المعلومات والتحول الرقمى', N'نظم المعلومات والتحول الرقمى', N'', 77, 329, N'24', 10, 1, 7, CAST(N'2022-07-17T00:00:00.000' AS DateTime), CAST(N'2022-09-08T00:00:00.000' AS DateTime), 1, 2009, 1028)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (29, N'نظم المعلومات والتحول الرقمى', N'نظم المعلومات والتحول الرقمى', N'', 22, 329, N'24', 10, 1, 6, CAST(N'2022-07-17T00:00:00.000' AS DateTime), CAST(N'2022-09-08T00:00:00.000' AS DateTime), 1, 2009, 1029)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (30, N'نظم المعلومات والتحول الرقمى', N'نظم المعلومات والتحول الرقمى', N'أخصائي رقمنة مستندات', 116, 329, N'24', 10, 1, 7, CAST(N'2022-07-17T00:00:00.000' AS DateTime), CAST(N'2022-09-08T00:00:00.000' AS DateTime), 1, 2009, 1030)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (31, N'نظم المعلومات والتحول الرقمى', N'نظم المعلومات والتحول الرقمى', N'أخصائي رقمنه مستندات', 60, 329, N'24', 10, 1, 7, CAST(N'2022-07-17T00:00:00.000' AS DateTime), CAST(N'2022-09-08T00:00:00.000' AS DateTime), 1, 2009, 1031)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (32, N'نظم المعلومات والتحول الرقمى', N'نظم المعلومات والتحول الرقمى', N'أخصائي إدارة مشروعات', 59, 329, N'24', 10, 1, 7, CAST(N'2022-07-17T00:00:00.000' AS DateTime), CAST(N'2022-09-08T00:00:00.000' AS DateTime), 1, 2009, 1032)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (33, N'الجهاز القومي للتنسيق الحضاري', N'وحدة نظم المعلومات والتحول الرقمى', N'اخصائي تشغيل حاسب ألى', 101, 329, N'24', 10, 1, 10, CAST(N'2022-07-17T00:00:00.000' AS DateTime), CAST(N'2022-09-08T00:00:00.000' AS DateTime), 1, 2009, 1033)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (34, N'نظم المعلومات والتحول الرقمى', N'نظم المعلومات والتحول الرقمى', N'أخصائي رقمنه مستندات', 77, 329, N'24', 10, 1, 7, CAST(N'2022-07-17T00:00:00.000' AS DateTime), CAST(N'2022-09-08T00:00:00.000' AS DateTime), 1, 2009, 1034)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (35, N'النيابه الاداريه', N'التحول الرقمي', N'نائب رئيس هيئة النيابة الإدارية مدير ادارة التحول الرقمي', 444, 4, N'16', 10, 2, 33, CAST(N'2022-07-24T00:00:00.000' AS DateTime), CAST(N'2022-08-28T00:00:00.000' AS DateTime), 1, 2009, 1035)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (36, N'النيابه الادارية', N'ادارة التحول الرقمي', N'مستشار', 444, 4, N'16', 10, 2, 33, CAST(N'2022-07-24T00:00:00.000' AS DateTime), CAST(N'2022-08-28T00:00:00.000' AS DateTime), 1, 2009, 1036)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (37, N'التفتيش القضائي', N'التفتيش القضائي', N'باحث ثاني', 57, 6, N'4', 10, 2, 7, CAST(N'2022-07-24T00:00:00.000' AS DateTime), CAST(N'2022-07-27T00:00:00.000' AS DateTime), 1, 2009, 1037)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (38, N'الهيئة العامة لصندوق أبنية دور المحاكم والشهر العقاري', N'العامة لشئون مكتب مساعد الوزير', N'باحث تنمية إدارية', 57, 6, N'4', 10, 2, 7, CAST(N'2022-07-24T00:00:00.000' AS DateTime), CAST(N'2022-07-27T00:00:00.000' AS DateTime), 1, 2009, 1038)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (39, N'المركز القومي للدراسات القضائية', N'الشئون المالية', N'مدير الشئون الماليه', 57, 6, N'4', 10, 2, 6, CAST(N'2022-07-24T00:00:00.000' AS DateTime), CAST(N'2022-07-27T00:00:00.000' AS DateTime), 1, 2009, 1039)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (40, N'المكتب الفني لوزير العدل', N'السكرتارية الخاصة', N'باحث تمويل ومحاسبة', 57, 6, N'4', 10, 2, 6, CAST(N'2022-07-24T00:00:00.000' AS DateTime), CAST(N'2022-07-27T00:00:00.000' AS DateTime), 1, 2009, 1040)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (41, N'المحاكم والمطالبات القضائية', N'الادارة المركزية للمراجعة الداخلية والحوكمة على الاعمال المالية والادارية', N'وكيل ادارة التفتيش المالى', 57, 6, N'4', 10, 2, 6, CAST(N'2022-07-24T00:00:00.000' AS DateTime), CAST(N'2022-07-27T00:00:00.000' AS DateTime), 1, 2009, 1041)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (42, N'قطاع التخطيط والتنمية الإدارية والمتابعة', N'الاداره العامه للتخطيط', N'باحث ثالث تنميه اداريه', 57, 6, N'4', 10, 2, 8, CAST(N'2022-07-24T00:00:00.000' AS DateTime), CAST(N'2022-07-27T00:00:00.000' AS DateTime), 1, 2009, 1042)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (43, N'المكتب الفني للوزير', N'ادارة تكليفات رئاسة الجمهورية ومجلس الوزراء', N'باحث اول', 57, 6, N'4', 10, 2, 6, CAST(N'2022-07-24T00:00:00.000' AS DateTime), CAST(N'2022-07-27T00:00:00.000' AS DateTime), 1, 2009, 1043)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (44, N'المحاكم', N'تفتيش المحضرين', N'مدير', 57, 6, N'4', 10, 2, 2, CAST(N'2022-07-24T00:00:00.000' AS DateTime), CAST(N'2022-07-27T00:00:00.000' AS DateTime), 1, 2009, 1044)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (45, N'قطاع المحاكم', N'الادارة المركزية للمراجعة الداخلية والحوكمة على الاعمال الادارية والمالية بالمحاكم', N'مفتش ادارى', 57, 6, N'4', 10, 2, 6, CAST(N'2022-07-24T00:00:00.000' AS DateTime), CAST(N'2022-07-27T00:00:00.000' AS DateTime), 1, 2009, 1045)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (46, N'موازنة الديوان العام', N'موازنة الديوان العام', N'مدير عام', 57, 6, N'4', 10, 2, 2, CAST(N'2022-07-24T00:00:00.000' AS DateTime), CAST(N'2022-07-27T00:00:00.000' AS DateTime), 1, 2009, 1046)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (47, N'اداره المحاكم', N'اداره الماذونين', N'باحث قانونى', 57, 6, N'4', 10, 2, 8, CAST(N'2022-07-24T00:00:00.000' AS DateTime), CAST(N'2022-07-27T00:00:00.000' AS DateTime), 1, 2009, 1047)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (48, N'مساعد اول وزير العدل', N'موازنة الهيئات القضائية', N'كاتب رابع', 57, 6, N'4', 10, 2, 9, CAST(N'2022-07-24T00:00:00.000' AS DateTime), CAST(N'2022-07-27T00:00:00.000' AS DateTime), 1, 2009, 1048)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (49, N'المالى', N'موازنة الديوان العام', N'باحث ثالث تنمية ادارية', 57, 6, N'4', 10, 2, 8, CAST(N'2022-07-24T00:00:00.000' AS DateTime), CAST(N'2022-07-27T00:00:00.000' AS DateTime), 1, 2009, 1049)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (50, N'قطاع حقوق الإنسان والمرأة والطفل', N'إدارة الترجمة', N'باحث اول تنمية ادارية', 57, 6, N'4', 10, 2, 6, CAST(N'2022-07-24T00:00:00.000' AS DateTime), CAST(N'2022-07-27T00:00:00.000' AS DateTime), 1, 2009, 1050)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (51, N'قطاع مساعد أول وزير العدل', N'الامانة العامة لمجلس الهيئات القضائية', N'باحث ثالث قانون', 57, 6, N'4', 10, 2, 8, CAST(N'2022-07-24T00:00:00.000' AS DateTime), CAST(N'2022-07-27T00:00:00.000' AS DateTime), 1, 2009, 1051)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (52, N'الهيئه العامله لصندوق ابنيه المحاكم والشهر العقارى', N'الموارد البشريه', N'استحقاقات ماليه', 57, 6, N'4', 10, 2, 7, CAST(N'2022-07-24T00:00:00.000' AS DateTime), CAST(N'2022-07-27T00:00:00.000' AS DateTime), 1, 2009, 1052)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (53, N'قطاع حكومي', N'تعاقدات', N'كتابي', 57, 6, N'4', 10, 2, 8, CAST(N'2022-07-24T00:00:00.000' AS DateTime), CAST(N'2022-07-27T00:00:00.000' AS DateTime), 1, 2009, 1053)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (54, N'قطاع التخطيط والتنميه الاداريه والمتابعه', N'الاداره العامه لمتابعه الخطه', N'مدير عام', 57, 6, N'4', 10, 2, 2, CAST(N'2022-07-24T00:00:00.000' AS DateTime), CAST(N'2022-07-27T00:00:00.000' AS DateTime), 1, 2009, 1054)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (55, N'الشهر العقاري والتوثيق', N'', N'كتاب', 57, 6, N'4', 10, 2, 9, CAST(N'2022-07-24T00:00:00.000' AS DateTime), CAST(N'2022-07-27T00:00:00.000' AS DateTime), 1, 2009, 1055)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (56, N'جهاز تنظيم النقل البري الداخلي والدولي', N'التفتيش', N'مفتش', 74, 6, N'4', 10, 2, 7, CAST(N'2022-07-24T00:00:00.000' AS DateTime), CAST(N'2022-07-27T00:00:00.000' AS DateTime), 1, 2009, 1056)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (57, N'مركز المعلومات', N'مركز المعلومات', N'مدير ادارة الحاسبات', 69, 6, N'4', 10, 2, 6, CAST(N'2022-07-24T00:00:00.000' AS DateTime), CAST(N'2022-07-27T00:00:00.000' AS DateTime), 1, 2009, 1057)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (58, N'المالي', N'مراجعة الاجور', N'مراجع حسابات', 69, 6, N'4', 10, 2, 7, CAST(N'2022-07-24T00:00:00.000' AS DateTime), CAST(N'2022-07-27T00:00:00.000' AS DateTime), 1, 2009, 1058)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (59, N'المواني الجافة', N'الاستثمار والتراخيص', N'أخصائي تخطيط ومتابعة', 69, 6, N'4', 10, 2, 6, CAST(N'2022-07-24T00:00:00.000' AS DateTime), CAST(N'2022-07-27T00:00:00.000' AS DateTime), 1, 2009, 1059)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (60, N'قطاع الشئون الاقتصاديه', N'الشئون الاقتصاديه', N'باحث اول (أ) تمويل وتكاليف', 71, 6, N'4', 10, 2, 6, CAST(N'2022-07-24T00:00:00.000' AS DateTime), CAST(N'2022-07-27T00:00:00.000' AS DateTime), 1, 2009, 1060)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (61, N'الموارد البشرية', N'الموارد البشرية', N'اخصائي تدريب اول', 69, 6, N'4', 10, 2, 6, CAST(N'2022-07-24T00:00:00.000' AS DateTime), CAST(N'2022-07-27T00:00:00.000' AS DateTime), 1, 2009, 1061)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (62, N'الامانه العامه', N'الموارد البشرية', N'كاتب شئون عاملين اول', 71, 6, N'4', 10, 2, 6, CAST(N'2022-07-24T00:00:00.000' AS DateTime), CAST(N'2022-07-27T00:00:00.000' AS DateTime), 1, 2009, 1062)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (63, N'المالى', N'المراجعة', N'محاسب', 69, 6, N'4', 10, 2, 7, CAST(N'2022-07-24T00:00:00.000' AS DateTime), CAST(N'2022-07-27T00:00:00.000' AS DateTime), 1, 2009, 1063)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (64, N'قطاع النقل', N'أدارة الموارد البشرية', N'كبير كتاب', 71, 6, N'4', 10, 2, 3, CAST(N'2022-07-24T00:00:00.000' AS DateTime), CAST(N'2022-07-27T00:00:00.000' AS DateTime), 1, 2009, 1064)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (65, N'القطاع الادارى', N'شئون الافراد', N'اخصائى تخطيط برامج الكترونيه ثان', 69, 6, N'4', 10, 2, 7, CAST(N'2022-07-24T00:00:00.000' AS DateTime), CAST(N'2022-07-27T00:00:00.000' AS DateTime), 1, 2009, 1065)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (66, N'الهيئة العامة للمواني البرية والجافة', N'إدارة المشتريات', N'اخصائي علاقات عامة اول', 69, 6, N'4', 10, 2, 6, CAST(N'2022-07-24T00:00:00.000' AS DateTime), CAST(N'2022-07-27T00:00:00.000' AS DateTime), 1, 2009, 1066)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (67, N'الإدارة المركزية لخدمات النقل', N'إدارة الافراجات والتصاريح الجمركية', N'محاسب', 74, 6, N'4', 10, 2, 8, CAST(N'2022-07-24T00:00:00.000' AS DateTime), CAST(N'2022-07-27T00:00:00.000' AS DateTime), 1, 2009, 1067)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (68, N'الرقمنه', N'مركز المعلومات', N'اخصائي نشر اول', 69, 6, N'4', 10, 2, 6, CAST(N'2022-07-24T00:00:00.000' AS DateTime), CAST(N'2022-07-27T00:00:00.000' AS DateTime), 1, 2009, 1068)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (69, N'النقل البرى للركاب', N'الادارة المركزيه للنقل البرى', N'مدير ادارة الرقابه والتفتيش', 74, 6, N'4', 10, 2, 7, CAST(N'2022-07-24T00:00:00.000' AS DateTime), CAST(N'2022-07-27T00:00:00.000' AS DateTime), 1, 2009, 1069)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (70, N'المالي', N'الشئون المالية', N'مدير اداره الشئون المالية', 69, 6, N'4', 10, 2, 6, CAST(N'2022-07-24T00:00:00.000' AS DateTime), CAST(N'2022-07-27T00:00:00.000' AS DateTime), 1, 2009, 1070)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (71, N'الإدارة المركزية للشئون الاقتصادية', N'الإدارة العامة للتخطيط الاقتصادى والمتابعة', N'كبير باحثين اقتصاديين بدرجة مدير عام', 71, 6, N'4', 10, 2, 3, CAST(N'2022-07-24T00:00:00.000' AS DateTime), CAST(N'2022-07-27T00:00:00.000' AS DateTime), 1, 2009, 1071)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (72, N'الادارة العامة للأمن', N'الادارة العامة للأمن', N'مدير إدارة المكتب الفني', 69, 6, N'4', 10, 2, 6, CAST(N'2022-07-24T00:00:00.000' AS DateTime), CAST(N'2022-07-27T00:00:00.000' AS DateTime), 1, 2009, 1072)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (73, N'الهندسي', N'إدارة المعايير والمواصفات الفنية', N'مهندس تخطيط النقل وهندسة المرور', 74, 6, N'4', 10, 2, 8, CAST(N'2022-07-24T00:00:00.000' AS DateTime), CAST(N'2022-07-27T00:00:00.000' AS DateTime), 1, 2009, 1073)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (74, N'المالي والإداري', N'الشئون الاداريه', N'اخصائي رعاية عاملين اول', 69, 6, N'4', 10, 2, 6, CAST(N'2022-07-24T00:00:00.000' AS DateTime), CAST(N'2022-07-27T00:00:00.000' AS DateTime), 1, 2009, 1074)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (75, N'القطاع المالي', N'الحسابات', N'محاسب اول', 69, 6, N'4', 10, 2, 6, CAST(N'2022-07-24T00:00:00.000' AS DateTime), CAST(N'2022-07-27T00:00:00.000' AS DateTime), 1, 2009, 1075)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (76, N'الأمانة العامة', N'التنظيم والإدارة', N'مدير إدارة التنظيم والإدارة', 71, 6, N'4', 10, 2, 6, CAST(N'2022-07-24T00:00:00.000' AS DateTime), CAST(N'2022-07-27T00:00:00.000' AS DateTime), 1, 2009, 1076)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (77, N'قطاع المنشآت الفندقية والسياحية', N'الادارة المركزية للرقابة والتفتيش على المنشآت الفندقية والسياحية', N'طبيب بيطرى بوزارة السياحة', 47, 69, N'5', 2, 2, 8, CAST(N'2022-07-24T00:00:00.000' AS DateTime), CAST(N'2022-07-28T00:00:00.000' AS DateTime), 1, 2009, 1077)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (78, N'المكاتب السياحة', N'المكاتب الخارجية', N'مدير المكتب المركزي لدول فرنسا و البنلوكس', 462, 69, N'5', 2, 2, 3, CAST(N'2022-07-24T00:00:00.000' AS DateTime), CAST(N'2022-07-28T00:00:00.000' AS DateTime), 1, 2009, 1078)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (79, N'الادارة المركزية للسياحة الداخلية', N'ادارة القاهرة الكبرى ومدن القناة', N'اخصائي سياحة ثان', 462, 69, N'5', 2, 2, 7, CAST(N'2022-07-24T00:00:00.000' AS DateTime), CAST(N'2022-07-28T00:00:00.000' AS DateTime), 1, 2009, 1079)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (80, N'', N'الرقابة علي المنشأت الفندقية', N'مفتش سياحي', 47, 69, N'5', 2, 2, 8, CAST(N'2022-07-24T00:00:00.000' AS DateTime), CAST(N'2022-07-28T00:00:00.000' AS DateTime), 1, 2009, 1080)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (81, N'الادارة المركزية لمكاتب السياحة', N'الإدارة العامة للمكاتب الخارجية', N'اخصائي سياحي ثاني', 462, 69, N'5', 2, 2, 7, CAST(N'2022-07-24T00:00:00.000' AS DateTime), CAST(N'2022-07-28T00:00:00.000' AS DateTime), 1, 2009, 1081)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (82, N'قطاع التسويق السياحى', N'التوعية السياحية', N'اخصائى سياحى', 462, 69, N'5', 2, 2, 7, CAST(N'2022-07-24T00:00:00.000' AS DateTime), CAST(N'2022-07-28T00:00:00.000' AS DateTime), 1, 2009, 1082)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (83, N'الاداره الاستراتيجيه المركزيه', N'المتابعه', N'اخصائي سياحه', 462, 69, N'5', 2, 2, 6, CAST(N'2022-07-24T00:00:00.000' AS DateTime), CAST(N'2022-07-28T00:00:00.000' AS DateTime), 1, 2009, 1083)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (84, N'قطاع مركزى', N'نظم المعلومات الجغرافية', N'مدير اداره الدراسات العلميه', 462, 69, N'5', 2, 2, 6, CAST(N'2022-07-24T00:00:00.000' AS DateTime), CAST(N'2022-07-28T00:00:00.000' AS DateTime), 1, 2009, 1084)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (85, N'الإدارة المركزية للتسويق السياحي', N'الإدارة العامة للترويج السياحي', N'أخصائي سياحي', 462, 69, N'5', 2, 2, 7, CAST(N'2022-07-24T00:00:00.000' AS DateTime), CAST(N'2022-07-28T00:00:00.000' AS DateTime), 1, 2009, 1085)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (86, N'الادارة المركزية لمكاتب السياحة', N'الادارة العامة للمكاتب الداخلية', N'أخصائي سياحة ثان', 462, 69, N'5', 2, 2, 7, CAST(N'2022-07-24T00:00:00.000' AS DateTime), CAST(N'2022-07-28T00:00:00.000' AS DateTime), 1, 2009, 1086)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (87, N'الادارة المركزية للمنشات الفندقية والمحال والانشطة السياحية', N'الادارة العامة للرقابة والتفتيش على المنشآت الفندقية', N'اخصائى سياحى', 47, 69, N'5', 2, 2, 7, CAST(N'2022-07-24T00:00:00.000' AS DateTime), CAST(N'2022-07-28T00:00:00.000' AS DateTime), 1, 2009, 1087)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (88, N'مكاتب السياحة', N'المكاتب الخارجية', N'أخصائي سياحة أول', 462, 69, N'5', 2, 2, 6, CAST(N'2022-07-24T00:00:00.000' AS DateTime), CAST(N'2022-07-28T00:00:00.000' AS DateTime), 1, 2009, 1088)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (89, N'الوزير', N'الإدارة العامة للمراجعة الداخلية والحوكمة محاسب', N'محاسب', 47, 69, N'5', 2, 2, 3, CAST(N'2022-07-24T00:00:00.000' AS DateTime), CAST(N'2022-07-28T00:00:00.000' AS DateTime), 1, 2009, 1089)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (90, N'المكاتب السياحية', N'المكاتب الخارجية', N'أخصائي سياحة', 462, 69, N'5', 2, 2, 6, CAST(N'2022-07-24T00:00:00.000' AS DateTime), CAST(N'2022-07-28T00:00:00.000' AS DateTime), 1, 2009, 1090)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (91, N'قطاع حكومي', N'الاداره العامه المراجعه الداخليه والحوكمه', N'مفتش اثار', 47, 69, N'5', 2, 2, 7, CAST(N'2022-07-24T00:00:00.000' AS DateTime), CAST(N'2022-07-28T00:00:00.000' AS DateTime), 1, 2009, 1091)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (92, N'قطاع مكتب وزير السياحة والاثار الزمالك', N'مكتب المتابعة بمكتب وزير السياحة والاثار بالزمالك', N'مفتش آثار', 47, 69, N'5', 2, 2, 8, CAST(N'2022-07-24T00:00:00.000' AS DateTime), CAST(N'2022-07-28T00:00:00.000' AS DateTime), 1, 2009, 1092)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (93, N'المتاحف', N'المتابعة،/ مكتب الوزير', N'امين متحف', 47, 69, N'5', 2, 2, 8, CAST(N'2022-07-24T00:00:00.000' AS DateTime), CAST(N'2022-07-28T00:00:00.000' AS DateTime), 1, 2009, 1093)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (94, N'الإدارة المركزية للمكاتب السياحية', N'العلاقات السياحية', N'منسق دبلوماسي للعلاقات السياحية ومشرف علي المكتب المركزي للدول الأوربية', 462, 69, N'5', 2, 2, 7, CAST(N'2022-07-24T00:00:00.000' AS DateTime), CAST(N'2022-07-28T00:00:00.000' AS DateTime), 1, 2009, 1094)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (95, N'قطاع الرقابة والتفتيش على المنشآت الفندقية', N'الإدارة العامة للرقابة والتفتيش على المنشآت الفندقية', N'أخصائي طب بيطري', 47, 69, N'5', 2, 2, 8, CAST(N'2022-07-24T00:00:00.000' AS DateTime), CAST(N'2022-07-28T00:00:00.000' AS DateTime), 1, 2009, 1095)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (96, N'', N'', N'مهندس كهرباء', 68, 376, N'', 6, 1, 7, CAST(N'2022-07-19T00:00:00.000' AS DateTime), CAST(N'2022-07-20T00:00:00.000' AS DateTime), 1, 2009, 1096)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (97, N'', N'', N'مهندس إشارات وإتصالات', 68, 376, N'', 6, 1, 7, CAST(N'2022-07-19T00:00:00.000' AS DateTime), CAST(N'2022-07-20T00:00:00.000' AS DateTime), 1, 2009, 1097)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (98, N'', N'', N'مهندس إشارات وإتصالات', 68, 376, N'', 6, 1, 7, CAST(N'2022-07-19T00:00:00.000' AS DateTime), CAST(N'2022-07-20T00:00:00.000' AS DateTime), 1, 2009, 1098)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (99, N'', N'', N'مهندس إشارات وإتصالات', 68, 376, N'', 6, 1, 7, CAST(N'2022-07-19T00:00:00.000' AS DateTime), CAST(N'2022-07-20T00:00:00.000' AS DateTime), 1, 2009, 1099)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (100, N'', N'', N'مهندس إشارات وإتصالات', 68, 376, N'', 6, 1, 7, CAST(N'2022-07-19T00:00:00.000' AS DateTime), CAST(N'2022-07-20T00:00:00.000' AS DateTime), 1, 2009, 1100)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (101, N'', N'', N'مهندس إشارات وإتصالات', 68, 376, N'', 6, 1, 7, CAST(N'2022-07-19T00:00:00.000' AS DateTime), CAST(N'2022-07-20T00:00:00.000' AS DateTime), 1, 2009, 1101)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (102, N'', N'', N'مهندس كهرباء حاسبات', 68, 376, N'', 6, 1, 7, CAST(N'2022-07-19T00:00:00.000' AS DateTime), CAST(N'2022-07-20T00:00:00.000' AS DateTime), 1, 2009, 1102)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (103, N'', N'', N'مهندس ميكانيكا', 68, 376, N'', 6, 1, 7, CAST(N'2022-07-19T00:00:00.000' AS DateTime), CAST(N'2022-07-20T00:00:00.000' AS DateTime), 1, 2009, 1103)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (104, N'', N'', N'مهندس ميكانيكا', 68, 376, N'', 6, 1, 7, CAST(N'2022-07-19T00:00:00.000' AS DateTime), CAST(N'2022-07-20T00:00:00.000' AS DateTime), 1, 2009, 1104)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (105, N'', N'', N'مهندس ميكانيكا', 68, 376, N'', 6, 1, 7, CAST(N'2022-07-19T00:00:00.000' AS DateTime), CAST(N'2022-07-20T00:00:00.000' AS DateTime), 1, 2009, 1105)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (106, N'', N'', N'مهندس ميكانيكا', 68, 376, N'', 6, 1, 7, CAST(N'2022-07-19T00:00:00.000' AS DateTime), CAST(N'2022-07-20T00:00:00.000' AS DateTime), 1, 2009, 1106)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (107, N'', N'', N'مهندس ميكانيكا', 68, 376, N'', 6, 1, 7, CAST(N'2022-07-19T00:00:00.000' AS DateTime), CAST(N'2022-07-20T00:00:00.000' AS DateTime), 1, 2009, 1107)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (108, N'', N'', N'مهندس ميكانيكا', 68, 376, N'', 6, 1, 7, CAST(N'2022-07-19T00:00:00.000' AS DateTime), CAST(N'2022-07-20T00:00:00.000' AS DateTime), 1, 2009, 1108)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (109, N'', N'', N'مهندس طرق', 68, 376, N'', 6, 1, 7, CAST(N'2022-07-19T00:00:00.000' AS DateTime), CAST(N'2022-07-20T00:00:00.000' AS DateTime), 1, 2009, 1109)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (110, N'', N'', N'مهندس ابحاث تربة وطرق', 68, 376, N'', 6, 1, 7, CAST(N'2022-07-19T00:00:00.000' AS DateTime), CAST(N'2022-07-20T00:00:00.000' AS DateTime), 1, 2009, 1110)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (111, N'', N'', N'مهندس تصميم إنشائى ومدنى', 68, 376, N'', 6, 1, 7, CAST(N'2022-07-19T00:00:00.000' AS DateTime), CAST(N'2022-07-20T00:00:00.000' AS DateTime), 1, 2009, 1111)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (112, N'', N'', N'مهندس تصميم إنشائى ومدنى', 68, 376, N'', 6, 1, 7, CAST(N'2022-07-19T00:00:00.000' AS DateTime), CAST(N'2022-07-20T00:00:00.000' AS DateTime), 1, 2009, 1112)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (113, N'', N'', N'مهندس تصميم معمارى', 68, 376, N'', 6, 1, 7, CAST(N'2022-07-19T00:00:00.000' AS DateTime), CAST(N'2022-07-20T00:00:00.000' AS DateTime), 1, 2009, 1113)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (114, N'', N'', N'مهندس تصميم معمارى', 68, 376, N'', 6, 1, 7, CAST(N'2022-07-19T00:00:00.000' AS DateTime), CAST(N'2022-07-20T00:00:00.000' AS DateTime), 1, 2009, 1114)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (115, N'', N'', N'مهندس تصميم إنشائى ومدنى', 68, 376, N'', 6, 1, 7, CAST(N'2022-07-19T00:00:00.000' AS DateTime), CAST(N'2022-07-20T00:00:00.000' AS DateTime), 1, 2009, 1115)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (116, N'', N'', N'مهندس تصميم إنشائى ومدنى', 68, 376, N'', 6, 1, 7, CAST(N'2022-07-19T00:00:00.000' AS DateTime), CAST(N'2022-07-20T00:00:00.000' AS DateTime), 1, 2009, 1116)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (117, N'', N'', N'مهندس ابحاث تربة وطرق', 68, 376, N'', 6, 1, 7, CAST(N'2022-07-19T00:00:00.000' AS DateTime), CAST(N'2022-07-20T00:00:00.000' AS DateTime), 1, 2009, 1117)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (118, N'', N'', N'مهندس تصميم معمارى', 68, 376, N'', 6, 1, 7, CAST(N'2022-07-19T00:00:00.000' AS DateTime), CAST(N'2022-07-20T00:00:00.000' AS DateTime), 1, 2009, 1118)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (119, N'', N'', N'مهندس تصميم معمارى', 68, 376, N'', 6, 1, 7, CAST(N'2022-07-19T00:00:00.000' AS DateTime), CAST(N'2022-07-20T00:00:00.000' AS DateTime), 1, 2009, 1119)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (120, N'', N'', N'مهندس تصميم معمارى', 68, 376, N'', 6, 1, 7, CAST(N'2022-07-19T00:00:00.000' AS DateTime), CAST(N'2022-07-20T00:00:00.000' AS DateTime), 1, 2009, 1120)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (121, N'', N'', N'مهندس تصميم معمارى', 68, 376, N'', 6, 1, 7, CAST(N'2022-07-19T00:00:00.000' AS DateTime), CAST(N'2022-07-20T00:00:00.000' AS DateTime), 1, 2009, 1121)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (122, N'', N'', N'مهندس تصميم معمارى', 68, 376, N'', 6, 1, 7, CAST(N'2022-07-19T00:00:00.000' AS DateTime), CAST(N'2022-07-20T00:00:00.000' AS DateTime), 1, 2009, 1122)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (123, N'', N'', N'مهندس تصميم معمارى', 68, 376, N'', 6, 1, 7, CAST(N'2022-07-19T00:00:00.000' AS DateTime), CAST(N'2022-07-20T00:00:00.000' AS DateTime), 1, 2009, 1123)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (124, N'', N'', N'اخصائى مراقبة جودة', 68, 376, N'', 6, 1, 7, CAST(N'2022-07-19T00:00:00.000' AS DateTime), CAST(N'2022-07-20T00:00:00.000' AS DateTime), 1, 2009, 1124)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (125, N'', N'', N'مهندس تصميم إنشائى ومدنى', 68, 376, N'', 6, 1, 7, CAST(N'2022-07-19T00:00:00.000' AS DateTime), CAST(N'2022-07-20T00:00:00.000' AS DateTime), 1, 2009, 1125)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (126, N'', N'', N'أخصائى تخطيط فنى', 68, 376, N'', 6, 1, 7, CAST(N'2022-07-19T00:00:00.000' AS DateTime), CAST(N'2022-07-20T00:00:00.000' AS DateTime), 1, 2009, 1126)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (127, N'', N'', N'أخصائى عطاءات وعقود', 68, 376, N'', 6, 1, 7, CAST(N'2022-07-19T00:00:00.000' AS DateTime), CAST(N'2022-07-20T00:00:00.000' AS DateTime), 1, 2009, 1127)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (128, N'', N'', N'مهندس إشارات وإتصالات', 68, 376, N'', 6, 1, 7, CAST(N'2022-07-19T00:00:00.000' AS DateTime), CAST(N'2022-07-20T00:00:00.000' AS DateTime), 1, 2009, 1128)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (129, N'', N'', N'مهندس مساحة', 68, 376, N'', 6, 1, 7, CAST(N'2022-07-19T00:00:00.000' AS DateTime), CAST(N'2022-07-20T00:00:00.000' AS DateTime), 1, 2009, 1129)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (130, N'', N'', N'مهندس بحوث', 68, 376, N'', 6, 1, 7, CAST(N'2022-07-19T00:00:00.000' AS DateTime), CAST(N'2022-07-20T00:00:00.000' AS DateTime), 1, 2009, 1130)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (131, N'', N'', N'مهندس تصميم معمارى', 68, 376, N'', 6, 1, 7, CAST(N'2022-07-19T00:00:00.000' AS DateTime), CAST(N'2022-07-20T00:00:00.000' AS DateTime), 1, 2009, 1131)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (132, N'', N'', N'مهندس تنفيذ ثالث', 68, 376, N'', 6, 1, 7, CAST(N'2022-07-19T00:00:00.000' AS DateTime), CAST(N'2022-07-20T00:00:00.000' AS DateTime), 1, 2009, 1132)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (133, N'', N'', N'مهندس ميكانيكا', 68, 376, N'', 6, 1, 7, CAST(N'2022-07-19T00:00:00.000' AS DateTime), CAST(N'2022-07-20T00:00:00.000' AS DateTime), 1, 2009, 1133)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (134, N'', N'', N'مهندس إشارات وإتصالات', 68, 376, N'', 6, 1, 7, CAST(N'2022-07-19T00:00:00.000' AS DateTime), CAST(N'2022-07-20T00:00:00.000' AS DateTime), 1, 2009, 1134)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (135, N'', N'', N'أخصائى شئون مالية', 68, 376, N'', 6, 1, 7, CAST(N'2022-07-19T00:00:00.000' AS DateTime), CAST(N'2022-07-20T00:00:00.000' AS DateTime), 1, 2009, 1135)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (136, N'', N'', N'أخصائى شئون مالية', 68, 376, N'', 6, 1, 7, CAST(N'2022-07-19T00:00:00.000' AS DateTime), CAST(N'2022-07-20T00:00:00.000' AS DateTime), 1, 2009, 1136)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (137, N'', N'', N'أخصائى شئون مالية', 68, 376, N'', 6, 1, 7, CAST(N'2022-07-19T00:00:00.000' AS DateTime), CAST(N'2022-07-20T00:00:00.000' AS DateTime), 1, 2009, 1137)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (138, N'', N'', N'محام ممتاز', 68, 376, N'', 6, 1, 7, CAST(N'2022-07-19T00:00:00.000' AS DateTime), CAST(N'2022-07-20T00:00:00.000' AS DateTime), 1, 2009, 1138)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (139, N'', N'', N'محام ممتاز', 68, 376, N'', 6, 1, 7, CAST(N'2022-07-19T00:00:00.000' AS DateTime), CAST(N'2022-07-20T00:00:00.000' AS DateTime), 1, 2009, 1139)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (140, N'قطاع الشئون المالية والادارية', N'حسابات التعاون', N'مسئول بمنظومة Gf', 45, 438, N'5', 13, 1, 7, CAST(N'2022-07-24T00:00:00.000' AS DateTime), CAST(N'2022-07-28T00:00:00.000' AS DateTime), 1, 2009, 1140)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (141, N'حسابات', N'حسابات اول', N'كاتب ثالت', 45, 438, N'5', 13, 1, 8, CAST(N'2022-07-24T00:00:00.000' AS DateTime), CAST(N'2022-07-28T00:00:00.000' AS DateTime), 1, 2009, 1141)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (142, N'حكومي', N'حسابات التعاون', N'مسؤل ادخال بيانات', 45, 438, N'5', 13, 1, 6, CAST(N'2022-07-24T00:00:00.000' AS DateTime), CAST(N'2022-07-28T00:00:00.000' AS DateTime), 1, 2009, 1142)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (143, N'قطاع الشؤون الماليه والادارية', N'حسابات اول', N'كاتب رابع', 45, 438, N'5', 13, 1, 8, CAST(N'2022-07-24T00:00:00.000' AS DateTime), CAST(N'2022-07-28T00:00:00.000' AS DateTime), 1, 2009, 1143)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (144, N'شئون مالية و ادارية', N'الإدارة العامة للموازنة', N'كاتب ثان', 45, 438, N'5', 13, 1, 7, CAST(N'2022-07-24T00:00:00.000' AS DateTime), CAST(N'2022-07-28T00:00:00.000' AS DateTime), 1, 2009, 1144)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (145, N'قطاع مكتب الوزير للعلاقات الزراعية الخارجية', N'الادارة المركزية للعلاقات الزراعية الخارجية', N'أخصائى علاقات خارجية', 45, 438, N'5', 13, 1, 7, CAST(N'2022-07-24T00:00:00.000' AS DateTime), CAST(N'2022-07-28T00:00:00.000' AS DateTime), 1, 2009, 1145)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (146, N'الشئون المالية والادارية', N'الادارة العامة للمشتريات', N'مراجع مشتريات', 45, 438, N'5', 13, 1, 8, CAST(N'2022-07-24T00:00:00.000' AS DateTime), CAST(N'2022-07-28T00:00:00.000' AS DateTime), 1, 2009, 1146)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (147, N'المالي', N'الحسابات', N'مسؤلة ادخال التدفقات النقدية', 45, 438, N'5', 13, 1, 6, CAST(N'2022-07-24T00:00:00.000' AS DateTime), CAST(N'2022-07-28T00:00:00.000' AS DateTime), 1, 2009, 1147)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (148, N'المكتب الفني لمساعد الوزير', N'المكتب الفني لمساعد الوزير', N'باحث', 45, 438, N'5', 13, 1, 6, CAST(N'2022-07-24T00:00:00.000' AS DateTime), CAST(N'2022-07-28T00:00:00.000' AS DateTime), 1, 2009, 1148)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (149, N'الشؤن الماليه', N'الموازنة', N'كاتب اول', 45, 438, N'5', 13, 1, 6, CAST(N'2022-07-24T00:00:00.000' AS DateTime), CAST(N'2022-07-28T00:00:00.000' AS DateTime), 1, 2009, 1149)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (150, N'قطاع الشئون الماليه والادارية', N'الإدارة العامة للموازنة', N'اخصائي أول فنون واعلام', 45, 438, N'5', 13, 1, 6, CAST(N'2022-07-24T00:00:00.000' AS DateTime), CAST(N'2022-07-28T00:00:00.000' AS DateTime), 1, 2009, 1150)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (151, N'قطاع الشئون المالية والادارية', N'مكتب رئيس قطاع شئون مالية وادارية', N'كبير', 45, 438, N'5', 13, 1, 3, CAST(N'2022-07-24T00:00:00.000' AS DateTime), CAST(N'2022-07-28T00:00:00.000' AS DateTime), 1, 2009, 1151)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (152, N'الشئون الماليه', N'وماله الوزاره لشئون التعاون الزراعى', N'مدخل بيانات', 45, 438, N'5', 13, 1, 6, CAST(N'2022-07-24T00:00:00.000' AS DateTime), CAST(N'2022-07-28T00:00:00.000' AS DateTime), 1, 2009, 1152)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (153, N'الشئون الماليه', N'وحده حسابيه وكاله الوزاره لشئون التعاون الزراعى', N'الدفع الالكترونى منظومه gf', 45, 438, N'5', 13, 1, 8, CAST(N'2022-07-24T00:00:00.000' AS DateTime), CAST(N'2022-07-28T00:00:00.000' AS DateTime), 1, 2009, 1153)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (154, N'الشئون الماليه', N'قطاع الشئون المالية', N'كاتب شئون ماليه اول', 45, 438, N'5', 13, 1, 6, CAST(N'2022-07-24T00:00:00.000' AS DateTime), CAST(N'2022-07-28T00:00:00.000' AS DateTime), 1, 2009, 1154)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (155, N'الشئون الماليه', N'قطاع الشئون المالية', N'كاتب شئون ماليه ثان', 45, 438, N'5', 13, 1, 7, CAST(N'2022-07-24T00:00:00.000' AS DateTime), CAST(N'2022-07-28T00:00:00.000' AS DateTime), 1, 2009, 1155)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (156, N'الشئون الماليه', N'قطاع الشئون المالية', N'اخصائي تمويل ومحاسبه', 45, 438, N'5', 13, 1, 7, CAST(N'2022-07-24T00:00:00.000' AS DateTime), CAST(N'2022-07-28T00:00:00.000' AS DateTime), 1, 2009, 1156)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (157, N'الشئون الماليه', N'قطاع الشئون المالية', N'كاتب اول', 45, 438, N'5', 13, 1, 6, CAST(N'2022-07-24T00:00:00.000' AS DateTime), CAST(N'2022-07-28T00:00:00.000' AS DateTime), 1, 2009, 1157)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (158, N'الشئون الماليه', N'قطاع الشئون المالية', N'كاتب شئون عاملين ثالث', 45, 438, N'5', 13, 1, 8, CAST(N'2022-07-24T00:00:00.000' AS DateTime), CAST(N'2022-07-28T00:00:00.000' AS DateTime), 1, 2009, 1158)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (159, N'الشئون الماليه', N'قطاع الشئون المالية', N'كبير اخصائيين تمويل ومحاسبه', 45, 438, N'5', 13, 1, 3, CAST(N'2022-07-24T00:00:00.000' AS DateTime), CAST(N'2022-07-28T00:00:00.000' AS DateTime), 1, 2009, 1159)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (160, N'المركز القومي لتطوير تكنولوجيا المعلومات', N'مركز المعلومات', N'Auditing', 50, 87, N'5', 13, 2, 8, CAST(N'2022-07-24T00:00:00.000' AS DateTime), CAST(N'2022-07-28T00:00:00.000' AS DateTime), 1, 2009, 1160)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (161, N'مركز معلومات وزاره الصحه', N'اداره تطوير وتكنولوجيا المعلومات', N'مهندس شبكات', 50, 87, N'5', 13, 2, 9, CAST(N'2022-07-24T00:00:00.000' AS DateTime), CAST(N'2022-07-28T00:00:00.000' AS DateTime), 1, 2009, 1161)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (162, N'قطاع الخدمات الزراعيه والمتابعه', N'الاداره المركزيه لشئون المديريات الزراعيه', N'مدير المكتب الفنى', 45, 87, N'5', 13, 2, 6, CAST(N'2022-07-24T00:00:00.000' AS DateTime), CAST(N'2022-07-28T00:00:00.000' AS DateTime), 1, 2009, 1162)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (163, N'الإرشاد', N'الإدارة المركزية للبساتين والمحاصيل الزراعية', N'مهندسة زراعية', 45, 87, N'5', 13, 2, 3, CAST(N'2022-07-24T00:00:00.000' AS DateTime), CAST(N'2022-07-28T00:00:00.000' AS DateTime), 1, 2009, 1163)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (164, N'قطاع الخدمات والمتابعة الزراعيه', N'الإدارة المركزية لإنتاج التقاوى _ الادارة العامة للتسويق', N'رئيس قسم التخطيط', 45, 87, N'5', 13, 2, 7, CAST(N'2022-07-24T00:00:00.000' AS DateTime), CAST(N'2022-07-28T00:00:00.000' AS DateTime), 1, 2009, 1164)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (165, N'قطاع الإرشاد', N'الإدارة المركزية للتشجير والبيئة', N'مهندسه زراعيه', 45, 87, N'5', 13, 2, 5, CAST(N'2022-07-24T00:00:00.000' AS DateTime), CAST(N'2022-07-28T00:00:00.000' AS DateTime), 1, 2009, 1165)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (166, N'العلاقات الزراعية الخارجيه', N'الإدارة العامة للمنظمات والمؤتمرات الدولية', N'سكرتيره', 45, 87, N'5', 13, 2, 6, CAST(N'2022-07-24T00:00:00.000' AS DateTime), CAST(N'2022-07-28T00:00:00.000' AS DateTime), 1, 2009, 1166)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (167, N'شئون مكتب الوزير', N'العلاقات الخارجيه الزراعيه', N'فنون واعلام', 45, 87, N'5', 13, 2, 6, CAST(N'2022-07-24T00:00:00.000' AS DateTime), CAST(N'2022-07-28T00:00:00.000' AS DateTime), 1, 2009, 1167)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (168, N'قطاع الخدمات الزراعيه و المتابعه', N'الإداره المركزية لإنتاج التقاوى', N'مدير اداره تشغيل محطات الغربله', 45, 87, N'5', 13, 2, 6, CAST(N'2022-07-24T00:00:00.000' AS DateTime), CAST(N'2022-07-28T00:00:00.000' AS DateTime), 1, 2009, 1168)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (169, N'قطاع الإرشاد الزراعي', N'الإدارة المركزية للتشجير والبيئة', N'أخصائي تمويل ومحاسبة', 45, 87, N'5', 13, 2, 7, CAST(N'2022-07-24T00:00:00.000' AS DateTime), CAST(N'2022-07-28T00:00:00.000' AS DateTime), 1, 2009, 1169)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (170, N'قطاع الارشاد', N'اداره المركزيه للتشجير و البيئه', N'كبير اخصائيين تمويل و محاسبه', 45, 87, N'5', 13, 2, 3, CAST(N'2022-07-24T00:00:00.000' AS DateTime), CAST(N'2022-07-28T00:00:00.000' AS DateTime), 1, 2009, 1170)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (171, N'قطاع الخدمات الزراعية والمتابعة', N'الإدارة المركزية لإنتاج التقاوي', N'أخصائي تنمية إدارية', 45, 87, N'5', 13, 2, 6, CAST(N'2022-07-24T00:00:00.000' AS DateTime), CAST(N'2022-07-28T00:00:00.000' AS DateTime), 1, 2009, 1171)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (172, N'قطاع الارشاد', N'الادارة المركزية للتشجير واالبيئة', N'اخصائى زراعى اول', 45, 87, N'5', 13, 2, 5, CAST(N'2022-07-24T00:00:00.000' AS DateTime), CAST(N'2022-07-28T00:00:00.000' AS DateTime), 1, 2009, 1172)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (173, N'قطاع لارشاد', N'الاداره المركزيه للتشجيرةوالبئه', N'اخصائى اول زراعى', 45, 87, N'5', 13, 2, 5, CAST(N'2022-07-24T00:00:00.000' AS DateTime), CAST(N'2022-07-28T00:00:00.000' AS DateTime), 1, 2009, 1173)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (174, N'مكتب الوزير', N'مركز المعلومات - مشروع كارت الفلاح', N'العنصر الفنى المتخصص داخل وحدة التحول الرقمى', 45, 87, N'5', 13, 2, 7, CAST(N'2022-07-24T00:00:00.000' AS DateTime), CAST(N'2022-07-28T00:00:00.000' AS DateTime), 1, 2009, 1174)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (175, N'القطاع الزراعى', N'الإدارة المركزية للعلاقات الزراعية الخارجية', N'تمويل ومحاسبة ( أ )', 45, 87, N'5', 13, 2, 6, CAST(N'2022-07-24T00:00:00.000' AS DateTime), CAST(N'2022-07-28T00:00:00.000' AS DateTime), 1, 2009, 1175)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (176, N'قطاع مكتب الوزير', N'الإدارة المركزية للعلاقات الزراعية الخارجية', N'اخصائى زراعى ثالث', 45, 87, N'5', 13, 2, 8, CAST(N'2022-07-24T00:00:00.000' AS DateTime), CAST(N'2022-07-28T00:00:00.000' AS DateTime), 1, 2009, 1176)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (177, N'قطاع مكتب الوزير', N'الإدارة المركزية للعلاقات الزراعية الخارجية', N'اخصائى شئون عاملين ثالث', 45, 87, N'5', 13, 2, 8, CAST(N'2022-07-24T00:00:00.000' AS DateTime), CAST(N'2022-07-28T00:00:00.000' AS DateTime), 1, 2009, 1177)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (178, N'قطاع مكتب الوزير', N'الإدارة المركزية للعلاقات الزراعية الخارجية', N'اخصائي تنمية ادارية ثان', 45, 87, N'5', 13, 2, 7, CAST(N'2022-07-24T00:00:00.000' AS DateTime), CAST(N'2022-07-28T00:00:00.000' AS DateTime), 1, 2009, 1178)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (179, N'الارشاد الزراعي', N'الإدارة المركزية للبساتين والمحاصيل الزراعية', N'اخصائي زراعى', 45, 87, N'5', 13, 2, 8, CAST(N'2022-07-24T00:00:00.000' AS DateTime), CAST(N'2022-07-28T00:00:00.000' AS DateTime), 1, 2009, 1179)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (180, N'قطاع مكتب الوزير', N'الإدارة المركزية للعلاقات الزراعية الخارجية', N'محاسب ثان', 45, 87, N'5', 13, 2, 7, CAST(N'2022-07-24T00:00:00.000' AS DateTime), CAST(N'2022-07-28T00:00:00.000' AS DateTime), 1, 2009, 1180)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (181, N'قطاع الشئون الاقتصادية', N'ادارة الاحصاءات الزراعية', N'اداري ثاني تنميه ادارية', 45, 87, N'5', 13, 2, 7, CAST(N'2022-07-24T00:00:00.000' AS DateTime), CAST(N'2022-07-28T00:00:00.000' AS DateTime), 1, 2009, 1181)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (182, N'قطاع للشئون الاقتصادية', N'الشئون الماليه والاداريه', N'مراجع حسابات', 45, 87, N'5', 13, 2, 3, CAST(N'2022-07-24T00:00:00.000' AS DateTime), CAST(N'2022-07-28T00:00:00.000' AS DateTime), 1, 2009, 1182)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (183, N'الإدارة المركزية للشئون الهندسية', N'الاجهزة', N'اعمال كتابية', 45, 87, N'5', 13, 2, 7, CAST(N'2022-07-24T00:00:00.000' AS DateTime), CAST(N'2022-07-28T00:00:00.000' AS DateTime), 1, 2009, 1183)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (184, N'الشئون الاقتصاديه', N'الاداره العامه للامن الغذائي', N'اخصائي زراعي اول', 45, 87, N'5', 13, 2, 5, CAST(N'2022-07-24T00:00:00.000' AS DateTime), CAST(N'2022-07-28T00:00:00.000' AS DateTime), 1, 2009, 1184)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (185, N'الادارة المركزية لشؤن الهندسية', N'ادارة التحقيقات', N'باحث قانونى اول', 45, 87, N'5', 13, 2, 6, CAST(N'2022-07-24T00:00:00.000' AS DateTime), CAST(N'2022-07-28T00:00:00.000' AS DateTime), 1, 2009, 1185)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (186, N'قطاع الشئون الاقتصادية', N'الإحصاء', N'محاسب', 45, 87, N'5', 13, 2, 6, CAST(N'2022-07-24T00:00:00.000' AS DateTime), CAST(N'2022-07-28T00:00:00.000' AS DateTime), 1, 2009, 1186)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (187, N'إلا داره المركزيه للشئون الهندسية', N'إلا داره العامه للهندسه الكهربائيه والميكانيكية', N'فني هندسي', 45, 87, N'5', 13, 2, 7, CAST(N'2022-07-24T00:00:00.000' AS DateTime), CAST(N'2022-07-28T00:00:00.000' AS DateTime), 1, 2009, 1187)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (188, N'قطاع الشئون الاقتصادية', N'الإدارة العامة للإحصاءات الزراعية', N'مهندس زراعى', 45, 87, N'5', 13, 2, 3, CAST(N'2022-07-24T00:00:00.000' AS DateTime), CAST(N'2022-07-28T00:00:00.000' AS DateTime), 1, 2009, 1188)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (189, N'قطاع الشئون الاقتصادية', N'الإدارة العامة الإحصاءات الزراعية', N'اخصاىى زراعي اول', 45, 87, N'5', 13, 2, 3, CAST(N'2022-07-24T00:00:00.000' AS DateTime), CAST(N'2022-07-28T00:00:00.000' AS DateTime), 1, 2009, 1189)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (190, N'قطاع الشئون الاقتصاديه', N'الشئون الماليه', N'كبير اخصائيين', 45, 87, N'5', 13, 2, 2, CAST(N'2022-07-24T00:00:00.000' AS DateTime), CAST(N'2022-07-28T00:00:00.000' AS DateTime), 1, 2009, 1190)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (191, N'قطاع الشئون الإقتصاديه', N'الشئون الماليه و الاداريه', N'المكتبية', 45, 87, N'5', 13, 2, 8, CAST(N'2022-07-24T00:00:00.000' AS DateTime), CAST(N'2022-07-28T00:00:00.000' AS DateTime), 1, 2009, 1191)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (192, N'قطاع الشؤون الاقتصادية', N'الاداره العامه للامن الغذائي', N'اخصائي زراعى اول', 45, 87, N'5', 13, 2, 6, CAST(N'2022-07-24T00:00:00.000' AS DateTime), CAST(N'2022-07-28T00:00:00.000' AS DateTime), 1, 2009, 1192)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (193, N'الإدارة المركزيه للشئون الهندسية', N'ادارة التحقيقات', N'باحث قانوني', 45, 87, N'5', 13, 2, 6, CAST(N'2022-07-24T00:00:00.000' AS DateTime), CAST(N'2022-07-28T00:00:00.000' AS DateTime), 1, 2009, 1193)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (194, N'قطاع الخدمات الزراعية والمتابعة', N'الإدارة المركزيه لإنتاج التقاوي', N'رئيس وحدة التقييم والمتابعة الداخليه و رئيس وحدة المشروعات', 45, 87, N'5', 13, 2, 7, CAST(N'2022-07-24T00:00:00.000' AS DateTime), CAST(N'2022-07-28T00:00:00.000' AS DateTime), 1, 2009, 1194)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (195, N'قطاع الشؤون الاقتصادية', N'الإدارة العامة للأمن الغذائي', N'مدير إدارة تحليل البيانات والدراسات', 45, 87, N'5', 13, 2, 6, CAST(N'2022-07-24T00:00:00.000' AS DateTime), CAST(N'2022-07-28T00:00:00.000' AS DateTime), 1, 2009, 1195)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (196, N'قطاع الشئون الاقتصادية', N'الادارة العامة للأمن الغذائي', N'أخصائي زراعي اول', 45, 87, N'5', 13, 2, 5, CAST(N'2022-07-24T00:00:00.000' AS DateTime), CAST(N'2022-07-28T00:00:00.000' AS DateTime), 1, 2009, 1196)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (197, N'الاداره المركزيه للشءون المركزيه', N'اداره الاجهزه', N'فني هندسي', 45, 87, N'5', 13, 2, 6, CAST(N'2022-07-24T00:00:00.000' AS DateTime), CAST(N'2022-07-28T00:00:00.000' AS DateTime), 1, 2009, 1197)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (198, N'قطاع الشئون الاقتصادية', N'المكتب الفني رئيس القطاع', N'اخصائي تمويل محاسبة', 45, 87, N'5', 13, 2, 7, CAST(N'2022-07-24T00:00:00.000' AS DateTime), CAST(N'2022-07-28T00:00:00.000' AS DateTime), 1, 2009, 1198)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (199, N'قطاع الشؤن الإقتصادية', N'الإدارة العامة للإحصاء', N'مشرف إدارة إحصاءات الآلات والمستلزمات الزراعية', 45, 87, N'5', 13, 2, 3, CAST(N'2022-07-24T00:00:00.000' AS DateTime), CAST(N'2022-07-28T00:00:00.000' AS DateTime), 1, 2009, 1199)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (200, N'قطاع الشؤن الاقتصاديه', N'اداره الموارد الزراعيه', N'اخصائى زراعى تانى', 45, 87, N'5', 13, 2, 7, CAST(N'2022-07-24T00:00:00.000' AS DateTime), CAST(N'2022-07-28T00:00:00.000' AS DateTime), 1, 2009, 1200)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (201, N'الشؤن المالية والادارية', N'الادارة المركزية للشئون الهندسية', N'مراجع حسابات اول', 45, 87, N'5', 13, 2, 6, CAST(N'2022-07-24T00:00:00.000' AS DateTime), CAST(N'2022-07-28T00:00:00.000' AS DateTime), 1, 2009, 1201)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (202, N'شؤون مكتب الوزير', N'الادارة المركزية للشؤون الهندسية', N'مدير ادارة الاجهزة', 45, 87, N'5', 13, 2, 6, CAST(N'2022-07-24T00:00:00.000' AS DateTime), CAST(N'2022-07-28T00:00:00.000' AS DateTime), 1, 2009, 1202)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (203, N'قطاع مكتب الوزير', N'الادارة المركزية لانتاج التقاوي', N'رئيس قسم المشتريات', 45, 87, N'5', 13, 2, 6, CAST(N'2022-07-24T00:00:00.000' AS DateTime), CAST(N'2022-07-28T00:00:00.000' AS DateTime), 1, 2009, 1203)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (204, N'قطاع مكتب الوزير', N'قطاع الشئون الاقتصادية', N'اخصائى زراعى اول', 45, 87, N'5', 13, 2, 6, CAST(N'2022-07-24T00:00:00.000' AS DateTime), CAST(N'2022-07-28T00:00:00.000' AS DateTime), 1, 2009, 1204)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (205, N'قطاع مكتب الوزير', N'قطاع الشئون الاقتصادية', N'كاتب شئون ماليه ثان', 45, 87, N'5', 13, 2, 7, CAST(N'2022-07-24T00:00:00.000' AS DateTime), CAST(N'2022-07-28T00:00:00.000' AS DateTime), 1, 2009, 1205)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (206, N'الديوان', N'اللجنة العليا للإصلاح التشريعي', N'باحث قانون', 57, 38, N'3', 13, 1, 8, CAST(N'2022-07-24T00:00:00.000' AS DateTime), CAST(N'2022-07-26T00:00:00.000' AS DateTime), 1, 2009, 1206)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (207, N'صندوق الخدمات الصحيةوالاجتماعية لاعضاء الهيئات القضائية', N'الحسابات', N'محاسب', 57, 38, N'3', 13, 1, 6, CAST(N'2022-07-24T00:00:00.000' AS DateTime), CAST(N'2022-07-26T00:00:00.000' AS DateTime), 1, 2009, 1207)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (208, N'المكتب الفني لمعالي الوزير', N'الترجمة', N'مترجمة', 57, 38, N'3', 13, 1, 6, CAST(N'2022-07-24T00:00:00.000' AS DateTime), CAST(N'2022-07-26T00:00:00.000' AS DateTime), 1, 2009, 1208)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (209, N'صندوق الرعاية الصحية لاعضاء الهيئات القضائية', N'المطالبات', N'مراجع مطالبات', 57, 38, N'3', 13, 1, 6, CAST(N'2022-07-24T00:00:00.000' AS DateTime), CAST(N'2022-07-26T00:00:00.000' AS DateTime), 1, 2009, 1209)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (210, N'المركز القومي للدراسات القضائية', N'العلاقات العامة', N'كاتب اول', 57, 38, N'3', 13, 1, 6, CAST(N'2022-07-24T00:00:00.000' AS DateTime), CAST(N'2022-07-26T00:00:00.000' AS DateTime), 1, 2009, 1210)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (211, N'قطاعال الإدارات القانونية.', N'التفتبس', N'باحث ثالث', 57, 38, N'3', 13, 1, 8, CAST(N'2022-07-24T00:00:00.000' AS DateTime), CAST(N'2022-07-26T00:00:00.000' AS DateTime), 1, 2009, 1211)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (212, N'صندوق الخدمات الصحية والاجتماعية لأعضاء الهيئات القضائية', N'الحسابات', N'موظف', 57, 38, N'3', 13, 1, 7, CAST(N'2022-07-24T00:00:00.000' AS DateTime), CAST(N'2022-07-26T00:00:00.000' AS DateTime), 1, 2009, 1212)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (213, N'إدارة فض المنازعات وزارة العدل', N'إدارة فض المنازعات', N'كاتب اول', 57, 38, N'3', 13, 1, 6, CAST(N'2022-07-24T00:00:00.000' AS DateTime), CAST(N'2022-07-26T00:00:00.000' AS DateTime), 1, 2009, 1213)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (214, N'الكسب غير المشروع', N'مكتب مساعد وزير العدل لشئون الكسب غير المشروع', N'باحث', 57, 38, N'3', 13, 1, 8, CAST(N'2022-07-24T00:00:00.000' AS DateTime), CAST(N'2022-07-26T00:00:00.000' AS DateTime), 1, 2009, 1214)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (215, N'الوارد والصادر واجازات الجان', N'الإدارة العامة لشئون لجان التوفيق في المنازعات', N'فني رابع (ب )', 57, 38, N'3', 13, 1, 9, CAST(N'2022-07-24T00:00:00.000' AS DateTime), CAST(N'2022-07-26T00:00:00.000' AS DateTime), 1, 2009, 1215)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (216, N'مساعد وزير العدل للشهر العقارى', N'الإدارة العامة للشهر العقارى', N'كبير باحثين', 57, 38, N'3', 13, 1, 3, CAST(N'2022-07-24T00:00:00.000' AS DateTime), CAST(N'2022-07-26T00:00:00.000' AS DateTime), 1, 2009, 1216)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (217, N'ادارى', N'الكسب غير المشروع', N'كبير باحثين', 57, 38, N'3', 13, 1, 3, CAST(N'2022-07-24T00:00:00.000' AS DateTime), CAST(N'2022-07-26T00:00:00.000' AS DateTime), 1, 2009, 1217)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (218, N'قطاع التخطيط والتنمية الإدارية والمتابعة', N'المتابعة', N'سكرتارية بمكتب المساعد', 57, 38, N'3', 13, 1, 7, CAST(N'2022-07-24T00:00:00.000' AS DateTime), CAST(N'2022-07-26T00:00:00.000' AS DateTime), 1, 2009, 1218)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (219, N'التفتيش القضائي', N'الاداره العامه للتفتيش القضائي', N'باحث ثالث قانون', 57, 38, N'3', 13, 1, 8, CAST(N'2022-07-24T00:00:00.000' AS DateTime), CAST(N'2022-07-26T00:00:00.000' AS DateTime), 1, 2009, 1219)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (220, N'قطاع التطوير التقني و مركز المعلومات القضائي', N'إدارة المكتبه', N'آمين المكتبه', 57, 38, N'3', 13, 1, 8, CAST(N'2022-07-24T00:00:00.000' AS DateTime), CAST(N'2022-07-26T00:00:00.000' AS DateTime), 1, 2009, 1220)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (221, N'قطاع التشريع', N'البحوث القانونية', N'باحث أول قانون ( أ )', 57, 38, N'3', 13, 1, 6, CAST(N'2022-07-24T00:00:00.000' AS DateTime), CAST(N'2022-07-26T00:00:00.000' AS DateTime), 1, 2009, 1221)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (222, N'قطاع المحاكم المتخصصة', N'المحاكم المتخصصة', N'باحث ثالث تنميه إدارية', 57, 38, N'3', 13, 1, 8, CAST(N'2022-07-24T00:00:00.000' AS DateTime), CAST(N'2022-07-26T00:00:00.000' AS DateTime), 1, 2009, 1222)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (223, N'التفتيش القضائى', N'الادارة العامة لشئون التفتيش القضائى', N'باحث اول', 57, 38, N'3', 13, 1, 6, CAST(N'2022-07-24T00:00:00.000' AS DateTime), CAST(N'2022-07-26T00:00:00.000' AS DateTime), 1, 2009, 1223)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (224, N'المحاكم', N'المحاكم', N'الثالثه المكتبيه', 57, 38, N'3', 13, 1, 8, CAST(N'2022-07-24T00:00:00.000' AS DateTime), CAST(N'2022-07-26T00:00:00.000' AS DateTime), 1, 2009, 1224)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (225, N'قطاع المحاكم والمطالبات القضائية', N'شئون المحاكم', N'شئون المحاكم والمطالبات القضائية', 57, 38, N'3', 13, 1, 6, CAST(N'2022-07-24T00:00:00.000' AS DateTime), CAST(N'2022-07-26T00:00:00.000' AS DateTime), 1, 2009, 1225)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (226, N'التعاون الدولى و الثقافى', N'التعاون الدولى و الثقافى', N'مدير إدارة', 57, 38, N'3', 13, 1, 6, CAST(N'2022-07-24T00:00:00.000' AS DateTime), CAST(N'2022-07-26T00:00:00.000' AS DateTime), 1, 2009, 1226)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (227, N'الإعلام ومجلسي النواب والشيوخ', N'الاعلام', N'موظف', 57, 38, N'3', 13, 1, 9, CAST(N'2022-07-24T00:00:00.000' AS DateTime), CAST(N'2022-07-26T00:00:00.000' AS DateTime), 1, 2009, 1227)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (228, N'التنمية الأدارة والتخطيط والمتابعة', N'وارد وصادر', N'ثالثة كتابي', 57, 38, N'3', 13, 1, 7, CAST(N'2022-07-24T00:00:00.000' AS DateTime), CAST(N'2022-07-26T00:00:00.000' AS DateTime), 1, 2009, 1228)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (229, N'قطاع المحاكم المتخصصة', N'المحاكم المتخصصة', N'باحث تنمية ادارية', 57, 38, N'3', 13, 1, 7, CAST(N'2022-07-24T00:00:00.000' AS DateTime), CAST(N'2022-07-26T00:00:00.000' AS DateTime), 1, 2009, 1229)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (230, N'حسابات', N'', N'كبير أخصائيين', 170, 376, N'2', 6, 1, 7, CAST(N'2022-07-24T00:00:00.000' AS DateTime), CAST(N'2022-07-25T00:00:00.000' AS DateTime), 1, 2009, 1230)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (231, N'موارد بشرية', N'', N'كبير أخصائيين', 170, 376, N'2', 6, 1, 7, CAST(N'2022-07-24T00:00:00.000' AS DateTime), CAST(N'2022-07-25T00:00:00.000' AS DateTime), 1, 2009, 1231)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (232, N'عقارية', N'', N'محاسب أول', 170, 376, N'2', 6, 1, 7, CAST(N'2022-07-24T00:00:00.000' AS DateTime), CAST(N'2022-07-25T00:00:00.000' AS DateTime), 1, 2009, 1232)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (233, N'تنمية وتطوير', N'', N'مهندس مدنى ثان', 170, 376, N'2', 6, 1, 7, CAST(N'2022-07-24T00:00:00.000' AS DateTime), CAST(N'2022-07-25T00:00:00.000' AS DateTime), 1, 2009, 1233)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (234, N'تنمية وتطوير', N'', N'مهندس كهرباء ثالث', 170, 376, N'2', 6, 1, 7, CAST(N'2022-07-24T00:00:00.000' AS DateTime), CAST(N'2022-07-25T00:00:00.000' AS DateTime), 1, 2009, 1234)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (235, N'التخطيط الإقليمى', N'', N'مترجم ثالث', 16, 376, N'2', 6, 1, 7, CAST(N'2022-07-24T00:00:00.000' AS DateTime), CAST(N'2022-07-25T00:00:00.000' AS DateTime), 1, 2009, 1235)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (236, N'المراكز الإقليمية التخطيطية', N'', N'مهندس تخطيط أول', 16, 376, N'2', 6, 1, 7, CAST(N'2022-07-24T00:00:00.000' AS DateTime), CAST(N'2022-07-25T00:00:00.000' AS DateTime), 1, 2009, 1236)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (237, N'الشئون المالية', N'', N'محاسب أو مراجع ثالث', 16, 376, N'2', 6, 1, 7, CAST(N'2022-07-24T00:00:00.000' AS DateTime), CAST(N'2022-07-25T00:00:00.000' AS DateTime), 1, 2009, 1237)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (238, N'البحوث والدراسات', N'', N'اخصائى تنظيم وإدارة', 16, 376, N'2', 6, 1, 7, CAST(N'2022-07-24T00:00:00.000' AS DateTime), CAST(N'2022-07-25T00:00:00.000' AS DateTime), 1, 2009, 1238)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (239, N'الشئون المالية', N'', N'كبير أخصائيين', 86, 376, N'2', 6, 1, 7, CAST(N'2022-07-24T00:00:00.000' AS DateTime), CAST(N'2022-07-25T00:00:00.000' AS DateTime), 1, 2009, 1239)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (240, N'الادارة القانونية', N'', N'مدير اداره الشئون القانونيه', 86, 376, N'2', 6, 1, 7, CAST(N'2022-07-24T00:00:00.000' AS DateTime), CAST(N'2022-07-25T00:00:00.000' AS DateTime), 1, 2009, 1240)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (241, N'نظم ومعلومات', N'', N'نظم و معلومات', 86, 376, N'2', 6, 1, 7, CAST(N'2022-07-24T00:00:00.000' AS DateTime), CAST(N'2022-07-25T00:00:00.000' AS DateTime), 1, 2009, 1241)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (242, N'الامانة العامة لمجلس الادارة', N'', N'محاسب', 86, 376, N'2', 6, 1, 7, CAST(N'2022-07-24T00:00:00.000' AS DateTime), CAST(N'2022-07-25T00:00:00.000' AS DateTime), 1, 2009, 1242)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (243, N'الشئون العقارية', N'', N'كاتب شئون عاملين ثالث', 86, 376, N'2', 6, 1, 7, CAST(N'2022-07-24T00:00:00.000' AS DateTime), CAST(N'2022-07-25T00:00:00.000' AS DateTime), 1, 2009, 1243)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (244, N'التنفيذ', N'', N'باحث تنظيم واداره اول', 440, 376, N'2', 6, 1, 7, CAST(N'2022-07-24T00:00:00.000' AS DateTime), CAST(N'2022-07-25T00:00:00.000' AS DateTime), 1, 2009, 1244)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (245, N'المشروعات', N'', N'فني اعمال مساحيه اول', 440, 376, N'2', 6, 1, 7, CAST(N'2022-07-24T00:00:00.000' AS DateTime), CAST(N'2022-07-25T00:00:00.000' AS DateTime), 1, 2009, 1245)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (246, N'شئون العاملين', N'', N'كاتب سكرتاريه ومحفوظات ثالث', 440, 376, N'2', 6, 1, 7, CAST(N'2022-07-24T00:00:00.000' AS DateTime), CAST(N'2022-07-25T00:00:00.000' AS DateTime), 1, 2009, 1246)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (247, N'التننفيذ', N'', N'محاسب اول', 440, 376, N'2', 6, 1, 7, CAST(N'2022-07-24T00:00:00.000' AS DateTime), CAST(N'2022-07-25T00:00:00.000' AS DateTime), 1, 2009, 1247)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (248, N'المالية', N'', N'كبير اخصائيين محاسبين', 440, 376, N'2', 6, 1, 7, CAST(N'2022-07-24T00:00:00.000' AS DateTime), CAST(N'2022-07-25T00:00:00.000' AS DateTime), 1, 2009, 1248)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (249, N'الإدارة العامة للوائح والرخص', N'', N'مهندس اسكان اول', 14, 376, N'2', 6, 1, 7, CAST(N'2022-07-24T00:00:00.000' AS DateTime), CAST(N'2022-07-25T00:00:00.000' AS DateTime), 1, 2009, 1249)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (250, N'الإدارة العامة لبحوث الإسكان', N'', N'اخصائي شئون افراد ثان', 14, 376, N'2', 6, 1, 7, CAST(N'2022-07-24T00:00:00.000' AS DateTime), CAST(N'2022-07-25T00:00:00.000' AS DateTime), 1, 2009, 1250)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (251, N'المال العامل', N'', N'كاتب شئون ادارية ثالث', 14, 376, N'2', 6, 1, 7, CAST(N'2022-07-24T00:00:00.000' AS DateTime), CAST(N'2022-07-25T00:00:00.000' AS DateTime), 1, 2009, 1251)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (252, N'الإدارة العامة لبحوث الإسكان', N'', N'كاتب ثالث', 14, 376, N'2', 6, 1, 7, CAST(N'2022-07-24T00:00:00.000' AS DateTime), CAST(N'2022-07-25T00:00:00.000' AS DateTime), 1, 2009, 1252)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (253, N'الإدارة العامة للهيئات والشركات', N'', N'كاتب محفوظات خامس', 14, 376, N'2', 6, 1, 7, CAST(N'2022-07-24T00:00:00.000' AS DateTime), CAST(N'2022-07-25T00:00:00.000' AS DateTime), 1, 2009, 1253)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (254, N'قطاع الشركات المشتركة والاستثمار', N'', N'محاسب', 14, 376, N'2', 6, 1, 7, CAST(N'2022-07-24T00:00:00.000' AS DateTime), CAST(N'2022-07-25T00:00:00.000' AS DateTime), 1, 2009, 1254)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (255, N'الإدارة العامة للشئون المالية', N'', N'محاسب', 14, 376, N'2', 6, 1, 7, CAST(N'2022-07-24T00:00:00.000' AS DateTime), CAST(N'2022-07-25T00:00:00.000' AS DateTime), 1, 2009, 1255)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (256, N'قطاع الشركات المشتركة والاستثمار', N'', N'اداري', 14, 376, N'2', 6, 1, 7, CAST(N'2022-07-24T00:00:00.000' AS DateTime), CAST(N'2022-07-25T00:00:00.000' AS DateTime), 1, 2009, 1256)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (257, N'قطاع الشركات المشتركة والاستثمار', N'', N'اداري', 14, 376, N'2', 6, 1, 7, CAST(N'2022-07-24T00:00:00.000' AS DateTime), CAST(N'2022-07-25T00:00:00.000' AS DateTime), 1, 2009, 1257)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (258, N'الموارد البشرية', N'', N'أخصائي أستحقاقات', 85, 376, N'2', 6, 1, 7, CAST(N'2022-07-24T00:00:00.000' AS DateTime), CAST(N'2022-07-25T00:00:00.000' AS DateTime), 1, 2009, 1258)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (259, N'الادارة المالية', N'', N'اخصائى استثمارات مالية', 85, 376, N'2', 6, 1, 7, CAST(N'2022-07-24T00:00:00.000' AS DateTime), CAST(N'2022-07-25T00:00:00.000' AS DateTime), 1, 2009, 1259)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (260, N'الادارة المالية', N'', N'اخصائى تسويات', 85, 376, N'2', 6, 1, 7, CAST(N'2022-07-24T00:00:00.000' AS DateTime), CAST(N'2022-07-25T00:00:00.000' AS DateTime), 1, 2009, 1260)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (261, N'الادارة المالية', N'', N'اخصائى شئون مالية', 85, 376, N'2', 6, 1, 7, CAST(N'2022-07-24T00:00:00.000' AS DateTime), CAST(N'2022-07-25T00:00:00.000' AS DateTime), 1, 2009, 1261)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (262, N'مكتب رئيس قطاع التشييد والمقاولات', N'', N'اخصائي تاني تنظيم وإدارة', 14, 376, N'2', 6, 1, 7, CAST(N'2022-07-24T00:00:00.000' AS DateTime), CAST(N'2022-07-25T00:00:00.000' AS DateTime), 1, 2009, 1262)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (263, N'الادارة المركزية للتشييد', N'', N'أخصائى تنظيم وإدارة ثالث بالمستوى الوظيفى (أ)', 14, 376, N'2', 6, 1, 7, CAST(N'2022-07-24T00:00:00.000' AS DateTime), CAST(N'2022-07-25T00:00:00.000' AS DateTime), 1, 2009, 1263)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (264, N'الادارة المركزية للمقاولات', N'', N'باحث ثالث شئون مجلس الوزراء  (ج)', 14, 376, N'2', 6, 1, 7, CAST(N'2022-07-24T00:00:00.000' AS DateTime), CAST(N'2022-07-25T00:00:00.000' AS DateTime), 1, 2009, 1264)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (265, N'الادارة المركزية للمقاولات', N'', N'بكالوريوس هندسة', 14, 376, N'2', 6, 1, 7, CAST(N'2022-07-24T00:00:00.000' AS DateTime), CAST(N'2022-07-25T00:00:00.000' AS DateTime), 1, 2009, 1265)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (266, N'الادارة المركزية للتشييد', N'', N'الثالثة ( ب )', 14, 376, N'2', 6, 1, 7, CAST(N'2022-07-24T00:00:00.000' AS DateTime), CAST(N'2022-07-25T00:00:00.000' AS DateTime), 1, 2009, 1266)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (267, N'الشئون الإدارية', N'', N'كبير باحثين قانون', 14, 376, N'2', 6, 1, 7, CAST(N'2022-07-24T00:00:00.000' AS DateTime), CAST(N'2022-07-25T00:00:00.000' AS DateTime), 1, 2009, 1267)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (268, N'ادارة الفتوى', N'', N'كاتب شئون اداريه رابع', 14, 376, N'2', 6, 1, 7, CAST(N'2022-07-24T00:00:00.000' AS DateTime), CAST(N'2022-07-25T00:00:00.000' AS DateTime), 1, 2009, 1268)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (269, N'التنظيم والتدريب', N'', N'اخصائى ثالث تدريب', 14, 376, N'2', 6, 1, 7, CAST(N'2022-07-24T00:00:00.000' AS DateTime), CAST(N'2022-07-25T00:00:00.000' AS DateTime), 1, 2009, 1269)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (270, N'المخزون السلعى', N'', N'كاتب شئون ماليه رابع', 14, 376, N'2', 6, 1, 7, CAST(N'2022-07-24T00:00:00.000' AS DateTime), CAST(N'2022-07-25T00:00:00.000' AS DateTime), 1, 2009, 1270)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (271, N'الشئون المالية', N'', N'اخصائي ثاني', 14, 376, N'2', 6, 1, 7, CAST(N'2022-07-24T00:00:00.000' AS DateTime), CAST(N'2022-07-25T00:00:00.000' AS DateTime), 1, 2009, 1271)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (272, N'', N'', N'مهندس كهرباء', 68, 376, N'2', 6, 1, 7, CAST(N'2022-07-24T00:00:00.000' AS DateTime), CAST(N'2022-07-25T00:00:00.000' AS DateTime), 1, 2009, 1272)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (273, N'', N'', N'مهندس كهرباء', 68, 376, N'2', 6, 1, 7, CAST(N'2022-07-24T00:00:00.000' AS DateTime), CAST(N'2022-07-25T00:00:00.000' AS DateTime), 1, 2009, 1273)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (274, N'', N'', N'مهندس كهرباء', 68, 376, N'2', 6, 1, 7, CAST(N'2022-07-24T00:00:00.000' AS DateTime), CAST(N'2022-07-25T00:00:00.000' AS DateTime), 1, 2009, 1274)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (275, N'', N'', N'مهندس كهرباء', 68, 376, N'2', 6, 1, 7, CAST(N'2022-07-24T00:00:00.000' AS DateTime), CAST(N'2022-07-25T00:00:00.000' AS DateTime), 1, 2009, 1275)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (276, N'', N'', N'مهندس إشارات وإتصالات', 68, 376, N'2', 6, 1, 7, CAST(N'2022-07-24T00:00:00.000' AS DateTime), CAST(N'2022-07-25T00:00:00.000' AS DateTime), 1, 2009, 1276)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (277, N'', N'', N'مهندس إشارات وإتصالات', 68, 376, N'2', 6, 1, 7, CAST(N'2022-07-24T00:00:00.000' AS DateTime), CAST(N'2022-07-25T00:00:00.000' AS DateTime), 1, 2009, 1277)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (278, N'', N'', N'مهندس إشارات وإتصالات', 68, 376, N'2', 6, 1, 7, CAST(N'2022-07-24T00:00:00.000' AS DateTime), CAST(N'2022-07-25T00:00:00.000' AS DateTime), 1, 2009, 1278)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (279, N'', N'', N'مهندس كهرباء حاسبات', 68, 376, N'2', 6, 1, 7, CAST(N'2022-07-24T00:00:00.000' AS DateTime), CAST(N'2022-07-25T00:00:00.000' AS DateTime), 1, 2009, 1279)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (280, N'', N'', N'مهندس ميكانيكا', 68, 376, N'2', 6, 1, 7, CAST(N'2022-07-24T00:00:00.000' AS DateTime), CAST(N'2022-07-25T00:00:00.000' AS DateTime), 1, 2009, 1280)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (281, N'', N'', N'مهندس ميكانيكا', 68, 376, N'2', 6, 1, 7, CAST(N'2022-07-24T00:00:00.000' AS DateTime), CAST(N'2022-07-25T00:00:00.000' AS DateTime), 1, 2009, 1281)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (282, N'', N'', N'مهندس ميكانيكا', 68, 376, N'2', 6, 1, 7, CAST(N'2022-07-24T00:00:00.000' AS DateTime), CAST(N'2022-07-25T00:00:00.000' AS DateTime), 1, 2009, 1282)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (283, N'', N'', N'مهندس ميكانيكا', 68, 376, N'2', 6, 1, 7, CAST(N'2022-07-24T00:00:00.000' AS DateTime), CAST(N'2022-07-25T00:00:00.000' AS DateTime), 1, 2009, 1283)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (284, N'', N'', N'مهندس ميكانيكا', 68, 376, N'2', 6, 1, 7, CAST(N'2022-07-24T00:00:00.000' AS DateTime), CAST(N'2022-07-25T00:00:00.000' AS DateTime), 1, 2009, 1284)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (285, N'', N'', N'مهندس ميكانيكا', 68, 376, N'2', 6, 1, 7, CAST(N'2022-07-24T00:00:00.000' AS DateTime), CAST(N'2022-07-25T00:00:00.000' AS DateTime), 1, 2009, 1285)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (286, N'', N'', N'مهندس ميكانيكا', 68, 376, N'2', 6, 1, 7, CAST(N'2022-07-24T00:00:00.000' AS DateTime), CAST(N'2022-07-25T00:00:00.000' AS DateTime), 1, 2009, 1286)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (287, N'', N'', N'مهندس طرق', 68, 376, N'2', 6, 1, 7, CAST(N'2022-07-24T00:00:00.000' AS DateTime), CAST(N'2022-07-25T00:00:00.000' AS DateTime), 1, 2009, 1287)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (288, N'', N'', N'مهندس طرق', 68, 376, N'2', 6, 1, 7, CAST(N'2022-07-24T00:00:00.000' AS DateTime), CAST(N'2022-07-25T00:00:00.000' AS DateTime), 1, 2009, 1288)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (289, N'', N'', N'مهندس طرق', 68, 376, N'2', 6, 1, 7, CAST(N'2022-07-24T00:00:00.000' AS DateTime), CAST(N'2022-07-25T00:00:00.000' AS DateTime), 1, 2009, 1289)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (290, N'', N'', N'مهندس طرق', 68, 376, N'2', 6, 1, 7, CAST(N'2022-07-24T00:00:00.000' AS DateTime), CAST(N'2022-07-25T00:00:00.000' AS DateTime), 1, 2009, 1290)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (291, N'', N'', N'مهندس طرق', 68, 376, N'2', 6, 1, 7, CAST(N'2022-07-24T00:00:00.000' AS DateTime), CAST(N'2022-07-25T00:00:00.000' AS DateTime), 1, 2009, 1291)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (292, N'', N'', N'مهندس طرق', 68, 376, N'2', 6, 1, 7, CAST(N'2022-07-24T00:00:00.000' AS DateTime), CAST(N'2022-07-25T00:00:00.000' AS DateTime), 1, 2009, 1292)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (293, N'', N'', N'مهندس طرق', 68, 376, N'2', 6, 1, 7, CAST(N'2022-07-24T00:00:00.000' AS DateTime), CAST(N'2022-07-25T00:00:00.000' AS DateTime), 1, 2009, 1293)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (294, N'', N'', N'مهندس طرق', 68, 376, N'2', 6, 1, 7, CAST(N'2022-07-24T00:00:00.000' AS DateTime), CAST(N'2022-07-25T00:00:00.000' AS DateTime), 1, 2009, 1294)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (295, N'', N'', N'مهندس طرق', 68, 376, N'2', 6, 1, 7, CAST(N'2022-07-24T00:00:00.000' AS DateTime), CAST(N'2022-07-25T00:00:00.000' AS DateTime), 1, 2009, 1295)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (296, N'', N'', N'مهندس طرق', 68, 376, N'2', 6, 1, 7, CAST(N'2022-07-24T00:00:00.000' AS DateTime), CAST(N'2022-07-25T00:00:00.000' AS DateTime), 1, 2009, 1296)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (297, N'', N'', N'مهندس طرق', 68, 376, N'2', 6, 1, 7, CAST(N'2022-07-24T00:00:00.000' AS DateTime), CAST(N'2022-07-25T00:00:00.000' AS DateTime), 1, 2009, 1297)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (298, N'', N'', N'مهندس طرق', 68, 376, N'2', 6, 1, 7, CAST(N'2022-07-24T00:00:00.000' AS DateTime), CAST(N'2022-07-25T00:00:00.000' AS DateTime), 1, 2009, 1298)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (299, N'', N'', N'مهندس طرق', 68, 376, N'2', 6, 1, 7, CAST(N'2022-07-24T00:00:00.000' AS DateTime), CAST(N'2022-07-25T00:00:00.000' AS DateTime), 1, 2009, 1299)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (300, N'', N'', N'مهندس طرق', 68, 376, N'2', 6, 1, 7, CAST(N'2022-07-24T00:00:00.000' AS DateTime), CAST(N'2022-07-25T00:00:00.000' AS DateTime), 1, 2009, 1300)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (301, N'', N'', N'مهندس طرق', 68, 376, N'2', 6, 1, 7, CAST(N'2022-07-24T00:00:00.000' AS DateTime), CAST(N'2022-07-25T00:00:00.000' AS DateTime), 1, 2009, 1301)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (302, N'', N'', N'مهندس طرق', 68, 376, N'2', 6, 1, 7, CAST(N'2022-07-24T00:00:00.000' AS DateTime), CAST(N'2022-07-25T00:00:00.000' AS DateTime), 1, 2009, 1302)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (303, N'', N'', N'مهندس طرق', 68, 376, N'2', 6, 1, 7, CAST(N'2022-07-24T00:00:00.000' AS DateTime), CAST(N'2022-07-25T00:00:00.000' AS DateTime), 1, 2009, 1303)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (304, N'', N'', N'مهندس تنفيذ', 68, 376, N'2', 6, 1, 7, CAST(N'2022-07-24T00:00:00.000' AS DateTime), CAST(N'2022-07-25T00:00:00.000' AS DateTime), 1, 2009, 1304)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (305, N'', N'', N'مهندس تنفيذ', 68, 376, N'2', 6, 1, 7, CAST(N'2022-07-24T00:00:00.000' AS DateTime), CAST(N'2022-07-25T00:00:00.000' AS DateTime), 1, 2009, 1305)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (306, N'', N'', N'مهندس تنفيذ', 68, 376, N'2', 6, 1, 7, CAST(N'2022-07-24T00:00:00.000' AS DateTime), CAST(N'2022-07-25T00:00:00.000' AS DateTime), 1, 2009, 1306)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (307, N'', N'', N'مهندس تنفيذ', 68, 376, N'2', 6, 1, 7, CAST(N'2022-07-24T00:00:00.000' AS DateTime), CAST(N'2022-07-25T00:00:00.000' AS DateTime), 1, 2009, 1307)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (308, N'', N'', N'مهندس تنفيذ', 68, 376, N'2', 6, 1, 7, CAST(N'2022-07-24T00:00:00.000' AS DateTime), CAST(N'2022-07-25T00:00:00.000' AS DateTime), 1, 2009, 1308)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (309, N'', N'', N'مهندس تنفيذ', 68, 376, N'2', 6, 1, 7, CAST(N'2022-07-24T00:00:00.000' AS DateTime), CAST(N'2022-07-25T00:00:00.000' AS DateTime), 1, 2009, 1309)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (310, N'', N'', N'مهندس تنفيذ', 68, 376, N'2', 6, 1, 7, CAST(N'2022-07-24T00:00:00.000' AS DateTime), CAST(N'2022-07-25T00:00:00.000' AS DateTime), 1, 2009, 1310)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (311, N'', N'', N'مهندس تصميم إنشائى ومدنى', 68, 376, N'2', 6, 1, 7, CAST(N'2022-07-24T00:00:00.000' AS DateTime), CAST(N'2022-07-25T00:00:00.000' AS DateTime), 1, 2009, 1311)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (312, N'', N'', N'مهندس تصميم إنشائى ومدنى', 68, 376, N'2', 6, 1, 7, CAST(N'2022-07-24T00:00:00.000' AS DateTime), CAST(N'2022-07-25T00:00:00.000' AS DateTime), 1, 2009, 1312)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (313, N'', N'', N'مهندس تصميم إنشائى ومدنى', 68, 376, N'2', 6, 1, 7, CAST(N'2022-07-24T00:00:00.000' AS DateTime), CAST(N'2022-07-25T00:00:00.000' AS DateTime), 1, 2009, 1313)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (314, N'', N'', N'أخصائى حصر ومستخلصات', 68, 376, N'2', 6, 1, 7, CAST(N'2022-07-24T00:00:00.000' AS DateTime), CAST(N'2022-07-25T00:00:00.000' AS DateTime), 1, 2009, 1314)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (315, N'', N'', N'أخصائى عطاءات وعقود', 68, 376, N'2', 6, 1, 7, CAST(N'2022-07-24T00:00:00.000' AS DateTime), CAST(N'2022-07-25T00:00:00.000' AS DateTime), 1, 2009, 1315)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (316, N'قطاع  مكتب الوزير', N'قطاع استصلاح الاراضي', N'الوظائف التخصصيه', 45, 376, N'2', 6, 1, 7, CAST(N'2022-07-26T00:00:00.000' AS DateTime), CAST(N'2022-07-27T00:00:00.000' AS DateTime), 1, 2009, 1316)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (317, N'قطاع  مكتب الوزير', N'الإدارة العامة للرقابة المالية والإدارية', N'كبير اخصائيين', 45, 376, N'2', 6, 1, 3, CAST(N'2022-07-26T00:00:00.000' AS DateTime), CAST(N'2022-07-27T00:00:00.000' AS DateTime), 1, 2009, 1317)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (318, N'قطاع  مكتب الوزير', N'الادارة الرقابة المالية والادارية', N'مفتش مالى وإدارى', 45, 376, N'2', 6, 1, 6, CAST(N'2022-07-26T00:00:00.000' AS DateTime), CAST(N'2022-07-27T00:00:00.000' AS DateTime), 1, 2009, 1318)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (319, N'قطاع  مكتب الوزير', N'الإدارة العامة للرقابة المالية والإدارية', N'مفتش مالى ثان', 45, 376, N'2', 6, 1, 7, CAST(N'2022-07-26T00:00:00.000' AS DateTime), CAST(N'2022-07-27T00:00:00.000' AS DateTime), 1, 2009, 1319)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (320, N'قطاع  مكتب الوزير', N'المكتب الفني', N'كاتب سكرتاريه ومحفوظات ثان', 45, 376, N'2', 6, 1, 7, CAST(N'2022-07-26T00:00:00.000' AS DateTime), CAST(N'2022-07-27T00:00:00.000' AS DateTime), 1, 2009, 1320)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (321, N'قطاع  مكتب الوزير', N'المكتب الفني', N'كاتب سكرتاريه ومحفوظات ثالث', 45, 376, N'2', 6, 1, 8, CAST(N'2022-07-26T00:00:00.000' AS DateTime), CAST(N'2022-07-27T00:00:00.000' AS DateTime), 1, 2009, 1321)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (322, N'قطاع  مكتب الوزير', N'المكتب الفني', N'مسئول تنفيذى', 45, 376, N'2', 6, 1, 6, CAST(N'2022-07-26T00:00:00.000' AS DateTime), CAST(N'2022-07-27T00:00:00.000' AS DateTime), 1, 2009, 1322)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (323, N'قطاع  مكتب الوزير', N'المكتب الفني', N'كاتب ثالث', 45, 376, N'2', 6, 1, 8, CAST(N'2022-07-26T00:00:00.000' AS DateTime), CAST(N'2022-07-27T00:00:00.000' AS DateTime), 1, 2009, 1323)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (324, N'قطاع  مكتب الوزير', N'المكتب الفني', N'فنى هندسى اول', 45, 376, N'2', 6, 1, 6, CAST(N'2022-07-26T00:00:00.000' AS DateTime), CAST(N'2022-07-27T00:00:00.000' AS DateTime), 1, 2009, 1324)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (325, N'قطاع  مكتب الوزير', N'فحص اعتماد التقاي', N'الوظائف التخصصيه', 45, 376, N'2', 6, 1, 7, CAST(N'2022-07-26T00:00:00.000' AS DateTime), CAST(N'2022-07-27T00:00:00.000' AS DateTime), 1, 2009, 1325)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (326, N'قطاع  مكتب الوزير', N'فحص اعتماد التقاي', N'الوظائف التخصصيه', 45, 376, N'2', 6, 1, 8, CAST(N'2022-07-26T00:00:00.000' AS DateTime), CAST(N'2022-07-27T00:00:00.000' AS DateTime), 1, 2009, 1326)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (327, N'قطاع  مكتب الوزير', N'المكتب الفنى', N'رئيس قسم شئون اداريه', 45, 376, N'2', 6, 1, 7, CAST(N'2022-07-26T00:00:00.000' AS DateTime), CAST(N'2022-07-27T00:00:00.000' AS DateTime), 1, 2009, 1327)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (328, N'قطاع  مكتب الوزير', N'العلاقات الزراعية الخارجية', N'مدير عام الإدارة العامة لتنسيق المشاريع بدول الكوميسا', 45, 376, N'2', 6, 1, 2, CAST(N'2022-07-26T00:00:00.000' AS DateTime), CAST(N'2022-07-27T00:00:00.000' AS DateTime), 1, 2009, 1328)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (329, N'قطاع  مكتب الوزير', N'ادارة الازمات', N'اخصائى تنمية إدارية اول', 45, 376, N'2', 6, 1, 6, CAST(N'2022-07-26T00:00:00.000' AS DateTime), CAST(N'2022-07-27T00:00:00.000' AS DateTime), 1, 2009, 1329)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (330, N'قطاع  مكتب الوزير', N'المكتب الفني', N'مسئول صادر مكتب الوزير', 45, 376, N'2', 6, 1, 6, CAST(N'2022-07-26T00:00:00.000' AS DateTime), CAST(N'2022-07-27T00:00:00.000' AS DateTime), 1, 2009, 1330)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (331, N'قطاع  مكتب الوزير', N'الإدارة العامة للرقابة المالية والإدارية', N'محاسب ثان', 45, 376, N'2', 6, 1, 7, CAST(N'2022-07-26T00:00:00.000' AS DateTime), CAST(N'2022-07-27T00:00:00.000' AS DateTime), 1, 2009, 1331)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (332, N'قطاع  مكتب الوزير', N'العلاقات الخارجيه', N'مدير الاداره العربيه', 45, 376, N'2', 6, 1, 6, CAST(N'2022-07-26T00:00:00.000' AS DateTime), CAST(N'2022-07-27T00:00:00.000' AS DateTime), 1, 2009, 1332)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (333, N'قطاع  مكتب الوزير', N'مكتب الوزير', N'الوظائف المكتبيه', 45, 376, N'2', 6, 1, 8, CAST(N'2022-07-26T00:00:00.000' AS DateTime), CAST(N'2022-07-27T00:00:00.000' AS DateTime), 1, 2009, 1333)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (334, N'قطاع  مكتب الوزير', N'الإدارة المركزية للعلاقات الزراعية الخارجية', N'مترجم اول ( سكرتارية )', 45, 376, N'2', 6, 1, 6, CAST(N'2022-07-26T00:00:00.000' AS DateTime), CAST(N'2022-07-27T00:00:00.000' AS DateTime), 1, 2009, 1334)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (335, N'قطاع  مكتب الوزير', N'سكرتارية الوزير', N'سكرتير خاص', 45, 376, N'2', 6, 1, 7, CAST(N'2022-07-26T00:00:00.000' AS DateTime), CAST(N'2022-07-27T00:00:00.000' AS DateTime), 1, 2009, 1335)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (336, N'قطاع  مكتب الوزير', N'الإدارة المركزية للعلاقات الزراعية الخارجية', N'اخصائى زراعى ثالث', 45, 376, N'2', 6, 1, 8, CAST(N'2022-07-26T00:00:00.000' AS DateTime), CAST(N'2022-07-27T00:00:00.000' AS DateTime), 1, 2009, 1336)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (337, N'قطاع  مكتب الوزير', N'مكتب مساعد الوزير للخدمات البيطرية والثروة الحيوانية', N'باحث مساعد', 45, 376, N'2', 6, 1, 7, CAST(N'2022-07-26T00:00:00.000' AS DateTime), CAST(N'2022-07-27T00:00:00.000' AS DateTime), 1, 2009, 1337)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (338, N'قطاع  مكتب الوزير', N'الإدارة المركزية للعلاقات الزراعية الخارجية', N'اخصائي تنميه اداريه', 45, 376, N'2', 6, 1, 7, CAST(N'2022-07-26T00:00:00.000' AS DateTime), CAST(N'2022-07-27T00:00:00.000' AS DateTime), 1, 2009, 1338)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (339, N'قطاع  مكتب الوزير', N'الإدارة العامة لمجلس الوزراء والإتصالات', N'اخصائي زراعه', 45, 376, N'2', 6, 1, 8, CAST(N'2022-07-26T00:00:00.000' AS DateTime), CAST(N'2022-07-27T00:00:00.000' AS DateTime), 1, 2009, 1339)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (340, N'قطاع  مكتب الوزير', N'الادارة المركزية لشئون المديريات', N'مسئول تنفيذى', 45, 376, N'2', 6, 1, 8, CAST(N'2022-07-26T00:00:00.000' AS DateTime), CAST(N'2022-07-27T00:00:00.000' AS DateTime), 1, 2009, 1340)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (341, N'قطاع  مكتب الوزير', N'الادارة المركزية لانتاج التقاوي', N'اخصائى تنمية ادارية اول', 45, 376, N'2', 6, 1, 6, CAST(N'2022-07-26T00:00:00.000' AS DateTime), CAST(N'2022-07-27T00:00:00.000' AS DateTime), 1, 2009, 1341)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (342, N'قطاع  مكتب الوزير', N'الادارة المركزية لانتاج التقاوي', N'اخصائي تنميه اداريه ثالث', 45, 376, N'2', 6, 1, 8, CAST(N'2022-07-26T00:00:00.000' AS DateTime), CAST(N'2022-07-27T00:00:00.000' AS DateTime), 1, 2009, 1342)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (343, N'قطاع  مكتب الوزير', N'الادارة المركزية لانتاج التقاوي', N'اخصائى زراعي ثالث', 45, 376, N'2', 6, 1, 8, CAST(N'2022-07-26T00:00:00.000' AS DateTime), CAST(N'2022-07-27T00:00:00.000' AS DateTime), 1, 2009, 1343)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (344, N'قطاع  مكتب الوزير', N'الادارة المركزية لانتاج التقاوي', N'اخصائى تمويل ومحاسبة ثان', 45, 376, N'2', 6, 1, 7, CAST(N'2022-07-26T00:00:00.000' AS DateTime), CAST(N'2022-07-27T00:00:00.000' AS DateTime), 1, 2009, 1344)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (345, N'قطاع  مكتب الوزير', N'الادارة المركزية لانتاج التقاوي', N'سكرتير رئيس الإدارة', 45, 376, N'2', 6, 1, 8, CAST(N'2022-07-26T00:00:00.000' AS DateTime), CAST(N'2022-07-27T00:00:00.000' AS DateTime), 1, 2009, 1345)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (346, N'قطاع  مكتب الوزير', N'مكتب الوزير', N'اخصائى زراعى ثالث', 45, 376, N'2', 6, 1, 8, CAST(N'2022-07-26T00:00:00.000' AS DateTime), CAST(N'2022-07-27T00:00:00.000' AS DateTime), 1, 2009, 1346)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (347, N'قطاع  مكتب الوزير', N'فحص اعتماد التقاي', N'اخصائى ثانى تنميه اداريه بمكتبرئيس قطاع شئون مكتب وزير الزراعه', 45, 376, N'2', 6, 1, 7, CAST(N'2022-07-26T00:00:00.000' AS DateTime), CAST(N'2022-07-27T00:00:00.000' AS DateTime), 1, 2009, 1347)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (348, N'قطاع  مكتب الوزير', N'فحص اعتماد التقاي', N'مدير عام المعايير', 45, 376, N'2', 6, 1, 6, CAST(N'2022-07-26T00:00:00.000' AS DateTime), CAST(N'2022-07-27T00:00:00.000' AS DateTime), 1, 2009, 1348)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (349, N'قطاع  مكتب الوزير', N'فحص اعتماد التقاي', N'مديرالإدارة العامة لشئون فحص التقاوي بالمحافظات', 45, 376, N'2', 6, 1, 33, CAST(N'2022-07-26T00:00:00.000' AS DateTime), CAST(N'2022-07-27T00:00:00.000' AS DateTime), 1, 2009, 1349)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (350, N'قطاع  مكتب الوزير', N'فحص اعتماد التقاي', N'اخصائى زراعي', 45, 376, N'2', 6, 1, 6, CAST(N'2022-07-26T00:00:00.000' AS DateTime), CAST(N'2022-07-27T00:00:00.000' AS DateTime), 1, 2009, 1350)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (351, N'قطاع  مكتب الوزير', N'الإدارة المركزية للبساتين', N'مدير إدارة التكاثر الخضرى', 45, 376, N'2', 6, 1, 6, CAST(N'2022-07-26T00:00:00.000' AS DateTime), CAST(N'2022-07-27T00:00:00.000' AS DateTime), 1, 2009, 1351)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (352, N'قطاع  مكتب الوزير', N'الإدارة المركزية للبساتين', N'اخصائى مكتبات ووثائق ثالث', 45, 376, N'2', 6, 1, 8, CAST(N'2022-07-26T00:00:00.000' AS DateTime), CAST(N'2022-07-27T00:00:00.000' AS DateTime), 1, 2009, 1352)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (353, N'قطاع  مكتب الوزير', N'الادارة المركزية للبساتين', N'أخصائي زراعي ثاني', 45, 376, N'2', 6, 1, 7, CAST(N'2022-07-26T00:00:00.000' AS DateTime), CAST(N'2022-07-27T00:00:00.000' AS DateTime), 1, 2009, 1353)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (354, N'قطاع  مكتب الوزير', N'الادارة المركزية للبساتين', N'اخصائى زراعي ثالث', 45, 376, N'2', 6, 1, 8, CAST(N'2022-07-26T00:00:00.000' AS DateTime), CAST(N'2022-07-27T00:00:00.000' AS DateTime), 1, 2009, 1354)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (355, N'قطاع  مكتب الوزير', N'الادارة المركزية للبساتين', N'مكتب فنى', 45, 376, N'2', 6, 1, 7, CAST(N'2022-07-26T00:00:00.000' AS DateTime), CAST(N'2022-07-27T00:00:00.000' AS DateTime), 1, 2009, 1355)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (356, N'قطاع  مكتب الوزير', N'مكافحة الافات الزراعية', N'كاتب سكرتاريه ومحفوظات ثان', 45, 376, N'2', 6, 1, 7, CAST(N'2022-07-26T00:00:00.000' AS DateTime), CAST(N'2022-07-27T00:00:00.000' AS DateTime), 1, 2009, 1356)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (357, N'قطاع  مكتب الوزير', N'الهيئة العامة لمشروعات التعمير', N'كاتب شئون ماليه ثالث', 45, 376, N'2', 6, 1, 8, CAST(N'2022-07-26T00:00:00.000' AS DateTime), CAST(N'2022-07-27T00:00:00.000' AS DateTime), 1, 2009, 1357)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (358, N'قطاع  مكتب الوزير', N'الهيئة العامة لمشروعات التعمير', N'مدير عام الإدارة العامة لمنطقة الوجه القبلي', 45, 376, N'2', 6, 1, 2, CAST(N'2022-07-26T00:00:00.000' AS DateTime), CAST(N'2022-07-27T00:00:00.000' AS DateTime), 1, 2009, 1358)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (359, N'قطاع  مكتب الوزير', N'الهيئة العامة لمشروعات التعمير', N'مدير اداره شئون مجلس الاداره', 45, 376, N'2', 6, 1, 6, CAST(N'2022-07-26T00:00:00.000' AS DateTime), CAST(N'2022-07-27T00:00:00.000' AS DateTime), 1, 2009, 1359)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (360, N'قطاع  مكتب الوزير', N'الهيئة العامة لمشروعات التعمير', N'كاتب شئون افراد ثان', 45, 376, N'2', 6, 1, 7, CAST(N'2022-07-26T00:00:00.000' AS DateTime), CAST(N'2022-07-27T00:00:00.000' AS DateTime), 1, 2009, 1360)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (361, N'مكتب مساعد اول', N'مكتب مساعد اول', N'كاتب ثالث', 57, 376, N'2', 6, 1, 8, CAST(N'2022-07-26T00:00:00.000' AS DateTime), CAST(N'2022-07-27T00:00:00.000' AS DateTime), 1, 2009, 1361)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (362, N'مكتب مساعد اول', N'مكتب مساعد اول', N'مهندس ثالث', 57, 376, N'2', 6, 1, 8, CAST(N'2022-07-26T00:00:00.000' AS DateTime), CAST(N'2022-07-27T00:00:00.000' AS DateTime), 1, 2009, 1362)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (363, N'الاداره العامه للعلاقات العامه', N'الاداره العامه للعلاقات العامه', N'كاتب ثالث', 57, 376, N'2', 6, 1, 8, CAST(N'2022-07-26T00:00:00.000' AS DateTime), CAST(N'2022-07-27T00:00:00.000' AS DateTime), 1, 2009, 1363)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (364, N'المكتب الفني للوزير', N'المكتب الفني للوزير', N'باحث اول', 57, 376, N'2', 6, 1, 6, CAST(N'2022-07-26T00:00:00.000' AS DateTime), CAST(N'2022-07-27T00:00:00.000' AS DateTime), 1, 2009, 1364)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (365, N'الاداره العامه للامن', N'الاداره العامه للامن', N'كاتب ثالث', 57, 376, N'2', 6, 1, 8, CAST(N'2022-07-26T00:00:00.000' AS DateTime), CAST(N'2022-07-27T00:00:00.000' AS DateTime), 1, 2009, 1365)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (366, N'الاداره العامه للامن', N'الاداره العامه للامن', N'كاتب ثالث', 57, 376, N'2', 6, 1, 8, CAST(N'2022-07-26T00:00:00.000' AS DateTime), CAST(N'2022-07-27T00:00:00.000' AS DateTime), 1, 2009, 1366)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (367, N'اللجنه العليا للاصلاح التشريعي', N'اللجنه العليا للاصلاح التشريعي', N'باحث ثان', 57, 376, N'2', 6, 1, 7, CAST(N'2022-07-26T00:00:00.000' AS DateTime), CAST(N'2022-07-27T00:00:00.000' AS DateTime), 1, 2009, 1367)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (368, N'المركز القومي للدراسات القضائيه', N'المركز القومي للدراسات القضائيه', N'باحث اول', 57, 376, N'2', 6, 1, 6, CAST(N'2022-07-26T00:00:00.000' AS DateTime), CAST(N'2022-07-27T00:00:00.000' AS DateTime), 1, 2009, 1368)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (369, N'المركز القومي للدراسات القضائيه', N'المركز القومي للدراسات القضائيه', N'باحث ثالث', 57, 376, N'2', 6, 1, 8, CAST(N'2022-07-26T00:00:00.000' AS DateTime), CAST(N'2022-07-27T00:00:00.000' AS DateTime), 1, 2009, 1369)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (370, N'المركز القومي للدراسات القضائيه', N'المركز القومي للدراسات القضائيه', N'كاتب ثالث', 57, 376, N'2', 6, 1, 8, CAST(N'2022-07-26T00:00:00.000' AS DateTime), CAST(N'2022-07-27T00:00:00.000' AS DateTime), 1, 2009, 1370)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (371, N'الهيئه العامه لأبنيه دور المحاكم والشهر العقاري', N'الهيئه العامه لأبنيه دور المحاكم والشهر العقاري', N'كبير كتاب', 57, 376, N'2', 6, 1, 3, CAST(N'2022-07-26T00:00:00.000' AS DateTime), CAST(N'2022-07-27T00:00:00.000' AS DateTime), 1, 2009, 1371)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (372, N'الهيئه العامه لأبنيه دور المحاكم والشهر العقاري', N'الهيئه العامه لأبنيه دور المحاكم والشهر العقاري', N'باحث اول', 57, 376, N'2', 6, 1, 6, CAST(N'2022-07-26T00:00:00.000' AS DateTime), CAST(N'2022-07-27T00:00:00.000' AS DateTime), 1, 2009, 1372)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (373, N'الهيئه العامه لأبنيه دور المحاكم والشهر العقاري', N'الهيئه العامه لأبنيه دور المحاكم والشهر العقاري', N'كاتب ثالث', 57, 376, N'2', 6, 1, 8, CAST(N'2022-07-26T00:00:00.000' AS DateTime), CAST(N'2022-07-27T00:00:00.000' AS DateTime), 1, 2009, 1373)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (374, N'الهيئه العامه لأبنيه دور المحاكم والشهر العقاري', N'الهيئه العامه لأبنيه دور المحاكم والشهر العقاري', N'باحث ثان', 57, 376, N'2', 6, 1, 7, CAST(N'2022-07-26T00:00:00.000' AS DateTime), CAST(N'2022-07-27T00:00:00.000' AS DateTime), 1, 2009, 1374)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (375, N'صندوق الرعايه الصحيه (اعضاء)', N'صندوق الرعايه الصحيه (اعضاء)', N'باحث ثان', 57, 376, N'2', 6, 1, 7, CAST(N'2022-07-26T00:00:00.000' AS DateTime), CAST(N'2022-07-27T00:00:00.000' AS DateTime), 1, 2009, 1375)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (376, N'صندوق الرعايه الصحيه (اعضاء)', N'صندوق الرعايه الصحيه (اعضاء)', N'باحث ثان', 57, 376, N'2', 6, 1, 7, CAST(N'2022-07-26T00:00:00.000' AS DateTime), CAST(N'2022-07-27T00:00:00.000' AS DateTime), 1, 2009, 1376)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (377, N'صندوق الرعايه الصحيه (اعضاء)', N'صندوق الرعايه الصحيه (اعضاء)', N'باحث ثان', 57, 376, N'2', 6, 1, 7, CAST(N'2022-07-26T00:00:00.000' AS DateTime), CAST(N'2022-07-27T00:00:00.000' AS DateTime), 1, 2009, 1377)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (378, N'صندوق الرعايه الصحيه (اعضاء)', N'صندوق الرعايه الصحيه (اعضاء)', N'كاتب ثان', 57, 376, N'2', 6, 1, 7, CAST(N'2022-07-26T00:00:00.000' AS DateTime), CAST(N'2022-07-27T00:00:00.000' AS DateTime), 1, 2009, 1378)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (379, N'صندوق الرعايه الصحيه (اعضاء)', N'صندوق الرعايه الصحيه (اعضاء)', N'باحث ثان', 57, 376, N'2', 6, 1, 7, CAST(N'2022-07-26T00:00:00.000' AS DateTime), CAST(N'2022-07-27T00:00:00.000' AS DateTime), 1, 2009, 1379)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (380, N'قطاع الادارات القانونيه', N'قطاع الادارات القانونيه', N'كاتب رابع', 57, 376, N'2', 6, 1, 9, CAST(N'2022-07-26T00:00:00.000' AS DateTime), CAST(N'2022-07-27T00:00:00.000' AS DateTime), 1, 2009, 1380)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (381, N'قطاع التخطيط والتنميه الاداريه والمتابعه', N'قطاع التخطيط والتنميه الاداريه والمتابعه', N'كاتب ثالث', 57, 376, N'2', 6, 1, 8, CAST(N'2022-07-26T00:00:00.000' AS DateTime), CAST(N'2022-07-27T00:00:00.000' AS DateTime), 1, 2009, 1381)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (382, N'قطاع التشريع', N'قطاع التشريع', N'باحث ثالث', 57, 376, N'2', 6, 1, 8, CAST(N'2022-07-26T00:00:00.000' AS DateTime), CAST(N'2022-07-27T00:00:00.000' AS DateTime), 1, 2009, 1382)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (383, N'قطاع التشريع', N'قطاع التشريع', N'كاتب رابع', 57, 376, N'2', 6, 1, 9, CAST(N'2022-07-26T00:00:00.000' AS DateTime), CAST(N'2022-07-27T00:00:00.000' AS DateTime), 1, 2009, 1383)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (384, N'قطاع التطوير التقني ومركز المعلومات القضائي', N'قطاع التطوير التقني ومركز المعلومات القضائي', N'كاتب اول', 57, 376, N'2', 6, 1, 6, CAST(N'2022-07-26T00:00:00.000' AS DateTime), CAST(N'2022-07-27T00:00:00.000' AS DateTime), 1, 2009, 1384)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (385, N'قطاع التطوير التقني ومركز المعلومات القضائي', N'قطاع التطوير التقني ومركز المعلومات القضائي', N'باحث ثان', 57, 376, N'2', 6, 1, 7, CAST(N'2022-07-26T00:00:00.000' AS DateTime), CAST(N'2022-07-27T00:00:00.000' AS DateTime), 1, 2009, 1385)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (386, N'قطاع التعاون الدولي والثقافي', N'قطاع التعاون الدولي والثقافي', N'باحث اول', 57, 376, N'2', 6, 1, 6, CAST(N'2022-07-26T00:00:00.000' AS DateTime), CAST(N'2022-07-27T00:00:00.000' AS DateTime), 1, 2009, 1386)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (387, N'قطاع التعاون الدولي والثقافي', N'قطاع التعاون الدولي والثقافي', N'باحث ثالث', 57, 376, N'2', 6, 1, 8, CAST(N'2022-07-26T00:00:00.000' AS DateTime), CAST(N'2022-07-27T00:00:00.000' AS DateTime), 1, 2009, 1387)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (388, N'قطاع المحاكم والمطالبات القضائيه', N'قطاع المحاكم والمطالبات القضائيه', N'كبير كتاب', 57, 376, N'2', 6, 1, 3, CAST(N'2022-07-26T00:00:00.000' AS DateTime), CAST(N'2022-07-27T00:00:00.000' AS DateTime), 1, 2009, 1388)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (389, N'قطاع المحاكم والمطالبات القضائيه', N'قطاع المحاكم والمطالبات القضائيه', N'كبير كتاب', 57, 376, N'2', 6, 1, 3, CAST(N'2022-07-26T00:00:00.000' AS DateTime), CAST(N'2022-07-27T00:00:00.000' AS DateTime), 1, 2009, 1389)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (390, N'قطاع المحاكم والمطالبات القضائيه', N'قطاع المحاكم والمطالبات القضائيه', N'باحث اول', 57, 376, N'2', 6, 1, 6, CAST(N'2022-07-26T00:00:00.000' AS DateTime), CAST(N'2022-07-27T00:00:00.000' AS DateTime), 1, 2009, 1390)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (391, N'قطاع المحاكم والمطالبات القضائيه', N'قطاع المحاكم والمطالبات القضائيه', N'باحث ثان', 57, 376, N'2', 6, 1, 7, CAST(N'2022-07-26T00:00:00.000' AS DateTime), CAST(N'2022-07-27T00:00:00.000' AS DateTime), 1, 2009, 1391)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (392, N'قطاع المحاكم والمطالبات القضائيه', N'قطاع المحاكم والمطالبات القضائيه', N'باحث ثان', 57, 376, N'2', 6, 1, 7, CAST(N'2022-07-26T00:00:00.000' AS DateTime), CAST(N'2022-07-27T00:00:00.000' AS DateTime), 1, 2009, 1392)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (393, N'اداره الرعايه الاجتماعيه', N'اداره الرعايه الاجتماعيه', N'كاتب رابع', 57, 376, N'2', 6, 1, 9, CAST(N'2022-07-26T00:00:00.000' AS DateTime), CAST(N'2022-07-27T00:00:00.000' AS DateTime), 1, 2009, 1393)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (394, N'اداره الرعايه الاجتماعيه', N'اداره الرعايه الاجتماعيه', N'كاتب رابع', 57, 376, N'2', 6, 1, 9, CAST(N'2022-07-26T00:00:00.000' AS DateTime), CAST(N'2022-07-27T00:00:00.000' AS DateTime), 1, 2009, 1394)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (395, N'الاداره العامه للشئون القانونيه', N'الاداره العامه للشئون القانونيه', N'كبير كتاب', 57, 376, N'2', 6, 1, 3, CAST(N'2022-07-26T00:00:00.000' AS DateTime), CAST(N'2022-07-27T00:00:00.000' AS DateTime), 1, 2009, 1395)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (396, N'الاداره العامه للشئون القانونيه', N'الاداره العامه للشئون القانونيه', N'كبير كتاب', 57, 376, N'2', 6, 1, 3, CAST(N'2022-07-26T00:00:00.000' AS DateTime), CAST(N'2022-07-27T00:00:00.000' AS DateTime), 1, 2009, 1396)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (397, N'الاداره العامه للشئون القانونيه', N'الاداره العامه للشئون القانونيه', N'باحث ثالث', 57, 376, N'2', 6, 1, 8, CAST(N'2022-07-26T00:00:00.000' AS DateTime), CAST(N'2022-07-27T00:00:00.000' AS DateTime), 1, 2009, 1397)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (398, N'الاداره العامه للشئون القانونيه', N'الاداره العامه للشئون القانونيه', N'باحث ثالث', 57, 376, N'2', 6, 1, 8, CAST(N'2022-07-26T00:00:00.000' AS DateTime), CAST(N'2022-07-27T00:00:00.000' AS DateTime), 1, 2009, 1398)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (399, N'الاداره العامه للموارد البشريه', N'الاداره العامه للموارد البشريه', N'باحث ثالث', 57, 376, N'2', 6, 1, 8, CAST(N'2022-07-26T00:00:00.000' AS DateTime), CAST(N'2022-07-27T00:00:00.000' AS DateTime), 1, 2009, 1399)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (400, N'الاداره العامه للموارد البشريه', N'الاداره العامه للموارد البشريه', N'كاتب ثالث', 57, 376, N'2', 6, 1, 8, CAST(N'2022-07-26T00:00:00.000' AS DateTime), CAST(N'2022-07-27T00:00:00.000' AS DateTime), 1, 2009, 1400)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (401, N'الاداره العامه للموارد البشريه', N'الاداره العامه للموارد البشريه', N'كاتب رابع', 57, 376, N'2', 6, 1, 9, CAST(N'2022-07-26T00:00:00.000' AS DateTime), CAST(N'2022-07-27T00:00:00.000' AS DateTime), 1, 2009, 1401)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (402, N'الاداره العامه للموازنه', N'الاداره العامه للموازنه', N'كاتب ثالث', 57, 376, N'2', 6, 1, 8, CAST(N'2022-07-26T00:00:00.000' AS DateTime), CAST(N'2022-07-27T00:00:00.000' AS DateTime), 1, 2009, 1402)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (403, N'', N'الصيدلة', N'اخصائي صيدلي اول', 316, 376, N'2', 6, 1, 7, CAST(N'2022-07-19T00:00:00.000' AS DateTime), CAST(N'2022-07-20T00:00:00.000' AS DateTime), 1, 2009, 1403)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (404, N'', N'الموارد البشرية', N'مدير ادارة الموارد البشرية', 316, 376, N'2', 6, 1, 7, CAST(N'2022-07-19T00:00:00.000' AS DateTime), CAST(N'2022-07-20T00:00:00.000' AS DateTime), 1, 2009, 1404)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (405, N'', N'ا م  للشئون الادارية', N'اخصائى شئون مالية', 51, 376, N'2', 6, 1, 7, CAST(N'2022-07-19T00:00:00.000' AS DateTime), CAST(N'2022-07-20T00:00:00.000' AS DateTime), 1, 2009, 1405)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (406, N'', N'الإدارة المركزية للشئون القانونية', N'محام', 51, 376, N'2', 6, 1, 7, CAST(N'2022-07-19T00:00:00.000' AS DateTime), CAST(N'2022-07-20T00:00:00.000' AS DateTime), 1, 2009, 1406)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (407, N'', N'أ.م. للتخطيط والمشروعات', N'مهندس', 51, 376, N'2', 6, 1, 7, CAST(N'2022-07-19T00:00:00.000' AS DateTime), CAST(N'2022-07-20T00:00:00.000' AS DateTime), 1, 2009, 1407)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (408, N'', N'أ.م. للتخطيط والمشروعات', N'مهندس', 51, 376, N'2', 6, 1, 7, CAST(N'2022-07-19T00:00:00.000' AS DateTime), CAST(N'2022-07-20T00:00:00.000' AS DateTime), 1, 2009, 1408)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (409, N'', N'أ.م. للتخطيط والمشروعات', N'للمشروعات', 51, 376, N'2', 6, 1, 7, CAST(N'2022-07-19T00:00:00.000' AS DateTime), CAST(N'2022-07-20T00:00:00.000' AS DateTime), 1, 2009, 1409)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (410, N'', N'ا.م للتخطيط والمشروعات', N'', 51, 376, N'2', 6, 1, 7, CAST(N'2022-07-19T00:00:00.000' AS DateTime), CAST(N'2022-07-20T00:00:00.000' AS DateTime), 1, 2009, 1410)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (411, N'', N'ا.م للشئون الطبية', N'', 51, 376, N'2', 6, 1, 7, CAST(N'2022-07-19T00:00:00.000' AS DateTime), CAST(N'2022-07-20T00:00:00.000' AS DateTime), 1, 2009, 1411)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (412, N'', N'ا.م للشئون الطبية', N'', 51, 376, N'2', 6, 1, 7, CAST(N'2022-07-19T00:00:00.000' AS DateTime), CAST(N'2022-07-20T00:00:00.000' AS DateTime), 1, 2009, 1412)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (413, N'', N'الادارة المركزيةللرعاية الحرجة والعاجلة', N'', 50, 376, N'2', 6, 1, 7, CAST(N'2022-07-19T00:00:00.000' AS DateTime), CAST(N'2022-07-20T00:00:00.000' AS DateTime), 1, 2009, 1413)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (414, N'', N'', N'صيدلانية', 50, 376, N'2', 6, 1, 7, CAST(N'2022-07-19T00:00:00.000' AS DateTime), CAST(N'2022-07-20T00:00:00.000' AS DateTime), 1, 2009, 1414)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (415, N'', N'وحدة الاعداد والتوجيه', N'أخصائي تمويل ومحاسبة', 50, 376, N'2', 6, 1, 7, CAST(N'2022-07-19T00:00:00.000' AS DateTime), CAST(N'2022-07-20T00:00:00.000' AS DateTime), 1, 2009, 1415)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (416, N'', N'وحدة الوثائق الالكترونية', N'كاتب', 50, 376, N'2', 6, 1, 7, CAST(N'2022-07-19T00:00:00.000' AS DateTime), CAST(N'2022-07-20T00:00:00.000' AS DateTime), 1, 2009, 1416)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (417, N'', N'التفتيش الفني', N'مدير عام', 50, 376, N'2', 6, 1, 7, CAST(N'2022-07-19T00:00:00.000' AS DateTime), CAST(N'2022-07-20T00:00:00.000' AS DateTime), 1, 2009, 1417)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (418, N'', N'المكتب الفني لوزير الصحة', N'عضو مكتب فني', 50, 376, N'2', 6, 1, 7, CAST(N'2022-07-19T00:00:00.000' AS DateTime), CAST(N'2022-07-20T00:00:00.000' AS DateTime), 1, 2009, 1418)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (419, N'', N'أ. ع. لبرامج أمراض الطفولة', N'صيدلى', 50, 376, N'2', 6, 1, 7, CAST(N'2022-07-19T00:00:00.000' AS DateTime), CAST(N'2022-07-20T00:00:00.000' AS DateTime), 1, 2009, 1419)
GO
INSERT [dbo].[TBL_Candidates_Courses] ([CandID], [CandWorkSector], [CandWorkDept], [CandWorkTitle], [CandSubMinistryID], [CandTrainingCourse], [CandCourseDuration], [CandCourseProvider], [CandCourseStudyMechanism], [CandEmploymentDegree], [CandStartDate], [CandEndDate], [CandCapitalStatus], [CandFiscalYearID], [CandInfoID]) VALUES (420, N'', N'أ. ع. لرعاية الأمومة والطفولة', N'طبيب بشرى', 50, 376, N'2', 6, 1, 7, CAST(N'2022-07-19T00:00:00.000' AS DateTime), CAST(N'2022-07-20T00:00:00.000' AS DateTime), 1, 2009, 1420)
GO
SET IDENTITY_INSERT [dbo].[TBL_Candidates_Courses] OFF
GO
SET IDENTITY_INSERT [dbo].[TBL_CandidatesInfo] ON 
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1003, N'جواهر عبده', N'29817124825064', N'01281366380', N'mydalsman@example.com')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1004, N'هيثم طزيز', N'26993105873617', N'01185884482', N'mhsn78@example.org')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1005, N'الدكتور ناعم العقيدات', N'13903966916230', N'01015511979', N'ebd-alqysnt@example.com')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1006, N'ريم زلاطيمو', N'10446293816709', N'01273383789', N'shl89@example.net')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1007, N'خاشعة صيام', N'20148659592594', N'01057276280', N'ryfedwan@example.com')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1008, N'المهندس حمّاد درويش', N'11515837924635', N'01140478829', N'zarnawt@example.com')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1009, N'ميار الألجاوي', N'27944152826930', N'01194398854', N'hsynalejman@example.com')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1010, N'الدكتور رباح البقوم', N'10115616244605', N'01077792009', N'alsahlymjahd@example.org')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1011, N'لاما لخم', N'17045765840087', N'01092259715', N'bnw-sed-bn-lyv-bn-bkrmhjwb@example.org')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1012, N'الأستاذة دانية المتولي', N'28064554925445', N'01079753075', N'vqyf72@example.net')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1013, N'ضاحي جرهم', N'19414659391998', N'01179805554', N'kamlsydawy@example.net')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1014, N'جوريّة ابو السعود', N'24524302420192', N'01139080650', N'nbrasalejman@example.net')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1015, N'الدكتورة ايمان سليم', N'23099577740243', N'01141647841', N'felyan@example.com')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1016, N'السيدة ناديه عكاوي', N'25370358055769', N'01005552030', N'bvynp31@example.net')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1017, N'المهندس مراد الترهي', N'12502840963200', N'01098080404', N'tqy87@example.net')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1018, N'طارق الأيوبي', N'19121633000868', N'01038567913', N'blyxdr@example.org')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1019, N'أزهار بنو الأحمر', N'19279915479814', N'01299703816', N'iqtynp@example.net')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1020, N'السيدة اصيل الكلغاصي', N'21484438409921', N'01101416772', N'jaldwasr@example.org')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1021, N'السيد منيف بنو ذي أصبح', N'24355922551565', N'01063584406', N'alnsarymahr@example.com')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1022, N'ميسور قيس عيلان', N'29435018769326', N'01063714940', N'dryd85@example.org')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1023, N'السيد مرعي الساحلي', N'11382830325134', N'01072551989', N'nsybpkrym@example.net')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1024, N'المهندسة ربى جزار', N'13647595967407', N'01041476375', N'njm-aldynalhjr-bn-alhnw-bn-alzd@example.com')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1025, N'المهندس شامل عرموني', N'14357679396991', N'01173907179', N'hbhmdwny@example.com')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1026, N'مُرضي البقوم', N'18290337347181', N'01136508731', N'qalqrjwly@example.com')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1027, N'معتوق بيروتي', N'16383649488526', N'01292350028', N'zvqyf@example.com')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1028, N'بيلسان زحلاوي', N'14447294426987', N'01192653925', N'frhanbnw-ham@example.org')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1029, N'هلالي قليبو', N'22449593907610', N'01183922843', N'klymalgwanmp@example.com')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1030, N'الدكتور حليم المرازيق', N'25468122281350', N'01185508206', N'qryesmt@example.net')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1031, N'وصاف بنو شيبان', N'26671145786292', N'01040432670', N'hnady30@example.net')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1032, N'المهندسة مايا الموركة', N'10126777815088', N'01085535111', N'amywnynt@example.net')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1033, N'عتريس الرباب', N'24277036829841', N'01299351322', N'majd29@example.com')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1034, N'اصيل تنوخ', N'10542228649981', N'01184254096', N'yerb33@example.net')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1035, N'الدكتور كتوم مطير', N'11541753282887', N'01184288148', N'madlynbnw-ham@example.com')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1036, N'المهندسة جميلة الداودي', N'19356503490060', N'01155117776', N'alwsnafe@example.net')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1037, N'السيدة لاما جبيلي', N'17398439228654', N'01023140298', N'falqdmany@example.com')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1038, N'الأستاذة لتين القزاز', N'14234747840803', N'01074584968', N'lbyb18@example.net')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1039, N'فراس أشجع', N'12053880569004', N'01066923631', N'akrnwr-aldyn@example.net')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1040, N'المهندسة إخلاص عامر بن صعصعة', N'22341096422204', N'01048548593', N'xyryesyr@example.com')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1041, N'الأستاذة هنادي عويضة', N'29193957680470', N'01232927265', N'mursytrabyn@example.com')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1042, N'الدكتور عائد الشهابي', N'13918240403814', N'01055867236', N'ltzyz@example.org')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1043, N'جميلة أنمار', N'10950943455141', N'01124132049', N'jwynaldawdy@example.org')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1044, N'المهندس رشيد معتوق', N'22142930426024', N'01272432033', N'zhransnam@example.net')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1045, N'السيد نسيب جبيلي', N'26156128242593', N'01105736911', N'alxaldyjlyl@example.org')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1046, N'شهب بنو عجل', N'29398003312192', N'01213179002', N'bnw-yelykaf@example.net')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1047, N'الآنسة ميار سموم', N'28169929695384', N'01187498053', N'ebd-alhqtrablsy@example.org')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1048, N'سراج الدّين الأيوبي', N'28090528669933', N'01051350923', N'zbyrwty@example.net')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1049, N'الدكتور جلال الدّين ألمع', N'24577685533311', N'01269174680', N'ptrablsy@example.net')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1050, N'نوره الحويطات', N'26245673296989', N'01169618603', N'dalqdmany@example.com')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1051, N'السيد رافع الزرقان', N'28870671594711', N'01213812507', N'uhmdan@example.net')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1052, N'الأستاذة أزهار إياد', N'24018950953012', N'01165291135', N'jdysyasmyn@example.org')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1053, N'سديم بدرية', N'21979062395966', N'01219704692', N'mhybbnw-hr@example.com')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1054, N'وليد عبد اللطيف', N'17230662919843', N'01141981366', N'fadl13@example.org')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1055, N'السيدة روفيدا عتيبة', N'10887385796634', N'01244956606', N'lwlya98@example.net')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1056, N'المهندس ثاقب العقيدات', N'19766051359692', N'01175270473', N'paltwtnjy@example.com')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1057, N'المهندس حسين عامر بن صعصعة', N'13029592204304', N'01053902031', N'tknanp@example.net')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1058, N'الآنسة هدى الموسوس', N'12126425392799', N'01120247738', N'musef27@example.com')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1059, N'الدكتورة جنى الأوس', N'28730728472945', N'01127786058', N'valmzfr@example.com')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1060, N'الأستاذ قنوع عجرمة (العجارمة)', N'18750450121969', N'01050562136', N'slambkr-bn-wal@example.com')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1061, N'عالم الزماميري', N'13544268213281', N'01265415925', N'nwr-aldynemar@example.net')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1062, N'الدكتور مُنير تغلب بن وائل', N'26833440259662', N'01015806685', N'alhlwanyfalh@example.com')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1063, N'الدكتورة بهية المرازيق', N'15564007983560', N'01030978370', N'gamdjlyl@example.net')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1064, N'دارين النجار', N'13679451245468', N'01034647838', N'rwyaldjany@example.org')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1065, N'منيف بنو عبس', N'17589215016566', N'01216036765', N'asyl14@example.org')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1066, N'الدكتورة اصيل طوطح', N'26651778009318', N'01071630515', N'lyan95@example.org')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1067, N'وجيه الرباب', N'26734526988213', N'01099816736', N'bnw-knzkyb@example.net')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1068, N'مُتيّم نجيب', N'15236846682819', N'01013283945', N'ealnqyb@example.org')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1069, N'دعاء اليوزباشي', N'26143456325668', N'01014934325', N'mslmfrahyd@example.org')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1070, N'جدير المغربي', N'25848583724639', N'01273434626', N'lyn18@example.org')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1071, N'حقّي بنو عمرو', N'23347320028943', N'01255419196', N'syf-aldyn31@example.net')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1072, N'الدكتور محمود درويش', N'14858497989196', N'01001352724', N'jefrjmylp@example.com')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1073, N'السيد مُعتز بني بيات', N'16923300974483', N'01165070340', N'bhabjylp@example.com')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1074, N'تولين بنو الدئل', N'28856770454293', N'01295538987', N'kjefr@example.net')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1075, N'السيدة لاما الامام', N'21040244450912', N'01238338298', N'eyb54@example.net')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1076, N'بيسان طقش', N'13831850395320', N'01288828329', N'zahr14@example.org')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1077, N'آيات البيسار القعقور', N'15562117812925', N'01126344974', N'xafqbyrqdar@example.com')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1078, N'المهندس قبس بجيلة', N'25736438024558', N'01038103323', N'hlalbny-hajr@example.net')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1079, N'خلوصي بنو ليث', N'26782578887157', N'01267620825', N'hmwdbnw-knz@example.com')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1080, N'ريم الأنصاري', N'19202826878429', N'01299262196', N'majdklb@example.org')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1081, N'الدكتور سراج غوشة', N'26770893847357', N'01296919446', N'nnhd@example.net')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1082, N'نغم بنو حنيفة', N'12290563337871', N'01268005539', N'jens@example.com')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1083, N'حليم الأنصاري', N'15042647975457', N'01026116184', N'mhsn40@example.com')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1084, N'إخلاص يشكر', N'20156075033546', N'01046774003', N'aalhwa@example.com')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1085, N'الأستاذة دارين المؤقت', N'11488817306877', N'01083685130', N'jwlyabnw-alhmr@example.net')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1086, N'الآنسة وفاء فهم', N'10261258509154', N'01296332641', N'var21@example.net')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1087, N'الأستاذة بهية متني', N'21292756999181', N'01144578985', N'alhwytatnsr@example.net')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1088, N'شهد حرب', N'10575298135428', N'01162857572', N'qalmwsws@example.net')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1089, N'الأستاذة اعتكاف العقيدات', N'20043286231587', N'01024512030', N'jaldswqy@example.net')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1090, N'الدكتورة ماذى الشاويش', N'27424189012426', N'01286180442', N'nbras17@example.com')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1091, N'الدكتورة دانة سرندح', N'24581783054390', N'01102156614', N'samd06@example.com')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1092, N'الدكتورة كرمة قبيلة هذيل البقوم', N'18279478148032', N'01265558495', N'mfq03@example.net')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1093, N'المهندسة ضياء خندف', N'29362101638824', N'01230694286', N'hatmalamy@example.org')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1094, N'طيّع طرابلسي', N'14744258563645', N'01235207284', N'mqlybw@example.com')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1095, N'ميلاء الدسوقي', N'16274646410847', N'01208311490', N'yaqwtkhlan@example.com')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1096, N'عبد الباري بنو ذي أصبح', N'13149109669455', N'01245420620', N'malbytar@example.org')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1097, N'ابتهال أفغاني', N'25207772872483', N'01185555676', N'wfyqaltrjman-alsalh@example.net')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1098, N'زهدي الطحان', N'12857922845188', N'01173015804', N'palzd@example.net')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1099, N'المهندسة أسيل إياد', N'13939909633373', N'01283077149', N'alhwytatebd-aljbar@example.com')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1100, N'ضياء بنو النجار', N'20694119060278', N'01169936611', N'vnsybp@example.org')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1101, N'عبدالرّحمن شتية', N'12261305071657', N'01000093426', N'jbelbky@example.net')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1102, N'الآنسة باسمة بنو شيبان', N'20357172374683', N'01063509216', N'hyam42@example.com')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1103, N'فرات الوعري', N'27275500566240', N'01181762806', N'zaxr19@example.org')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1104, N'الأستاذ سليمان بنو كلب', N'26849666540220', N'01020945877', N'dalqrjwly@example.org')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1105, N'السيد حمزة المفتي', N'22923435788568', N'01216542459', N'bnw-ebpebd-almlk@example.org')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1106, N'الآنسة أناهيد تنوخ', N'21519297242654', N'01156291188', N'frahydebd-alhkym@example.org')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1107, N'المهندس مؤيّد الشاويش', N'28110805477503', N'01279141110', N'alzfyrmns@example.org')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1108, N'المهندس عادل الطحان', N'19305074537390', N'01088406513', N'qalmgrby@example.com')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1109, N'الأستاذ عذب بني بيات', N'27769527036130', N'01124770254', N'ewydpmwfq@example.net')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1110, N'المهندسة بوران قريش', N'22946885126109', N'01109500098', N'dens@example.net')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1111, N'ربى همدان', N'12573157687625', N'01105677210', N'ead47@example.org')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1112, N'ترف جعفر', N'14512730646895', N'01250759670', N'zhrantye@example.com')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1113, N'حكيم الحلاق', N'27240483653388', N'01140004850', N'malshwl@example.org')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1114, N'المهندسة ريمان مشعشع', N'18341272909562', N'01047015527', N'trf11@example.com')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1115, N'الدكتورة ريما شرف', N'11397637285105', N'01009343546', N'jman83@example.org')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1116, N'رضوان بنو شيبة', N'28076764137494', N'01005163171', N'rjaybnw-lyv@example.org')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1117, N'حسني بنو زيد', N'19892914188153', N'01016402530', N'ebd-alqadr42@example.net')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1118, N'سامي ابو السعود', N'11711408686194', N'01164850207', N'vabtalklgasy@example.net')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1119, N'جلال الدّين القباني', N'28488807137219', N'01213999650', N'qbny-ryd@example.net')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1120, N'الدكتور مُتيّم بنو مالك', N'26096434152186', N'01184404911', N'ramy95@example.net')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1121, N'ممتاز مرازيق البقوم', N'24097997295724', N'01179474710', N'yalklgasy@example.net')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1122, N'السيد عفيف الهدمي', N'14219557730405', N'01111078207', N'rwbynbnw-myp@example.com')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1123, N'السيدة يارا بني رشيد', N'26190149966321', N'01142575494', N'danypyad@example.org')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1124, N'نوال عاملة', N'14054735951563', N'01269624907', N'tyjefr@example.org')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1125, N'نصر الدّين قضاعة', N'14287358620898', N'01261577219', N'bnw-y-sbhxmys@example.org')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1126, N'ياسمين القطب', N'12342391594369', N'01143689896', N'var06@example.org')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1127, N'لارا عليان', N'16210833085083', N'01213090713', N'mbnw-fras@example.net')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1128, N'لوجين الأنصاري', N'20082536437061', N'01051958336', N'gtfanalkvyry@example.com')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1129, N'سائد أكلب', N'27236762685762', N'01256265521', N'qalqlmwny@example.net')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1130, N'السيد راني بنو الأحمر', N'13375440854813', N'01135501532', N'tqaftkar@example.org')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1131, N'هاجر غامد', N'23426541281740', N'01099167285', N'mutwlyhrb@example.org')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1132, N'وريد حاشد', N'14625888956980', N'01002305166', N'lwlyaalljawy@example.net')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1133, N'المهندسة جهراء ألمع', N'10681383827524', N'01196225936', N'zzbyd@example.org')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1134, N'سعد الكثيري', N'16226593648265', N'01107354488', N'albxaryhyan@example.org')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1135, N'تقيّ الدّين البقوم', N'21693391176015', N'01079422390', N'ebd-alrwfbnw-mhdy@example.com')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1136, N'ريتال القضماني', N'25350166155300', N'01244065063', N'dysm86@example.net')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1137, N'اعتكاف الشهابي', N'16696989074730', N'01091502392', N'onwr-aldyn@example.org')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1138, N'ألين الأيوبي', N'20031430947231', N'01007496866', N'sbnw-aldl@example.com')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1139, N'الآنسة أروى بنو عبس', N'10425270119825', N'01238273173', N'itrabyn@example.net')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1140, N'سجا العوازم', N'23995284544560', N'01254714139', N'bnw-hammmdwh@example.com')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1141, N'الدكتور هيثم حوالة', N'28656157553478', N'01025701701', N'btrwnyvamr@example.net')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1142, N'السيدة أروى التوتنجي', N'15229765320923', N'01071656645', N'mzhrhwalp@example.net')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1143, N'طبّاع جديس', N'13532286707546', N'01170783281', N'trf52@example.com')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1144, N'ميار بنو يعلى', N'27537583128475', N'01297618733', N'alsyfymmwn@example.org')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1145, N'السيد ساجد بنو عدي', N'13594540084046', N'01069893789', N'drwyryman@example.org')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1146, N'السيد ياقوت العجمان', N'21412640276890', N'01001091377', N'tbae32@example.com')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1147, N'الأستاذ مسعود دوبلال', N'19031757659393', N'01002861843', N'dmee@example.com')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1148, N'نصر الدّين أولاد زيان', N'21125296778134', N'01259235383', N'ebd-alwahd87@example.net')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1149, N'الآنسة ليساء الماني', N'12046040705726', N'01196170198', N'alhlaqtryf@example.org')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1150, N'عبد الكريم بنو فراس', N'10980334010342', N'01067162813', N'syl07@example.net')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1151, N'بلماء العقيدات', N'13354128036159', N'01299859471', N'ytwth@example.net')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1152, N'الأستاذ فتوح بنو الدئل', N'10783410079962', N'01035769850', N'drwyysry@example.com')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1153, N'المهندسة أحلام الزماميري', N'16871334123855', N'01273814408', N'yafenbhan@example.net')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1154, N'المهندسة ابتسام عضل', N'13339012636507', N'01166197584', N'adyalkwahlp@example.net')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1155, N'الأستاذة جواهر مرازيق البقوم', N'14572391220878', N'01067167501', N'wyfatyhlym@example.com')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1156, N'الآنسة آيات عنزة', N'29770858003510', N'01040012557', N'dewydp@example.org')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1157, N'لوليا طزيز', N'12081842785595', N'01071092943', N'earf68@example.net')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1158, N'الأستاذة جمان المرازيق', N'23528668602169', N'01273651027', N'qhtanryan@example.net')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1159, N'الأستاذ طيّع بنو شيبان', N'20778079808061', N'01083522469', N'zmrad@example.net')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1160, N'عتاب جزار', N'26931478425441', N'01043260149', N'alywbyzyad@example.com')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1161, N'ذيب مذحج', N'24631634283438', N'01128042028', N'kafalklgasy@example.net')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1162, N'السيدة أحلام عجرمة (العجارمة)', N'24646639937204', N'01087258587', N'ialmmlwk@example.net')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1163, N'زاكي ازحيمان', N'16472625888726', N'01073170021', N'nsr-aldynbyrwty@example.net')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1164, N'الأستاذة زهرة القزاز', N'15236586170280', N'01142706330', N'hwalpxmys@example.net')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1165, N'قيس النمر', N'29952331908232', N'01221763444', N'knan46@example.net')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1166, N'الأستاذ نبيل غامد', N'10496237709776', N'01064876961', N'nyazy18@example.com')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1167, N'لورين بنو عجل', N'15205109603322', N'01254829148', N'akr23@example.com')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1168, N'السيدة بيسان الموسوس', N'17510718724474', N'01082804234', N'zhrannswh@example.com')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1169, N'سلاف السمان', N'29108963860805', N'01005115716', N'ualmwrkp@example.net')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1170, N'أجوان القباني', N'16227813132880', N'01030108131', N'bnw-ybandryd@example.org')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1171, N'محيي الدّين الشعباني', N'15448757626509', N'01032044064', N'sate05@example.net')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1172, N'السيد شيّق النشاشيبي', N'11032338988808', N'01118486585', N'nsr-aldyn30@example.org')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1173, N'صقر بنو لام', N'10056985178133', N'01017822736', N'lxmhmad@example.com')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1174, N'المهندس وليف فهم', N'24370580132524', N'01234396483', N'munjd15@example.org')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1175, N'المهندسة بيسان جزيني', N'23535936284376', N'01081575979', N'albxarysab@example.net')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1176, N'ليساء عويضة', N'20492063112828', N'01237819764', N'bnw-sed-bn-lyv-bn-bkrrhyf@example.net')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1177, N'المهندس مشفق الغوانمة', N'26658059301439', N'01230527376', N'daryn18@example.net')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1178, N'عصام الديسي', N'17677534300183', N'01210846070', N'fars99@example.com')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1179, N'الأستاذ طيّب الأيوبي', N'29897004354648', N'01212079760', N'yalsyfy@example.org')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1180, N'السيدة سجى المؤقت', N'27631290241380', N'01192834944', N'qbylp-hyl-albqwmbtwl@example.com')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1181, N'هاجر الدليم', N'14929129015997', N'01259758282', N'hlym94@example.net')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1182, N'الأستاذة لورا بنو مهدي', N'29264596506049', N'01157927232', N'mayabnw-malk@example.org')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1183, N'نوره بكر بن وائل', N'25637754318714', N'01073505013', N'hyatzyz@example.org')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1184, N'السيد كامل عجرمة (العجارمة)', N'25330742640138', N'01256236207', N'waltrjman-alsalh@example.net')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1185, N'صاحب رصاص', N'17713764239562', N'01142085943', N'syf-aldyn39@example.org')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1186, N'الآنسة جود البديري', N'27964303726189', N'01075854676', N'tbaeje@example.net')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1187, N'مكّي تنوخ', N'14979366950231', N'01273406857', N'bnw-aleryjmrady@example.org')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1188, N'طائع المملوك', N'22409290447188', N'01290669499', N'nwalqr@example.net')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1189, N'المهندس حنفي بنو زيد', N'27950407378951', N'01213322514', N'rawyalewalq@example.net')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1190, N'الأستاذ عبد المولى الخطيب بني جماعة الكناني', N'17451531059480', N'01173990505', N'vwlad-zyan@example.org')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1191, N'ضياء بنو سعد بن ليث بن بكر', N'21781804847620', N'01213509803', N'ebd-alhkymalsman@example.net')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1192, N'طه الحويطات', N'24078585606872', N'01266523669', N'dalwery@example.org')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1193, N'علاء قضاعة', N'22493360048118', N'01244595005', N'mzynpbdraldjy@example.org')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1194, N'الأستاذة جيلان بنو عدي', N'26555854491036', N'01217381069', N'talhwytat@example.net')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1195, N'هيثم بلقرن', N'29999953730601', N'01211534594', N'mrtdybnw-mhdy@example.com')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1196, N'سراج الدّين المملوك', N'17851577993588', N'01233159285', N'hlal51@example.org')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1197, N'المهندس سنان بني بيات', N'20210124817497', N'01154714485', N'bnw-aleryjlysa@example.net')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1198, N'الأستاذ صالح اهرام', N'27581478990677', N'01027263944', N'aljaewnyryd@example.com')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1199, N'عبد الرّزاق نهد', N'24622799895769', N'01240774663', N'bkr-bn-walragb@example.com')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1200, N'عبد العزيز صيام', N'24564728624096', N'01167234403', N'shyl79@example.com')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1201, N'المهندس ظهير شمران', N'24381825644453', N'01269111555', N'myarqys-eylan@example.org')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1202, N'يافع ترابين', N'25434406868110', N'01166034437', N'lamaalsyfy@example.com')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1203, N'المهندسة راما بنو الحارث بن كعب', N'14069008257062', N'01274914267', N'hnjm@example.com')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1204, N'المهندس غزير بنو هلال', N'14180888998753', N'01158929458', N'gzyr42@example.org')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1205, N'يوسف طقش', N'28817953664882', N'01087138503', N'vmtny@example.com')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1206, N'ميرا نجيب', N'13933458354675', N'01239671333', N'ebd-alqdws11@example.net')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1207, N'السيدة إلينا الداودي', N'29056324706884', N'01115787906', N'edwyhwalp@example.net')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1208, N'زغلول المرازيق', N'14539169364911', N'01006970804', N'meynalhjr-bn-alhnw-bn-alzd@example.com')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1209, N'الدكتورة بنفسج مزرعاني', N'13499620589519', N'01240195233', N'nzamaleqydat@example.com')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1210, N'وائل بنو يعلى', N'18524972402801', N'01186617643', N'abthaltyp@example.com')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1211, N'ضحى بنو صخر', N'20250094624531', N'01205127407', N'sraj-aldynalearf@example.com')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1212, N'اعتماد السيفي', N'21146746977861', N'01180459021', N'jar-allhsjy@example.org')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1213, N'الأستاذ عامر متني', N'27753586753012', N'01241750096', N'dahkalhlwany@example.net')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1214, N'بشرى الوعري', N'10648170552636', N'01278113119', N'jabrlxm@example.net')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1215, N'الدكتور مشرف ازحيمان', N'26006715530679', N'01235436143', N'jalqaey@example.org')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1216, N'السيدة جوليا بنو عمرو', N'20667608858142', N'01280288911', N'jbny-byat@example.com')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1217, N'السيدة بلقيس متني', N'27266520954404', N'01056018305', N'bnw-sed-bn-lyv-bn-bkryaqwt@example.com')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1218, N'الدكتور شاكر الحواش', N'11754586989934', N'01240177250', N'wjyhdbyep@example.net')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1219, N'جنى مطير', N'26634004428272', N'01185254230', N'pgnym@example.org')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1220, N'المهندس فخر الدّين الأنصاري', N'10455712435320', N'01018779309', N'bny-etypslman@example.net')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1221, N'أناهيد الحلاق', N'10176822956700', N'01214694210', N'ywlad-zyan@example.org')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1222, N'السيد مالك بنو زيد', N'25675556975816', N'01186125316', N'sebalmmlwk@example.org')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1223, N'الدكتورة بلماء همدان', N'10851427967500', N'01280349643', N'emar29@example.org')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1224, N'لاما بنو ياس', N'12473639693783', N'01101890736', N'evman65@example.net')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1225, N'نوال مزينة', N'22973669550035', N'01091510525', N'aekawy@example.org')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1226, N'عبد التّواب القضماني', N'15926632319610', N'01017283794', N'hatmalnmry@example.org')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1227, N'المهندسة جيلان مزرعاني', N'28566744402287', N'01046280652', N'rwyastmbwly@example.net')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1228, N'نوال الديسي', N'20520261800193', N'01084409077', N'nasyf99@example.net')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1229, N'المهندسة أفنان الحسيني', N'21797335947073', N'01153109398', N'bny-byatelan@example.com')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1230, N'الأستاذ ساهر قضاعة', N'19336198782560', N'01207170619', N'mbnw-mhdy@example.net')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1231, N'الأستاذ تقي بيروتي', N'13668912787661', N'01011807809', N'ryanbnw-ybp@example.org')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1232, N'السيدة عالية الكثيري', N'22089168500245', N'01114411154', N'kwhbp@example.org')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1233, N'السيدة غوى الأيوبي', N'28164615040408', N'01206231078', N'qdaepmnswr@example.net')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1234, N'بيلسان الترجمان الصالح', N'27711128360295', N'01040004447', N'mxlsbnw-yas@example.net')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1235, N'الدكتور غسّان كنانة', N'27536005632504', N'01043077000', N'albdyryevman@example.org')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1236, N'عامر تنوخ', N'15758557197951', N'01134883521', N'blsmswmyrp@example.net')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1237, N'أناهيد حوالة', N'17536415873719', N'01005799440', N'nhdhfyz@example.com')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1238, N'الأستاذ رضوان جديس', N'24122358059820', N'01171784172', N'qmran@example.net')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1239, N'مخلص شتية', N'21741028856532', N'01114476797', N'mmrad@example.org')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1240, N'بدرالدّجى نسيبة', N'17140384828828', N'01026452445', N'rye44@example.net')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1241, N'ميرا معتوق', N'11178690527982', N'01141114218', N'ermwnymns@example.net')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1242, N'فكري الطحان', N'13185859607834', N'01170447420', N'zlatymwxyry@example.net')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1243, N'تالا الجبشة', N'28968419394605', N'01247345063', N'slah44@example.net')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1244, N'كرمة الوعري', N'28550347395412', N'01097596364', N'bdrypsb@example.net')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1245, N'لقمان السادة', N'12016464871110', N'01107805417', N'eatf73@example.com')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1246, N'المهندس فدائي بنو ذي أصبح', N'17571755548571', N'01114506352', N'walqbany@example.com')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1247, N'آيات الألجاوي', N'25873159138399', N'01042239586', N'fayd65@example.net')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1248, N'مزهر شرف', N'25416630375046', N'01164040429', N'munadl49@example.com')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1249, N'شفيع بنو زيد', N'22858107473482', N'01086988884', N'dkhlan@example.net')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1250, N'المهندس يعقوب حب رمان', N'29035528698776', N'01152452078', N'alrbatabebd-aljlyl@example.net')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1251, N'راوي المؤقت', N'18528624593113', N'01266710004', N'garydhyl@example.org')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1252, N'ظبي بنو هلال', N'10636826116578', N'01274303955', N'ragb73@example.org')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1253, N'الأستاذة ضحى نجيب', N'19617102410926', N'01280092414', N'amx69@example.net')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1254, N'صلاح الدّين جذام', N'28571106991623', N'01242746376', N'aalxaldy@example.org')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1255, N'طالب الزماميري', N'18003076843616', N'01012692916', N'edwybkr-bn-wal@example.org')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1256, N'السيد غسّان بنو الحارث بن كعب', N'12868176536217', N'01020565488', N'hafzmrazyq-albqwm@example.net')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1257, N'السيد حنفي بنو مهدي', N'21815222513196', N'01167800877', N'falbgdady@example.org')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1258, N'عبد الحفيظ أكلب', N'13612025239488', N'01118981369', N'qalbamyp@example.com')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1259, N'الدكتور فاضل جودة', N'29928975070796', N'01211586559', N'salqlmwny@example.net')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1260, N'السيد زايد صيداني', N'20765026490289', N'01038195271', N'kafwr10@example.org')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1261, N'الدكتورة بدرالدّجى الدقاق', N'29417092129683', N'01184434991', N'alljawyxlyfp@example.net')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1262, N'السيدة ابتكار النشاشيبي', N'26790470885368', N'01009543539', N'rad32@example.net')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1263, N'الأستاذة اعتماد جودة', N'25648082643641', N'01005542874', N'halqlmwny@example.com')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1264, N'مشرف البديري', N'14243085732723', N'01288319874', N'rytajbyrwty@example.net')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1265, N'المهندسة ديمه حاشد', N'27100206842102', N'01157375960', N'qbs15@example.net')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1266, N'الدكتور كامل القضماني', N'16706104214034', N'01284222552', N'xndfebd-alsmye@example.com')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1267, N'السيدة تالا الدجاني', N'20528123270062', N'01018768999', N'ebd-almwly69@example.org')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1268, N'تمام خولان', N'22016580420374', N'01063914603', N'albytyealm@example.net')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1269, N'الأستاذ مالك العقيدات', N'12260404754354', N'01062629817', N'ebd-alrwf86@example.com')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1270, N'الأستاذ رهيف الوعري', N'26290953442238', N'01291404683', N'bkr-bn-ebd-mnaplysa@example.com')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1271, N'الأستاذة لتين الخطيب بني جماعة الكناني', N'26319204750280', N'01084173593', N'nwrs86@example.com')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1272, N'بيلسان بنو ياس', N'12961739032972', N'01037020296', N'msebbnw-yban@example.org')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1273, N'الأستاذة زهرة قضاعة', N'22503050814426', N'01282236474', N'wsam11@example.com')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1274, N'سلمان بتروني', N'26578503689525', N'01271774706', N'lbyd47@example.com')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1275, N'ريمان الأيوبي', N'20385120065579', N'01282182861', N'ebanbnw-meql@example.net')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1276, N'المهندس ضاحي الأزد', N'23372444318421', N'01154048983', N'alqaeydhak@example.net')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1277, N'عمير عبد اللطيف', N'10564284822379', N'01184837540', N'zrf@example.org')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1278, N'نمر البخاري', N'27294337335745', N'01182299272', N'taj-aldynalbysar-alqeqwr@example.net')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1279, N'مياس بنو الأحمر', N'21594840351385', N'01080528739', N'xeamlp@example.net')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1280, N'بتول مرازيق البقوم', N'27595468215771', N'01162860068', N'nmr09@example.com')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1281, N'ناعم جودة', N'29297620363755', N'01093587850', N'elyanemrw@example.net')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1282, N'نور الحقّ عبد القيس', N'10678929212566', N'01228451176', N'yzlatymw@example.net')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1283, N'جاسم الأيوبي', N'21877607692633', N'01274852616', N'kbnw-fras@example.net')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1284, N'الأستاذ طالب اليوزباشي', N'21964517953962', N'01150677389', N'dahkrf@example.org')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1285, N'الدكتورة كاملة بكر بن وائل', N'28647995020480', N'01299473952', N'bkr-bn-ebd-mnapsmyr@example.net')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1286, N'الأستاذة مريم الهدمي', N'11954641850367', N'01256610393', N'hnadymrad@example.net')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1287, N'ياسمين بنو هاشم', N'22699045284261', N'01030139043', N'sbahalsman@example.com')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1288, N'مجد الخالدي', N'29556653742317', N'01101521437', N'bnw-hamaml@example.com')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1289, N'السيد غزير بني بيات', N'24500151211261', N'01295818863', N'gswmyrp@example.org')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1290, N'الدكتور كارم صيداني', N'15846089781530', N'01043549867', N'alywbymhran@example.net')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1291, N'الآنسة ريفال سرندح', N'28161547822069', N'01087830647', N'afealmhrp@example.com')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1292, N'جودي العارف', N'26372331144633', N'01186810701', N'kmalalxlfawy@example.net')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1293, N'هند جزيني', N'11289643742381', N'01044202570', N'ebd-aljbar89@example.net')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1294, N'وصاف كنانة', N'16418376262351', N'01293570630', N'bnw-edyfhd@example.org')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1295, N'الأستاذ حمّاد عتيبة', N'12139164033357', N'01292705258', N'alhdmygamd@example.com')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1296, N'بلقيس البقوم', N'25722992508616', N'01099388513', N'sahdjwdp@example.org')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1297, N'المهندس نبيه طسم', N'18315263871280', N'01164260252', N'ealyp67@example.org')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1298, N'سموح قطينة', N'18101942657762', N'01286364635', N'mrtjy58@example.org')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1299, N'الأستاذة جميلة أكلب', N'17922364876568', N'01170043411', N'bnw-ebsmeyn@example.net')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1300, N'رواء بني رشيد', N'14123074620835', N'01090636062', N'xbnw-meql@example.com')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1301, N'السيد عبد الكريم النمر', N'20298504360125', N'01136702327', N'eamlpsmyr@example.com')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1302, N'حلا النقيب', N'12833136793117', N'01214811920', N'frahydqsy@example.net')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1303, N'بنان البامية', N'15583623754319', N'01106996791', N'laalefyfy@example.net')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1304, N'السيدة سديم خولان', N'16199564978510', N'01098658017', N'mutwkl14@example.com')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1305, N'السيدة جواهر النشاشيبي', N'24222749047140', N'01197413519', N'ebd-alrhymblgazy@example.org')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1306, N'الأستاذة جوانا حاشد', N'14247403107745', N'01111261912', N'walshwl@example.com')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1307, N'عبد المحيي الداودي', N'10216035633545', N'01105345134', N'lyan78@example.net')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1308, N'ليساء شمران', N'26407959315132', N'01059997097', N'murdy63@example.com')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1309, N'الدكتورة أفنان الجبشة', N'28517548971960', N'01049077232', N'almhrpryfal@example.net')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1310, N'السيدة ناديه البخاري', N'15997010505758', N'01295701596', N'laldqaq@example.org')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1311, N'الأستاذ صابر سوميرة', N'22318919316285', N'01111796238', N'njybrasm@example.com')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1312, N'دانة مزينة', N'13511486462079', N'01008494076', N'zyad98@example.net')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1313, N'المهندسة أجوان عكاوي', N'10528338303598', N'01006419077', N'ltwf28@example.net')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1314, N'الدكتورة إلينا القباني', N'20076233444285', N'01074868546', N'obkr-bn-wal@example.net')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1315, N'جوريّة مطير', N'23488602985763', N'01009922883', N'walsadp-alrawywn@example.net')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1316, N'عدلي شمر', N'20661163057873', N'01019924569', N'calwery@example.net')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1317, N'ميرال دوبلال', N'12225792132671', N'01283701064', N'fras68@example.com')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1318, N'مريم القلموني', N'17192208848855', N'01252699157', N'salqzaz@example.com')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1319, N'روعة الخالدي', N'27106384856604', N'01078600598', N'hyvmaljaewny@example.net')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1320, N'داني اميوني', N'22574428583354', N'01299469454', N'kalywby@example.net')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1321, N'مريم السروري', N'25846262855337', N'01280741355', N'zkryaty@example.net')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1322, N'اصيل الدسوقي', N'10922663940764', N'01297242449', N'sbnw-y-sbh@example.net')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1323, N'زكية عامر بن صعصعة', N'22823179266505', N'01194535422', N'nwal86@example.net')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1324, N'كريم الموركة', N'12357453872265', N'01166571815', N'hyklabw-alhaj@example.net')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1325, N'فرات كندة', N'14331494768808', N'01270447489', N'eenzp@example.com')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1326, N'أفنان يشكر', N'27614601804587', N'01210120681', N'alsyfywal@example.net')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1327, N'السيدة أناهيد بنو مالك', N'17148452082309', N'01208134189', N'bbnw-yely@example.net')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1328, N'زغلول شويفاتي', N'17507348336574', N'01085926208', N'satealdqaq@example.com')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1329, N'نوال بديرية', N'17737192547007', N'01266734371', N'malhda@example.com')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1330, N'الأستاذ علوان بعلبكي', N'26035202549710', N'01245669166', N'ywns30@example.org')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1331, N'غزير بنو الدئل', N'21695728164054', N'01066556092', N'mwfq89@example.org')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1332, N'الدكتور ساهر طرابلسي', N'28726261317428', N'01222679877', N'myd66@example.org')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1333, N'السيدة ريناد السمان', N'20980597491001', N'01285839177', N'hebd-alltyf@example.net')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1334, N'أسرار الدسوقي', N'18942068812961', N'01099486806', N'alearfeakf@example.net')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1335, N'المهندسة فردوس الدقاق', N'27926390419219', N'01191507899', N'jwanaekawy@example.com')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1336, N'الأستاذ زاهي بنو أسد', N'27639659939337', N'01155559619', N'twthkmal@example.net')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1337, N'الأستاذة جوين سرندح', N'11417030785167', N'01025548015', N'fdasyam@example.org')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1338, N'المهندسة اعتكاف بني رشيد', N'17380617044519', N'01282768798', N'almzfrelm-aldyn@example.com')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1339, N'لمّاح بنو ذي أصبح', N'28085637886072', N'01106934448', N'mhjebd-alwahd@example.com')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1340, N'طاهر وهبة', N'25861446410399', N'01241649147', N'zhyrbnw-sxr@example.org')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1341, N'تاج نجيب', N'11973019109492', N'01020074024', N'najhbnw-sed-bn-lyv-bn-bkr@example.org')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1342, N'السيد ماهر بنو معقل', N'11104600555850', N'01256559480', N'dahy04@example.net')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1343, N'لوليا الدواسر', N'29848976100342', N'01246401165', N'balsahly@example.net')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1344, N'ناهد بكر بن عبد مناة', N'27922683362145', N'01135185695', N'rfmrady@example.com')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1345, N'المهندسة ابتهال ترابين', N'22917498276537', N'01221824846', N'hnaalhsyny@example.com')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1346, N'خضر طقش', N'10534623488621', N'01229978207', N'tmymalmwsws@example.com')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1347, N'السيد طيّع عليان', N'24488802191527', N'01086029016', N'lama11@example.net')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1348, N'زكية صيداوي', N'18897612008305', N'01194562632', N'jlal-aldynbyrqdar@example.org')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1349, N'السيد سامي بنو عدي', N'14263557778941', N'01136292622', N'bnw-y-sbheaql@example.org')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1350, N'السيدة دعاء سليم', N'13341255768554', N'01009894500', N'qys-eylanymam@example.org')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1351, N'بنفسج ميرفاب', N'28686809764602', N'01114843447', N'hyman69@example.com')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1352, N'قصيد حاشد', N'20130993366694', N'01051211314', N'rjaaldawdy@example.org')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1353, N'فتحي مزرعاني', N'11780805486049', N'01033845517', N'najh13@example.net')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1354, N'السيدة بشرى خزاعة', N'25568061462054', N'01206907967', N'wlyfalhkm-bn-sed-aleyrp@example.org')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1355, N'الدكتور يعقوب الشرفاء', N'17423513851113', N'01142299938', N'rafswmyrp@example.net')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1356, N'الأستاذ عدوي صيام', N'22261382554970', N'01184269045', N'nafezlatymw@example.org')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1357, N'سخاء أولاد زيان', N'23099849386844', N'01284586817', N'hyanhran@example.net')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1358, N'راجح قحطان', N'23215563352765', N'01004881750', N'erbyalnjar@example.org')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1359, N'السيد نوّاف متني', N'10671332096600', N'01123729722', N'rjaybnw-alnjar@example.com')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1360, N'غيداء البامية', N'28642379109560', N'01161465487', N'munjd89@example.org')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1361, N'الدكتورة تمام مزرعاني', N'17105237678488', N'01196821499', N'enslqman@example.net')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1362, N'ياسمين بحمدوني', N'16332512655156', N'01262196533', N'kbyrbyrqdar@example.net')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1363, N'وريد العجمان', N'16586224038925', N'01102540045', N'sraj-aldyn46@example.net')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1364, N'الآنسة غيداء قضاعة', N'22425768538236', N'01159128058', N'karm04@example.org')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1365, N'السيد قحطان عبد القيس', N'18550933627509', N'01253390340', N'msbah00@example.net')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1366, N'السيد مرشد تميم', N'23912892710643', N'01076278802', N'jwahr81@example.net')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1367, N'نوال تغلب بن وائل', N'17348180323689', N'01287801107', N'nbrassrndh@example.com')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1368, N'الدكتورة وصاف رصاص', N'11054130798244', N'01001840251', N'alsahlyhsyn@example.net')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1369, N'سعيد ميرفاب', N'10727198386361', N'01156261337', N'rmhyalqaey@example.net')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1370, N'جهاد قضاعة', N'28391099075069', N'01239303311', N'xaepbyrwty@example.org')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1371, N'نغم بنو شعبة', N'24897940366856', N'01097482111', N'enzprytaj@example.org')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1372, N'الأستاذ صائب بنو ياس', N'21997689762017', N'01227955256', N'nwrs23@example.net')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1373, N'الأستاذة دارين عاملة', N'16985115808635', N'01037032229', N'etab37@example.org')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1374, N'الأستاذ صدر الدّين جذام', N'19895495001091', N'01224645921', N'yerb67@example.org')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1375, N'الأستاذة لورا كمال', N'12060154459326', N'01284335812', N'bwranalzmamyry@example.org')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1376, N'المهندس زاهي النمر', N'21608844968005', N'01085979383', N'ralftyany@example.net')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1377, N'الأستاذة لتين الأشراف', N'20748799009508', N'01036586164', N'nqbylp-hyl-albqwm@example.org')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1378, N'السيدة سلاف المملوك', N'23192403754922', N'01249577064', N'dalzd@example.net')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1379, N'جوان متني', N'16628907029908', N'01052523048', N'wsaf29@example.net')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1380, N'الأستاذ عبد المجيد بنو صخر', N'11907626201204', N'01175514614', N'rytaljwdp@example.org')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1381, N'ديمه خزاعة', N'19512465257440', N'01240769529', N'mmn92@example.org')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1382, N'الدكتور مدحت البامية', N'16719251418590', N'01234089639', N'myswr86@example.com')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1383, N'ضياء الدّين جزار', N'20753166306819', N'01112263729', N'jwanamtyr@example.org')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1384, N'نوح لخم', N'17165804659844', N'01061586579', N'eamr25@example.org')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1385, N'دارين عبد القيس', N'18640173958487', N'01008884615', N'mwfqxzaep@example.com')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1386, N'بهاء غنيم', N'23704058195726', N'01109631374', N'caltrjman-alsalh@example.net')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1387, N'السيد مرشد اميوني', N'29761046639797', N'01038106910', N'yzyd43@example.org')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1388, N'يونس الجاعوني', N'27193549809004', N'01042757110', N'aldwasrmrym@example.com')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1389, N'رافع الغوانمة', N'11124186467655', N'01149552771', N'danypalsyfy@example.org')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1390, N'أروى قيس عيلان', N'15085946634925', N'01060546294', N'meefrzdq@example.net')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1391, N'لوليا سليم', N'23547742725184', N'01143787161', N'munadlenz-bn-wal@example.org')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1392, N'ناصر الدّين النجار', N'15207018556422', N'01219381727', N'hmhwazn@example.net')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1393, N'السيدة جود بنو الأحمر', N'21463121218233', N'01209761711', N'edlwqy@example.net')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1394, N'الآنسة أزهار طيء', N'10000122217840', N'01227366184', N'xnmar@example.org')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1395, N'الأستاذ خيري شويفاتي', N'15707524586259', N'01121710760', N'albxaryqbs@example.org')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1396, N'المهندس رضوان بنو العريج', N'18923042453913', N'01077838029', N'bw-mdynqsy@example.org')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1397, N'المهندسة دانية الكلغاصي', N'15773029894253', N'01101178451', N'hm92@example.com')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1398, N'المهندس صبيح خزاعة', N'22362836123490', N'01021752249', N'rhndyp@example.net')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1399, N'ليان الفتياني', N'23609172412378', N'01281039433', N'gwyalhda@example.net')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1400, N'السيدة هايدي بتروني', N'23764394943545', N'01199584942', N'qyad@example.com')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1401, N'الدكتورة أسرار البيطار', N'12736706679723', N'01092038316', N'rwbynalelmy@example.net')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1402, N'السيد يافع الحلاق', N'12459980150996', N'01212868931', N'yeqwb20@example.net')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1403, N'واصف سليم', N'16991938435808', N'01251661697', N'chjazy@example.com')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1404, N'الآنسة ليان بني هاجر', N'29252187084988', N'01068782959', N'alkbabyezyz@example.com')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1405, N'خضر خثعم', N'11028820924087', N'01014989626', N'galxtyb-bny-jmaep-alknany@example.com')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1406, N'الأستاذة جوين مطير', N'17826078421092', N'01281761437', N'blmazlatymw@example.net')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1407, N'ربى بكر بن عبد مناة', N'15188150055091', N'01071627509', N'hmr@example.org')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1408, N'لبيد بنو سعد بن بكر', N'29948499518605', N'01099033904', N'mxls77@example.org')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1409, N'جود حمير', N'11718902076852', N'01095726250', N'jhynpmunjd@example.com')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1410, N'لورين غوشة', N'17412877344705', N'01141744938', N'falhlwany@example.com')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1411, N'السيد عمر البغدادي', N'12909945787393', N'01018954139', N'dbyrwty@example.net')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1412, N'يسرى بنو حنيفة', N'20938188663391', N'01146524374', N'abthalhjazy@example.com')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1413, N'المهندس صادق جذام', N'12301211341983', N'01038493572', N'zafralmgrby@example.org')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1414, N'مراد باهلة', N'29027422191029', N'01062102892', N'alhlwanymmwn@example.net')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1415, N'ميسور نجم', N'14823666102767', N'01091557296', N'ndymalzmamyry@example.net')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1416, N'عبّود بني رشيد', N'26373604483425', N'01060824865', N'hbnw-emrw@example.com')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1417, N'الآنسة يسرى زهران', N'21561700164305', N'01213368360', N'myla13@example.org')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1418, N'الآنسة دانة القواسم', N'12896903517121', N'01118654097', N'alhlwanydryd@example.org')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1419, N'لوجين بحمدوني', N'22665113747172', N'01190182659', N'salh17@example.org')
GO
INSERT [dbo].[TBL_CandidatesInfo] ([CandID], [CandFullName], [CandNationalID], [CandMobileNumber], [CandEmail]) VALUES (1420, N'السيدة آيات عويضة', N'18464504872312', N'01014810722', N'reamlp@example.com')
GO
SET IDENTITY_INSERT [dbo].[TBL_CandidatesInfo] OFF
GO
SET IDENTITY_INSERT [dbo].[TBL_FiscalYear] ON 
GO
INSERT [dbo].[TBL_FiscalYear] ([FiscalYearID], [FiscalYear]) VALUES (2, N'2021-2020')
GO
INSERT [dbo].[TBL_FiscalYear] ([FiscalYearID], [FiscalYear]) VALUES (5, N'2022-2021')
GO
INSERT [dbo].[TBL_FiscalYear] ([FiscalYearID], [FiscalYear]) VALUES (2009, N'2023-2022')
GO
SET IDENTITY_INSERT [dbo].[TBL_FiscalYear] OFF
GO
SET IDENTITY_INSERT [dbo].[TBL_Ministries] ON 
GO
INSERT [dbo].[TBL_Ministries] ([MinistryID], [MinistryName], [MinistryQuote]) VALUES (1, N'رئاسة الجمهورية', 0)
GO
INSERT [dbo].[TBL_Ministries] ([MinistryID], [MinistryName], [MinistryQuote]) VALUES (2, N'رئاسة مجلس الوزراء', 1200)
GO
INSERT [dbo].[TBL_Ministries] ([MinistryID], [MinistryName], [MinistryQuote]) VALUES (3, N'وزارة الاتصالات وتكنولوجيا المعلومات', 1805)
GO
INSERT [dbo].[TBL_Ministries] ([MinistryID], [MinistryName], [MinistryQuote]) VALUES (4, N'وزارة السياحة والآثار', 1250)
GO
INSERT [dbo].[TBL_Ministries] ([MinistryID], [MinistryName], [MinistryQuote]) VALUES (5, N'وزارة التعاون الدولى', 295)
GO
INSERT [dbo].[TBL_Ministries] ([MinistryID], [MinistryName], [MinistryQuote]) VALUES (6, N'وزارة الإسكان والمرافق والمجتمعات العمرانية الجديدة', 1950)
GO
INSERT [dbo].[TBL_Ministries] ([MinistryID], [MinistryName], [MinistryQuote]) VALUES (7, N'وزارة الأوقاف', 609)
GO
INSERT [dbo].[TBL_Ministries] ([MinistryID], [MinistryName], [MinistryQuote]) VALUES (8, N'وزارة البترول والثروة المعدنية', 566)
GO
INSERT [dbo].[TBL_Ministries] ([MinistryID], [MinistryName], [MinistryQuote]) VALUES (9, N'وزارة البيئة', 650)
GO
INSERT [dbo].[TBL_Ministries] ([MinistryID], [MinistryName], [MinistryQuote]) VALUES (10, N'وزارة التجارة والصناعة', 1445)
GO
INSERT [dbo].[TBL_Ministries] ([MinistryID], [MinistryName], [MinistryQuote]) VALUES (11, N'وزارة  التخطيط والتنمية الاقتصادية', 800)
GO
INSERT [dbo].[TBL_Ministries] ([MinistryID], [MinistryName], [MinistryQuote]) VALUES (12, N'وزارة التربية والتعليم والتعليم الفنى', 1790)
GO
INSERT [dbo].[TBL_Ministries] ([MinistryID], [MinistryName], [MinistryQuote]) VALUES (13, N'وزارة التضامن الاجتماعي', 500)
GO
INSERT [dbo].[TBL_Ministries] ([MinistryID], [MinistryName], [MinistryQuote]) VALUES (14, N'وزارة  التعليم العالي والبحث العلمى', 980)
GO
INSERT [dbo].[TBL_Ministries] ([MinistryID], [MinistryName], [MinistryQuote]) VALUES (15, N'وزارة التموين والتجارة الداخلية', 600)
GO
INSERT [dbo].[TBL_Ministries] ([MinistryID], [MinistryName], [MinistryQuote]) VALUES (16, N'وزارة التنمية المحلية', 600)
GO
INSERT [dbo].[TBL_Ministries] ([MinistryID], [MinistryName], [MinistryQuote]) VALUES (17, N'وزارة الثقافة', 1243)
GO
INSERT [dbo].[TBL_Ministries] ([MinistryID], [MinistryName], [MinistryQuote]) VALUES (18, N'وزارة الخارجية', 1150)
GO
INSERT [dbo].[TBL_Ministries] ([MinistryID], [MinistryName], [MinistryQuote]) VALUES (19, N'وزارة الداخلية', 0)
GO
INSERT [dbo].[TBL_Ministries] ([MinistryID], [MinistryName], [MinistryQuote]) VALUES (20, N'وزارة الدفاع والانتاج الحربي', 0)
GO
INSERT [dbo].[TBL_Ministries] ([MinistryID], [MinistryName], [MinistryQuote]) VALUES (21, N'وزارة الدولة للإنتاج الحربي', 675)
GO
INSERT [dbo].[TBL_Ministries] ([MinistryID], [MinistryName], [MinistryQuote]) VALUES (22, N'وزارة الدولة للهجرة وشئون المصريين بالخارج', 100)
GO
INSERT [dbo].[TBL_Ministries] ([MinistryID], [MinistryName], [MinistryQuote]) VALUES (23, N'وزارة الزراعة واستصلاح الاراضى', 800)
GO
INSERT [dbo].[TBL_Ministries] ([MinistryID], [MinistryName], [MinistryQuote]) VALUES (25, N'وزارة الشباب والرياضة', 1050)
GO
INSERT [dbo].[TBL_Ministries] ([MinistryID], [MinistryName], [MinistryQuote]) VALUES (26, N'وزارة الصحة والسكان', 938)
GO
INSERT [dbo].[TBL_Ministries] ([MinistryID], [MinistryName], [MinistryQuote]) VALUES (27, N'وزارة الطيران المدنى', 600)
GO
INSERT [dbo].[TBL_Ministries] ([MinistryID], [MinistryName], [MinistryQuote]) VALUES (28, N'وزارة العدل', 2050)
GO
INSERT [dbo].[TBL_Ministries] ([MinistryID], [MinistryName], [MinistryQuote]) VALUES (29, N'وزارة القوى العاملة', 475)
GO
INSERT [dbo].[TBL_Ministries] ([MinistryID], [MinistryName], [MinistryQuote]) VALUES (30, N'وزارة الكهرباء والطاقة المتجددة', 2090)
GO
INSERT [dbo].[TBL_Ministries] ([MinistryID], [MinistryName], [MinistryQuote]) VALUES (31, N'وزارة المالية', 2300)
GO
INSERT [dbo].[TBL_Ministries] ([MinistryID], [MinistryName], [MinistryQuote]) VALUES (32, N'وزارة الموارد المائية والري', 1560)
GO
INSERT [dbo].[TBL_Ministries] ([MinistryID], [MinistryName], [MinistryQuote]) VALUES (33, N'وزارة النقل', 1125)
GO
INSERT [dbo].[TBL_Ministries] ([MinistryID], [MinistryName], [MinistryQuote]) VALUES (34, N'وزارة شئون المجالس النيابية', 80)
GO
INSERT [dbo].[TBL_Ministries] ([MinistryID], [MinistryName], [MinistryQuote]) VALUES (35, N'وزارة قطاع الاعمال العام', 130)
GO
INSERT [dbo].[TBL_Ministries] ([MinistryID], [MinistryName], [MinistryQuote]) VALUES (37, N'وزارة الدولة للاعلام', 130)
GO
INSERT [dbo].[TBL_Ministries] ([MinistryID], [MinistryName], [MinistryQuote]) VALUES (38, N'الجهاز المركزي للتنظيم والادارة', 825)
GO
INSERT [dbo].[TBL_Ministries] ([MinistryID], [MinistryName], [MinistryQuote]) VALUES (39, N'الهيئة العامة لتنمية المنطقة الاقتصادية لقناة السويس', 445)
GO
INSERT [dbo].[TBL_Ministries] ([MinistryID], [MinistryName], [MinistryQuote]) VALUES (40, N'الهيئة الوطنية للاعلام', 0)
GO
INSERT [dbo].[TBL_Ministries] ([MinistryID], [MinistryName], [MinistryQuote]) VALUES (41, N'الهيئة الوطنية للصحافة', 0)
GO
INSERT [dbo].[TBL_Ministries] ([MinistryID], [MinistryName], [MinistryQuote]) VALUES (42, N'الهيئة العامة للاستعلامات', 50)
GO
INSERT [dbo].[TBL_Ministries] ([MinistryID], [MinistryName], [MinistryQuote]) VALUES (43, N'المجلس القومي للمرأة', 0)
GO
INSERT [dbo].[TBL_Ministries] ([MinistryID], [MinistryName], [MinistryQuote]) VALUES (44, N'الجهاز المركزي للتعبئة العامة والاحصاء', 0)
GO
INSERT [dbo].[TBL_Ministries] ([MinistryID], [MinistryName], [MinistryQuote]) VALUES (45, N'المجلس الاعلى لتنظيم الاعلام', 130)
GO
INSERT [dbo].[TBL_Ministries] ([MinistryID], [MinistryName], [MinistryQuote]) VALUES (47, N'الهيئة المصرية للشراء الموحد والإمداد والتموين الطبي وإدارة التكنولوجيا الطبية', 0)
GO
INSERT [dbo].[TBL_Ministries] ([MinistryID], [MinistryName], [MinistryQuote]) VALUES (48, N'صندوق تكريم شهداء وضحاياومفقودى ومصابى العمليات الحربية والارهابية والأمنية', 0)
GO
INSERT [dbo].[TBL_Ministries] ([MinistryID], [MinistryName], [MinistryQuote]) VALUES (57, N'الازهر الشريف', 0)
GO
INSERT [dbo].[TBL_Ministries] ([MinistryID], [MinistryName], [MinistryQuote]) VALUES (58, N'الجهاز المركزى للمحاسبات', 0)
GO
INSERT [dbo].[TBL_Ministries] ([MinistryID], [MinistryName], [MinistryQuote]) VALUES (59, N'المجلس القومى للطفولة والامومة', 0)
GO
INSERT [dbo].[TBL_Ministries] ([MinistryID], [MinistryName], [MinistryQuote]) VALUES (60, N'المجلس القومي لرعاية أسر الشهداء والمصابين', 0)
GO
INSERT [dbo].[TBL_Ministries] ([MinistryID], [MinistryName], [MinistryQuote]) VALUES (61, N'المحكمة الإدارية العليا', 0)
GO
INSERT [dbo].[TBL_Ministries] ([MinistryID], [MinistryName], [MinistryQuote]) VALUES (62, N'المحكمة الدستوريه العليا', 0)
GO
INSERT [dbo].[TBL_Ministries] ([MinistryID], [MinistryName], [MinistryQuote]) VALUES (63, N'النيابة العامة', 0)
GO
INSERT [dbo].[TBL_Ministries] ([MinistryID], [MinistryName], [MinistryQuote]) VALUES (64, N'الهيئة العربية للتصنيع', 0)
GO
INSERT [dbo].[TBL_Ministries] ([MinistryID], [MinistryName], [MinistryQuote]) VALUES (65, N'الهيئة القومية لسلامة الغذاء', 0)
GO
INSERT [dbo].[TBL_Ministries] ([MinistryID], [MinistryName], [MinistryQuote]) VALUES (66, N'مجلس الدولة', 0)
GO
INSERT [dbo].[TBL_Ministries] ([MinistryID], [MinistryName], [MinistryQuote]) VALUES (67, N'مركز المعلومات والتوثيق', 0)
GO
INSERT [dbo].[TBL_Ministries] ([MinistryID], [MinistryName], [MinistryQuote]) VALUES (68, N'هيئة الدواء المصرية', 0)
GO
INSERT [dbo].[TBL_Ministries] ([MinistryID], [MinistryName], [MinistryQuote]) VALUES (69, N'مجمع اللغة العربية', 0)
GO
INSERT [dbo].[TBL_Ministries] ([MinistryID], [MinistryName], [MinistryQuote]) VALUES (70, N'هيئة الرقابة الإدارية', 0)
GO
INSERT [dbo].[TBL_Ministries] ([MinistryID], [MinistryName], [MinistryQuote]) VALUES (71, N'مجلس النواب', 0)
GO
INSERT [dbo].[TBL_Ministries] ([MinistryID], [MinistryName], [MinistryQuote]) VALUES (72, N'مجلس الشيوخ', 0)
GO
INSERT [dbo].[TBL_Ministries] ([MinistryID], [MinistryName], [MinistryQuote]) VALUES (73, N'محاكم الاستئناف', 0)
GO
INSERT [dbo].[TBL_Ministries] ([MinistryID], [MinistryName], [MinistryQuote]) VALUES (75, N'النيابة الإدارية', 0)
GO
INSERT [dbo].[TBL_Ministries] ([MinistryID], [MinistryName], [MinistryQuote]) VALUES (76, N'المجلس الأعلى للقضاء', 0)
GO
INSERT [dbo].[TBL_Ministries] ([MinistryID], [MinistryName], [MinistryQuote]) VALUES (77, N'المجلس الأعلى للقوات المسلحة', 0)
GO
INSERT [dbo].[TBL_Ministries] ([MinistryID], [MinistryName], [MinistryQuote]) VALUES (78, N'مجلس الدفاع الوطني', 0)
GO
INSERT [dbo].[TBL_Ministries] ([MinistryID], [MinistryName], [MinistryQuote]) VALUES (79, N'المخابرات العامة', 0)
GO
INSERT [dbo].[TBL_Ministries] ([MinistryID], [MinistryName], [MinistryQuote]) VALUES (80, N'هيئة الاستخبارات العسكرية', 0)
GO
INSERT [dbo].[TBL_Ministries] ([MinistryID], [MinistryName], [MinistryQuote]) VALUES (81, N'القضاء العسكري', 0)
GO
INSERT [dbo].[TBL_Ministries] ([MinistryID], [MinistryName], [MinistryQuote]) VALUES (82, N'مجلس الأمن القومي', 0)
GO
INSERT [dbo].[TBL_Ministries] ([MinistryID], [MinistryName], [MinistryQuote]) VALUES (83, N'المجلس الأعلى للشرطة', 0)
GO
INSERT [dbo].[TBL_Ministries] ([MinistryID], [MinistryName], [MinistryQuote]) VALUES (84, N'مديريات الأمن، ومراكز وأقسام الشرطة', 0)
GO
INSERT [dbo].[TBL_Ministries] ([MinistryID], [MinistryName], [MinistryQuote]) VALUES (85, N'الأمن الوطني', 0)
GO
INSERT [dbo].[TBL_Ministries] ([MinistryID], [MinistryName], [MinistryQuote]) VALUES (87, N'المجلس القومي لحقوق الإنسان', 0)
GO
INSERT [dbo].[TBL_Ministries] ([MinistryID], [MinistryName], [MinistryQuote]) VALUES (88, N'المجلس القومي للأشخاص ذوي الإعاقة', 0)
GO
INSERT [dbo].[TBL_Ministries] ([MinistryID], [MinistryName], [MinistryQuote]) VALUES (89, N'الهيئة الوطنية للانتخابات', 0)
GO
INSERT [dbo].[TBL_Ministries] ([MinistryID], [MinistryName], [MinistryQuote]) VALUES (90, N'البنك المركزي', 0)
GO
INSERT [dbo].[TBL_Ministries] ([MinistryID], [MinistryName], [MinistryQuote]) VALUES (91, N'الهيئة العامة للرقابة المالية', 0)
GO
INSERT [dbo].[TBL_Ministries] ([MinistryID], [MinistryName], [MinistryQuote]) VALUES (93, N'هيئة قضايا الدولة', NULL)
GO
INSERT [dbo].[TBL_Ministries] ([MinistryID], [MinistryName], [MinistryQuote]) VALUES (94, N'محكمة النقض', NULL)
GO
INSERT [dbo].[TBL_Ministries] ([MinistryID], [MinistryName], [MinistryQuote]) VALUES (95, N'الهيئة القومية للتأمين الاجتماعى', 225)
GO
INSERT [dbo].[TBL_Ministries] ([MinistryID], [MinistryName], [MinistryQuote]) VALUES (97, N'منظومة التأمين الصحى الشامل', 0)
GO
SET IDENTITY_INSERT [dbo].[TBL_Ministries] OFF
GO
SET IDENTITY_INSERT [dbo].[TBL_SubMinistry] ON 
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (1, N'رئاسة الجمهورية', 1)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (2, N'الهيئة العامة للاستعلامات', 42)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (3, N'المجالس التخصصية التابعة لرئاسة الجمهورية', 1)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (4, N'رئاسة مجلس الوزراء (الأمانة العامة)', 2)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (5, N'صندوق تطوير التعليم', 2)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (6, N'مركز المعلومات ودعم اتخاذ القرار', 2)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (7, N'ديوان عام وزارة الاتصالات وتكنولوجيا المعلومات', 3)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (8, N'الجهاز القومى لتنظيم الاتصالات', 3)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (9, N'الشركة المصرية للاتصالات', 3)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (10, N'معهد تكنولوجيا المعلومات (ITI)', 3)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (11, N'الهيئة العامة للرقابة على الصادرات والواردات', 10)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (12, N'الهيئة القومية للبريد', 3)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (13, N'ديوان عام وزارة التعاون الدولى', 5)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (14, N'ديوان عام وزارة الإسكان والمرافق والمجتمعات العمرانية الجديدة', 6)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (15, N'الجهاز المركزى لمياه الشرب والصرف الصحى', 6)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (16, N'الهيئة العامة للتخطيط العمراني', 6)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (17, N'الجهاز المركزي للتعمير', 6)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (18, N'جهاز وصندوق البحوث والدراسات', 6)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (19, N'ديوان عام وزارة الأوقاف', 7)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (20, N'هيئة الأوقاف المصرية', 7)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (21, N'المجلس الاعلى للشئون الاسلامية', 7)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (22, N'ديوان عام وزارة البترول والثروة المعدنية', 8)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (23, N'ديوان عام وزارة البيئة', 9)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (24, N'جهاز شئون البيئة', 9)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (25, N'ديوان عام وزارة التجارة والصناعة', 10)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (26, N'الهيئة العامة للتنمية الصادرات المصرية', 10)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (27, N'ديوان عام وزارة  التخطيط والتنمية الاقتصادية', 11)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (28, N'ديوان عام وزارة التربية والتعليم والتعليم الفنى', 12)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (29, N'ديوان عام وزارة التضامن الاجتماعى', 13)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (30, N'الهيئة القومية للتأمين الاجتماعى (الصندوق الحكومى-الصندوق الخاص)', 13)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (31, N'ديوان عام وزارة التعليم العالي والبحث العلمى', 14)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (32, N'المجلس الاعلى للجامعات', 14)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (33, N'ديوان عام وزارة التموين والتجارة الداخلية', 15)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (34, N'جهاز تنمية التجارة الداخلية', 15)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (35, N'ديوان عام وزارة التنمية المحلية', 16)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (36, N'ديوان عام وزارة الثقافة', 17)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (37, N'المركز القومي للترجمة', 17)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (38, N'الهيئة المصرية العامة للكتاب', 17)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (39, N'ديوان عام وزارة الخارجية', 18)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (40, N'ديوان وزارة الداخلية', 19)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (41, N'الأمانة العامة لوزارة الدفاع', 20)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (42, N'ديوان وزارة الدولة للإنتاج الحربي', 21)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (43, N'الهيئة القومية للإنتاج الحربى', 21)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (44, N'ديوان عام وزارة الدولة للهجرة وشئون المصريين بالخارج', 22)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (45, N'ديوان عام وزارة الزراعة واستصلاح الأراضي', 23)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (46, N'مركز البحوث الزراعية', 23)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (47, N'ديوان عام وزارة السياحة و الاثار', 4)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (48, N'هيئة المصرية العامة لتنشيط السياحة', 4)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (49, N'ديوان عام وزارة الشباب والرياضة', 25)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (50, N'ديوان عام وزارة الصحة والسكان', 26)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (51, N'الهيئة العامة للتامين الصحى', 26)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (52, N'الهيئة العامة للمستشفيات والمعاهد التعليمية', 26)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (53, N'هيئة الاسعاف المصرية', 26)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (54, N'المؤسسة العلاجية بالقاهرة', 26)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (55, N'المجلس القومى للسكان', 26)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (56, N'ديوان عام وزارة الطيران المدنى', 27)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (57, N'ديوان عام وزارة العدل', 28)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (58, N'ديوان عام وزارة القوى العاملة', 29)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (59, N'ديوان عام وزارة الكهرباء والطاقة المتجددة', 30)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (60, N'الشركة القابضة لكهرباء مصر', 30)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (61, N'ديوان عام وزارة المالية', 31)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (62, N'مصلحة الضرائب المصرية', 31)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (63, N'مصلحة الضرائب العقارية', 31)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (64, N'مصلحة الجمارك المصرية', 31)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (65, N'ديوان عام وزارة الموارد المائية والرى', 32)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (66, N'الهيئة المصرية الوطنية لحماية الشواطئ', 32)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (67, N'مصلحة الميكانيكا والكهرباء', 32)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (68, N'ديوان عام وزارة النقل', 33)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (69, N'الهيئة العامة للموانى البرية والجافة', 33)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (70, N'الهيئة القومية للانفاق', 33)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (71, N'الهيئة العامة لتخطيط مشروعات النقل', 33)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (72, N'المعهد القومى للنقل', 33)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (73, N'جهاز تنظيم النقل بالقاهرة الكبرى', 33)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (74, N'جهاز تنظيم خدمات النقل البري الداخلي والدولي', 33)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (75, N'ديوان عام وزارة شئون المجالس النيابية', 34)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (76, N'ديوان عام وزارة قطاع الاعمال العام', 35)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (77, N'المركز الوطنى لتخطيط استخدام اراضى الدولة', 2)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (78, N'الجهاز الوطنى لتنمية شبه جزيرة سيناء', 2)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (79, N'هيئة تنمية صناعة تكنولوجيا المعلومات', 3)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (80, N'المعهد القومى للاتصالات (NTI)', 3)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (81, N'المتحف القومى للحضارة المصرية', 4)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (82, N'المتحف المصرى الكبير', 4)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (83, N'صندوق إنقاذ أثار النوبة', 4)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (84, N'صندوق تطوير المناطق العشوائية', 6)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (85, N'صندوق تمويل الاسكان الاجتماعى ودعم التمويل العقارى', 6)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (86, N'صندوق تمويل المساكن', 6)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (87, N'جهاز تنظيم مرفق الغاز', 8)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (88, N'جهاز تنمية انشطة البحث والاستكشاف', 8)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (89, N'جهاز تنمية سوق المنتجات البترولية', 8)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (90, N'جهاز تنظيم وادارة المخلفات', 9)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (91, N'صندوق تنمية الصادرات', 10)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (92, N'اكاديمية البحث العلمى والتكنولوجيا', 14)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (93, N'مجلس المراكزوالمعاهد والهيئات البحثية', 14)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (94, N'صندوق العلوم والتنمية التكنولوجيا', 14)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (95, N'هيئة تمويل العلوم والتكنولوجيا والابتكار', 14)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (96, N'مكتب تنسيق القبول بالجامعات والمعاهد', 14)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (97, N'الهيئة العامة للسلع التموينية', 15)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (98, N'جهاز حماية المستهلك', 15)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (99, N'الهيئة العامة لقصور الثقافة', 17)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (100, N'الشركة القابضة للاستثمار فى المجالات الثقافية والسينيمائية', 17)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (101, N'الجهاز القومى للتنسيق الحضارى', 17)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (102, N'قطاع شئون الإنتاج الثقافي', 17)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (103, N'قطاع صندوق التنمية الثقافية', 17)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (104, N'الهيئة الزراعية المصرية', 23)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (105, N'الهيئة العامة لمشروعات التعمير والتنمية الزراعية', 23)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (106, N'الهيئة العامة لخدمات البيطرية', 23)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (107, N'مركز بحوث الصحراء', 23)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (108, N'صندوق التمويل الأهلى لرعاية النشئ والشباب', 25)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (109, N'سلطة الطيران المدني المصري', 27)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (110, N'الهيئة العامة للارصاد الجوية المصرية', 27)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (111, N'صندوق اعانات الطوارئ', 29)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (112, N'صندوق تمويل التدريب و التأهيل', 29)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (113, N'صندوق الخدمات الاجتماعية والصحية والثقافية', 29)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (114, N'الشركة المصرية لنقل الكهرباء', 30)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (115, N'قطاع مياه النيل', 32)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (116, N'مصلحة الري', 32)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (117, N'هيئة الصرف', 32)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (118, N'ديوان عام وزارة الدولة للاعلام', 37)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (119, N'الهيئة العامة للاعتماد والرقابة الصحية', 1)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (120, N'مركز تنمية الموارد البشرية', 44)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (121, N'الجهاز المركزي للتنظيم و الادارة', 38)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (122, N'الهيئة العامة لتنمية المنطقة الاقتصادية لقناة السويس', 39)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (123, N'الهيئة الوطنية للاعلام', 40)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (124, N'الهيئة الوطنية للصحافة', 41)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (125, N'المجلس القومي للمرأة', 43)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (126, N'المجلس الأعلى لتنظيم الإعلام', 45)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (127, N'الهيئة العامة للمطابع الاميرية', 10)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (128, N'الهيئة المصرية للشراء الموحد والإمداد والتموين الطبي وإدارة التكنولوجيا الطبية', 47)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (129, N'صندوق تكريم شهداء وضحايا ومفقودى ومصابى العمليات الحربية والارهابية والأمنية', 48)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (130, N'مصلحة دمغ المصوغات والموازين', 15)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (131, N'المجلس القومي للشباب', 25)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (132, N'المجلس القومي للرياضة', 25)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (133, N'البيت الفني للفنون الشعبية', 17)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (134, N'المركز القومى للسينما', 17)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (135, N'المجلس الأعلى للآثار', 4)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (136, N'شركة الاتحاد العربى للنقل والسياحة (سوبر جيت)', 33)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (137, N'الهيئة العامة لصندوق أبنية المحاكم و الشهر العقارى', 28)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (138, N'مصلحة الشهر العقارى والتوثيق', 28)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (139, N'الخبراء والطب الشرعى', 28)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (140, N'الشركة القابضة لمشروعات الطرق والكبارى والنقل البرى', 33)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (141, N'الجهاز المركزي للتعبئة العامة والاحصاء', 44)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (142, N'الهيئة المصرية العامة للبترول', 8)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (143, N'جهاز تنظيم مرفق الكهرباء وحماية المستهلك', 30)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (144, N'البيت الفني للمسرح', 17)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (145, N'هيئة قضايا الدولة', 93)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (146, N'جهاز حماية المنافسة ومنع الممارسات الاحتكارية', 10)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (147, N'الازهر الشريف', 57)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (148, N'الجهاز المركزى للمحاسبات', 58)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (149, N'المجلس القومى للطفولة والامومة', 59)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (150, N'المجلس القومي لرعاية أسر الشهداء والمصابين', 60)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (151, N'المحكمة الإدارية العليا', 61)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (152, N'المحكمة الدستوريه العليا', 62)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (153, N'النيابة العامة', 63)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (154, N'الهيئة العربية للتصنيع', 64)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (155, N'الهيئة القومية لسلامة الغذاء', 65)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (156, N'مجلس الدولة', 66)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (157, N'مركز المعلومات والتوثيق', 67)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (158, N'هيئة الدواء المصرية', 68)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (159, N'الهيئة العامة لتعاونيات البناء والإسكان', 6)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (160, N'المركز القومي لبحوث الإسكان و البناء (HBRC)', 6)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (161, N'جهاز تعمير الساحل الشمالى الغربى', 6)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (162, N'مصلحة الكفاية الانتاجية والتدريب المهنى', 10)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (163, N'الهيئة العامة للابنية التعليمية', 12)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (164, N'المجلس الاعلى للثقافة', 17)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (165, N'المركز القومى للمسرح', 17)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (166, N'محكمة النقض', 94)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (167, N'مجمع اللغة العربية', 69)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (168, N'الهيئة القومية لمياه الشرب والصرف الصحي', 6)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (169, N'جهاز تنظيم مياه الشرب والصرف الصحى وحمايه المستهلك', 6)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (170, N'هيئة المجتمعات العمرانية الجديدة - تسكين جديد', 6)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (171, N'هيئة الرقابة الإدارية', 70)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (172, N'المجلس التخصصي لتنمية المجتمع', 1)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (173, N'المجلس التخصصي للتعليم والبحث العلمي', 1)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (174, N'المجلس التخصصي للتنمية الاقتصادية', 1)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (175, N'المجلس التخصصي للسياسة الخارجية والأمن القومي', 1)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (176, N'هيئة قناة السويس', 2)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (177, N'الهيئة العامة للاستثمار والمناطق الحرة', 2)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (178, N'جهاز تنمية المشروعات المتوسطة والصغيرة ومتناهية الصغر', 2)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (179, N'الهيئة القومية لضمان جودة التعليم والإعتماد', 2)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (180, N'المجلس القومى لحقوق الإنسان', 2)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (181, N'الهيئة العامة للمنطقة الاقتصادية لشمال غرب خليج السويس', 2)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (182, N'الشركة المصرية للمحميات الطبيعية', 9)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (183, N'الهيئة العامة للتنمية السياحية', 4)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (184, N'قطاع الفنادق والقرى السياحية', 4)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (185, N'قطاع الرقابة على الشركات والمرشدين السياحيين', 4)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (186, N'قطاع التخطيط والبحوث والتدريب', 4)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (187, N'مجلس الشيوخ', 72)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (188, N'مجلس النواب', 71)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (189, N'صندوق دعم السياحة', 4)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (190, N'الاتحاد المصري للغرف السياحية', 4)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (191, N'مجلس الجامعات الخاصة والأهلية', 14)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (192, N'المركز القومى للبحوث', 14)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (193, N'المعهد القومي لعلوم البحار والمصايد', 14)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (194, N'معهد تيودور بلهارس للأبحاث', 14)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (195, N'معهد بحوث أمراض العيون', 14)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (196, N'معهد بحوث البترول', 14)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (197, N'معهد بحوث الإلكترونيات', 14)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (198, N'مركز بحوث وتطوير الفلزات', 14)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (199, N'مدينة الأبحاث العلمية والتطبيقات التكنولوجية', 14)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (200, N'الهيئة القومية للاستشعار عن بعد وعلوم الفضاء', 14)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (201, N'المعهد القومى للقياس والمعايرة', 14)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (202, N'المعهد القومى للبحوث الفلكية والجيوفيزيقية', 14)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (203, N'المجلس الأعلى لشؤون التعليم والطلاب', 14)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (204, N'المجلس الأعلى لشؤون الدراسات العليا والبحوث', 14)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (205, N'المجلس الأعلى لشؤون خدمة المجتمع وتنمية البيئة', 14)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (206, N'المجلس الأعلى للمستشفيات الجامعية', 14)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (207, N'المجلس الاعلي لشئون المعاهد العليا الخاصة', 14)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (208, N'المجلس الأعلى للكليات التكنولوجية', 14)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (209, N'المجلس الأعلى للتعليم التكنولوجي', 14)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (210, N'مجلس شئون فروع الجامعات الأجنبية', 14)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (211, N'المعهد الفني للصناعات المتطورة', 21)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (212, N'مركز نظم المعلومات والحواسب', 21)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (213, N'مركز التميز العلمي والتكنولوجي', 21)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (214, N'المركز الطبي بحلوان', 21)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (215, N'الأكاديمية المصرية للهندسة والتكنولوجيا المتقدمة', 21)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (216, N'المدرسة الفنية للتعليم المزدوج', 21)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (217, N'نادي الإنتاج الحربي', 21)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (218, N'المركز القومي لتوثيق التراث الحضاري والطبيعي', 3)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (219, N'مركز الإبداع التكنولوجي وريادة الأعمال', 3)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (220, N'الشركة المصرية للقرى الذكية', 3)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (221, N'اتحاد البرمجيات المصرية', 3)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (222, N'صندوق تنمية التكنولوجيا', 3)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (223, N'واحات السيلكون', 3)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (224, N'الهيئة القومية لسكك حديد مصر', 33)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (225, N'الهيئة العامة للطرق والكبارى والنقل البري', 33)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (226, N'هيئة النقل العام بالقاهرة', 33)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (227, N'الهيئة العامة لنقل الركاب بالإسكندرية', 33)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (228, N'الهيئة العامة للنقل النهري', 33)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (229, N'هيئة وادي النيل للملاحة النهرية', 33)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (230, N'صندوق دعم وتطوير وتحديث هيئات السلامة والموانئ البحرية والبرية', 33)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (231, N'الهيئة العامة لموانئ بورسعيد', 33)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (232, N'الهيئة العامة لموانئ البحر الأحمر', 33)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (233, N'هيئة ميناء الإسكندرية', 33)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (234, N'هيئة ميناء دمياط', 33)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (235, N'الهيئة المصرية لسلامة الملاحة البحرية', 33)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (236, N'شركة الاتحاد العربي للنقل البحري ( تحت التصفية)', 33)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (237, N'شركة الجسر العربي للملاحة', 33)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (238, N'شركة القاهرة للعبارات والنقل البحري', 33)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (239, N'الهيئة العامة لمحو الأمية وتعليم الكبار', 12)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (240, N'المركز القومي للامتحانات والتقويم التربوي', 12)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (241, N'المركز القومي للبحوث التربوية والتنمية', 12)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (242, N'المركز القومي للتعليم الإلكتروني', 12)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (243, N'المركز القومي لتطوير المناهج والمواد التعليمية', 12)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (244, N'الاتحاد العام لطلاب مدارس مصر', 12)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (245, N'المراكز الاستكشافية التعليمية', 12)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (246, N'الأكاديمية المهنية للمعلمين', 12)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (247, N'وحدة التعليم والتعلم الذكي', 12)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (248, N'صندوق دعم وتطوير المشروعات التعليمية', 12)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (249, N'الإدارة العامة للامتحانات', 12)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (250, N'الإدارة العامة للتربية البيئية والسكانية', 12)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (251, N'الإدارة العامة للتعليم والتدريب المهني', 12)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (252, N'الإدارة العامة للوسائل التعليمية', 12)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (253, N'الإدارة المركزية لرياض الأطفال والتعليم الأساسي', 12)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (254, N'الإدارة المركزية للأمن', 12)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (255, N'الإدارة المركزية للخدمات المركزية والعلاقات الثقافية الخارجية', 12)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (256, N'الإدارة العامة لخدمة المواطنين', 12)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (257, N'الإدارة العامة للتعليم الثانوي', 12)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (258, N'الإدارة العامة للعلاقات العامة والإعلام', 12)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (259, N'الإدارة العامة للمدرسة المنتجة', 12)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (260, N'الإدارة العامة للمكتبات', 12)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (261, N'الإدارة المركزية للتخطيط التربوي والمعلومات', 12)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (262, N'الإدارة المركزية للتدريب', 12)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (263, N'الكمبيوتر التعليمي', 12)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (264, N'قطاع التعليم الفني', 12)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (265, N'مركز التطوير التكنولوجي', 12)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (266, N'الكسب غير المشروع', 28)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (267, N'مصلحة الخبراء', 28)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (268, N'مصلحة الطب الشرعي', 28)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (269, N'التفتيش القضائي', 28)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (270, N'لجان التوفيق في المنازعات', 28)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (271, N'مكتب تسوية المنازعات الأسرية', 28)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (272, N'مركز المعلومات القضائي', 28)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (273, N'المركز القومي للدراسات القضائية', 28)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (274, N'الرعاية الصحية للساده القضاة', 28)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (275, N'المركز القومي للبحوث الاجتماعية والجنائية', 13)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (276, N'بنك ناصر الاجتماعي', 13)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (277, N'الاتحاد العام للجمعيات و المؤسسات الأهلية', 13)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (278, N'مركز خدمة المنظمات غير الحكومية', 13)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (279, N'المؤسسة القومية لتنمية الأسرة والمجتمع', 13)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (280, N'المؤسسة القومية لتيسير الحج والعمرة', 13)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (281, N'المؤسسة العامة للتكافل الاجتماعي', 13)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (282, N'مؤسسة الأحداث', 13)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (283, N'المجلس القومي لشئون الإعاقة', 13)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (284, N'المجلس القومي لمكافحة وعلاج الإدمان', 13)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (285, N'المركز القومي لرعاية المكفوفين', 13)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (286, N'المركز القومي للرعاية المتكاملة لذوى الاحتياجات الخاصة', 13)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (287, N'مؤسسة التثقيف الفكري', 13)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (288, N'مراكز العلاج الطبيعي', 13)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (289, N'صندوق مكافحة وعلاج الإدمان والتعاطي', 13)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (290, N'الشركة القابضة لمصر للطيران', 27)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (291, N'الشركة المصرية القابضة للمطارات والملاحة الجوية', 27)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (292, N'الأكاديمية المصرية للطيران (المعهد القومي للتدريب على أعمال الطيران المدني سابقاً)', 27)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (293, N'الشركة القابضة المالية للطيران المدني', 27)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (294, N'معهد التخطيط القومي', 11)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (295, N'المركز الإعلامي لوزارة التخطيط', 11)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (296, N'المجلس القومي للأجور', 11)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (297, N'أكاديمية السادات للعلوم الإدارية', 11)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (298, N'بنك الاستثمار القومي', 11)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (299, N'المعهد القومي للإدارة', 11)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (300, N'مركز الابتكار الحكومي', 11)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (301, N'المركز الديموجرافي بالقاهرة', 11)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (302, N'صندوق مصر السيادي', 11)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (303, N'الهيئة المصرية العامة للسد العالي وخزان أسوان', 32)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (304, N'المركز القومي لبحوث المياه', 32)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (305, N'الهيئة العامة للمساحة', 32)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (306, N'الاتحاد التعاوني الاستهلاكي', 15)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (307, N'القابضة للصناعات الغذائية', 15)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (308, N'المصرية القابضة للصوامع والتخزين', 15)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (309, N'اللجنة العامة للمساعدات الأجنبية', 15)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (310, N'مركز تقييم المشروعات وتحليل الاقتصاد الكلي', 5)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (311, N'الهيئة العامة للاعتماد والرقابة الصحية', 26)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (312, N'الشركة المصرية القابضة للمستحضرات الحيوية واللقاحات', 26)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (313, N'المجلس القومي للصحة النفسية', 26)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (314, N'المعهد القومي للتغذية', 26)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (315, N'مركز البحوث الميدانية والتطبيقية', 26)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (316, N'الأمانة العامة للمراكز الطبية المتخصصة', 26)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (317, N'الأمانة العامة للمجالس الطبية المتخصصة', 26)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (318, N'الإدارة المركزية للمعامل', 26)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (319, N'الإدارة المركزية لشؤون الصيدلة', 26)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (320, N'الهيئة المصرية للتدريب الإلزامي للأطباء', 26)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (321, N'المعهد القومي لتدريب الأطباء', 26)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (322, N'الشركة القابضة للتشييد والتعمير', 35)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (323, N'الشركة القابضة للسياحة والفنادق والسينما', 35)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (324, N'الشركة القابضة للغزل والنسيج', 35)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (325, N'الشركة القابضة للصناعات الكيماوية', 35)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (326, N'الشركة القابضة للصناعات المعدنية', 35)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (327, N'شركة مصر القابضة للتأمين', 35)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (328, N'الشركة القابضة للأدوية والكيماويات والمستلزمات الطبية', 35)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (329, N'مركز معلومات قطاع الأعمال العام', 35)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (330, N'مركز إعداد القادة لإدارة الأعمال', 35)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (331, N'مؤسسة القرض الحسن', 7)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (332, N'مؤسسة الزكاة', 7)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (333, N'المشيخة العامة للطرق الصوفية', 7)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (334, N'مشيخة عموم المقارئ المصرية', 7)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (335, N'المكتبة المركزية للمخطوطات الإسلامية', 7)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (336, N'أكاديمية الأوقاف الدولية', 7)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (337, N'صندوق عمارة المساجد والأضرحة الملحقة بها', 7)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (338, N'الاتحاد العام لنقابات عمال مصر', 29)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (339, N'المؤسسة الثقافية العمالية', 29)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (340, N'المؤسسة الاجتماعية العمالية', 29)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (341, N'مكاتب العمل بالداخل', 29)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (342, N'المركز القومي لدراسات السلامة والصحة المهنية وتأمين بيئة العمل', 29)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (343, N'المجلس الأعلى لتنمية القوى البشرية والتدريب', 29)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (344, N'المجلس الأعلى للحوار المجتمعي في مجال العمل', 29)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (345, N'مكاتب التمثيل العمالي بالخارج', 29)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (346, N'الجهاز التنفيذي للإشراف على مشروعات المحطات النووية', 30)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (347, N'هيئة المواد النووية', 30)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (348, N'هيئة الطاقة الذرية', 30)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (349, N'هيئة الطاقة الجديدة والمتجددة', 30)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (350, N'هيئة المحطات النووية لتوليد الكهرباء', 30)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (351, N'مركز معلومات وزارة الكهرباء والطاقة المتجددة', 30)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (352, N'الهيئة المصرية العامة للمواصفات والجودة', 10)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (353, N'الهيئة المصرية العامة للمعارض والمؤتمرات', 10)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (354, N'الهيئة العامة للتنمية الصناعية', 10)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (355, N'الهيئة العامة للتحكيم واختبارات القطن', 10)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (356, N'الهيئة العامة لتنفيذ المشروعات الصناعية والتعدينية', 10)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (357, N'جهاز نقطة الاتصال لشئون حماية حقوق الملكية الفكرية', 10)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (358, N'جهاز التمثيل التجاري', 10)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (359, N'جهاز مكافحة الدعم والإغراق والوقاية', 10)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (360, N'جهاز تنمية المشروعات الصغيرة والمتوسطة و متناهية الصغر', 10)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (361, N'مصلحة الكيمياء', 10)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (362, N'مصلحة الرقابة الصناعية', 10)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (363, N'صندوق دعم صناعة الغزل والمنسوجات', 10)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (364, N'مركز تدريب التجارة الخارجية', 10)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (365, N'مركز التكنولوجيا المتميز', 10)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (366, N'مركز الأميرية التجريبي', 10)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (367, N'مركز تحديث الصناعة', 10)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (368, N'معهد التبين للدراسات المعدنية', 10)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (369, N'معهد تدريب الكوادر', 10)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (370, N'وحدة تنمية الموارد البشرية', 10)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (371, N'وحدة المناطق الصناعية المؤهلة', 10)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (372, N'الشركة المصرية لضمان الصادرات', 10)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (373, N'البنك المصري لتنمية الصادرات', 10)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (374, N'المجلس الوطني للاعتماد', 10)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (375, N'الاتحاد العام للغرف التجارية المصرية', 10)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (376, N'اتحاد الصناعات المصرية', 10)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (377, N'الأمانة العامة للمجالس التصديرية', 10)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (378, N'الهيئة المصرية العامة للثروة المعدنية', 8)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (379, N'قطاع التفتيش والرقابة', 19)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (380, N'قطاع الخدمات الطبية', 19)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (381, N'قطاع أمن المنافذ', 19)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (382, N'قطاع مصلحة السجون', 19)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (383, N'قطاع الأمن الوطني', 19)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (384, N'قطاع الأمن المركزي', 19)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (385, N'قطاع مصلحة الأحوال المدنية', 19)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (386, N'قطاع شئون الضباط', 19)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (387, N'قطاع الحراسات الخاصة', 19)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (388, N'قطاع الشرطة المتخصصة', 19)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (389, N'قطاع الأمن العام', 19)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (390, N'قطاع الأمن الاقتصادي', 19)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (391, N'قطاع الأمن الاجتماعي', 19)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (392, N'مصلحة الخزانة العامة', 31)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (393, N'مصلحة سك العملة', 31)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (394, N'الهيئة العامة للخدمات الحكومية', 31)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (395, N'جهاز تصفية الحراسات', 31)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (396, N'وحدة تكافؤ الفرص', 31)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (397, N'الوحدة المركزية للمشاركة مع القطاع الخاص', 31)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (398, N'صندوق تمويل شراء بعض مركبات النقل السريع', 31)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (399, N'صندوق التأمين الحكومي لضمانات أرباب العهد', 31)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (400, N'الهيئة العامة للمركز الثقافي القومي (دار الأوبرا المصرية)', 17)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (401, N'اتحاد كتاب مصر', 17)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (402, N'أكاديمية الفنون المصرية', 17)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (403, N'قطاع الفنون التشكيلية', 17)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (404, N'جهاز الرقابة علي المصنفات الفنية', 17)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (405, N'الوكالة المصرية للشراكة من أجل التنمية', 18)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (406, N'معهد الدراسات الدبلوماسية', 18)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (407, N'مركز المعلومات الدبلوماسية', 18)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (408, N'مركز القاهرة لتسوية النزاعات وحفظ السلام في أفريقيا', 18)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (409, N'النادي الدبلوماسي المصري', 18)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (410, N'اللجنة الوطنية التنسيقية لمنع ومكافحة الهجرة غير الشرعية والاتجار بالبشر', 18)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (411, N'الهيئة العامة لصندوق تمويل مباني وزارة الخارجية', 18)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (412, N'الهيئة العامة للإصلاح الزراعي', 23)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (413, N'الهيئة العامة لتنمية الثروة السمكية', 23)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (414, N'الهيئة العامة لتنمية بحيرة السد العالي', 23)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (415, N'الاتحاد العام لمنتجي ومصدري الحاصلات البستانية', 23)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (416, N'الاتحاد التعاوني للثروة المائية', 23)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (417, N'الاتحاد التعاوني الزراعي', 23)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (418, N'صندوق موازنة أسعار الحاصلات الزراعية', 23)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (419, N'صندوق تحسين الأقطان المصرية', 23)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (420, N'صندوق تنمية الثروة الحيوانية', 23)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (421, N'صندوق الأراضي الزراعية', 23)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (422, N'صندوق التأمين على الماشية', 23)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (423, N'صندوق التكافل الزراعي', 23)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (424, N'الجهاز التنفيذي لمشروعات تحسين الأراضي', 23)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (425, N'مجلس المحاصيل السكرية', 23)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (426, N'البنك الرئيسي للتنمية والائتمان الزراعي', 23)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (427, N'هيئة التسليح', 20)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (428, N'هيئة العمليات', 20)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (429, N'هيئة التدريب', 20)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (430, N'هيئة التفتيش', 20)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (431, N'هيئة البحوث العسكرية', 20)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (432, N'هيئة القضاء العسكري', 20)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (433, N'هيئة التنظيم والإدارة', 20)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (434, N'هيئة الشئون المالية', 20)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (435, N'الهيئة الهندسية', 20)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (436, N'هيئة الإمداد والتموين', 20)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (437, N'مركز معلومات وزارة الإسكان', 6)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (438, N'الشركة القابضة لمياه الشرب والصرف الصحي', 6)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (439, N'شركة المقاولون العرب', 6)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (440, N'الجهاز التنفيذي لمياه الشرب والصرف الصحى', 6)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (441, N'جهاز التفتيش الفني على أعمال البناء', 6)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (442, N'الجهاز التنفيذي للمشروعات المشتركة', 6)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (443, N'محاكم الاستئناف', 73)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (444, N'النيابة الإدارية', 75)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (445, N'المجلس الأعلى للقضاء', 76)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (446, N'المجلس الأعلى للقوات المسلحة', 77)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (447, N'مجلس الدفاع الوطني', 78)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (448, N'المخابرات العامة', 79)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (449, N'هيئة الاستخبارات العسكرية', 80)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (450, N'القضاء العسكري', 81)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (451, N'مجلس الأمن القومي', 82)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (452, N'المجلس الأعلى للشرطة', 83)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (453, N'مديريات الأمن، ومراكز وأقسام الشرطة', 84)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (454, N'الأمن الوطني', 85)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (455, N'المجلس القومي لحقوق الإنسان', 87)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (456, N'المجلس القومي للأشخاص ذوي الإعاقة', 88)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (457, N'الهيئة الوطنية للانتخابات', 89)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (458, N'البنك المركزي', 90)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (459, N'الهيئة العامة للرقابة المالية', 91)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (460, N'صندوق تمويل الاسكان', 6)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (461, N'قطاع العلاقات الثقافية الخارجية', 17)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (462, N'الهيئة المصرية العامة للتنشيط السياحى', 4)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (463, N'سلطة التصديق الالكتروني - تسكين جديد', 31)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (464, N'صندوق التنمية الحضارية', 2)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (465, N'الهيئة القومية للتأمين الاجتماعى', 95)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (466, N'الهيئة العامة للتامين الصحى الشامل (وزارة المالية)', 97)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (467, N'الهيئة العامة للاعتماد والرقابة الصحية (رئاسة الجمهورية)', 97)
GO
INSERT [dbo].[TBL_SubMinistry] ([SubMinistryID], [SubMinistryName], [MinistryID]) VALUES (468, N'الهيئة العامة للرعاية الصحية (وزارة الصحة)', 97)
GO
SET IDENTITY_INSERT [dbo].[TBL_SubMinistry] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [RoleNameIndex]    Script Date: 8/11/2022 1:48:53 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_UserId]    Script Date: 8/11/2022 1:48:53 PM ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_UserId]    Script Date: 8/11/2022 1:48:53 PM ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_RoleId]    Script Date: 8/11/2022 1:48:53 PM ******/
CREATE NONCLUSTERED INDEX [IX_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_UserId]    Script Date: 8/11/2022 1:48:53 PM ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserRoles]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UserNameIndex]    Script Date: 8/11/2022 1:48:53 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[UserName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [NatUnique_TBL_CandidatesInfo]    Script Date: 8/11/2022 1:48:53 PM ******/
ALTER TABLE [dbo].[TBL_CandidatesInfo] ADD  CONSTRAINT [NatUnique_TBL_CandidatesInfo] UNIQUE NONCLUSTERED 
(
	[CandNationalID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
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
ALTER TABLE [dbo].[LU_EmploymentDegree]  WITH CHECK ADD  CONSTRAINT [FK_LU_EmploymentDegree_LU_EmploymentLevel] FOREIGN KEY([EmploymentLevelID])
REFERENCES [dbo].[LU_EmploymentLevel] ([EmploymentLevelID])
GO
ALTER TABLE [dbo].[LU_EmploymentDegree] CHECK CONSTRAINT [FK_LU_EmploymentDegree_LU_EmploymentLevel]
GO
ALTER TABLE [dbo].[LU_TrainingCourse]  WITH CHECK ADD  CONSTRAINT [FK_LU_TrainingCourse_LU_TrainingProgram1] FOREIGN KEY([TrainingProgramID])
REFERENCES [dbo].[LU_TrainingProgram] ([TrainingProgramID])
GO
ALTER TABLE [dbo].[LU_TrainingCourse] CHECK CONSTRAINT [FK_LU_TrainingCourse_LU_TrainingProgram1]
GO
ALTER TABLE [dbo].[TBL_Candidates_Courses]  WITH CHECK ADD  CONSTRAINT [FK_TBL_Candidates_LU_CourseProvider] FOREIGN KEY([CandCourseProvider])
REFERENCES [dbo].[LU_CourseProvider] ([CourseProvideID])
GO
ALTER TABLE [dbo].[TBL_Candidates_Courses] CHECK CONSTRAINT [FK_TBL_Candidates_LU_CourseProvider]
GO
ALTER TABLE [dbo].[TBL_Candidates_Courses]  WITH CHECK ADD  CONSTRAINT [FK_TBL_Candidates_LU_EmploymentDegree] FOREIGN KEY([CandEmploymentDegree])
REFERENCES [dbo].[LU_EmploymentDegree] ([EmploymentDegreeID])
GO
ALTER TABLE [dbo].[TBL_Candidates_Courses] CHECK CONSTRAINT [FK_TBL_Candidates_LU_EmploymentDegree]
GO
ALTER TABLE [dbo].[TBL_Candidates_Courses]  WITH CHECK ADD  CONSTRAINT [FK_TBL_Candidates_LU_StudyMechanism] FOREIGN KEY([CandCourseStudyMechanism])
REFERENCES [dbo].[LU_StudyMechanism] ([StudyMechanismID])
GO
ALTER TABLE [dbo].[TBL_Candidates_Courses] CHECK CONSTRAINT [FK_TBL_Candidates_LU_StudyMechanism]
GO
ALTER TABLE [dbo].[TBL_Candidates_Courses]  WITH CHECK ADD  CONSTRAINT [FK_TBL_Candidates_LU_TrainingCourse] FOREIGN KEY([CandTrainingCourse])
REFERENCES [dbo].[LU_TrainingCourse] ([TrainingCourseID])
GO
ALTER TABLE [dbo].[TBL_Candidates_Courses] CHECK CONSTRAINT [FK_TBL_Candidates_LU_TrainingCourse]
GO
ALTER TABLE [dbo].[TBL_Candidates_Courses]  WITH CHECK ADD  CONSTRAINT [FK_TBL_Candidates_Ministries_TBL_CandidatesInfo] FOREIGN KEY([CandInfoID])
REFERENCES [dbo].[TBL_CandidatesInfo] ([CandID])
GO
ALTER TABLE [dbo].[TBL_Candidates_Courses] CHECK CONSTRAINT [FK_TBL_Candidates_Ministries_TBL_CandidatesInfo]
GO
ALTER TABLE [dbo].[TBL_Candidates_Courses]  WITH CHECK ADD  CONSTRAINT [FK_TBL_Candidates_Ministries_TBL_SubMinistry] FOREIGN KEY([CandSubMinistryID])
REFERENCES [dbo].[TBL_SubMinistry] ([SubMinistryID])
GO
ALTER TABLE [dbo].[TBL_Candidates_Courses] CHECK CONSTRAINT [FK_TBL_Candidates_Ministries_TBL_SubMinistry]
GO
ALTER TABLE [dbo].[TBL_Candidates_Courses]  WITH CHECK ADD  CONSTRAINT [FK_TBL_Candidates_TBL_FiscalYear] FOREIGN KEY([CandFiscalYearID])
REFERENCES [dbo].[TBL_FiscalYear] ([FiscalYearID])
GO
ALTER TABLE [dbo].[TBL_Candidates_Courses] CHECK CONSTRAINT [FK_TBL_Candidates_TBL_FiscalYear]
GO
ALTER TABLE [dbo].[TBL_SubMinistry]  WITH CHECK ADD  CONSTRAINT [FK_TBL_SubMinistry_TBL_Ministries] FOREIGN KEY([MinistryID])
REFERENCES [dbo].[TBL_Ministries] ([MinistryID])
GO
ALTER TABLE [dbo].[TBL_SubMinistry] CHECK CONSTRAINT [FK_TBL_SubMinistry_TBL_Ministries]
GO
USE [master]
GO
ALTER DATABASE [MCITTrainingDB] SET  READ_WRITE 
GO
