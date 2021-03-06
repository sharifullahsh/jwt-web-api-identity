USE [master]
GO
/****** Object:  Database [BSAF]    Script Date: 4/8/2020 9:26:57 AM ******/
CREATE DATABASE [BSAF]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'BSAF', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\BSAF.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'BSAF_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\BSAF_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [BSAF] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [BSAF].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [BSAF] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [BSAF] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [BSAF] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [BSAF] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [BSAF] SET ARITHABORT OFF 
GO
ALTER DATABASE [BSAF] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [BSAF] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [BSAF] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [BSAF] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [BSAF] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [BSAF] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [BSAF] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [BSAF] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [BSAF] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [BSAF] SET  ENABLE_BROKER 
GO
ALTER DATABASE [BSAF] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [BSAF] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [BSAF] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [BSAF] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [BSAF] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [BSAF] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [BSAF] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [BSAF] SET RECOVERY FULL 
GO
ALTER DATABASE [BSAF] SET  MULTI_USER 
GO
ALTER DATABASE [BSAF] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [BSAF] SET DB_CHAINING OFF 
GO
ALTER DATABASE [BSAF] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [BSAF] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [BSAF] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'BSAF', N'ON'
GO
ALTER DATABASE [BSAF] SET QUERY_STORE = OFF
GO
USE [BSAF]
GO
/****** Object:  User [KBL-IMU-KAMALPO\WDAGUtilityAccount]    Script Date: 4/8/2020 9:26:58 AM ******/
CREATE USER [KBL-IMU-KAMALPO\WDAGUtilityAccount] FOR LOGIN [KBL-IMU-KAMALPO\WDAGUtilityAccount] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 4/8/2020 9:26:58 AM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 4/8/2020 9:26:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [int] NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 4/8/2020 9:26:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](256) NULL,
	[NormalizedName] [nvarchar](256) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 4/8/2020 9:26:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 4/8/2020 9:26:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](450) NOT NULL,
	[ProviderKey] [nvarchar](450) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [int] NOT NULL,
 CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 4/8/2020 9:26:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [int] NOT NULL,
	[RoleId] [int] NOT NULL,
	[UserId1] [int] NULL,
	[RoleId1] [int] NULL,
 CONSTRAINT [PK_AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 4/8/2020 9:26:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [nvarchar](256) NULL,
	[NormalizedUserName] [nvarchar](256) NULL,
	[Email] [nvarchar](256) NULL,
	[NormalizedEmail] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEnd] [datetimeoffset](7) NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[LastActive] [datetime2](7) NOT NULL,
	[StationCode] [nvarchar](max) NULL,
	[IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 4/8/2020 9:26:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserTokens](
	[UserId] [int] NOT NULL,
	[LoginProvider] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](450) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Beneficiaries]    Script Date: 4/8/2020 9:26:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Beneficiaries](
	[BeneficiaryID] [int] IDENTITY(1,1) NOT NULL,
	[GUID] [uniqueidentifier] NOT NULL,
	[ScreeningDate] [datetime2](7) NOT NULL,
	[ProvinceBCP] [nvarchar](max) NULL,
	[BorderPoint] [nvarchar](max) NULL,
	[BeneficiaryType] [nvarchar](max) NULL,
	[ReturnStatus] [nvarchar](max) NULL,
	[OriginProvince] [nvarchar](max) NULL,
	[OriginDistrict] [int] NULL,
	[OriginVillage] [nvarchar](max) NULL,
	[ReturnProvince] [nvarchar](max) NULL,
	[ReturnDistrict] [int] NULL,
	[ReturnVillage] [nvarchar](max) NULL,
	[LeavingReason1] [nvarchar](max) NULL,
	[LeavingReason1Other] [nvarchar](max) NULL,
	[LeavingReason2] [nvarchar](max) NULL,
	[LeavingReason2Other] [nvarchar](max) NULL,
	[LeavingReason3] [nvarchar](max) NULL,
	[LeavingReason3Other] [nvarchar](max) NULL,
	[OwnHouse] [bit] NULL,
	[WhereWillLive] [nvarchar](max) NULL,
	[RentPayForAccom] [int] NULL,
	[RentPayCurrency] [nvarchar](max) NULL,
	[AllowForJob] [bit] NULL,
	[CountryOfExile] [nvarchar](max) NULL,
	[CountryOfExilOther] [nvarchar](max) NULL,
	[BeforReturnProvince] [int] NULL,
	[BeforReturnDistrictID] [int] NULL,
	[BeforReturnRemarks] [nvarchar](max) NULL,
	[FamilyMemStayedBehind] [bit] NULL,
	[FamilyMemStayedBehindNo] [int] NULL,
	[LengthOfStayYears] [int] NULL,
	[LengthOfStayMonths] [int] NULL,
	[LengthOfStayDays] [int] NULL,
	[WouldYouReturn] [bit] NULL,
	[HaveFamilyBenefited] [bit] NULL,
	[TransportationDate] [datetime2](7) NOT NULL,
	[TransportationInfo] [nvarchar](max) NULL,
	[TransportAccompaniedBy] [nvarchar](max) NULL,
	[TransportAccomByNo] [nvarchar](max) NULL,
	[TopNeed1] [nvarchar](max) NULL,
	[TopNeed1Other] [nvarchar](max) NULL,
	[TopNeed2] [nvarchar](max) NULL,
	[TopNeed2Other] [nvarchar](max) NULL,
	[TopNeed3] [nvarchar](max) NULL,
	[TopNeed3Other] [nvarchar](max) NULL,
	[IntendToDo] [nvarchar](max) NULL,
	[IntendToReturnToHostReason] [nvarchar](max) NULL,
	[ProfessionInHostCountry] [nvarchar](max) NULL,
	[ProfessionInHostCountryOther] [nvarchar](max) NULL,
	[HoHCanReadWrite] [bit] NULL,
	[HoHEducationLevel] [nvarchar](max) NULL,
	[HoHEducationLevelOther] [nvarchar](max) NULL,
	[NumHHHaveTaskira] [int] NULL,
	[NumHHHavePassport] [int] NULL,
	[NumHHHaveDocOther] [int] NULL,
	[DoHaveSecureLivelihood] [bit] NULL,
	[DidChildrenGoToSchoole] [bit] NULL,
	[NumChildrenAttendedSchoole] [int] NULL,
	[InsertedBy] [nvarchar](max) NULL,
	[InsertedDate] [datetime2](7) NOT NULL,
	[LastUpdatedBy] [nvarchar](max) NULL,
	[LastUpdatedDate] [datetime2](7) NULL,
	[IsSubmitted] [bit] NOT NULL,
	[IsCardIssued] [bit] NOT NULL,
	[IsActive] [bit] NOT NULL,
	[Photo] [varbinary](max) NULL,
 CONSTRAINT [PK_Beneficiaries] PRIMARY KEY CLUSTERED 
(
	[BeneficiaryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BenefitedFromOrgs]    Script Date: 4/8/2020 9:26:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BenefitedFromOrgs](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[BeneficiaryID] [int] NOT NULL,
	[Date] [datetime2](7) NOT NULL,
	[ProvinceCode] [nvarchar](max) NULL,
	[DistrictID] [int] NULL,
	[Village] [nvarchar](max) NULL,
	[OrgCode] [nvarchar](max) NOT NULL,
	[AssistanceProvided] [nvarchar](max) NULL,
 CONSTRAINT [PK_BenefitedFromOrgs] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BorderCrossingPoints]    Script Date: 4/8/2020 9:26:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BorderCrossingPoints](
	[BCPId] [int] IDENTITY(1,1) NOT NULL,
	[BCPCode] [nvarchar](max) NULL,
	[VillageId] [int] NOT NULL,
	[DistrictCode] [nvarchar](max) NULL,
	[ProvinceCode] [nvarchar](max) NULL,
	[NeighCountryCode] [nvarchar](max) NULL,
	[EnName] [nvarchar](max) NULL,
	[DrName] [nvarchar](max) NULL,
	[PaName] [nvarchar](max) NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_BorderCrossingPoints] PRIMARY KEY CLUSTERED 
(
	[BCPId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BroughtItems]    Script Date: 4/8/2020 9:26:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BroughtItems](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[BeneficiaryID] [int] NULL,
	[ItemCode] [nvarchar](max) NULL,
	[ItemOther] [nvarchar](max) NULL,
 CONSTRAINT [PK_BroughtItems] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Determinations]    Script Date: 4/8/2020 9:26:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Determinations](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[BeneficiaryID] [int] NULL,
	[DeterminationCode] [nvarchar](max) NULL,
	[AnswerCode] [nvarchar](max) NULL,
	[Other] [nvarchar](max) NULL,
 CONSTRAINT [PK_Determinations] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Districts]    Script Date: 4/8/2020 9:26:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Districts](
	[DistrictId] [int] IDENTITY(1,1) NOT NULL,
	[DistrictCode] [int] NOT NULL,
	[ProvinceCode] [nvarchar](max) NULL,
	[EnName] [nvarchar](max) NULL,
	[DrName] [nvarchar](max) NULL,
	[PaName] [nvarchar](max) NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_Districts] PRIMARY KEY CLUSTERED 
(
	[DistrictId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HostCountryDistricts]    Script Date: 4/8/2020 9:27:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HostCountryDistricts](
	[DistrictId] [int] IDENTITY(1,1) NOT NULL,
	[ProvinceId] [int] NOT NULL,
	[EnName] [nvarchar](max) NULL,
	[DrName] [nvarchar](max) NULL,
	[PaName] [nvarchar](max) NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_HostCountryDistricts] PRIMARY KEY CLUSTERED 
(
	[DistrictId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HostCountryProvinces]    Script Date: 4/8/2020 9:27:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HostCountryProvinces](
	[ProvinceId] [int] IDENTITY(1,1) NOT NULL,
	[CountryCode] [nvarchar](max) NULL,
	[EnName] [nvarchar](max) NULL,
	[DrName] [nvarchar](max) NULL,
	[PaName] [nvarchar](max) NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_HostCountryProvinces] PRIMARY KEY CLUSTERED 
(
	[ProvinceId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HostCountrySchool]    Script Date: 4/8/2020 9:27:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HostCountrySchool](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[BeneficiaryID] [int] NOT NULL,
	[SchoolTypeCode] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_HostCountrySchool] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Individuals]    Script Date: 4/8/2020 9:27:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Individuals](
	[IndividualID] [int] IDENTITY(1,1) NOT NULL,
	[BeneficiaryID] [int] NULL,
	[Name] [nvarchar](max) NULL,
	[DrName] [nvarchar](max) NULL,
	[FName] [nvarchar](max) NULL,
	[DrFName] [nvarchar](max) NULL,
	[GenderCode] [nvarchar](max) NULL,
	[MaritalStatusCode] [nvarchar](max) NULL,
	[Age] [int] NULL,
	[IDTypeCode] [nvarchar](max) NULL,
	[IDNo] [nvarchar](max) NULL,
	[RelationshipCode] [nvarchar](max) NULL,
	[ContactNumber] [nvarchar](max) NULL,
 CONSTRAINT [PK_Individuals] PRIMARY KEY CLUSTERED 
(
	[IndividualID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LivelihoodEmpNeeds]    Script Date: 4/8/2020 9:27:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LivelihoodEmpNeeds](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[NeedCode] [nvarchar](max) NOT NULL,
	[BeneficiaryID] [int] NOT NULL,
 CONSTRAINT [PK_LivelihoodEmpNeeds] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LookupTypes]    Script Date: 4/8/2020 9:27:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LookupTypes](
	[LookupId] [int] IDENTITY(1,1) NOT NULL,
	[LookupCode] [nvarchar](max) NULL,
	[EnName] [nvarchar](max) NULL,
	[DrName] [nvarchar](max) NULL,
	[PaName] [nvarchar](max) NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_LookupTypes] PRIMARY KEY CLUSTERED 
(
	[LookupId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LookupValues]    Script Date: 4/8/2020 9:27:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LookupValues](
	[ValueId] [int] IDENTITY(1,1) NOT NULL,
	[LookupCode] [nvarchar](max) NULL,
	[ValueCode] [nvarchar](max) NULL,
	[EnName] [nvarchar](max) NULL,
	[DrName] [nvarchar](max) NULL,
	[PaName] [nvarchar](max) NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_LookupValues] PRIMARY KEY CLUSTERED 
(
	[ValueId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MainConcerns]    Script Date: 4/8/2020 9:27:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MainConcerns](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[BeneficiaryID] [int] NOT NULL,
	[ConcernCode] [nvarchar](max) NOT NULL,
	[Other] [nvarchar](max) NULL,
 CONSTRAINT [PK_MainConcerns] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MoneySources]    Script Date: 4/8/2020 9:27:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MoneySources](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[BeneficiaryID] [int] NULL,
	[MoneySourceCode] [nvarchar](max) NULL,
	[MoneySourceOther] [nvarchar](max) NULL,
 CONSTRAINT [PK_MoneySources] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NeedTools]    Script Date: 4/8/2020 9:27:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NeedTools](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[BeneficiaryID] [int] NOT NULL,
	[ToolCode] [nvarchar](max) NOT NULL,
	[Other] [nvarchar](max) NULL,
 CONSTRAINT [PK_NeedTools] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PostArrivalNeeds]    Script Date: 4/8/2020 9:27:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PostArrivalNeeds](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[BeneficiaryID] [int] NULL,
	[NeedCode] [nvarchar](max) NULL,
	[Provided] [bit] NULL,
	[ProvidedDate] [datetime2](7) NOT NULL,
	[Comment] [nvarchar](max) NULL,
 CONSTRAINT [PK_PostArrivalNeeds] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Provinces]    Script Date: 4/8/2020 9:27:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Provinces](
	[ProvinceId] [int] IDENTITY(1,1) NOT NULL,
	[ProvinceCode] [nvarchar](max) NULL,
	[MapCode] [nvarchar](max) NULL,
	[EnName] [nvarchar](max) NULL,
	[DrName] [nvarchar](max) NULL,
	[PaName] [nvarchar](max) NULL,
	[IsActive] [bit] NOT NULL,
	[BeneficiaryID] [int] NULL,
 CONSTRAINT [PK_Provinces] PRIMARY KEY CLUSTERED 
(
	[ProvinceId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PSN]    Script Date: 4/8/2020 9:27:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PSN](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[BeneficiaryID] [int] NULL,
	[PSNCode] [nvarchar](max) NULL,
	[PSNOther] [nvarchar](max) NULL,
 CONSTRAINT [PK_PSN] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ReturnReasons]    Script Date: 4/8/2020 9:27:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ReturnReasons](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[BeneficiaryID] [int] NOT NULL,
	[ReasonCode] [nvarchar](max) NULL,
	[Other] [nvarchar](max) NULL,
 CONSTRAINT [PK_ReturnReasons] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Transportations]    Script Date: 4/8/2020 9:27:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Transportations](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[BeneficiaryID] [int] NULL,
	[TypedCode] [nvarchar](max) NULL,
	[Other] [nvarchar](max) NULL,
 CONSTRAINT [PK_Transportations] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200408043210_init', N'2.1.14-servicing-32113')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200408044857_addphoto', N'2.1.14-servicing-32113')
SET IDENTITY_INSERT [dbo].[AspNetRoles] ON 

INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (1, N'DataEntry', N'DATAENTRY', N'4143e0ed-d2e5-4942-9ba4-aacbba815577')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (2, N'Admin', N'ADMIN', N'46a8e0f8-6969-4da9-8de2-4208d742ca54')
SET IDENTITY_INSERT [dbo].[AspNetRoles] OFF
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId], [UserId1], [RoleId1]) VALUES (1, 1, NULL, NULL)
SET IDENTITY_INSERT [dbo].[AspNetUsers] ON 

INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [CreatedDate], [LastActive], [StationCode], [IsDeleted]) VALUES (1, N'admin', N'ADMIN', NULL, NULL, 0, N'AQAAAAEAACcQAAAAEPzgNBWont1Pvh6KsU/IpfWl2H4/TFMrTw2R4vEmNEYPPeBcIOviD+AT4wbiq/eMaA==', N'MMMY5A3WG67TOKA5JVPGO5QVOF2H2TBI', N'a46ef311-ba90-43cf-9433-a29fff4c8afc', NULL, 0, 0, NULL, 1, 0, CAST(N'2020-04-07T00:00:00.0000000' AS DateTime2), CAST(N'2020-04-07T00:00:00.0000000' AS DateTime2), NULL, 0)
SET IDENTITY_INSERT [dbo].[AspNetUsers] OFF
SET IDENTITY_INSERT [dbo].[BorderCrossingPoints] ON 

INSERT [dbo].[BorderCrossingPoints] ([BCPId], [BCPCode], [VillageId], [DistrictCode], [ProvinceCode], [NeighCountryCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (1, N'MIL', 532, N'3401', N'NMR', N'IRN', N'Milak', N'میلک', N'میلک', 1)
INSERT [dbo].[BorderCrossingPoints] ([BCPId], [BCPCode], [VillageId], [DistrictCode], [ProvinceCode], [NeighCountryCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (2, N'TRK', 28509, N'619', N'NGR', N'PAK', N'Torkham', N'تورخم', N'تورخم', 1)
INSERT [dbo].[BorderCrossingPoints] ([BCPId], [BCPCode], [VillageId], [DistrictCode], [ProvinceCode], [NeighCountryCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (3, N'ISQ', 3084, N'3014', N'HRT', N'IRN', N'Islam Qala', N'اسلام قله', N'اسلام قله', 1)
INSERT [dbo].[BorderCrossingPoints] ([BCPId], [BCPCode], [VillageId], [DistrictCode], [ProvinceCode], [NeighCountryCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (4, N'GHK', 45018, N'2606', N'KST', N'PAK', N'Ghulam Khan', N'غلام خان', N'غلام خان', 1)
INSERT [dbo].[BorderCrossingPoints] ([BCPId], [BCPCode], [VillageId], [DistrictCode], [ProvinceCode], [NeighCountryCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (5, N'SHK', 45018, N'2606', N'KST', N'PAK', N'Shinkai', N'شینکی', N'شینکی', 1)
INSERT [dbo].[BorderCrossingPoints] ([BCPId], [BCPCode], [VillageId], [DistrictCode], [ProvinceCode], [NeighCountryCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (6, N'BAB', 45019, N'2615', N'KST', N'PAK', N'Babrak Tana', N'ببرک تنه', N'ببرک تنه', 1)
INSERT [dbo].[BorderCrossingPoints] ([BCPId], [BCPCode], [VillageId], [DistrictCode], [ProvinceCode], [NeighCountryCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (7, N'CT1', 45020, N'2616', N'KST', N'PAK', N'City One', N'سیتی وان', N'سیتی وان', 1)
INSERT [dbo].[BorderCrossingPoints] ([BCPId], [BCPCode], [VillageId], [DistrictCode], [ProvinceCode], [NeighCountryCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (8, N'LEZ', 45021, N'2607', N'KST', N'PAK', N'Leza', N'لیزه', N'لیزه', 1)
INSERT [dbo].[BorderCrossingPoints] ([BCPId], [BCPCode], [VillageId], [DistrictCode], [ProvinceCode], [NeighCountryCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (9, N'MSP', 45022, N'2606', N'KST', N'PAK', N'Mirsapar', N'میر سپار', N'میر سپار', 1)
INSERT [dbo].[BorderCrossingPoints] ([BCPId], [BCPCode], [VillageId], [DistrictCode], [ProvinceCode], [NeighCountryCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (10, N'BAT', 45022, N'2606', N'KST', N'PAK', N'Batai Taba', N'بابی تبا', N'بابی تبا', 1)
INSERT [dbo].[BorderCrossingPoints] ([BCPId], [BCPCode], [VillageId], [DistrictCode], [ProvinceCode], [NeighCountryCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (11, N'DAG', 45023, N'2615', N'KST', N'PAK', N'Dabgai', N'دباگی', N'دباگی', 1)
INSERT [dbo].[BorderCrossingPoints] ([BCPId], [BCPCode], [VillageId], [DistrictCode], [ProvinceCode], [NeighCountryCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (12, N'ANG', 45024, N'2515', N'PKT', N'PAK', N'Angour Ada', N'انگور ادا', N'انگور ادا', 1)
INSERT [dbo].[BorderCrossingPoints] ([BCPId], [BCPCode], [VillageId], [DistrictCode], [ProvinceCode], [NeighCountryCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (13, N'ALW', 45025, N'2516', N'PKT', N'PAK', N'Alwara', N'الورا', N'الورا', 0)
INSERT [dbo].[BorderCrossingPoints] ([BCPId], [BCPCode], [VillageId], [DistrictCode], [ProvinceCode], [NeighCountryCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (14, N'ZUB', 45026, N'2525', N'PKT', N'PAK', N'Zub', N'زاب', N'زاب', 0)
INSERT [dbo].[BorderCrossingPoints] ([BCPId], [BCPCode], [VillageId], [DistrictCode], [ProvinceCode], [NeighCountryCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (15, N'SHL', 45026, N'2525', N'PKT', N'PAK', N'Shawal', N'شاوال', N'شاوال', 1)
INSERT [dbo].[BorderCrossingPoints] ([BCPId], [BCPCode], [VillageId], [DistrictCode], [ProvinceCode], [NeighCountryCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (16, N'SZP', 45027, N'622', N'NGR', N'PAK', N'Sasobay Zero Point', N'سسوبی', N'سسوبی', 1)
INSERT [dbo].[BorderCrossingPoints] ([BCPId], [BCPCode], [VillageId], [DistrictCode], [ProvinceCode], [NeighCountryCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (17, N'TZP', 45028, N'622', N'NGR', N'PAK', N'Tabay Zero Point', N'ته بی', N'ته بی', 1)
INSERT [dbo].[BorderCrossingPoints] ([BCPId], [BCPCode], [VillageId], [DistrictCode], [ProvinceCode], [NeighCountryCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (18, N'KBL', 44832, N'101', N'KBL', NULL, N'Airport', N'میدان هوایی', N'میدان هوایی', 1)
INSERT [dbo].[BorderCrossingPoints] ([BCPId], [BCPCode], [VillageId], [DistrictCode], [ProvinceCode], [NeighCountryCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (19, N'SPB', 8714, N'3311', N'KDH', N'PAK', N'Spin Boldak', N'سپین بولدک', N'سپین بولدک', 1)
SET IDENTITY_INSERT [dbo].[BorderCrossingPoints] OFF
SET IDENTITY_INSERT [dbo].[Districts] ON 

INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (1, 2903, N'BDG', N'Abkamari', N'آب کمری', N'آب کمری', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (2, 2906, N'BDG', N'Balamurghab', N'بالا مرغاب', N'بالا مرغاب', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (3, 2907, N'BDG', N'Ghormach', N'غورماچ', N'غورماچ', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (4, 2905, N'BDG', N'Jawand', N'جوند', N'جوند', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (5, 2902, N'BDG', N'Muqur', N'مقر', N'مقر', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (6, 2904, N'BDG', N'Qadis', N'قادیس', N'قادیس', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (7, 2901, N'BDG', N'Qala-e-Naw', N'قلعه نو', N'قلعه نو', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (8, 1504, N'BDK', N'Arghanjkhwa', N'ارغنچخواه', N'ارغنچخواه', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (9, 1503, N'BDK', N'Argo', N'ارگو', N'ارگو', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (10, 1512, N'BDK', N'Baharak', N'بهارک', N'بهارک', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (11, 1510, N'BDK', N'Darayem', N'درایم', N'درایم', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (12, 1524, N'BDK', N'Darwaz', N'درواز', N'درواز', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (13, 1515, N'BDK', N'Darwaz-e-Balla', N'درواز بالا', N'درواز بالا', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (14, 1523, N'BDK', N'Eshkmesh', N'اشکاشم', N'اشکاشم', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (15, 1501, N'BDK', N'Fayzabad', N'فیض آباد', N'فیض آباد', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (16, 1521, N'BDK', N'Jorm', N'جرم', N'جرم', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (17, 1518, N'BDK', N'Keshem', N'کشم', N'کشم', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (18, 1511, N'BDK', N'Khash', N'خاش', N'خاش', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (19, 1517, N'BDK', N'Khwahan', N'خواهان', N'خواهان', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (20, 1516, N'BDK', N'Kofab', N'کوف آب', N'کوف آب', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (21, 1505, N'BDK', N'Kohestan', N'کوهستان', N'کوهستان', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (22, 1526, N'BDK', N'Koran wa Monjan', N'کران ومنجان', N'کران ومنجان', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (23, 1506, N'BDK', N'Raghestan', N'راغستان', N'راغستان', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (24, 1508, N'BDK', N'Shahr-e-Buzorg', N'شهر بزرگ', N'شهر بزرگ', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (25, 1525, N'BDK', N'Shaki', N'شکی', N'شکی', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (26, 1514, N'BDK', N'Shighnan', N'شغنان', N'شغنان', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (27, 1513, N'BDK', N'Shuhada', N'شهدا', N'شهدا', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (28, 1519, N'BDK', N'Tagab', N'تگاب', N'تگاب', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (29, 1509, N'BDK', N'Teshkan', N'تشکان', N'تشکان', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (30, 1528, N'BDK', N'Wakhan', N'واخان', N'واخان', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (31, 1522, N'BDK', N'Warduj', N'وردوج', N'وردوج', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (32, 1502, N'BDK', N'Yaftal-e-Sufla', N'یفتل سفلی', N'یفتل سفلی', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (33, 1520, N'BDK', N'Yamgan', N'یمگان', N'یمگان', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (34, 1507, N'BDK', N'Yawan', N'یاوان', N'یاوان', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (35, 1527, N'BDK', N'Zebak', N'زیباک', N'زیباک', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (36, 908, N'BGN', N'Andarab', N'اندراب', N'اندراب', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (37, 902, N'BGN', N'Baghlan-e-Jadid', N'بغلان جدید', N'بغلان جدید', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (38, 910, N'BGN', N'Burka', N'بورکه', N'بورکه', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (39, 903, N'BGN', N'Dahana-e-Ghori', N'دهنۀ غوری', N'دهنۀ غوری', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (40, 912, N'BGN', N'Dehsalah', N'ده صلاح', N'ده صلاح', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (41, 904, N'BGN', N'Doshi', N'دوشی', N'دوشی', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (42, 915, N'BGN', N'Fereng Wa Gharu', N'فرنگ وغارو', N'فرنگ وغارو', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (43, 914, N'BGN', N'Guzargah-e- Nur', N'گذرگاه نور', N'گذرگاه نور', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (44, 907, N'BGN', N'Khenjan', N'خنجان', N'خنجان', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (45, 913, N'BGN', N'Khost Wa Fereng', N'خوست و فرنگ', N'خوست و فرنگ', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (46, 909, N'BGN', N'Khwajahejran', N'خواجه هجران', N'خواجه هجران', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (47, 905, N'BGN', N'Nahrin', N'نهرین', N'نهرین', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (48, 901, N'BGN', N'Pul-e- khumri', N'پلخمری', N'پلخمری', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (49, 911, N'BGN', N'Pul-e-Hesar', N'پل حصار', N'پل حصار', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (50, 906, N'BGN', N'Tala Wa barfak', N'تاله وبرفک', N'تاله وبرفک', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (51, 1805, N'BLK', N'Balkh', N'بلخ', N'بلخ', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (52, 1812, N'BLK', N'Charbulak', N'چار بولک', N'چار بولک', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (53, 1807, N'BLK', N'Charkent', N'چار کنت', N'چار کنت', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (54, 1813, N'BLK', N'Chemtal', N'چمتال', N'چمتال', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (55, 1804, N'BLK', N'Dawlatabad', N'دولت آباد', N'دولت آباد', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (56, 1806, N'BLK', N'Dehdadi', N'دهدادی', N'دهدادی', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (57, 1810, N'BLK', N'Kaldar', N'کلدار', N'کلدار', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (58, 1815, N'BLK', N'Keshendeh', N'کشنده', N'کشنده', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (59, 1809, N'BLK', N'Khulm', N'خلم', N'خلم', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (60, 1808, N'BLK', N'Marmul', N'مارمُل', N'مارمُل', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (61, 1801, N'BLK', N'Mazar-e-Sharif', N'مزار شریف', N'مزار شریف', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (62, 1802, N'BLK', N'Nahr-e- Shahi', N'نهر شاهی', N'نهر شاهی', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (63, 1811, N'BLK', N'Sharak-e-Hayratan', N'شهرک حیرتان', N'شهرک حیرتان', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (64, 1814, N'BLK', N'Sholgareh', N'شولگره', N'شولگره', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (65, 1803, N'BLK', N'Shortepa', N'شور تیپه', N'شور تیپه', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (66, 1816, N'BLK', N'Zari', N'زاری', N'زاری', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (67, 1001, N'BMY', N'Bamyan', N'بامیان', N'بامیان', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (68, 1006, N'BMY', N'Kahmard', N'کهمرد', N'کهمرد', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (69, 1004, N'BMY', N'Panjab', N'پنجاب', N'پنجاب', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (70, 1002, N'BMY', N'Sayghan', N'سیغان', N'سیغان', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (71, 1005, N'BMY', N'Shibar', N'شیبر', N'شیبر', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (72, 1007, N'BMY', N'Waras', N'ورث', N'ورث', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (73, 1003, N'BMY', N'Yakawlang', N'یکاولنگ', N'یکاولنگ', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (74, 2202, N'DKY', N'Ashtarlay', N'اشترلی', N'اشترلی', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (75, 2205, N'DKY', N'Gizab', N'گیزاب', N'گیزاب', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (76, 2208, N'DKY', N'Kajran', N'کجران', N'کجران', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (77, 2203, N'DKY', N'Khadir', N'خدیر', N'خدیر', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (78, 2204, N'DKY', N'kiti', N'کیتی', N'کیتی', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (79, 2209, N'DKY', N'Miramor', N'میرامور', N'میرامور', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (80, 2201, N'DKY', N'Nili', N'نیلی', N'نیلی', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (81, 2207, N'DKY', N'Sang-e-Takht', N'سنگ تخت', N'سنگ تخت', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (82, 2206, N'DKY', N'Shahrestan', N'شهرستان', N'شهرستان', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (83, 3111, N'FRH', N'Anardara', N'انار دره', N'انار دره', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (84, 3102, N'FRH', N'Bakwa', N'بکواه', N'بکواه', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (85, 3103, N'FRH', N'Balabuluk', N'بالا بلوک', N'بالا بلوک', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (86, 3101, N'FRH', N'Farah', N'فراه', N'فراه', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (87, 3109, N'FRH', N'Gulestan', N'گلستان', N'گلستان', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (88, 3104, N'FRH', N'Khak-e-Safed', N'خاک سفید', N'خاک سفید', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (89, 3108, N'FRH', N'Lash-e-Juwayn', N'لاش جوین', N'لاش جوین', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (90, 3110, N'FRH', N'Purchaman', N'پُرچمن', N'پُرچمن', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (91, 3105, N'FRH', N'Pushtrod', N'پشترود', N'پشترود', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (92, 3106, N'FRH', N'Qala-e-Kah', N'قلعه کاه', N'قلعه کاه', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (93, 3107, N'FRH', N'Shibkoh', N'َشیب کوه', N'َشیب کوه', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (94, 2805, N'FYB', N'Almar', N'المار', N'المار', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (95, 2811, N'FYB', N'Andkhoy', N'اندخوی', N'اندخوی', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (96, 2809, N'FYB', N'Bilcheragh', N'بلچراغ', N'بلچراغ', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (97, 2810, N'FYB', N'Dawlatabad', N'دولت آباد', N'دولت آباد', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (98, 2808, N'FYB', N'Garziwan', N'گرزیوان', N'گرزیوان', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (99, 2813, N'FYB', N'Khan-e-Char Bagh', N'خان چارباغ', N'خان چارباغ', 1)
GO
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (100, 2802, N'FYB', N'Khwajasabzposh', N'خواجه سبزپوش', N'خواجه سبزپوش', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (101, 2807, N'FYB', N'Kohestan', N'کوهستان', N'کوهستان', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (102, 2801, N'FYB', N'Maymana', N'میمنه', N'میمنه', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (103, 2803, N'FYB', N'Pashtunkot', N'پشتون کوټ', N'پشتون کوټ', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (104, 2812, N'FYB', N'Qaramqol', N'قرم قل', N'قرم قل', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (105, 2806, N'FYB', N'Qaysar', N'قیصار', N'قیصار', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (106, 2814, N'FYB', N'Qorghan', N'قرغان', N'قرغان', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (107, 2804, N'FYB', N'Shirintagab', N'شیرین تگاب', N'شیرین تگاب', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (108, 2101, N'GHR', N'Chaghcharan', N'چغچران', N'چغچران', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (109, 2102, N'GHR', N'Charsadra', N'چار صد ره', N'چار صد ره', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (110, 2104, N'GHR', N'Dawlatyar', N'دولت یار', N'دولت یار', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (111, 2103, N'GHR', N'DoLayna', N'دو لینه', N'دو لینه', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (112, 2108, N'GHR', N'Lal Wa Sarjangal', N'لعل و سرجنگل', N'لعل و سرجنگل', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (113, 2107, N'GHR', N'Pasaband', N'پسابند', N'پسابند', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (114, 2110, N'GHR', N'Saghar', N'ساغر', N'ساغر', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (115, 2105, N'GHR', N'Shahrak', N'شهرک', N'شهرک', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (116, 2106, N'GHR', N'Taywarah', N'تیوره', N'تیوره', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (117, 2109, N'GHR', N'Tolak', N'تولک', N'تولک', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (118, 1115, N'GZN', N'Abband', N'آب بند', N'آب بند', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (119, 1116, N'GZN', N'Ajrestan', N'اجرستان', N'اجرستان', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (120, 1105, N'GZN', N'Andar', N'اندړ', N'اندړ', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (121, 1106, N'GZN', N'Dehyak', N'ده یک', N'ده یک', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (122, 1118, N'GZN', N'Gelan', N'گیلان', N'گیلان', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (123, 1101, N'GZN', N'Ghazni', N'غزنی', N'غزنی', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (124, 1111, N'GZN', N'Giro', N'گیرو', N'گیرو', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (125, 1109, N'GZN', N'Jaghatu', N'جغتو', N'جغتو', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (126, 1113, N'GZN', N'Jaghuri', N'جاغوری', N'جاغوری', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (127, 1102, N'GZN', N'Khwajaumari', N'خواجه عمری', N'خواجه عمری', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (128, 1117, N'GZN', N'Malestan', N'مالستان', N'مالستان', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (129, 1114, N'GZN', N'Muqur', N'مقر', N'مقر', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (130, 1119, N'GZN', N'Nawa', N'ناوه', N'ناوه', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (131, 1112, N'GZN', N'Nawur', N'ناور', N'ناور', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (132, 1110, N'GZN', N'Qarabagh', N'قره باغ', N'قره باغ', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (133, 1108, N'GZN', N'Rashidan', N'رشیدان', N'رشیدان', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (134, 1104, N'GZN', N'Waghaz', N'واغظ', N'واغظ', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (135, 1103, N'GZN', N'Walimuhammad-e- Shahid', N'ولی محمد شهید', N'ولی محمد شهید', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (136, 1107, N'GZN', N'Zanakhan', N'زنه خان', N'زنه خان', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (137, 3211, N'HLD', N'Baghran', N'باغران', N'باغران', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (138, 3213, N'HLD', N'Deh-e-shu', N'دیشو', N'دیشو', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (139, 3209, N'HLD', N'Garmser', N'گرم سیر', N'گرم سیر', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (140, 3210, N'HLD', N'Kajaki', N'کجکی', N'کجکی', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (141, 3201, N'HLD', N'Lashkargah', N'لشکرگاه', N'لشکرگاه', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (142, 3206, N'HLD', N'Musaqalah', N'موسی قلعه', N'موسی قلعه', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (143, 3203, N'HLD', N'Nad-e-Ali', N'نادعلی', N'نادعلی', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (144, 3202, N'HLD', N'Nahr-e-Saraj', N'نهر سراج', N'نهر سراج', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (145, 3204, N'HLD', N'Nawa-e-Barakzaiy', N'ناوه بارکزائی', N'ناوه بارکزائی', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (146, 3207, N'HLD', N'Nawzad', N'نوزاد', N'نوزاد', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (147, 3212, N'HLD', N'Reg', N'ریگ', N'ریگ', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (148, 3205, N'HLD', N'Sangin', N'سنگین', N'سنگین', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (149, 3208, N'HLD', N'Washer', N'واشیر', N'واشیر', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (150, 3010, N'HRT', N'Adraskan', N'ادرسکن', N'ادرسکن', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (151, 3016, N'HRT', N'Chisht-e-Sharif', N'چشت شریف', N'چشت شریف', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (152, 3011, N'HRT', N'Farsi', N'فرسی', N'فرسی', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (153, 3009, N'HRT', N'Ghoryan', N'غوریان', N'غوریان', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (154, 3008, N'HRT', N'Gulran', N'گلران', N'گلران', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (155, 3005, N'HRT', N'Guzara', N'گذره', N'گذره', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (156, 3001, N'HRT', N'Herat', N'هرات', N'هرات', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (157, 3002, N'HRT', N'Injil', N'انجیل', N'انجیل', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (158, 3007, N'HRT', N'Karukh', N'کرُخ', N'کرُخ', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (159, 3014, N'HRT', N'Kohsan', N'کوهسان', N'کوهسان', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (160, 3003, N'HRT', N'Kushk', N'کُشک', N'کُشک', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (161, 3013, N'HRT', N'Kushk-e-Kohna', N'کُشک کهنه', N'کُشک کهنه', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (162, 3012, N'HRT', N'Obe', N'اوبی', N'اوبی', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (163, 3006, N'HRT', N'Pashtunzarghun', N'پشتون زرغون', N'پشتون زرغون', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (164, 3015, N'HRT', N'Shindand', N'شیندند', N'شیندند', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (165, 3004, N'HRT', N'Zindajan', N'زنده جان', N'زنده جان', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (166, 2707, N'JWZ', N'Aqcha', N'آقچه', N'آقچه', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (167, 2711, N'JWZ', N'Darzab', N'درز آب', N'درز آب', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (168, 2705, N'JWZ', N'Fayzabad', N'فیض آباد', N'فیض آباد', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (169, 2710, N'JWZ', N'Khamyab', N'خمیاب', N'خمیاب', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (170, 2706, N'JWZ', N'Khanaqa', N'خانقا', N'خانقا', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (171, 2703, N'JWZ', N'Khwajadukoh', N'خواجه دوکوه', N'خواجه دوکوه', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (172, 2708, N'JWZ', N'Mardyan', N'مردیان', N'مردیان', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (173, 2702, N'JWZ', N'Mingajik', N'منگجک', N'منگجک', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (174, 2709, N'JWZ', N'Qarqin', N'قرقین', N'قرقین', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (175, 2704, N'JWZ', N'Qushtepa', N'قوش تیپه', N'قوش تیپه', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (176, 2701, N'JWZ', N'Shiberghan', N'شبرغان', N'شبرغان', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (177, 107, N'KBL', N'Bagrami', N'بگرامی', N'بگرامی', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (178, 105, N'KBL', N'Chaharasyab', N'چهار آسیاب', N'چهار آسیاب', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (179, 102, N'KBL', N'Dehsabz', N'ده سبز', N'ده سبز', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (180, 114, N'KBL', N'Estalef', N'استالف', N'استالف', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (181, 115, N'KBL', N'Farza', N'فرزه', N'فرزه', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (182, 111, N'KBL', N'Guldara', N'گلدره', N'گلدره', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (183, 101, N'KBL', N'Kabul', N'کابل', N'کابل', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (184, 109, N'KBL', N'Kalakan', N'کلکان', N'کلکان', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (185, 112, N'KBL', N'Khak-e- Jabbar', N'خاک جبار', N'خاک جبار', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (186, 110, N'KBL', N'Mirbachakot', N'میر بچه کوت', N'میر بچه کوت', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (187, 106, N'KBL', N'Musayi', N'موسهی', N'موسهی', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (188, 104, N'KBL', N'Paghman', N'پغمان', N'پغمان', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (189, 108, N'KBL', N'Qarabagh', N'قره باغ', N'قره باغ', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (190, 103, N'KBL', N'Shakardara', N'شکردره', N'شکردره', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (191, 113, N'KBL', N'Surobi', N'سروبی', N'سروبی', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (192, 3302, N'KDH', N'Arghandab', N'ارغنداب', N'ارغنداب', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (193, 3312, N'KDH', N'Arghestan', N'ارغستان', N'ارغستان', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (194, 3305, N'KDH', N'Daman', N'دامان', N'دامان', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (195, 3315, N'KDH', N'Ghorak', N'غورک', N'غورک', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (196, 3301, N'KDH', N'Kandahar', N'کندهار', N'کندهار', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (197, 3307, N'KDH', N'Khakrez', N'خاکریز', N'خاکریز', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (198, 3316, N'KDH', N'Maruf', N'معروف', N'معروف', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (199, 3308, N'KDH', N'Maywand', N'میوند', N'میوند', 1)
GO
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (200, 3313, N'KDH', N'Miyanshin', N'میانشین', N'میانشین', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (201, 3314, N'KDH', N'Nesh', N'نیش', N'نیش', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (202, 3304, N'KDH', N'Panjwayi', N'پنجوائی', N'پنجوائی', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (203, 3309, N'KDH', N'Reg', N'ریگ', N'ریگ', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (204, 3306, N'KDH', N'Shahwalikot', N'شاه ولی کوت', N'شاه ولی کوت', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (205, 3310, N'KDH', N'Shorabak', N'شور آبک', N'شور آبک', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (206, 3311, N'KDH', N'Spinboldak', N'سپین بولدک', N'سپین بولدک', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (207, 3303, N'KDH', N'Zheray', N'ژړۍ', N'ژړۍ', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (208, 1705, N'KDZ', N'Aliabad', N'علی آباد', N'علی آباد', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (209, 1704, N'KDZ', N'Chardarah', N'چهار دره', N'چهار دره', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (210, 1707, N'KDZ', N'Dasht-e-Archi', N'دشت ارچی', N'دشت ارچی', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (211, 1702, N'KDZ', N'Emamsaheb', N'امام صاحب', N'امام صاحب', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (212, 1706, N'KDZ', N'Khanabad', N'خان آباد', N'خان آباد', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (213, 1701, N'KDZ', N'Kunduz', N'کندز', N'کندز', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (214, 1703, N'KDZ', N'Qala-e-Zal', N'قلعه ذال', N'قلعه ذال', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (215, 1301, N'KNR', N'Asadabad', N'اسد آباد', N'اسد آباد', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (216, 1311, N'KNR', N'Barkunar', N'برکنر', N'برکنر', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (217, 1313, N'KNR', N'Chapadara', N'چپه دره', N'چپه دره', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (218, 1308, N'KNR', N'Chawkay', N'چوکی', N'چوکی', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (219, 1310, N'KNR', N'Dangam', N'دانگام', N'دانگام', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (220, 1307, N'KNR', N'Dara-e-Pech', N'دره پیچ', N'دره پیچ', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (221, 1312, N'KNR', N'Ghaziabad', N'غازی آباد', N'غازی آباد', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (222, 1309, N'KNR', N'Khaskunar', N'خاص کنر', N'خاص کنر', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (223, 1305, N'KNR', N'Marawara', N'مروره', N'مروره', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (224, 1303, N'KNR', N'Narang', N'نرنگ', N'نرنگ', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (225, 1315, N'KNR', N'Nari', N'ناړی', N'ناړی', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (226, 1314, N'KNR', N'Nurgal', N'نورگل', N'نورگل', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (227, 1304, N'KNR', N'Sarkani', N'سرکانی', N'سرکانی', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (228, 1306, N'KNR', N'Shigal Wa sheltan', N'شیگل وشلتن', N'شیگل وشلتن', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (229, 1302, N'KNR', N'Watapur', N'وته پور', N'وته پور', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (230, 206, N'KPS', N'Alasay', N'اله سای', N'اله سای', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (231, 207, N'KPS', N'Hisa-e- Awal-e- Kohestan', N'حصه اول کوهستان', N'حصه اول کوهستان', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (232, 204, N'KPS', N'Hisa-e- Duwum-e- Kohestan', N'حصه دوم کوهستان', N'حصه دوم کوهستان', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (233, 203, N'KPS', N'Kohband', N'کوه بند', N'کوه بند', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (234, 201, N'KPS', N'Mahmud-e- Raqi', N'محمود راقی', N'محمود راقی', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (235, 202, N'KPS', N'Nejrab', N'نجراب', N'نجراب', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (236, 205, N'KPS', N'Tagab', N'تگاب', N'تگاب', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (237, 2612, N'KST', N'Bak', N'باک', N'باک', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (238, 2607, N'KST', N'Gurbuz', N'گربز', N'گربز', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (239, 2613, N'KST', N'Jajimaydan', N'جاجی میدان', N'جاجی میدان', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (240, 2601, N'KST', N'Khost(Matun)', N'( خوست(متون', N'( خوست(متون', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (241, 2605, N'KST', N'Mandozayi', N'مندوزائی', N'مندوزائی', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (242, 2603, N'KST', N'Musakhel', N'موسی خیل', N'موسی خیل', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (243, 2604, N'KST', N'Nadirshahkot', N'نادرشاه کوت', N'نادرشاه کوت', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (244, 2609, N'KST', N'Qalandar', N'قلندر', N'قلندر', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (245, 2602, N'KST', N'Sabari', N'صبری', N'صبری', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (246, 2610, N'KST', N'Shamal', N'شمل', N'شمل', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (247, 2611, N'KST', N'Spera', N'سپیره', N'سپیره', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (248, 2606, N'KST', N'Tani', N'تنی', N'تنی', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (249, 2608, N'KST', N'Terezayi', N'تری زائی', N'تری زائی', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (250, 704, N'LGN', N'Alingar', N'علینگار', N'علینگار', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (251, 702, N'LGN', N'Alishang', N'علیشنگ', N'علیشنگ', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (252, 705, N'LGN', N'Dawlatshah', N'دولت شاه', N'دولت شاه', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (253, 701, N'LGN', N'Mehtarlam', N'مهتر لام', N'مهتر لام', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (254, 703, N'LGN', N'Qarghayi', N'قرغه ئی', N'قرغه ئی', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (255, 507, N'LGR', N'Azra', N'ازره', N'ازره', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (256, 504, N'LGR', N'Barakibarak', N'برکی برک', N'برکی برک', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (257, 505, N'LGR', N'Charkh', N'چرخ', N'چرخ', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (258, 506, N'LGR', N'Kharwar', N'خروار', N'خروار', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (259, 502, N'LGR', N'Khoshi', N'خوشی', N'خوشی', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (260, 503, N'LGR', N'Mohammadagha', N'محمدآغه', N'محمدآغه', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (261, 501, N'LGR', N'Pul-e- Alam', N'پل علم', N'پل علم', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (262, 617, N'NGR', N'Achin', N'اچین', N'اچین', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (263, 615, N'NGR', N'Batikot', N'بتی کوټ', N'بتی کوټ', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (264, 602, N'NGR', N'Behsud', N'بهسود', N'بهسود', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (265, 605, N'NGR', N'Chaparhar', N'چپر هار', N'چپر هار', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (266, 609, N'NGR', N'Dara-e-Nur', N'دره نور', N'دره نور', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (267, 613, N'NGR', N'Dehbala', N'ده بالا', N'ده بالا', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (268, 622, N'NGR', N'Durbaba', N'دُر بابا', N'دُر بابا', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (269, 616, N'NGR', N'Goshta', N'گوشته', N'گوشته', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (270, 610, N'NGR', N'Hesarak', N'حصارک', N'حصارک', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (271, 601, N'NGR', N'Jalalabad', N'جلال آباد', N'جلال آباد', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (272, 607, N'NGR', N'Kama', N'کامه', N'کامه', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (273, 604, N'NGR', N'Khogyani', N'خوگیانی', N'خوگیانی', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (274, 614, N'NGR', N'Kot', N'کوټ', N'کوټ', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (275, 608, N'NGR', N'Kuzkunar', N'کوز کنر', N'کوز کنر', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (276, 620, N'NGR', N'Lalpur', N'لعل پور', N'لعل پور', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (277, 619, N'NGR', N'Muhmand Dara', N'مهمند دره', N'مهمند دره', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (278, 621, N'NGR', N'Nazyan', N'نازیان', N'نازیان', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (279, 612, N'NGR', N'Pachieragam', N'پچیراگام', N'پچیراگام', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (280, 606, N'NGR', N'Rodat', N'رودات', N'رودات', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (281, 611, N'NGR', N'Sherzad', N'شیرزاد', N'شیرزاد', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (282, 618, N'NGR', N'Shinwar', N'شینوار', N'شینوار', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (283, 603, N'NGR', N'Surkhrod', N'سرخ رود', N'سرخ رود', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (284, 3404, N'NMR', N'Chakhansur', N'چخانسور', N'چخانسور', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (285, 3403, N'NMR', N'Charburjak', N'چاربرجک', N'چاربرجک', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (286, 3402, N'NMR', N'Kang', N'کنگ', N'کنگ', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (287, 3405, N'NMR', N'Khashrod', N'خاش رود', N'خاش رود', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (288, 3401, N'NMR', N'Zaranj', N'زرنج', N'زرنج', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (289, 1408, N'NRT', N'Barg-e- Matal', N'برگ متال', N'برگ متال', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (290, 1403, N'NRT', N'Duab', N'دو آب', N'دو آب', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (291, 1407, N'NRT', N'Kamdesh', N'کامدیش', N'کامدیش', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (292, 1402, N'NRT', N'Mandol', N'مندول', N'مندول', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (293, 1404, N'NRT', N'Nurgeram', N'نورگرام', N'نورگرام', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (294, 1401, N'NRT', N'Poruns', N'پرونس', N'پرونس', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (295, 1405, N'NRT', N'Wama', N'واما', N'واما', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (296, 1406, N'NRT', N'Waygal', N'وایگل', N'وایگل', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (297, 2515, N'PKT', N'Bermel', N'برمل', N'برمل', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (298, 2518, N'PKT', N'Dila', N'دیله', N'دیله', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (299, 2508, N'PKT', N'Gomal', N'گومل', N'گومل', 1)
GO
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (300, 2516, N'PKT', N'Gyan', N'گیان', N'گیان', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (301, 2512, N'PKT', N'Janikhel', N'جانی خیل', N'جانی خیل', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (302, 2502, N'PKT', N'Matakhan', N'متاخان', N'متاخان', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (303, 2511, N'PKT', N'Naka', N'نیکه', N'نیکه', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (304, 2507, N'PKT', N'Omna', N'اومنه', N'اومنه', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (305, 2509, N'PKT', N'Sarobi', N'سروبی', N'سروبی', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (306, 2504, N'PKT', N'Sarrawzah(Sarhawzah)', N'سرروضه(سرحوضه                      س', N'سرروضه(سرحوضه                      س', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (307, 2501, N'PKT', N'Sharan', N'شرن', N'شرن', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (308, 2519, N'PKT', N'Turwo (Tarwe)', N'تروو', N'تروو', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (309, 2510, N'PKT', N'Urgun', N'ارگون', N'ارگون', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (310, 2513, N'PKT', N'Wazakhah', N'وازه خواه', N'وازه خواه', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (311, 2514, N'PKT', N'Wormamay', N'وړ ممی', N'وړ ممی', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (312, 2506, N'PKT', N'Yahyakhel', N'یحی خیل', N'یحی خیل', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (313, 2503, N'PKT', N'Yosufkhel', N'یوسف خیل', N'یوسف خیل', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (314, 2505, N'PKT', N'Zarghunshahr', N'زرغون شهر', N'زرغون شهر', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (315, 2517, N'PKT', N'Ziruk', N'زیړوک', N'زیړوک', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (316, 801, N'PNR', N'Bazarak', N'بازارک', N'بازارک', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (317, 804, N'PNR', N'Dara', N'دره', N'دره', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (318, 805, N'PNR', N'Khenj (Hes-e- Awal)', N'( خنج (حصه اول', N'( خنج (حصه اول', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (319, 806, N'PNR', N'Onaba(Anawa)', N'عنابه', N'عنابه', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (320, 807, N'PNR', N'Paryan', N'پریان', N'پریان', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (321, 803, N'PNR', N'Rukha', N'رُخه', N'رُخه', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (322, 802, N'PNR', N'Shutul', N'شُتل', N'شُتل', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (323, 1203, N'PTY', N'Ahmadaba', N'احمد آبا', N'احمد آبا', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (324, 1208, N'PTY', N'Alikhel (Jaji)', N'علی خیل', N'علی خیل', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (325, 1210, N'PTY', N'Chamkani', N'څمکنی', N'څمکنی', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (326, 1211, N'PTY', N'Dand wa Patan', N'دند وپټان', N'دند وپټان', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (327, 1201, N'PTY', N'Gardez', N'گردیز', N'گردیز', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (328, 1209, N'PTY', N'Janikhel', N'جانی خیل', N'جانی خیل', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (329, 1207, N'PTY', N'Lija Ahmad Khel', N'لجه احمد خیل', N'لجه احمد خیل', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (330, 1202, N'PTY', N'Sayedkaram', N'سیدکرم', N'سیدکرم', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (331, 1205, N'PTY', N'Shawak', N'شواک', N'شواک', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (332, 1206, N'PTY', N'Zadran', N'حّدران', N'حّدران', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (333, 1204, N'PTY', N'Zurmat', N'زُرمت', N'زُرمت', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (334, 304, N'PWN', N'Bagram', N'بگرام', N'بگرام', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (335, 301, N'PWN', N'Charikar', N'چاریکار', N'چاریکار', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (336, 307, N'PWN', N'Ghorband', N'غوربند', N'غوربند', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (337, 302, N'PWN', N'Jabalussaraj', N'جبل السراج', N'جبل السراج', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (338, 308, N'PWN', N'Koh-e- Safi', N'کوه صافی', N'کوه صافی', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (339, 306, N'PWN', N'Salang', N'سالنگ', N'سالنگ', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (340, 305, N'PWN', N'Saydkhel', N'سیدخیل', N'سیدخیل', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (341, 309, N'PWN', N'Shekhali', N'شیخ علی', N'شیخ علی', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (342, 303, N'PWN', N'Shinwari', N'شینواری', N'شینواری', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (343, 310, N'PWN', N'Surkh-e- Parsa', N'سرخ پارسا', N'سرخ پارسا', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (344, 1901, N'SMN', N'Aybak', N'ایبک', N'ایبک', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (345, 1904, N'SMN', N'Dara-e- Suf-e- Payin', N'درۀ صوف پائین', N'درۀ صوف پائین', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (346, 1905, N'SMN', N'Dara-e Suf-e-Bala', N'درۀ صوف بالا', N'درۀ صوف بالا', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (347, 1903, N'SMN', N'Feroznakhchir', N'فیروز نخچیر', N'فیروز نخچیر', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (348, 1902, N'SMN', N'Hazrat-e- Sultan', N'حضرت سلطان', N'حضرت سلطان', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (349, 1906, N'SMN', N'Khuram Wa Sarbagh', N'خرم وسارباغ', N'خرم وسارباغ', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (350, 1907, N'SMN', N'Ruy-e-Duab', N'روی دو آب', N'روی دو آب', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (351, 2006, N'SPL', N'Balkhab', N'بلخاب', N'بلخاب', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (352, 2005, N'SPL', N'Gosfandi', N'گوسفندی', N'گوسفندی', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (353, 2003, N'SPL', N'Kohestanat', N'کوهستانات', N'کوهستانات', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (354, 2007, N'SPL', N'Sancharak(sangchark)', N'سانچارك', N'سانچارك', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (355, 2001, N'SPL', N'Sar-e-Pul', N'سرپل', N'سرپل', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (356, 2002, N'SPL', N'Sayad', N'صیاد', N'صیاد', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (357, 2004, N'SPL', N'Sozmaqala', N'سوزمه قلعه', N'سوزمه قلعه', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (358, 1603, N'TKH', N'Baharak', N'بهارک', N'بهارک', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (359, 1604, N'TKH', N'Bangi', N'بنگی', N'بنگی', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (360, 1610, N'TKH', N'Chahab', N'چاه آب', N'چاه آب', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (361, 1605, N'TKH', N'Chal', N'چال', N'چال', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (362, 1617, N'TKH', N'Darqad', N'درقد', N'درقد', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (363, 1613, N'TKH', N'Dasht-e- Qala', N'دشت قلعه', N'دشت قلعه', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (364, 1615, N'TKH', N'Eshkashem', N'اشکمش', N'اشکمش', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (365, 1607, N'TKH', N'Farkhar', N'فرخار', N'فرخار', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (366, 1602, N'TKH', N'Hazarsumuch', N'هزار سموچ', N'هزار سموچ', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (367, 1608, N'TKH', N'Kalafgan', N'کلفگان', N'کلفگان', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (368, 1612, N'TKH', N'Khwajabahawuddin', N'خواجه بهاوالدین', N'خواجه بهاوالدین', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (369, 1614, N'TKH', N'Khwajaghar', N'خواجه غار', N'خواجه غار', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (370, 1606, N'TKH', N'Namakab', N'نمک آب', N'نمک آب', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (371, 1609, N'TKH', N'Rostaq', N'رُستاق', N'رُستاق', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (372, 1601, N'TKH', N'Taloqan', N'تالقان', N'تالقان', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (373, 1616, N'TKH', N'Warsaj', N'ورسج', N'ورسج', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (374, 1611, N'TKH', N'Yangi Qala', N'ینگی قلعه', N'ینگی قلعه', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (375, 2302, N'URZ', N'Chora', N'چوره', N'چوره', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (376, 2304, N'URZ', N'Dehrawud', N'دهراود', N'دهراود', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (377, 2305, N'URZ', N'Khasuruzgan', N'خاص ارزگان', N'خاص ارزگان', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (378, 2303, N'URZ', N'Shahid-e-Hassas', N'شهید حساس', N'شهید حساس', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (379, 2301, N'URZ', N'Tirinkot', N'تیرینکوت', N'تیرینکوت', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (380, 406, N'WDK', N'Chak', N'چک', N'چک', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (381, 405, N'WDK', N'Daymirdad', N'دایمیرداد', N'دایمیرداد', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (382, 404, N'WDK', N'Hesa-e- Awal-e- Behsud', N'حصه اول بهسود', N'حصه اول بهسود', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (383, 409, N'WDK', N'Jaghatu', N'جغتو', N'جغتو', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (384, 402, N'WDK', N'Jalrez', N'جلریز', N'جلریز', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (385, 408, N'WDK', N'Markaz-e-Behsud', N'مدکز بهسود', N'مدکز بهسود', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (386, 401, N'WDK', N'Maydanshahr', N'میدان شهر', N'میدان شهر', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (387, 403, N'WDK', N'Nerkh', N'نرخ', N'نرخ', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (388, 407, N'WDK', N'Saydabad', N'سید آباد', N'سید آباد', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (389, 2402, N'ZBL', N'Arghandab', N'ارغنداب', N'ارغنداب', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (390, 2409, N'ZBL', N'Atghar', N'اتغر', N'اتغر', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (391, 2408, N'ZBL', N'Daychopan', N'دای چوپان', N'دای چوپان', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (392, 2407, N'ZBL', N'Kakar', N'کاکړ', N'کاکړ', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (393, 2403, N'ZBL', N'Mizan', N'میزان', N'میزان', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (394, 2411, N'ZBL', N'Nawbahar', N'نوبهار', N'نوبهار', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (395, 2401, N'ZBL', N'Qalat', N'قلات', N'قلات', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (396, 2406, N'ZBL', N'Shahjoy', N'شاه جوی', N'شاه جوی', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (397, 2405, N'ZBL', N'Shinkay', N'شینکی', N'شینکی', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (398, 2410, N'ZBL', N'Shomulzay', N'شملزائی', N'شملزائی', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (399, 2404, N'ZBL', N'Tarnak Wa Jaldak', N'ترنک و جلدک', N'ترنک و جلدک', 1)
GO
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (1299, 2615, N'KST', N'Alisher', N'علی شیر', N'علی شیر', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (1300, 2616, N'KST', N'Zazi Maidan', N'زازی میدان', N'زازی میدان', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (1301, 2117, N'KST', N'Lakan', N'لکان', N'لکان', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (1302, 2525, N'PKT', N'Wazi Khwa', N'وزی خوا', N'وزی خوا', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (1303, 100000, N'BGN', N'Khost', N'خوست', N'خوست', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (1304, 10004, N'BGN', N'Fring', N'فرنگ', N'فرنگ', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (1305, 5050, N'PTY', N'Aroub Zazi', N'اریوب ځاځی', N'اریوب ځاځی', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (1307, 3000, N'LGN', N'Batpakht', N'بادپخت', N'بادپخت', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (1308, 33004, N'KDH', N'Takhta Pol', N'تخته پول', N'تخته پول', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (1309, 33005, N'KDH', N'Dand', N'دنــد', N'دنــد', 1)
INSERT [dbo].[Districts] ([DistrictId], [DistrictCode], [ProvinceCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (1310, 32009, N'HLD', N'Greshk', N'گرشک', N'گرشک', 1)
SET IDENTITY_INSERT [dbo].[Districts] OFF
SET IDENTITY_INSERT [dbo].[HostCountryDistricts] ON 

INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (1, 1, N'Karaj County', N'شهرستان کــرج', N'شهرستان کــرج', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (2, 1, N'Nazarabad County', N'شهرستان نظرآباد', N'شهرستان نظرآباد', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (3, 1, N'Savojbolagh County', N'شهرستان ساوجبلاغ', N'شهرستان ساوجبلاغ', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (4, 2, N'Ardabil County', N'شهرستان اردبیل', N'شهرستان اردبیل', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (5, 2, N'Bilasavar County', N'شهرستان بیله‌سوار', N'شهرستان بیله‌سوار', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (6, 2, N'Germi County', N'شهرستان گرمی', N'شهرستان گرمی', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (7, 2, N'Khalkhal County', N'شهرستان خلخال', N'شهرستان خلخال', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (8, 2, N'Kowsar County', N'شهرستان کوثر', N'شهرستان کوثر', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (9, 2, N'Meshginshahr County', N'شهرستان مشگین شهر', N'شهرستان مشگین شهر', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (10, 2, N'Namin County', N'شهرستان نمین', N'شهرستان نمین', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (11, 2, N'Nir County', N'شهرستان نیــر', N'شهرستان نیــر', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (12, 2, N'Parsabad County', N'شهرستان پارس‌آباد', N'شهرستان پارس‌آباد', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (13, 3, N'Bushehr County', N'شهرستان بوشهر', N'شهرستان بوشهر', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (14, 3, N'Dashtestan County', N'شهرستان دشتستان', N'شهرستان دشتستان', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (15, 3, N'Dashti County', N'شهرستان دشتی', N'شهرستان دشتی', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (16, 3, N'Dayyer County', N'شهرستان دیــر', N'شهرستان دیــر', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (17, 3, N'Deylam County', N'شهرستان دیلم', N'شهرستان دیلم', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (18, 3, N'Ganaveh County', N'شهرستان گناوه', N'شهرستان گناوه', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (19, 3, N'Jam County', N'شهرستان جــــم', N'شهرستان جــــم', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (20, 3, N'Kangan County', N'شهرستان کنگان', N'شهرستان کنگان', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (21, 3, N'Tangestan County', N'شهرستان تنگستان', N'شهرستان تنگستان', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (22, 4, N'Ardal County', N'شهرستان اردل', N'شهرستان اردل', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (23, 4, N'Borujen County', N'شهرستان بروجن', N'شهرستان بروجن', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (24, 4, N'Farsan County', N'شهرستان فارسان', N'شهرستان فارسان', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (25, 4, N'Kiaar County', N'شهرستان کیــار', N'شهرستان کیــار', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (26, 4, N'Kuhrang County', N'شهرستان کوهرنگ', N'شهرستان کوهرنگ', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (27, 4, N'Lordegan County', N'شهرستان لردگان', N'شهرستان لردگان', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (28, 4, N'Shahrekord County', N'شهرستان شهرکرد', N'شهرستان شهرکرد', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (29, 5, N'Ahar County', N'شهرستان اهـــر', N'شهرستان اهـــر', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (30, 5, N'Ajabshir County', N'شهرستان عجب شیر', N'شهرستان عجب شیر', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (31, 5, N'Azarshahr County', N'شهرستان آذر شهر', N'شهرستان آذر شهر', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (32, 5, N'Bonab County', N'شهرستان بناب', N'شهرستان بناب', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (33, 5, N'Bostanabad County', N'شهرستان بستان آباد', N'شهرستان بستان آباد', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (34, 5, N'Charuymaq County', N'شهرستان چار اویماق', N'شهرستان چار اویماق', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (35, 5, N'Hashtrud County', N'شهرستان هشترود', N'شهرستان هشترود', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (36, 5, N'Heris County', N'شهرستان هرس', N'شهرستان هرس', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (37, 5, N'Jolfa County', N'شهرستان جلفا', N'شهرستان جلفا', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (38, 5, N'Kalibar County', N'شهرستان کلیبر', N'شهرستان کلیبر', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (39, 5, N'Khodaafarin County', N'شهرستان خدا آفرین', N'شهرستان خدا آفرین', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (40, 5, N'Malekan County', N'شهرستان ملکان', N'شهرستان ملکان', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (41, 5, N'Maragheh County', N'شهرستان مراغه', N'شهرستان مراغه', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (42, 5, N'Marand County', N'شهرستان مرند', N'شهرستان مرند', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (43, 5, N'Mianeh County', N'شهرستان میانه', N'شهرستان میانه', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (44, 5, N'Osku County', N'شهرستان اسکو', N'شهرستان اسکو', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (45, 5, N'Sarab County', N'شهرستان سراب', N'شهرستان سراب', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (46, 5, N'Shabestar County', N'شهرستان شبستر', N'شهرستان شبستر', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (47, 5, N'Tabriz County', N'شهرستان تبریز', N'شهرستان تبریز', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (48, 5, N'Varzaqan County', N'شهرستان ورزقان', N'شهرستان ورزقان', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (49, 6, N'Aran-o-Bidgol County', N'شهرستان آران و بیدگل', N'شهرستان آران و بیدگل', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (50, 6, N'Ardestan County', N'شهرستان اردستان', N'شهرستان اردستان', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (51, 6, N'Borkhar-o-Meymeh County', N'شهرستان برخوار', N'شهرستان برخوار', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (52, 6, N'Chadegan County', N'شهرستان چادگان', N'شهرستان چادگان', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (53, 6, N'Falavarjan County', N'شهرستان فلاورجان', N'شهرستان فلاورجان', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (54, 6, N'Fereydan County', N'شهرستان فریدون', N'شهرستان فریدون', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (55, 6, N'Fereydunshahr County', N'شهرستان فریدون شهر', N'شهرستان فریدون شهر', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (56, 6, N'Golpayegan County', N'شهرستان گلپایگان', N'شهرستان گلپایگان', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (57, 6, N'Isfahan County', N'شهرستان اصفهان', N'شهرستان اصفهان', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (58, 6, N'Kashan County', N'شهرستان کاشان', N'شهرستان کاشان', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (59, 6, N'Khansar County', N'شهرستان خانسار', N'شهرستان خانسار', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (60, 6, N'Khomeinishahr County', N'شهرستان خمینی شهر', N'شهرستان خمینی شهر', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (61, 6, N'Lenjan County', N'شهرستان لنجان', N'شهرستان لنجان', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (62, 6, N'Lower Semirom County', N'شهرستان دهاقان', N'شهرستان دهاقان', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (63, 6, N'Mobarakeh County', N'شهرستان مبارکه', N'شهرستان مبارکه', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (64, 6, N'Nain County', N'شهرستان نائین', N'شهرستان نائین', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (65, 6, N'Najafabad County', N'شهرستان نجف آباد', N'شهرستان نجف آباد', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (66, 6, N'Natanz County', N'شهرستان نطنز', N'شهرستان نطنز', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (67, 6, N'Semirom County', N'شهرستان سمیرم', N'شهرستان سمیرم', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (68, 6, N'Shahinshahr o Meymeh County', N'شهرستان شاهین شهر', N'شهرستان شاهین شهر', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (69, 6, N'Shahreza County', N'شهرستان شهرضا', N'شهرستان شهرضا', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (70, 6, N'Tiran-o-Korun County', N'شهرستان تیران و کرون', N'شهرستان تیران و کرون', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (71, 7, N'Abadeh County', N'شهرستان آباده', N'شهرستان آباده', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (72, 7, N'Arsanjan County', N'شهرستان ارسنجان', N'شهرستان ارسنجان', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (73, 7, N'Bavanat County', N'شهرستان بوانات', N'شهرستان بوانات', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (74, 7, N'Darab County', N'شهرستان داراب', N'شهرستان داراب', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (75, 7, N'Eqlid County', N'شهرستان اقلید', N'شهرستان اقلید', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (76, 7, N'Estahban County', N'شهرستان استهبان', N'شهرستان استهبان', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (77, 7, N'Farashband County', N'شهرستان فراشبند', N'شهرستان فراشبند', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (78, 7, N'Fasa County', N'شهرستان فسا', N'شهرستان فسا', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (79, 7, N'Firuzabad County', N'شهرستان فیروز آباد', N'شهرستان فیروز آباد', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (80, 7, N'Gerash County', N'شهرستان گراش', N'شهرستان گراش', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (81, 7, N'Jahrom County', N'شهرستان جهرم', N'شهرستان جهرم', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (82, 7, N'Kazerun County', N'شهرستان کازرون', N'شهرستان کازرون', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (83, 7, N'Khonj County', N'شهرستان خنج', N'شهرستان خنج', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (84, 7, N'Khorrambid County', N'شهرستان خرم بید', N'شهرستان خرم بید', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (85, 7, N'Lamerd County', N'شهرستان لامرد', N'شهرستان لامرد', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (86, 7, N'Larestan County', N'شهرستان لارستان', N'شهرستان لارستان', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (87, 7, N'Mamasani County', N'شهرستان ممسنی', N'شهرستان ممسنی', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (88, 7, N'Marvdasht County', N'شهرستان مرودشت', N'شهرستان مرودشت', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (89, 7, N'Mehr County', N'شهرستان مهر', N'شهرستان مهر', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (90, 7, N'Neyriz County', N'شهرستان نی ریز', N'شهرستان نی ریز', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (91, 7, N'Pasargad County', N'شهرستان پاسارگاد', N'شهرستان پاسارگاد', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (92, 7, N'Qir-o-Karzin County', N'شهرستان قیر و کارزین', N'شهرستان قیر و کارزین', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (93, 7, N'Rostam County', N'شهرستان رستم', N'شهرستان رستم', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (94, 7, N'Sarvestan County', N'شهرستان سروستان', N'شهرستان سروستان', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (95, 7, N'Sepidan County', N'شهرستان سپیدان', N'شهرستان سپیدان', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (96, 7, N'Shiraz County', N'شهرستان شیراز', N'شهرستان شیراز', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (97, 7, N'Zarrindasht County', N'شهرستان زرین دشت', N'شهرستان زرین دشت', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (98, 8, N'Amlash County', N'شهرستان علم شاه', N'شهرستان علم شاه', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (99, 8, N'Astane-ye-Ashrafiyeh County', N'شهرستان آستانه اشرفیه', N'شهرستان آستانه اشرفیه', 1)
GO
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (100, 8, N'Astara County', N'شهرستان آستارا', N'شهرستان آستارا', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (101, 8, N'Bandar-e-Anzali County', N'شهرستان بندر انزلی', N'شهرستان بندر انزلی', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (102, 8, N'Fuman County', N'شهرستان فومن', N'شهرستان فومن', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (103, 8, N'Lahijan County', N'شهرستان لهیجان', N'شهرستان لهیجان', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (104, 8, N'Langrud County', N'شهرستان لنگرود', N'شهرستان لنگرود', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (105, 8, N'Masal County', N'شهرستان ماسال', N'شهرستان ماسال', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (106, 8, N'Rasht County', N'شهرستان رشت', N'شهرستان رشت', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (107, 8, N'Rezvanshahr County', N'شهرستان رضوان شهر', N'شهرستان رضوان شهر', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (108, 8, N'Rudbar County', N'شهرستان رودبار', N'شهرستان رودبار', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (109, 8, N'Rudsar County', N'شهرستان رودسر', N'شهرستان رودسر', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (110, 8, N'Shaft County', N'شهرستان شفت', N'شهرستان شفت', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (111, 8, N'Siahkal County', N'شهرستان سیاهکل', N'شهرستان سیاهکل', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (112, 8, N'Some''e-sara County', N'شهرستان صومعه سرا', N'شهرستان صومعه سرا', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (113, 8, N'Talesh County', N'شهرستان تالش', N'شهرستان تالش', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (114, 9, N'Aliabad County', N'شهرستان علی آباد', N'شهرستان علی آباد', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (115, 9, N'Aqqala County', N'شهرستان آق قلا', N'شهرستان آق قلا', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (116, 9, N'Azadshahr County', N'شهرستان آزادشهر', N'شهرستان آزادشهر', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (117, 9, N'Bandar-e-gaz County', N'شهرستان بندر گز', N'شهرستان بندر گز', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (118, 9, N'Bandar-e-Torkaman County', N'شهرستان بندر ترکمن', N'شهرستان بندر ترکمن', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (119, 9, N'Gomishan County', N'شهرستان گمیشان', N'شهرستان گمیشان', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (120, 9, N'Gonbad-e-Kavus County', N'شهرستان گنبد کاووس', N'شهرستان گنبد کاووس', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (121, 9, N'Gorgan County', N'شهرستان گرگان', N'شهرستان گرگان', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (122, 9, N'Kolaleh County', N'شهرستان کلاله', N'شهرستان کلاله', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (123, 9, N'Kordkuy County', N'شهرستان کردکوی', N'شهرستان کردکوی', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (124, 9, N'Maravehtapeh County', N'شهرستان مراوه تپه', N'شهرستان مراوه تپه', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (125, 9, N'Minudasht County', N'شهرستان مینو دشت', N'شهرستان مینو دشت', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (126, 9, N'Ramian County', N'شهرستان رامیالن', N'شهرستان رامیالن', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (127, 10, N'Asadabad County', N'شهرستان اسد آباد', N'شهرستان اسد آباد', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (128, 10, N'Bahar County', N'شهرستان بهار', N'شهرستان بهار', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (129, 10, N'Hamadan County', N'شهرستان همدان', N'شهرستان همدان', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (130, 10, N'Kabudrahang County', N'شهرستان کبودر آهنگ', N'شهرستان کبودر آهنگ', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (131, 10, N'Malayer County', N'شهرستان ملایر', N'شهرستان ملایر', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (132, 10, N'Nahavand County', N'شهرستان نهاوند', N'شهرستان نهاوند', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (133, 10, N'Razan County', N'شهرستان رزن', N'شهرستان رزن', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (134, 10, N'Tuyserkan County', N'شهرستان تویسرکان', N'شهرستان تویسرکان', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (135, 11, N'Abumusa County', N'شهرستان ابو موسی', N'شهرستان ابو موسی', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (136, 11, N'Bandar-Abbas County', N'شهرستان بندر عباس', N'شهرستان بندر عباس', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (137, 11, N'Bandar-Lengeh County', N'شهرستان بندر لنگه', N'شهرستان بندر لنگه', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (138, 11, N'Bastak County', N'شهرستان بستک', N'شهرستان بستک', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (139, 11, N'Gavbandi County', N'شهرستان گاو بندی', N'شهرستان گاو بندی', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (140, 11, N'Hajiabad County', N'شهرستان حاجی آباد', N'شهرستان حاجی آباد', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (141, 11, N'Jask County', N'شهرستان جاسک', N'شهرستان جاسک', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (142, 11, N'Khamir County', N'شهرستان خمیر', N'شهرستان خمیر', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (143, 11, N'Minab County', N'شهرستان میناب', N'شهرستان میناب', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (144, 11, N'Qeshm County', N'شهرستان قشــم', N'شهرستان قشــم', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (145, 11, N'Rudan County', N'شهرستان رودان', N'شهرستان رودان', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (146, 12, N'Abdanan County', N'شهرستان آبدانان', N'شهرستان آبدانان', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (147, 12, N'Darrehshahr County', N'شهرستان دره شهر', N'شهرستان دره شهر', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (148, 12, N'Dehloran County', N'شهرستان دهلران', N'شهرستان دهلران', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (149, 12, N'Eyvan County', N'شهرستان ایوان', N'شهرستان ایوان', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (150, 12, N'Ilam County', N'شهرستان ایلام', N'شهرستان ایلام', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (151, 12, N'Malekshahi County', N'شهرستان ملک شاهی', N'شهرستان ملک شاهی', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (152, 12, N'Mehran County', N'شهرستان مهران', N'شهرستان مهران', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (153, 12, N'Shirvan-o-Chardavol County', N'شهرستان شیروان و چرداول', N'شهرستان شیروان و چرداول', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (154, 13, N'Anbarabad County', N'شهرستان انبر آباد', N'شهرستان انبر آباد', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (155, 13, N'Baft County', N'شهرستان بافت', N'شهرستان بافت', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (156, 13, N'Bam County', N'شهرستان بــــم', N'شهرستان بــــم', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (157, 13, N'Bardsir County', N'شهرستان بردسیر', N'شهرستان بردسیر', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (158, 13, N'Fahraj County', N'شهرستان فهرج', N'شهرستان فهرج', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (159, 13, N'Ghaleye-Ganj County', N'شهرستان قلعه گنج', N'شهرستان قلعه گنج', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (160, 13, N'Jiroft County', N'شهرستان جیرفت', N'شهرستان جیرفت', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (161, 13, N'Kahnuj County', N'شهرستان کهنوج', N'شهرستان کهنوج', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (162, 13, N'Kerman County', N'شهرستان کرمان', N'شهرستان کرمان', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (163, 13, N'Kuhbonan County', N'شهرستان کوهبنان', N'شهرستان کوهبنان', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (164, 13, N'Manujan County', N'شهرستان منوجان', N'شهرستان منوجان', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (165, 13, N'Rabar County', N'شهرستان رابر', N'شهرستان رابر', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (166, 13, N'Rafsanjan County', N'شهرستان رفسنجان', N'شهرستان رفسنجان', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (167, 13, N'Ravar County', N'شهرستان راور', N'شهرستان راور', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (168, 13, N'Roudbar-e-Jonub County', N'شهرستان رودبار جنوب', N'شهرستان رودبار جنوب', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (169, 13, N'Shahr-e-Babak County', N'شهرستان شهر بابک', N'شهرستان شهر بابک', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (170, 13, N'Sirjan County', N'شهرستان سیرجان', N'شهرستان سیرجان', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (171, 13, N'Zarand County', N'شهرستان زرند', N'شهرستان زرند', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (172, 14, N'Dalaho County', N'شهرستان دالاهو', N'شهرستان دالاهو', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (173, 14, N'Gilan-e-gharb County', N'شهرستان گیلان غرب', N'شهرستان گیلان غرب', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (174, 14, N'Harsin County', N'شهرستان هریسان', N'شهرستان هریسان', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (175, 14, N'Islamabad-e-gharb County', N'شهرستان اسلام آباد غرب', N'شهرستان اسلام آباد غرب', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (176, 14, N'Javanrud County', N'شهرستان جوان رود', N'شهرستان جوان رود', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (177, 14, N'Kangavar County', N'شهرستان کنگاور', N'شهرستان کنگاور', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (178, 14, N'Kermanshah County', N'شهرستان کرمانشاه', N'شهرستان کرمانشاه', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (179, 14, N'Paveh County', N'شهرستان پاوه', N'شهرستان پاوه', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (180, 14, N'Qasr-e-Shirin County', N'شهرستان قصر شیرین', N'شهرستان قصر شیرین', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (181, 14, N'Ravansar county', N'شهرستان روانسر', N'شهرستان روانسر', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (182, 14, N'Sahneh County', N'شهرستان صحنه', N'شهرستان صحنه', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (183, 14, N'Sarpol-e-Zahab County', N'شهرستان سر پل زهاب', N'شهرستان سر پل زهاب', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (184, 14, N'Solas-e-Babajani County', N'شهرستان ثلاث باباجانی', N'شهرستان ثلاث باباجانی', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (185, 14, N'Sonqor County', N'شهرستان سنقر', N'شهرستان سنقر', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (186, 15, N'Abadan County', N'شهرستان آبادان', N'شهرستان آبادان', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (187, 15, N'Ahvaz County', N'شهرستان اهواز', N'شهرستان اهواز', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (188, 15, N'Andika County', N'شهرستان اندیکا', N'شهرستان اندیکا', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (189, 15, N'Andimeshk County', N'شهرستان اندیمشک', N'شهرستان اندیمشک', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (190, 15, N'Baghmalek County', N'شهرستان باغ ملک', N'شهرستان باغ ملک', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (191, 15, N'Behbahan County', N'شهرستان بهبهان', N'شهرستان بهبهان', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (192, 15, N'Dasht-e-Azadegan County', N'شهرستان دشت آزادگان', N'شهرستان دشت آزادگان', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (193, 15, N'Dezful County', N'شهرستان دزفول', N'شهرستان دزفول', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (194, 15, N'Guotvand County', N'شهرستان گتوند', N'شهرستان گتوند', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (195, 15, N'Haftgol County', N'شهرستان هفت گل', N'شهرستان هفت گل', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (196, 15, N'Hendijan County', N'شهرستان هندیجان', N'شهرستان هندیجان', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (197, 15, N'Hoveizeh County', N'شهرستان هویزه', N'شهرستان هویزه', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (198, 15, N'Izeh County', N'شهرستان ایذه', N'شهرستان ایذه', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (199, 15, N'Khorramshahr County', N'شهرستان خرمشهر', N'شهرستان خرمشهر', 1)
GO
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (200, 15, N'Lali County', N'شهرستان لالی', N'شهرستان لالی', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (201, 15, N'Mahshahr County', N'شهرستان ماهشهر', N'شهرستان ماهشهر', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (202, 15, N'Masjed-Soleyman County', N'شهرستان مسجد سلیمان', N'شهرستان مسجد سلیمان', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (203, 15, N'Omidiyeh County', N'شهرستان امیدیه', N'شهرستان امیدیه', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (204, 15, N'Ramhormoz County', N'شهرستان هفتکل', N'شهرستان هفتکل', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (205, 15, N'Ramshir County', N'شهرستان رامشیر', N'شهرستان رامشیر', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (206, 15, N'Shadegan County', N'شهرستان شادگان', N'شهرستان شادگان', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (207, 15, N'Shush County', N'شهرستان شوش', N'شهرستان شوش', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (208, 15, N'Shushtar County', N'شهرستان شوشتر', N'شهرستان شوشتر', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (209, 16, N'Bahmai County', N'شهرستان بهمئی', N'شهرستان بهمئی', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (210, 16, N'Boyer-Ahmad County', N'شهرستان بویراحمد', N'شهرستان بویراحمد', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (211, 16, N'Dena County', N'شهرستان دینه', N'شهرستان دینه', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (212, 16, N'Gachsaran County', N'شهرستان گچساران', N'شهرستان گچساران', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (213, 16, N'Kohgeluyeh County', N'شهرستان کهگیلویه', N'شهرستان کهگیلویه', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (214, 17, N'Baneh County', N'شهرستان بانه', N'شهرستان بانه', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (215, 17, N'Bijar County', N'شهرستان بیجار', N'شهرستان بیجار', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (216, 17, N'Dehgolan County', N'شهرستان دهگلان', N'شهرستان دهگلان', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (217, 17, N'Divandarreh County', N'دیوان دره', N'دیوان دره', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (218, 17, N'Kamyaran County', N'شهرستان کامیاران', N'شهرستان کامیاران', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (219, 17, N'Marivan County', N'شهرستان ماریوان', N'شهرستان ماریوان', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (220, 17, N'Qorveh County', N'شهرستان قروه', N'شهرستان قروه', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (221, 17, N'Sannandaj County', N'شهرستان سنندج', N'شهرستان سنندج', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (222, 17, N'Saqqez County', N'شهرستان سه‌قز', N'شهرستان سه‌قز', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (223, 17, N'Sarvabad County', N'شهرستان سروآباد', N'شهرستان سروآباد', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (224, 18, N'Aligudarz County', N'شهرستان الیگودرز', N'شهرستان الیگودرز', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (225, 18, N'Azna County', N'شهرستان ازنا', N'شهرستان ازنا', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (226, 18, N'Borujerd County', N'شهرستان بروجرد', N'شهرستان بروجرد', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (227, 18, N'Delfan County', N'شهرستان دلفان', N'شهرستان دلفان', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (228, 18, N'Dorud County', N'شهرستان  دارود', N'شهرستان  دارود', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (229, 18, N'Doureh County', N'شهرستان دوره', N'شهرستان دوره', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (230, 18, N'Khorramabad County', N'شهرستان خرم‌آباد', N'شهرستان خرم‌آباد', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (231, 18, N'Kuhdasht County', N'شهرستان کوهدشت', N'شهرستان کوهدشت', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (232, 18, N'Poldokhtar County', N'شهرستان پلدختر', N'شهرستان پلدختر', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (233, 18, N'Selseleh County', N'شهرستان سلسله', N'شهرستان سلسله', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (234, 19, N'Arak County', N'شهرستان اراک', N'شهرستان اراک', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (235, 19, N'Ashtian County', N'شهرستان آشتیان', N'شهرستان آشتیان', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (236, 19, N'Delijan County', N'شهرستان دلیجان', N'شهرستان دلیجان', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (237, 19, N'Khomein County', N'شهرستان خمین', N'شهرستان خمین', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (238, 19, N'Khondab County', N'شهرستان خنداب', N'شهرستان خنداب', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (239, 19, N'Komeijan County', N'شهرستان کمیجان', N'شهرستان کمیجان', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (240, 19, N'Mahallat County', N'شهرستان محلات', N'شهرستان محلات', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (241, 19, N'Saveh County', N'شهرستان ساوه', N'شهرستان ساوه', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (242, 19, N'Shazand County', N'شهرستان شازند', N'شهرستان شازند', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (243, 19, N'Tafresh County', N'شهرستان تفرش', N'شهرستان تفرش', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (244, 19, N'Zarandieh County', N'شهرستان زرندیه', N'شهرستان زرندیه', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (245, 20, N'Abbas abad County', N'شهرستان عباس‌آباد', N'شهرستان عباس‌آباد', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (246, 20, N'Amol County', N'شهرستان آمل', N'شهرستان آمل', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (247, 20, N'Babol County', N'شهرستان بابل', N'شهرستان بابل', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (248, 20, N'Babolsar County', N'شهرستان بابلسر', N'شهرستان بابلسر', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (249, 20, N'Behshahr County', N'بهشهر', N'بهشهر', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (250, 20, N'Chalus County', N'شهرستان چالوس', N'شهرستان چالوس', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (251, 20, N'Juybar County', N'شهرستان جویبار', N'شهرستان جویبار', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (252, 20, N'Mahmudabad County', N'شهرستان محمودآباد', N'شهرستان محمودآباد', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (253, 20, N'Neka County', N'شهرستان نکا', N'شهرستان نکا', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (254, 20, N'Noshahr County', N'شهرستان نوشهر', N'شهرستان نوشهر', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (255, 20, N'Nur County', N'شهرستان نور', N'شهرستان نور', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (256, 20, N'Qaemshahr County', N'شهرستان قائم شَهر', N'شهرستان قائم شَهر', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (257, 20, N'Ramsar County', N'شهرستان رامسر', N'شهرستان رامسر', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (258, 20, N'Sari County', N'شهرستان ساری', N'شهرستان ساری', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (259, 20, N'Savadkuh County', N'شهرستان سوادکوه', N'شهرستان سوادکوه', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (260, 20, N'Tonekabon County', N'شهرستان تنکابن', N'شهرستان تنکابن', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (261, 21, N'Bojnurd County', N'شهرستان بجنورد', N'شهرستان بجنورد', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (262, 21, N'Esfarayen County', N'شهرستان اسفراین', N'شهرستان اسفراین', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (263, 21, N'Faroj County', N'شهرستان فاروج', N'شهرستان فاروج', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (264, 21, N'Germeh County', N'شهرستان گرمه', N'شهرستان گرمه', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (265, 21, N'Jajrom County', N'شهرستان جاجرم', N'شهرستان جاجرم', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (266, 21, N'Maneh-o-Samalqan County', N'شهرستان مانه و سملقان', N'شهرستان مانه و سملقان', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (267, 21, N'Shirvan County', N'شهرستان شیروان', N'شهرستان شیروان', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (268, 22, N'Abyek County', N'شهرستان آبیک', N'شهرستان آبیک', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (269, 22, N'Alborz County', N'شهرستان البرز', N'شهرستان البرز', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (270, 22, N'Buin-Zahra County', N'شهرستان بوئین‌زهرا', N'شهرستان بوئین‌زهرا', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (271, 22, N'Qazvin County', N'شهرستان قزوین', N'شهرستان قزوین', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (272, 22, N'Takestan County', N'شهرستان تاکستان', N'شهرستان تاکستان', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (273, 23, N'Qom County', N'قم', N'قم', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (274, 24, N'Bajestan County', N'شهرستان بجستان', N'شهرستان بجستان', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (275, 24, N'Bardaskan County', N'بردسکن', N'بردسکن', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (276, 24, N'Chenaran County', N'شهرستان چناران', N'شهرستان چناران', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (277, 24, N'Dargaz County', N'شهرستان درگز', N'شهرستان درگز', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (278, 24, N'Fariman County', N'شهرستان فریمان', N'شهرستان فریمان', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (279, 24, N'Gonabad County', N'شهرستان گناباد', N'شهرستان گناباد', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (280, 24, N'Joghatai County', N'شهرستان جغتای', N'شهرستان جغتای', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (281, 24, N'Jowayin County', N'شهرستان جوین', N'شهرستان جوین', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (282, 24, N'Kalat County', N'شهرستان کلات', N'شهرستان کلات', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (283, 24, N'Kashmar County', N'دهستان تكاب', N'دهستان تكاب', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (284, 24, N'Khaf County', N'شهرستان خواف', N'شهرستان خواف', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (285, 24, N'Khalilabad County', N'شهرستان خلیل‌آباد', N'شهرستان خلیل‌آباد', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (286, 24, N'Mahvelat County', N'شهرستان مه‌ولات', N'شهرستان مه‌ولات', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (287, 24, N'Mashhad County', N'شهرستان مشهد', N'شهرستان مشهد', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (288, 24, N'Nishapur County', N'شهرستان نیشابور', N'شهرستان نیشابور', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (289, 24, N'Quchan County', N'شهرستان قوچان', N'شهرستان قوچان', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (290, 24, N'Rashtkhar County', N'شهرستان رشتخوار', N'شهرستان رشتخوار', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (291, 24, N'Sabzevar County', N'شهرستان سبزوار', N'شهرستان سبزوار', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (292, 24, N'Sarakhs County', N'شهرستان سرخس', N'شهرستان سرخس', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (293, 24, N'Takht-e-Jolgeh County', N'دهستان تخت جلگه', N'دهستان تخت جلگه', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (294, 24, N'Taybad County', N'شهرستان تایباد', N'شهرستان تایباد', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (295, 24, N'Torbat-e-Heydarieh County', N'شهرستان تربت حیدریه', N'شهرستان تربت حیدریه', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (296, 24, N'Torbat-e-Jam County', N'شهرستان تربت جام', N'شهرستان تربت جام', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (297, 24, N'Torghabe-o-Shandiz County', N'شهرستان  تورغاب شاندیز', N'شهرستان  تورغاب شاندیز', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (298, 24, N'Zave County', N'شهرستان زاوه', N'شهرستان زاوه', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (299, 25, N'Damghan County', N'شهرستان دامغان', N'شهرستان دامغان', 1)
GO
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (300, 25, N'Garmsar County', N'شهرستان گرمسار', N'شهرستان گرمسار', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (301, 25, N'Mehdishahr County', N'مهدئ شهر', N'مهدئ شهر', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (302, 25, N'Semnan County', N'شهرستان سمنان', N'شهرستان سمنان', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (303, 25, N'Shahrud County', N'شهرستان شاهرود', N'شهرستان شاهرود', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (304, 26, N'Chabahar County', N'شهرستان چابهار', N'شهرستان چابهار', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (305, 26, N'Dalgan County', N'شهرستان دَلگان', N'شهرستان دَلگان', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (306, 26, N'Hirmand County', N'شهرستان هیرمند', N'شهرستان هیرمند', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (307, 26, N'Iranshahr County', N'شهرستان ایرانشهر', N'شهرستان ایرانشهر', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (308, 26, N'Khash County', N'شهرستان خاش', N'شهرستان خاش', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (309, 26, N'Konarak County', N'شهرستان کنارک', N'شهرستان کنارک', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (310, 26, N'Mehrestan County', N'شهرستان مهرستان', N'شهرستان مهرستان', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (311, 26, N'Nikshahr County', N'شهرستان نیکشهر', N'شهرستان نیکشهر', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (312, 26, N'Saravan County', N'شهرستان سراوان', N'شهرستان سراوان', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (313, 26, N'Sarbaz County', N'شهرستان سرباز', N'شهرستان سرباز', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (314, 26, N'Sib o Soran County', N'شهرستان سیب و سوران', N'شهرستان سیب و سوران', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (315, 26, N'Zabol County', N'شهرستان زابل', N'شهرستان زابل', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (316, 26, N'Zahedan County', N'شهرستان زاهدان', N'شهرستان زاهدان', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (317, 26, N'Zehak County', N'شهرستان زهک', N'شهرستان زهک', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (318, 27, N'Birjand County', N'شهرستان بیرجند', N'شهرستان بیرجند', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (319, 27, N'Boshruyeh County', N'شهرستان بشرویه', N'شهرستان بشرویه', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (320, 27, N'Darmian County', N'شهرستان درمیان', N'شهرستان درمیان', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (321, 27, N'Ferdows County', N'شهرستان فردوس', N'شهرستان فردوس', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (322, 27, N'Nehbandan County', N'شهرستان نهبندان', N'شهرستان نهبندان', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (323, 27, N'Qaen County', N'شهرستان زيركوه', N'شهرستان زيركوه', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (324, 27, N'Sarayan County', N'هرستان سرایان', N'هرستان سرایان', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (325, 27, N'Sarbisheh County', N'شهرستان سربیشه', N'شهرستان سربیشه', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (326, 28, N'Damavand County', N'شهرستان دماوند', N'شهرستان دماوند', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (327, 28, N'Firuzkuh County', N'شهرستان فیروزکوه', N'شهرستان فیروزکوه', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (328, 28, N'Islamshahr County', N'شهرستان اسلام‌شهر', N'شهرستان اسلام‌شهر', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (329, 28, N'Malard County', N'شهرستان ملارد', N'شهرستان ملارد', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (330, 28, N'N/A', N'نامعلوم', N'نامعلوم', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (331, 28, N'Pakdasht County', N'شهرستان پاکدشت', N'شهرستان پاکدشت', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (332, 28, N'Rey County', N'شهرستان ری', N'شهرستان ری', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (333, 28, N'Robat-Karim County', N'شهرستان رباط‌کریم', N'شهرستان رباط‌کریم', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (334, 28, N'Shahr-e Qods County', N'شهرستان قدس', N'شهرستان قدس', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (335, 28, N'Shahriar County', N'شهرستان شهریار', N'شهرستان شهریار', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (336, 28, N'Shemiranat County', N'شهرستان شمیرانات', N'شهرستان شمیرانات', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (337, 28, N'Tehran County', N'شهرستان تهران', N'شهرستان تهران', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (338, 28, N'Varamin County', N'شهرستان ورامین', N'شهرستان ورامین', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (339, 29, N'Bukan County', N'شهرستان بوکان', N'شهرستان بوکان', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (340, 29, N'Chaipareh County', N'شهرستان نقده', N'شهرستان نقده', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (341, 29, N'Chaldoran County', N'شهرستان چالدران', N'شهرستان چالدران', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (342, 29, N'Khoy County', N'شهرستان خوی', N'شهرستان خوی', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (343, 29, N'Mahabad County', N'شهرستان مهاباد', N'شهرستان مهاباد', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (344, 29, N'Maku County', N'شهرستان ماکو', N'شهرستان ماکو', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (345, 29, N'Miandoab County', N'شهرستان میاندوآب', N'شهرستان میاندوآب', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (346, 29, N'Naqadeh County', N'شهرستان نقده', N'شهرستان نقده', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (347, 29, N'Oshnaviyeh County', N'شهرستان اشنویه', N'شهرستان اشنویه', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (348, 29, N'Piranshahr County', N'شهرستان پیرانشهر مکریان', N'شهرستان پیرانشهر مکریان', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (349, 29, N'Poldasht County', N'شهرستان پلدشت', N'شهرستان پلدشت', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (350, 29, N'Salmas County', N'شهرستان سلماس', N'شهرستان سلماس', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (351, 29, N'Sardasht County', N'شهرستان سردشت', N'شهرستان سردشت', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (352, 29, N'Shahindej County', N'شهرستان شاهین‌ دژ', N'شهرستان شاهین‌ دژ', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (353, 29, N'Showt County', N'شهرستان شوط', N'شهرستان شوط', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (354, 29, N'Takab County', N'شهرستان تکاب', N'شهرستان تکاب', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (355, 29, N'Urmia County', N'اورمیه', N'اورمیه', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (356, 30, N'Abarkuh County', N'شهرستان ابرکوه', N'شهرستان ابرکوه', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (357, 30, N'Ardekan County', N'شهرستان ادرکن', N'شهرستان ادرکن', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (358, 30, N'Bafq County', N'شهرستان بافق', N'شهرستان بافق', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (359, 30, N'Khatam County', N'شهرستان خاتم', N'شهرستان خاتم', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (360, 30, N'Mehriz County', N'شهرستان مهریز', N'شهرستان مهریز', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (361, 30, N'Meybud County', N'شهرستان میبد', N'شهرستان میبد', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (362, 30, N'Sadugh County', N'شهرستان اشكذر', N'شهرستان اشكذر', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (363, 30, N'Tabas County', N'شهرستان طبس', N'شهرستان طبس', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (364, 30, N'Taft County', N'شهرستان تفت', N'شهرستان تفت', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (365, 30, N'Yazd County', N'شهرستان یزد', N'شهرستان یزد', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (366, 37, N'Markaz (Center)', N'مرکز', N'مرکز', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (367, 31, N'Abhar County', N'شهرستان ابهر', N'شهرستان ابهر', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (368, 31, N'Eejrud County', N'شهرستان ایجرد', N'شهرستان ایجرد', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (369, 31, N'Khodabandeh County', N'شهرستان خدابنده', N'شهرستان خدابنده', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (370, 31, N'Khorramdarreh County', N'شهرستان خرمدره', N'شهرستان خرمدره', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (371, 31, N'Mahneshan County', N'شهرستان ماه‌نشان', N'شهرستان ماه‌نشان', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (372, 31, N'Tarom County', N'شهرستان طارم', N'شهرستان طارم', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (373, 31, N'Zanjan County', N'شهرستان زنجان', N'شهرستان زنجان', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (374, 33, N'Chagai', N'ضِلع چاغى', N'ضِلع چاغى', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (375, 33, N'Killa Abdullah', N'قلعہ عبد الله', N'قلعہ عبد الله', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (376, 33, N'Killa Saifullah', N'قلعہ سیف اللہ', N'قلعہ سیف اللہ', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (377, 33, N'Loralai', N'لورالائی', N'لورالائی', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (378, 33, N'Mastung', N'ضلع مستونگ', N'ضلع مستونگ', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (379, 33, N'Pishin', N'پښين', N'پښين', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (380, 33, N'Quetta', N'کویته', N'کویته', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (381, 33, N'Zhob', N'ژوب', N'ژوب', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (382, 32, N'Bannu', N'بنون', N'بنون', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (383, 32, N'Bara', N'بارا', N'بارا', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (384, 32, N'Buner', N'بونیر', N'بونیر', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (385, 32, N'Charsada', N'چارسده', N'چارسده', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (386, 32, N'Chitral', N'چترال', N'چترال', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (387, 32, N'Dera Ismail Khan', N'ډیرہ اسماعیل خان', N'ډیرہ اسماعیل خان', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (388, 32, N'Hangu', N'هنګو', N'هنګو', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (389, 32, N'Haripur', N'ہری پور', N'ہری پور', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (390, 32, N'Karak', N'الكرك‎‎', N'الكرك‎‎', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (391, 32, N'Lakki Marwat', N'لکی مروت', N'لکی مروت', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (392, 32, N'Lower Dir', N'لر دیر', N'لر دیر', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (393, 32, N'Malakand', N'ملاکنډ', N'ملاکنډ', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (394, 32, N'Mansehra', N'مانسہرہ', N'مانسہرہ', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (395, 32, N'Mardan', N'مردان', N'مردان', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (396, 32, N'MIRANSHAH', N'میران شاہ', N'میران شاہ', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (397, 32, N'Nowshera', N'نوښار', N'نوښار', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (398, 32, N'Peshawar', N'پشاور', N'پشاور', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (399, 32, N'Swabi', N'صوابی', N'صوابی', 1)
GO
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (400, 32, N'Swat', N'سوات', N'سوات', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (401, 32, N'Tank', N'تنک', N'تنک', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (402, 32, N'Upper Dir', N'دیر بالا', N'دیر بالا', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (403, 36, N'Mirpur', N'ضلع میر پور', N'ضلع میر پور', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (404, 34, N'Attock', N'اٹک', N'اٹک', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (405, 34, N'Chakwal', N'چکوال', N'چکوال', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (406, 34, N'Gujranwala', N'گوجرانوالا', N'گوجرانوالا', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (407, 34, N'Gujrat', N'گوجرات', N'گوجرات', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (408, 34, N'Islamabad', N'اسلام آباد', N'اسلام آباد', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (409, 34, N'Jhelum', N'جیلم', N'جیلم', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (410, 34, N'Kashmir', N'کشمیر', N'کشمیر', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (411, 34, N'Khushab', N'خوشب', N'خوشب', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (412, 34, N'Lahore', N'لاهور', N'لاهور', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (413, 34, N'Mianwali', N'مینوالی', N'مینوالی', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (414, 34, N'Rawalpindi', N'رولپندی', N'رولپندی', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (415, 34, N'Sargodha', N'سرگودا', N'سرگودا', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (416, 34, N'Sialkot', N'سیاه کوت', N'سیاه کوت', 1)
INSERT [dbo].[HostCountryDistricts] ([DistrictId], [ProvinceId], [EnName], [DrName], [PaName], [IsActive]) VALUES (417, 35, N'Karachi', N'کراچی', N'کراچی', 1)
SET IDENTITY_INSERT [dbo].[HostCountryDistricts] OFF
SET IDENTITY_INSERT [dbo].[HostCountryProvinces] ON 

INSERT [dbo].[HostCountryProvinces] ([ProvinceId], [CountryCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (1, N'IRN', N'Alborz Province', N'البرز', N'البرز', 1)
INSERT [dbo].[HostCountryProvinces] ([ProvinceId], [CountryCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (2, N'IRN', N'Ardabil Province', N'اردبیل', N'اردبیل', 1)
INSERT [dbo].[HostCountryProvinces] ([ProvinceId], [CountryCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (3, N'IRN', N'Bushehr Province', N'بوشهر', N'بوشهر', 1)
INSERT [dbo].[HostCountryProvinces] ([ProvinceId], [CountryCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (4, N'IRN', N'Chaharmahal and Bakhtiari Province', N'چهارمحال و بختیاری', N'چهارمحال و بختیاری', 1)
INSERT [dbo].[HostCountryProvinces] ([ProvinceId], [CountryCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (5, N'IRN', N'East Azerbaijan Province', N'آذربایجان شرقی', N'آذربایجان شرقی', 1)
INSERT [dbo].[HostCountryProvinces] ([ProvinceId], [CountryCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (6, N'IRN', N'Esfahan Province', N'اصفهان', N'اصفهان', 1)
INSERT [dbo].[HostCountryProvinces] ([ProvinceId], [CountryCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (7, N'IRN', N'Fars Province', N'فارس', N'فارس', 1)
INSERT [dbo].[HostCountryProvinces] ([ProvinceId], [CountryCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (8, N'IRN', N'Gilan Province', N'گیلان', N'گیلان', 1)
INSERT [dbo].[HostCountryProvinces] ([ProvinceId], [CountryCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (9, N'IRN', N'Golestan Province', N'گلستان', N'گلستان', 1)
INSERT [dbo].[HostCountryProvinces] ([ProvinceId], [CountryCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (10, N'IRN', N'Hamadan Province', N'همدان', N'همدان', 1)
INSERT [dbo].[HostCountryProvinces] ([ProvinceId], [CountryCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (11, N'IRN', N'Hormozgan Province', N'هرمزگان', N'هرمزگان', 1)
INSERT [dbo].[HostCountryProvinces] ([ProvinceId], [CountryCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (12, N'IRN', N'Ilam Province', N'کرمان', N'کرمان', 1)
INSERT [dbo].[HostCountryProvinces] ([ProvinceId], [CountryCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (13, N'IRN', N'Kerman Province', N'کرمان', N'کرمان', 1)
INSERT [dbo].[HostCountryProvinces] ([ProvinceId], [CountryCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (14, N'IRN', N'Kermanshah Province', N'کرمانشاه', N'کرمانشاه', 1)
INSERT [dbo].[HostCountryProvinces] ([ProvinceId], [CountryCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (15, N'IRN', N'Khuzestan Province', N'خوزستان', N'خوزستان', 1)
INSERT [dbo].[HostCountryProvinces] ([ProvinceId], [CountryCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (16, N'IRN', N'Kohgeluyeh and Boyer-Ahmad Province', N'کهگیلویه و بویر احمد', N'کهگیلویه و بویر احمد', 1)
INSERT [dbo].[HostCountryProvinces] ([ProvinceId], [CountryCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (17, N'IRN', N'Kordestan Province', N'کردستان', N'کردستان', 1)
INSERT [dbo].[HostCountryProvinces] ([ProvinceId], [CountryCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (18, N'IRN', N'Lorestan Province', N'لرستان', N'لرستان', 1)
INSERT [dbo].[HostCountryProvinces] ([ProvinceId], [CountryCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (19, N'IRN', N'Markazi Province', N'مرکزی', N'مرکزی', 1)
INSERT [dbo].[HostCountryProvinces] ([ProvinceId], [CountryCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (20, N'IRN', N'Mazandaran Province', N'مازندران', N'مازندران', 1)
INSERT [dbo].[HostCountryProvinces] ([ProvinceId], [CountryCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (21, N'IRN', N'North Khorasan Province', N'خراسان شمالی', N'خراسان شمالی', 1)
INSERT [dbo].[HostCountryProvinces] ([ProvinceId], [CountryCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (22, N'IRN', N'Qazvin Province', N'قزوین', N'قزوین', 1)
INSERT [dbo].[HostCountryProvinces] ([ProvinceId], [CountryCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (23, N'IRN', N'Qom Province', N'قــم', N'قــم', 1)
INSERT [dbo].[HostCountryProvinces] ([ProvinceId], [CountryCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (24, N'IRN', N'Razavi Khorasan Province', N'خراسان رضوی', N'خراسان رضوی', 1)
INSERT [dbo].[HostCountryProvinces] ([ProvinceId], [CountryCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (25, N'IRN', N'Semnan Province', N'سمنان', N'سمنان', 1)
INSERT [dbo].[HostCountryProvinces] ([ProvinceId], [CountryCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (26, N'IRN', N'Sistan and Baluchestan Province', N'سیستان و بلوچستان', N'سیستان و بلوچستان', 1)
INSERT [dbo].[HostCountryProvinces] ([ProvinceId], [CountryCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (27, N'IRN', N'South Khorasan Province', N'خراسان جنوبی', N'خراسان جنوبی', 1)
INSERT [dbo].[HostCountryProvinces] ([ProvinceId], [CountryCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (28, N'IRN', N'Tehran Province', N'تهران', N'تهران', 1)
INSERT [dbo].[HostCountryProvinces] ([ProvinceId], [CountryCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (29, N'IRN', N'West Azerbaijan Province', N'آذربایجان غربی', N'آذربایجان غربی', 1)
INSERT [dbo].[HostCountryProvinces] ([ProvinceId], [CountryCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (30, N'IRN', N'Yazd Province', N'یـــزد', N'یـــزد', 1)
INSERT [dbo].[HostCountryProvinces] ([ProvinceId], [CountryCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (31, N'IRN', N'Zanjan Province', N'زنجان', N'زنجان', 1)
INSERT [dbo].[HostCountryProvinces] ([ProvinceId], [CountryCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (32, N'PAK', N'Khyber Pakhtunkhwa (Province)', N'خیبر پختون خواه', N'خیبر پختون خواه', 1)
INSERT [dbo].[HostCountryProvinces] ([ProvinceId], [CountryCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (33, N'PAK', N'Baloshistan (Province)', N'بلوچستان', N'بلوچستان', 1)
INSERT [dbo].[HostCountryProvinces] ([ProvinceId], [CountryCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (34, N'PAK', N'Punjab (Province)', N'پنجاب', N'پنجاب', 1)
INSERT [dbo].[HostCountryProvinces] ([ProvinceId], [CountryCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (35, N'PAK', N'Sindh (Province)', N'سنـــد', N'سنـــد', 1)
INSERT [dbo].[HostCountryProvinces] ([ProvinceId], [CountryCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (36, N'PAK', N'Pakistan Administered Kashmir', N'کشمیـــر', N'کشمیـــر', 1)
INSERT [dbo].[HostCountryProvinces] ([ProvinceId], [CountryCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (37, N'IRN', N'Zahedan', N'زاهدان', N'زاهدان', 1)
SET IDENTITY_INSERT [dbo].[HostCountryProvinces] OFF
SET IDENTITY_INSERT [dbo].[LookupTypes] ON 

INSERT [dbo].[LookupTypes] ([LookupId], [LookupCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (1, N'GENDER', N'Gender', N'جنسیت', N'جنسیت', 1)
INSERT [dbo].[LookupTypes] ([LookupId], [LookupCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (2, N'IDTYPE', N'ID Type', N'نوع شناسه', N'نوع شناسه', 1)
INSERT [dbo].[LookupTypes] ([LookupId], [LookupCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (4, N'MARSTAT', N'Marital Status', N'Marital Status', N'Marital Status', 1)
INSERT [dbo].[LookupTypes] ([LookupId], [LookupCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (6, N'RELATION', N'Relationship', N'نسبت', N'نسبت', 1)
INSERT [dbo].[LookupTypes] ([LookupId], [LookupCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (8, N'RETSTAT', N'Return Status', N'نحوه برگشت', N'راستنیدونو ډول', 1)
INSERT [dbo].[LookupTypes] ([LookupId], [LookupCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (9, N'TOPNEED', N'Top Need', N'نیاز های اولیه', N'اولیه ضروریات', 1)
INSERT [dbo].[LookupTypes] ([LookupId], [LookupCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (10, N'RSTATUS', N'Return Status', N'حالت بازگشت', N'د راستنیدو ډول', 1)
INSERT [dbo].[LookupTypes] ([LookupId], [LookupCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (11, N'LREASON', N'Leaving Reason', N'علت ترک', N'پریښودو علت', 1)
INSERT [dbo].[LookupTypes] ([LookupId], [LookupCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (12, N'ORGTYP', N'Type of Organization', N'نوعیت سازمان ها', N'د ادارې ډول', 1)
INSERT [dbo].[LookupTypes] ([LookupId], [LookupCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (14, N'PSN', N'PSN', N'PSN', N'PSN', 1)
INSERT [dbo].[LookupTypes] ([LookupId], [LookupCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (15, N'RREASON', N'Return Reason', N'Return Reason', N'Return Reason', 1)
INSERT [dbo].[LookupTypes] ([LookupId], [LookupCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (17, N'WWYL', N'Where will you live', N'Where will you live', N'Where will you live', 1)
INSERT [dbo].[LookupTypes] ([LookupId], [LookupCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (19, N'WDYITD', N'What do you intend to do?', N'What do you intend to do?', N'What do you intend to do?', 1)
INSERT [dbo].[LookupTypes] ([LookupId], [LookupCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (20, N'PROFESSION', N'Profession', N'Profession', N'Profession', 1)
INSERT [dbo].[LookupTypes] ([LookupId], [LookupCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (21, N'EDUCATION', N'Education', N'Education', N'Education', 1)
INSERT [dbo].[LookupTypes] ([LookupId], [LookupCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (1016, N'MFRP', N'Mony for rent payment', N'Mony for rent payment', N'Mony for rent payment', 1)
INSERT [dbo].[LookupTypes] ([LookupId], [LookupCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (1018, N'RANKIMP', N'Rank which of these options is the most important for you to determine your destination in Afghanistan', N'Rank which of these options is the most important for you to determine your destination in Afghanistan', N'Rank which of these options is the most important for you to determine your destination in Afghanistan', 1)
INSERT [dbo].[LookupTypes] ([LookupId], [LookupCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (1021, N'MTYPE', N'Money Type', N'Money Type', N'Money Type', 1)
INSERT [dbo].[LookupTypes] ([LookupId], [LookupCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (1022, N'COUNTRY', N'Country', N'Country', N'Country', 1)
INSERT [dbo].[LookupTypes] ([LookupId], [LookupCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (1023, N'ITEMS', N'Items', N'Items', N'Items', 1)
INSERT [dbo].[LookupTypes] ([LookupId], [LookupCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (1024, N'PAHAN', N'Post Arrival Humanitarian Assistance Needs', N'Post Arrival Humanitarian Assistance Needs', N'Post Arrival Humanitarian Assistance Needs', 1)
INSERT [dbo].[LookupTypes] ([LookupId], [LookupCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (1026, N'RANKIMPA', N'Rank Important to determin your destination in Afghanistan', N'Rank Important to determin your destination in Afghanistan', N'Rank Important to determin your destination in Afghanistan', 1)
INSERT [dbo].[LookupTypes] ([LookupId], [LookupCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (1027, N'TRNSPORT', N'Transportation', N'Transportation', N'Transportation', 1)
INSERT [dbo].[LookupTypes] ([LookupId], [LookupCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (1030, N'WHCH', N'What can help you obtain livelihood opportunities or employment in Afghanistan?', N'What can help you obtain livelihood opportunities or employment in Afghanistan?', N'What can help you obtain livelihood opportunities or employment in Afghanistan?', 1)
INSERT [dbo].[LookupTypes] ([LookupId], [LookupCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (1031, N'TOOLS', N'Tools', N'Tools', N'Tools', 1)
INSERT [dbo].[LookupTypes] ([LookupId], [LookupCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (1032, N'WAY3MC', N'What are your 3 main concerns in Afghanistan? (select 3)', N'What are your 3 main concerns in Afghanistan? (select 3)', N'What are your 3 main concerns in Afghanistan? (select 3)', 1)
INSERT [dbo].[LookupTypes] ([LookupId], [LookupCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (1033, N'SCHOOLTYPE', N'School Type', N'School Type', N'School Type', 1)
SET IDENTITY_INSERT [dbo].[LookupTypes] OFF
SET IDENTITY_INSERT [dbo].[LookupValues] ON 

INSERT [dbo].[LookupValues] ([ValueId], [LookupCode], [ValueCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (1, N'GENDER', N'M', N'Male', N'مرد', N'نارینه', 1)
INSERT [dbo].[LookupValues] ([ValueId], [LookupCode], [ValueCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (3, N'GENDER', N'F', N'Female', N'زن', N'ښځينه', 1)
INSERT [dbo].[LookupValues] ([ValueId], [LookupCode], [ValueCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (7, N'RSTATUS', N'DEP', N'Deported', N'اخراج شده', N'شړل شوی', 1)
INSERT [dbo].[LookupValues] ([ValueId], [LookupCode], [ValueCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (8, N'RSTATUS', N'DC', N'Document claimant', N'مدعی داشتن اسناد', N'د اسنادو غوښتونکی', 1)
INSERT [dbo].[LookupValues] ([ValueId], [LookupCode], [ValueCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (9, N'RSTATUS', N'SR', N'Spontaneous returnee', N'عودت به میل خود', N'پرخوښی راستانه', 1)
INSERT [dbo].[LookupValues] ([ValueId], [LookupCode], [ValueCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (10, N'MARSTAT', N'SG', N'Single', N'مجرد', N'مجرد', 1)
INSERT [dbo].[LookupValues] ([ValueId], [LookupCode], [ValueCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (11, N'MARSTAT', N'EG', N'Engaged', N'نامزد', N'کوژده ', 1)
INSERT [dbo].[LookupValues] ([ValueId], [LookupCode], [ValueCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (12, N'MARSTAT', N'MR', N'Married', N'متاهل', N'واده شوی', 1)
INSERT [dbo].[LookupValues] ([ValueId], [LookupCode], [ValueCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (13, N'MARSTAT', N'DV', N'Divorced', N'مطلقه', N'طلاق شوی', 1)
INSERT [dbo].[LookupValues] ([ValueId], [LookupCode], [ValueCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (14, N'MARSTAT', N'WW', N'Widowed', N'بیوه', N'کونډ/کونډه', 1)
INSERT [dbo].[LookupValues] ([ValueId], [LookupCode], [ValueCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (15, N'IDTYPE', N'TZ', N'Tazkira', N'تذکره', N'تذکره', 1)
INSERT [dbo].[LookupValues] ([ValueId], [LookupCode], [ValueCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (16, N'IDTYPE', N'PP', N'Passport', N'پاسپورت', N'پاسپورت', 1)
INSERT [dbo].[LookupValues] ([ValueId], [LookupCode], [ValueCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (17, N'IDTYPE', N'EC', N'Election Card', N'کارت انتخابات', N'دټاکنو کارت', 1)
INSERT [dbo].[LookupValues] ([ValueId], [LookupCode], [ValueCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (18, N'IDTYPE', N'TT', N'Temporary Travel Document', N'اسناد موقتی سفر', N'د سفر موقتی اسناد', 1)
INSERT [dbo].[LookupValues] ([ValueId], [LookupCode], [ValueCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (20, N'IDTYPE', N'BC', N'Beneficiary Card', N'کارت مستفید شونده', N'د ګته اخیستنی کارت', 1)
INSERT [dbo].[LookupValues] ([ValueId], [LookupCode], [ValueCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (21, N'RELATION', N'HH', N'Head of Household', N'سرپرست فامیل', N'د کورنۍ سرپرست', 1)
INSERT [dbo].[LookupValues] ([ValueId], [LookupCode], [ValueCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (22, N'RELATION', N'FA', N'Father', N'پدر', N'پلار', 1)
INSERT [dbo].[LookupValues] ([ValueId], [LookupCode], [ValueCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (23, N'RELATION', N'MO', N'Mother', N'مادر', N'مور', 1)
INSERT [dbo].[LookupValues] ([ValueId], [LookupCode], [ValueCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (24, N'RELATION', N'SO', N'Son', N'پسر', N'زوی', 1)
INSERT [dbo].[LookupValues] ([ValueId], [LookupCode], [ValueCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (25, N'RELATION', N'DA', N'Daughter', N'دختر', N'لور', 1)
INSERT [dbo].[LookupValues] ([ValueId], [LookupCode], [ValueCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (26, N'RELATION', N'NE', N'Nephew', N'Nephew', N'Nephew', 1)
INSERT [dbo].[LookupValues] ([ValueId], [LookupCode], [ValueCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (27, N'RELATION', N'NI', N'Niece', N'Niece', N'Niece', 1)
INSERT [dbo].[LookupValues] ([ValueId], [LookupCode], [ValueCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (28, N'RELATION', N'BR', N'Brother', N'Brother', N'Brother', 1)
INSERT [dbo].[LookupValues] ([ValueId], [LookupCode], [ValueCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (29, N'RELATION', N'SI', N'Sister', N'Sister', N'Sister', 1)
INSERT [dbo].[LookupValues] ([ValueId], [LookupCode], [ValueCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (30, N'RELATION', N'GF', N'Grandfather', N'Grandfather', N'Grandfather', 1)
INSERT [dbo].[LookupValues] ([ValueId], [LookupCode], [ValueCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (31, N'RELATION', N'GM', N'GrandMother', N'GrandMother', N'GrandMother', 1)
INSERT [dbo].[LookupValues] ([ValueId], [LookupCode], [ValueCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (32, N'RELATION', N'GS', N'Grandson', N'Grandson', N'Grandson', 1)
INSERT [dbo].[LookupValues] ([ValueId], [LookupCode], [ValueCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (33, N'RELATION', N'GD', N'Granddaughter', N'Granddaughter', N'Granddaughter', 1)
INSERT [dbo].[LookupValues] ([ValueId], [LookupCode], [ValueCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (35, N'RELATION', N'GP', N'Great Grand Parent', N'Great Grand Parent', N'Great Grand Parent', 1)
INSERT [dbo].[LookupValues] ([ValueId], [LookupCode], [ValueCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (36, N'RELATION', N'GU', N'Grand Uncle', N'Grand Uncle', N'Grand Uncle', 1)
INSERT [dbo].[LookupValues] ([ValueId], [LookupCode], [ValueCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (38, N'RELATION', N'GA', N'Grand Aunt', N'Grand Aunt', N'Grand Aunt', 1)
INSERT [dbo].[LookupValues] ([ValueId], [LookupCode], [ValueCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (39, N'RELATION', N'FL', N'Father in Law', N'Father in Law', N'Father in Law', 1)
INSERT [dbo].[LookupValues] ([ValueId], [LookupCode], [ValueCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (40, N'RELATION', N'ML', N'Mother in Law', N'Mother in Law', N'Mother in Law', 1)
INSERT [dbo].[LookupValues] ([ValueId], [LookupCode], [ValueCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (41, N'RELATION', N'BL', N'Brother in Law', N'Brother in Law', N'Brother in Law', 1)
INSERT [dbo].[LookupValues] ([ValueId], [LookupCode], [ValueCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (42, N'RELATION', N'SL', N'Sister in Law', N'Sister in Law', N'Sister in Law', 1)
INSERT [dbo].[LookupValues] ([ValueId], [LookupCode], [ValueCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (43, N'RELATION', N'RL', N'Relatives', N'Relatives', N'Relatives', 1)
INSERT [dbo].[LookupValues] ([ValueId], [LookupCode], [ValueCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (44, N'RELATION', N'W', N'Wife', N'Wife', N'Wife', 1)
INSERT [dbo].[LookupValues] ([ValueId], [LookupCode], [ValueCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (46, N'RELATION', N'H', N'Husband', N'Husband', N'Husband', 1)
INSERT [dbo].[LookupValues] ([ValueId], [LookupCode], [ValueCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (47, N'LREASON', N'LOS', N'Lack of security', N'Lack of security', N'Lack of security', 1)
INSERT [dbo].[LookupValues] ([ValueId], [LookupCode], [ValueCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (50, N'LREASON', N'ND', N'Natural disaster', N'Natural disaster', N'Natural disaster', 1)
INSERT [dbo].[LookupValues] ([ValueId], [LookupCode], [ValueCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (51, N'LREASON', N'LOEO', N'Lack of economic opportunity', N'Lack of economic opportunity', N'Lack of economic opportunity', 1)
INSERT [dbo].[LookupValues] ([ValueId], [LookupCode], [ValueCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (52, N'LREASON', N'EO', N'Education opportunity', N'Education opportunity', N'Education opportunity', 1)
INSERT [dbo].[LookupValues] ([ValueId], [LookupCode], [ValueCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (53, N'LREASON', N'FRUF', N'Family re-unification/family reason', N'Family re-unification/family reason', N'Family re-unification/family reason', 1)
INSERT [dbo].[LookupValues] ([ValueId], [LookupCode], [ValueCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (54, N'LREASON', N'GTE', N'Going to Europe via Iran/Turkey', N'Going to Europe via Iran/Turkey', N'Going to Europe via Iran/Turkey', 1)
INSERT [dbo].[LookupValues] ([ValueId], [LookupCode], [ValueCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (55, N'LREASON', N'LRNA', N'N/A', N'N/A', N'N/A', 1)
INSERT [dbo].[LookupValues] ([ValueId], [LookupCode], [ValueCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (56, N'LREASON', N'LROther', N'Other', N'Other', N'Other', 1)
INSERT [dbo].[LookupValues] ([ValueId], [LookupCode], [ValueCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (57, N'TOPNEED', N'FS', N'Financial Support', N'Financial Support', N'Financial Support', 1)
INSERT [dbo].[LookupValues] ([ValueId], [LookupCode], [ValueCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (58, N'TOPNEED', N'SH', N'Shelter/Housing', N'Shelter/Housing', N'Shelter/Housing', 1)
INSERT [dbo].[LookupValues] ([ValueId], [LookupCode], [ValueCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (59, N'TOPNEED', N'AC', N'Advice/Counselling', N'Advice/Counselling', N'Advice/Counselling', 1)
INSERT [dbo].[LookupValues] ([ValueId], [LookupCode], [ValueCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (60, N'TOPNEED', N'MT', N'Medical Treatment', N'Medical Treatment', N'Medical Treatment', 1)
INSERT [dbo].[LookupValues] ([ValueId], [LookupCode], [ValueCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (61, N'TOPNEED', N'JPE', N'Job placement/Employment', N'Job placement/Employment', N'Job placement/Employment', 1)
INSERT [dbo].[LookupValues] ([ValueId], [LookupCode], [ValueCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (62, N'TOPNEED', N'BSG', N'Business start-up grant', N'Business start-up grant', N'Business start-up grant', 1)
INSERT [dbo].[LookupValues] ([ValueId], [LookupCode], [ValueCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (63, N'TOPNEED', N'EOC', N'Education opportunity for children', N'Education opportunity for children', N'Education opportunity for children', 1)
INSERT [dbo].[LookupValues] ([ValueId], [LookupCode], [ValueCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (64, N'TOPNEED', N'TNNA', N'N/A', N'N/A', N'N/A', 1)
INSERT [dbo].[LookupValues] ([ValueId], [LookupCode], [ValueCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (65, N'TOPNEED', N'TNOther', N'Other', N'Other', N'Other', 1)
INSERT [dbo].[LookupValues] ([ValueId], [LookupCode], [ValueCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (66, N'ORGTYP', N'IOM', N'IOM', N'IOM', N'IOM', 1)
INSERT [dbo].[LookupValues] ([ValueId], [LookupCode], [ValueCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (67, N'ORGTYP', N'UNHCR', N'UNHCR', N'UNHCR', N'UNHCR', 1)
INSERT [dbo].[LookupValues] ([ValueId], [LookupCode], [ValueCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (68, N'PSN', N'DP', N'Deportee', N'Deportee', N'Deportee', 1)
INSERT [dbo].[LookupValues] ([ValueId], [LookupCode], [ValueCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (69, N'PSN', N'LF', N'Large family (more than 10 members)', N'Large family (more than 10 members)', N'Large family (more than 10 members)', 1)
INSERT [dbo].[LookupValues] ([ValueId], [LookupCode], [ValueCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (70, N'PSN', N'SPF', N'Single parent families ', N'Single parent families ', N'Single parent families ', 1)
INSERT [dbo].[LookupValues] ([ValueId], [LookupCode], [ValueCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (71, N'PSN', N'SF', N'Single female', N'Single female', N'Single female', 1)
INSERT [dbo].[LookupValues] ([ValueId], [LookupCode], [ValueCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (72, N'PSN', N'MH', N'Mental Health', N'Mental Health', N'Mental Health', 1)
INSERT [dbo].[LookupValues] ([ValueId], [LookupCode], [ValueCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (73, N'PSN', N'UMC', N'Unaccompanied Migrant Child (under 18yrs)', N'Unaccompanied Migrant Child (under 18yrs)', N'Unaccompanied Migrant Child (under 18yrs)', 1)
INSERT [dbo].[LookupValues] ([ValueId], [LookupCode], [ValueCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (74, N'PSN', N'MC', N'Medical case', N'Medical case', N'Medical case', 1)
INSERT [dbo].[LookupValues] ([ValueId], [LookupCode], [ValueCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (75, N'PSN', N'UE', N'Unaccompanied Elderly', N'Unaccompanied Elderly', N'Unaccompanied Elderly', 1)
INSERT [dbo].[LookupValues] ([ValueId], [LookupCode], [ValueCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (76, N'PSN', N'PD', N'Physically disabled', N'Physically disabled', N'Physically disabled', 1)
INSERT [dbo].[LookupValues] ([ValueId], [LookupCode], [ValueCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (77, N'PSN', N'SCDP', N'Special cases- deceased persons', N'Special cases- deceased persons', N'Special cases- deceased persons', 1)
INSERT [dbo].[LookupValues] ([ValueId], [LookupCode], [ValueCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (78, N'PSN', N'CI', N'Chronically Ill', N'Chronically Ill', N'Chronically Ill', 1)
INSERT [dbo].[LookupValues] ([ValueId], [LookupCode], [ValueCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (79, N'PSN', N'SA', N'Substance abuse ', N'Substance abuse ', N'Substance abuse ', 1)
INSERT [dbo].[LookupValues] ([ValueId], [LookupCode], [ValueCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (80, N'PSN', N'PSNOther', N'Other', N'Other', N'Other', 1)
INSERT [dbo].[LookupValues] ([ValueId], [LookupCode], [ValueCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (81, N'RREASON', N'PH', N'Police harassment', N'Police harassment', N'Police harassment', 1)
INSERT [dbo].[LookupValues] ([ValueId], [LookupCode], [ValueCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (82, N'RREASON', N'LEO', N'Lack of education opportunities', N'Lack of education opportunities', N'Lack of education opportunities', 1)
INSERT [dbo].[LookupValues] ([ValueId], [LookupCode], [ValueCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (83, N'RREASON', N'AAD', N'Arbitrary arrest and detention', N'Arbitrary arrest and detention', N'Arbitrary arrest and detention', 1)
INSERT [dbo].[LookupValues] ([ValueId], [LookupCode], [ValueCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (84, N'RREASON', N'IO', N'Insecurity/military operations ', N'Insecurity/military operations ', N'Insecurity/military operations ', 1)
INSERT [dbo].[LookupValues] ([ValueId], [LookupCode], [ValueCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (85, N'RREASON', N'LLO', N'Lack of livelihood opportunities', N'Lack of livelihood opportunities', N'Lack of livelihood opportunities', 1)
INSERT [dbo].[LookupValues] ([ValueId], [LookupCode], [ValueCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (86, N'RREASON', N'FOD', N'Fear of deportation', N'Fear of deportation', N'Fear of deportation', 1)
INSERT [dbo].[LookupValues] ([ValueId], [LookupCode], [ValueCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (87, N'RREASON', N'FR', N'Family reunification', N'Family reunification', N'Family reunification', 1)
INSERT [dbo].[LookupValues] ([ValueId], [LookupCode], [ValueCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (88, N'RREASON', N'ROP', N'Restrictions on property rentals for Afghans', N'Restrictions on property rentals for Afghans', N'Restrictions on property rentals for Afghans', 1)
INSERT [dbo].[LookupValues] ([ValueId], [LookupCode], [ValueCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (89, N'RREASON', N'RROther', N'Return reason', N'Return reason', N'Return reason', 1)
INSERT [dbo].[LookupValues] ([ValueId], [LookupCode], [ValueCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (90, N'WWYL', N'WR', N'With relatives', N'With relatives', N'With relatives', 1)
INSERT [dbo].[LookupValues] ([ValueId], [LookupCode], [ValueCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (91, N'WWYL', N'RH', N'Rent a house', N'Rent a house', N'Rent a house', 1)
INSERT [dbo].[LookupValues] ([ValueId], [LookupCode], [ValueCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (92, N'WWYL', N'IOH', N'In own house', N'In own house', N'In own house', 1)
INSERT [dbo].[LookupValues] ([ValueId], [LookupCode], [ValueCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (93, N'WWYL', N'IDKY', N'I don’t know yet', N'I don’t know yet', N'I don’t know yet', 1)
INSERT [dbo].[LookupValues] ([ValueId], [LookupCode], [ValueCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (94, N'WDYITD', N'SIAR', N'Stay in Afghanistan and return to my place of origin', N'Stay in Afghanistan and return to my place of origin', N'Stay in Afghanistan and return to my place of origin', 1)
INSERT [dbo].[LookupValues] ([ValueId], [LookupCode], [ValueCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (95, N'WDYITD', N'SIABS', N'Stay in Afghanistan but re-settle in another place', N'Stay in Afghanistan but re-settle in another place', N'Stay in Afghanistan but re-settle in another place', 1)
INSERT [dbo].[LookupValues] ([ValueId], [LookupCode], [ValueCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (96, N'WDYITD', N'RTH', N'Return to host country, state reason', N'Return to host country, state reason', N'Return to host country, state reason', 1)
INSERT [dbo].[LookupValues] ([ValueId], [LookupCode], [ValueCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (97, N'PROFESSION', N'UL', N'Unskilled labor', N'Unskilled labor', N'Unskilled labor', 1)
INSERT [dbo].[LookupValues] ([ValueId], [LookupCode], [ValueCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (98, N'PROFESSION', N'FARMAR', N'Farmer', N'Farmer', N'Farmer', 1)
INSERT [dbo].[LookupValues] ([ValueId], [LookupCode], [ValueCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (100, N'PROFESSION', N'SLABOR', N'Skilled labor', N'Skilled labor', N'Skilled labor', 1)
INSERT [dbo].[LookupValues] ([ValueId], [LookupCode], [ValueCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (101, N'PROFESSION', N'TAILOR', N'Tailor', N'Tailor', N'Tailor', 1)
INSERT [dbo].[LookupValues] ([ValueId], [LookupCode], [ValueCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (102, N'PROFESSION', N'CARPENTER', N'Carpenter', N'Carpenter', N'Carpenter', 1)
INSERT [dbo].[LookupValues] ([ValueId], [LookupCode], [ValueCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (103, N'PROFESSION', N'MECHANIC', N'Mechanic', N'Mechanic', N'Mechanic', 1)
INSERT [dbo].[LookupValues] ([ValueId], [LookupCode], [ValueCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (104, N'PROFESSION', N'SKEEPER', N'Shop keeper', N'Shop keeper', N'Shop keeper', 1)
INSERT [dbo].[LookupValues] ([ValueId], [LookupCode], [ValueCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (107, N'PROFESSION', N'PROFESSIONAL', N'Professional- doctor, engineer, teacher', N'Professional- doctor, engineer, teacher', N'Professional- doctor, engineer, teacher', 1)
INSERT [dbo].[LookupValues] ([ValueId], [LookupCode], [ValueCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (108, N'PROFESSION', N'ProfOther', N'Other', N'Other', N'Other', 1)
INSERT [dbo].[LookupValues] ([ValueId], [LookupCode], [ValueCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (109, N'EDUCATION', N'NFEDU', N'No formal education', N'No formal education', N'No formal education', 1)
INSERT [dbo].[LookupValues] ([ValueId], [LookupCode], [ValueCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (110, N'EDUCATION', N'PS', N'Primary school', N'Primary school', N'Primary school', 1)
INSERT [dbo].[LookupValues] ([ValueId], [LookupCode], [ValueCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (111, N'EDUCATION', N'SS', N'Secondary school', N'Secondary school', N'Secondary school', 1)
INSERT [dbo].[LookupValues] ([ValueId], [LookupCode], [ValueCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (112, N'EDUCATION', N'HS', N'High school', N'High school', N'High school', 1)
GO
INSERT [dbo].[LookupValues] ([ValueId], [LookupCode], [ValueCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (113, N'EDUCATION', N'UNI', N'University', N'University', N'University', 1)
INSERT [dbo].[LookupValues] ([ValueId], [LookupCode], [ValueCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (114, N'EDUCATION', N'EDUOther', N'Other', N'Other', N'Other', 1)
INSERT [dbo].[LookupValues] ([ValueId], [LookupCode], [ValueCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (1068, N'RANKIMP', N'ATJ', N'Access to job', N'Access to job', N'Access to job', 1)
INSERT [dbo].[LookupValues] ([ValueId], [LookupCode], [ValueCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (1069, N'RANKIMP', N'ATH', N'Access to a house or apartment', N'Access to a house or apartment', N'Access to a house or apartment', 1)
INSERT [dbo].[LookupValues] ([ValueId], [LookupCode], [ValueCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (1070, N'RANKIMP', N'ATF', N'Access to farmland', N'Access to farmland', N'Access to farmland', 1)
INSERT [dbo].[LookupValues] ([ValueId], [LookupCode], [ValueCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (1071, N'RANKIMP', N'S', N'Security', N'Security', N'Security', 1)
INSERT [dbo].[LookupValues] ([ValueId], [LookupCode], [ValueCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (1072, N'RANKIMP', N'EFC', N'Education for children', N'Education for children', N'Education for children', 1)
INSERT [dbo].[LookupValues] ([ValueId], [LookupCode], [ValueCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (1073, N'RANKIMP', N'SEG', N'Similar ethnic group', N'Similar ethnic group', N'Similar ethnic group', 1)
INSERT [dbo].[LookupValues] ([ValueId], [LookupCode], [ValueCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (1074, N'RANKIMP', N'POFM', N'Presence of family members', N'Presence of family members', N'Presence of family members', 1)
INSERT [dbo].[LookupValues] ([ValueId], [LookupCode], [ValueCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (1075, N'RANKIMP', N'AROH', N'Ability to return to origin home', N'Ability to return to origin home', N'Ability to return to origin home', 1)
INSERT [dbo].[LookupValues] ([ValueId], [LookupCode], [ValueCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (1076, N'RANKIMP', N'RankImpOther', N'Other', N'Other', N'Other', 1)
INSERT [dbo].[LookupValues] ([ValueId], [LookupCode], [ValueCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (1077, N'MFRP', N'Savings', N'Savings', N'Savings', N'Savings', 1)
INSERT [dbo].[LookupValues] ([ValueId], [LookupCode], [ValueCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (1078, N'MFRP', N'BFFF', N'Borrow from friends and family', N'Borrow from friends and family', N'Borrow from friends and family', 1)
INSERT [dbo].[LookupValues] ([ValueId], [LookupCode], [ValueCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (1081, N'MFRP', N'BFM', N'Borrow from moneylender', N'Borrow from moneylender', N'Borrow from moneylender', 1)
INSERT [dbo].[LookupValues] ([ValueId], [LookupCode], [ValueCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (1082, N'MFRP', N'BFB', N'Borrow from bank', N'Borrow from bank', N'Borrow from bank', 1)
INSERT [dbo].[LookupValues] ([ValueId], [LookupCode], [ValueCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (1083, N'MFRP', N'MFRPOther', N'Other', N'Other', N'Other', 1)
INSERT [dbo].[LookupValues] ([ValueId], [LookupCode], [ValueCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (1084, N'MTYPE', N'USD', N'USD', N'USD', N'USD', 1)
INSERT [dbo].[LookupValues] ([ValueId], [LookupCode], [ValueCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (1085, N'MTYPE', N'AFG', N'AFG', N'AFG', N'AFG', 1)
INSERT [dbo].[LookupValues] ([ValueId], [LookupCode], [ValueCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (1086, N'COUNTRY', N'Iran', N'Iran', N'Iran', N'Iran', 1)
INSERT [dbo].[LookupValues] ([ValueId], [LookupCode], [ValueCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (1087, N'COUNTRY', N'Pakistan', N'Pakistan', N'Pakistan', N'Pakistan', 1)
INSERT [dbo].[LookupValues] ([ValueId], [LookupCode], [ValueCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (1088, N'ITEMS', N'Clothes', N'Clothes', N'Clothes', N'Clothes', 1)
INSERT [dbo].[LookupValues] ([ValueId], [LookupCode], [ValueCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (1089, N'ITEMS', N'HItems', N'HItems', N'HItems', N'HItems', 1)
INSERT [dbo].[LookupValues] ([ValueId], [LookupCode], [ValueCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (1090, N'ITEMS', N'Furniture', N'Furniture', N'Furniture', N'Furniture', 1)
INSERT [dbo].[LookupValues] ([ValueId], [LookupCode], [ValueCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (1091, N'ITEMS', N'Cash', N'Cash', N'Cash', N'Cash', 1)
INSERT [dbo].[LookupValues] ([ValueId], [LookupCode], [ValueCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (1092, N'ITEMS', N'Nothing', N'Nothing', N'Nothing', N'Nothing', 1)
INSERT [dbo].[LookupValues] ([ValueId], [LookupCode], [ValueCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (1093, N'ITEMS', N'ITEMSOther', N'Other', N'Other', N'Other', 1)
INSERT [dbo].[LookupValues] ([ValueId], [LookupCode], [ValueCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (1096, N'PAHAN', N'TBRC', N'Transportation between RC and TC', N'Transportation between RC and TC', N'Transportation between RC and TC', 1)
INSERT [dbo].[LookupValues] ([ValueId], [LookupCode], [ValueCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (1097, N'PAHAN', N'FLT', N'1st Leg transportation (Herat and Nimroz)', N'1st Leg transportation (Herat and Nimroz)', N'1st Leg transportation (Herat and Nimroz)', 1)
INSERT [dbo].[LookupValues] ([ValueId], [LookupCode], [ValueCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (1098, N'PAHAN', N'CFT', N'Cash for transportation', N'Cash for transportation', N'Cash for transportation', 1)
INSERT [dbo].[LookupValues] ([ValueId], [LookupCode], [ValueCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (1099, N'PAHAN', N'FT', N'Family tracing', N'Family tracing', N'Family tracing', 1)
INSERT [dbo].[LookupValues] ([ValueId], [LookupCode], [ValueCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (1100, N'PAHAN', N'STA', N'Special transportation arrangement', N'Special transportation arrangement', N'Special transportation arrangement', 1)
INSERT [dbo].[LookupValues] ([ValueId], [LookupCode], [ValueCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (1101, N'PAHAN', N'AITC', N'Accommodation in transit center', N'Accommodation in transit center', N'Accommodation in transit center', 1)
INSERT [dbo].[LookupValues] ([ValueId], [LookupCode], [ValueCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (1102, N'PAHAN', N'EMC', N'External medical care', N'External medical care', N'External medical care', 1)
INSERT [dbo].[LookupValues] ([ValueId], [LookupCode], [ValueCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (1103, N'PAHAN', N'Escort', N'Escort', N'Escort', N'Escort', 1)
INSERT [dbo].[LookupValues] ([ValueId], [LookupCode], [ValueCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (1104, N'PAHAN', N'DDR', N'Drug demand reduction', N'Drug demand reduction', N'Drug demand reduction', 1)
INSERT [dbo].[LookupValues] ([ValueId], [LookupCode], [ValueCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (1105, N'PAHAN', N'WFP', N'WFP food package', N'WFP food package', N'WFP food package', 1)
INSERT [dbo].[LookupValues] ([ValueId], [LookupCode], [ValueCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (1106, N'PAHAN', N'PC', N'Psychosocial counseling', N'Psychosocial counseling', N'Psychosocial counseling', 1)
INSERT [dbo].[LookupValues] ([ValueId], [LookupCode], [ValueCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (1107, N'PAHAN', N'NFI', N'Non-Food Items (Family module)', N'Non-Food Items (Family module)', N'Non-Food Items (Family module)', 1)
INSERT [dbo].[LookupValues] ([ValueId], [LookupCode], [ValueCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (1109, N'PAHAN', N'SC', N'Seasonal Clothes', N'Seasonal Clothes', N'Seasonal Clothes', 1)
INSERT [dbo].[LookupValues] ([ValueId], [LookupCode], [ValueCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (1110, N'PAHAN', N'PR', N'Protection referral', N'Protection referral', N'Protection referral', 1)
INSERT [dbo].[LookupValues] ([ValueId], [LookupCode], [ValueCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (1111, N'RANKIMPA', N'NAAIMP', N'Not at all Important', N'Not at all Important', N'Not at all Important', 1)
INSERT [dbo].[LookupValues] ([ValueId], [LookupCode], [ValueCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (1113, N'RANKIMPA', N'SIMP', N'Slightly Important', N'Slightly Important', N'Slightly Important', 1)
INSERT [dbo].[LookupValues] ([ValueId], [LookupCode], [ValueCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (1114, N'RANKIMPA', N'IMP', N'Important', N'Important', N'Important', 1)
INSERT [dbo].[LookupValues] ([ValueId], [LookupCode], [ValueCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (1115, N'RANKIMPA', N'VIMP', N'Very Important', N'Very Important', N'Very Important', 1)
INSERT [dbo].[LookupValues] ([ValueId], [LookupCode], [ValueCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (1117, N'COUNTRY', N'COther', N'Other', N'Other', N'Other', 1)
INSERT [dbo].[LookupValues] ([ValueId], [LookupCode], [ValueCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (1118, N'TRNSPORT', N'TWE', N'Travelled with escort and reunified', N'Travelled with escort and reunified', N'Travelled with escort and reunified', 1)
INSERT [dbo].[LookupValues] ([ValueId], [LookupCode], [ValueCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (1119, N'TRNSPORT', N'HOTH', N'Handed over to his/her family at TC or nearby shelters', N'Handed over to his/her family at TC or nearby shelters', N'Handed over to his/her family at TC or nearby shelters', 1)
INSERT [dbo].[LookupValues] ([ValueId], [LookupCode], [ValueCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (1120, N'TRNSPORT', N'RTOP', N'Referred to other place for support and closed the case', N'Referred to other place for support and closed the case', N'Referred to other place for support and closed the case', 1)
INSERT [dbo].[LookupValues] ([ValueId], [LookupCode], [ValueCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (1121, N'TRNSPORT', N'TBH', N'Travelled by him/herself (without escort)', N'Travelled by him/herself (without escort)', N'Travelled by him/herself (without escort)', 1)
INSERT [dbo].[LookupValues] ([ValueId], [LookupCode], [ValueCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (1122, N'TRNSPORT', N'LTTC', N'Left the Transit Center before getting further assistance', N'Left the Transit Center before getting further assistance', N'Left the Transit Center before getting further assistance', 1)
INSERT [dbo].[LookupValues] ([ValueId], [LookupCode], [ValueCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (1123, N'TRNSPORT', N'US', N'Under support/pending in TC or in other places', N'Under support/pending in TC or in other places', N'Under support/pending in TC or in other places', 1)
INSERT [dbo].[LookupValues] ([ValueId], [LookupCode], [ValueCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (1124, N'TRNSPORT', N'PWT', N'Provided with transportation facilities only', N'Provided with transportation facilities only', N'Provided with transportation facilities only', 1)
INSERT [dbo].[LookupValues] ([ValueId], [LookupCode], [ValueCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (1125, N'TRNSPORT', N'TransportOther', N'Other', N'OTHER', N'Other', 1)
INSERT [dbo].[LookupValues] ([ValueId], [LookupCode], [ValueCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (1126, N'WHCH', N'VTFH', N'Vocational training for head of household or family members', N'Vocational training for head of household or family members', N'Vocational training for head of household or family members', 1)
INSERT [dbo].[LookupValues] ([ValueId], [LookupCode], [ValueCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (1127, N'WHCH', N'POT', N'Provision of tools related to your skills', N'Provision of tools related to your skills', N'Provision of tools related to your skills', 1)
INSERT [dbo].[LookupValues] ([ValueId], [LookupCode], [ValueCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (1128, N'TOOLS', N'Carpentry', N'Carpentry', N'Carpentry', N'Carpentry', 1)
INSERT [dbo].[LookupValues] ([ValueId], [LookupCode], [ValueCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (1131, N'TOOLS', N'TMechanic', N'Mechanic', N'Mechanic', N'Mechanic', 1)
INSERT [dbo].[LookupValues] ([ValueId], [LookupCode], [ValueCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (1132, N'TOOLS', N'TBL', N'Basic labor (construction tools)', N'Basic labor (construction tools)', N'Basic labor (construction tools)', 1)
INSERT [dbo].[LookupValues] ([ValueId], [LookupCode], [ValueCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (1133, N'TOOLS', N'Tailoring', N'Tailoring', N'Tailoring', N'Tailoring', 1)
INSERT [dbo].[LookupValues] ([ValueId], [LookupCode], [ValueCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (1134, N'TOOLS', N'ToolsOther', N'Other', N'Other', N'Other', 1)
INSERT [dbo].[LookupValues] ([ValueId], [LookupCode], [ValueCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (1135, N'WAY3MC', N'Security', N'Security', N'Security', N'Security', 1)
INSERT [dbo].[LookupValues] ([ValueId], [LookupCode], [ValueCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (1136, N'WAY3MC', N'LackOfHousing', N'Lack of housing', N'Lack of housing', N'Lack of housing', 1)
INSERT [dbo].[LookupValues] ([ValueId], [LookupCode], [ValueCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (1137, N'WAY3MC', N'LackOfLiv', N'Lack of livelihood opportunities', N'Lack of livelihood opportunities', N'Lack of livelihood opportunities', 1)
INSERT [dbo].[LookupValues] ([ValueId], [LookupCode], [ValueCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (1138, N'WAY3MC', N'LackOfEdu', N'Lack of education opportunities', N'Lack of education opportunities', N'Lack of education opportunities', 1)
INSERT [dbo].[LookupValues] ([ValueId], [LookupCode], [ValueCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (1139, N'ITEMS', N'Livestock', N'Livestock', N'Livestock', N'Livestock', 1)
INSERT [dbo].[LookupValues] ([ValueId], [LookupCode], [ValueCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (1140, N'SCHOOLTYPE', N'Primary', N'Primary', N'Primary', N'Primary', 1)
INSERT [dbo].[LookupValues] ([ValueId], [LookupCode], [ValueCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (1141, N'SCHOOLTYPE', N'Secondary', N'Secondary', N'Secondary', N'Secondary', 1)
INSERT [dbo].[LookupValues] ([ValueId], [LookupCode], [ValueCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (1143, N'WAY3MC', N'LackOfLand', N'Lack of land', N'Lack of land', N'Lack of land', 1)
INSERT [dbo].[LookupValues] ([ValueId], [LookupCode], [ValueCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (1146, N'WAY3MC', N'WAY3MCOther', N'Other', N'Oter', N'Other', 1)
INSERT [dbo].[LookupValues] ([ValueId], [LookupCode], [ValueCode], [EnName], [DrName], [PaName], [IsActive]) VALUES (1148, N'RELATION', N'HSelf', N'Him/Her self', N'Him/Her self', N'Him/Her self', 1)
SET IDENTITY_INSERT [dbo].[LookupValues] OFF
SET IDENTITY_INSERT [dbo].[Provinces] ON 

INSERT [dbo].[Provinces] ([ProvinceId], [ProvinceCode], [MapCode], [EnName], [DrName], [PaName], [IsActive], [BeneficiaryID]) VALUES (1, N'BDG', N'af-bg', N'Badghis', N'بادغیس', N'بادغیس', 1, NULL)
INSERT [dbo].[Provinces] ([ProvinceId], [ProvinceCode], [MapCode], [EnName], [DrName], [PaName], [IsActive], [BeneficiaryID]) VALUES (2, N'BDK', N'af-bd', N'Badakhshan', N'بدخشان', N'بدخشان', 1, NULL)
INSERT [dbo].[Provinces] ([ProvinceId], [ProvinceCode], [MapCode], [EnName], [DrName], [PaName], [IsActive], [BeneficiaryID]) VALUES (3, N'BGN', N'af-bl', N'Baghlan', N'بغلان', N'بغلان', 1, NULL)
INSERT [dbo].[Provinces] ([ProvinceId], [ProvinceCode], [MapCode], [EnName], [DrName], [PaName], [IsActive], [BeneficiaryID]) VALUES (4, N'BLK', N'af-bk', N'Balkh', N'بلخ', N'بلخ', 1, NULL)
INSERT [dbo].[Provinces] ([ProvinceId], [ProvinceCode], [MapCode], [EnName], [DrName], [PaName], [IsActive], [BeneficiaryID]) VALUES (5, N'BMY', N'af-bm', N'Bamyan', N'بامیان', N'بامیان', 1, NULL)
INSERT [dbo].[Provinces] ([ProvinceId], [ProvinceCode], [MapCode], [EnName], [DrName], [PaName], [IsActive], [BeneficiaryID]) VALUES (6, N'DKY', N'af-2014', N'Daykundi', N'دایکندی', N'دایکندی', 1, NULL)
INSERT [dbo].[Provinces] ([ProvinceId], [ProvinceCode], [MapCode], [EnName], [DrName], [PaName], [IsActive], [BeneficiaryID]) VALUES (7, N'FRH', N'af-fh', N'Farah', N'فراه', N'فراه', 1, NULL)
INSERT [dbo].[Provinces] ([ProvinceId], [ProvinceCode], [MapCode], [EnName], [DrName], [PaName], [IsActive], [BeneficiaryID]) VALUES (8, N'FYB', N'af-fb', N'Faryab', N'فاریاب', N'فاریاب', 1, NULL)
INSERT [dbo].[Provinces] ([ProvinceId], [ProvinceCode], [MapCode], [EnName], [DrName], [PaName], [IsActive], [BeneficiaryID]) VALUES (9, N'GHR', N'af-gr', N'Ghor', N'غور', N'غور', 1, NULL)
INSERT [dbo].[Provinces] ([ProvinceId], [ProvinceCode], [MapCode], [EnName], [DrName], [PaName], [IsActive], [BeneficiaryID]) VALUES (10, N'GZN', N'af-gz', N'Ghazni', N'غزنی', N'غزنی', 1, NULL)
INSERT [dbo].[Provinces] ([ProvinceId], [ProvinceCode], [MapCode], [EnName], [DrName], [PaName], [IsActive], [BeneficiaryID]) VALUES (11, N'HLD', N'af-hm', N'Hilmand', N'هلمند', N'هلمند', 1, NULL)
INSERT [dbo].[Provinces] ([ProvinceId], [ProvinceCode], [MapCode], [EnName], [DrName], [PaName], [IsActive], [BeneficiaryID]) VALUES (12, N'HRT', N'af-hr', N'Herat', N'هرات', N'هرات', 1, NULL)
INSERT [dbo].[Provinces] ([ProvinceId], [ProvinceCode], [MapCode], [EnName], [DrName], [PaName], [IsActive], [BeneficiaryID]) VALUES (13, N'JWZ', N'af-jw', N'Jawzjan', N'جوزجان', N'جوزجان', 1, NULL)
INSERT [dbo].[Provinces] ([ProvinceId], [ProvinceCode], [MapCode], [EnName], [DrName], [PaName], [IsActive], [BeneficiaryID]) VALUES (14, N'KBL', N'af-kb', N'Kabul', N'کابل', N'کابل', 1, NULL)
INSERT [dbo].[Provinces] ([ProvinceId], [ProvinceCode], [MapCode], [EnName], [DrName], [PaName], [IsActive], [BeneficiaryID]) VALUES (15, N'KDH', N'af-kd', N'Kandahar', N'کندهار', N'کندهار', 1, NULL)
INSERT [dbo].[Provinces] ([ProvinceId], [ProvinceCode], [MapCode], [EnName], [DrName], [PaName], [IsActive], [BeneficiaryID]) VALUES (16, N'KDZ', N'af-kz', N'Kunduz', N'کندوز', N'کندوز', 1, NULL)
INSERT [dbo].[Provinces] ([ProvinceId], [ProvinceCode], [MapCode], [EnName], [DrName], [PaName], [IsActive], [BeneficiaryID]) VALUES (17, N'KNR', N'af-kr', N'Kunar', N'کنر', N'کنړ', 1, NULL)
INSERT [dbo].[Provinces] ([ProvinceId], [ProvinceCode], [MapCode], [EnName], [DrName], [PaName], [IsActive], [BeneficiaryID]) VALUES (18, N'KPS', N'af-kp', N'Kapisa', N'کاپیسا', N'کاپیسا', 1, NULL)
INSERT [dbo].[Provinces] ([ProvinceId], [ProvinceCode], [MapCode], [EnName], [DrName], [PaName], [IsActive], [BeneficiaryID]) VALUES (19, N'KST', N'af-kt', N'Khost', N'خوست', N'خوست', 1, NULL)
INSERT [dbo].[Provinces] ([ProvinceId], [ProvinceCode], [MapCode], [EnName], [DrName], [PaName], [IsActive], [BeneficiaryID]) VALUES (20, N'LGN', N'af-la', N'Laghman', N'لغمان', N'لغمان', 1, NULL)
INSERT [dbo].[Provinces] ([ProvinceId], [ProvinceCode], [MapCode], [EnName], [DrName], [PaName], [IsActive], [BeneficiaryID]) VALUES (21, N'LGR', N'af-lw', N'Logar', N'لوگر', N'لوګر', 1, NULL)
INSERT [dbo].[Provinces] ([ProvinceId], [ProvinceCode], [MapCode], [EnName], [DrName], [PaName], [IsActive], [BeneficiaryID]) VALUES (22, N'NGR', N'af-ng', N'Nangarhar', N'ننگرهار', N'ننګرهار', 1, NULL)
INSERT [dbo].[Provinces] ([ProvinceId], [ProvinceCode], [MapCode], [EnName], [DrName], [PaName], [IsActive], [BeneficiaryID]) VALUES (23, N'NMR', N'af-nm', N'Nimroz', N'نیمروز', N'نیمروز', 1, NULL)
INSERT [dbo].[Provinces] ([ProvinceId], [ProvinceCode], [MapCode], [EnName], [DrName], [PaName], [IsActive], [BeneficiaryID]) VALUES (24, N'NRT', N'af-nr', N'Nuristan', N'نورستان', N'نورستان', 1, NULL)
INSERT [dbo].[Provinces] ([ProvinceId], [ProvinceCode], [MapCode], [EnName], [DrName], [PaName], [IsActive], [BeneficiaryID]) VALUES (25, N'PKT', N'af-pk', N'Paktika', N'پکتیکا', N'پکتیکا', 1, NULL)
INSERT [dbo].[Provinces] ([ProvinceId], [ProvinceCode], [MapCode], [EnName], [DrName], [PaName], [IsActive], [BeneficiaryID]) VALUES (26, N'PNR', N'af-2030', N'Panjsher', N'پنجشیر', N'پنجشیر', 1, NULL)
INSERT [dbo].[Provinces] ([ProvinceId], [ProvinceCode], [MapCode], [EnName], [DrName], [PaName], [IsActive], [BeneficiaryID]) VALUES (27, N'PTY', N'af-pt', N'Paktya', N'پکتیا', N'پکتیا', 1, NULL)
INSERT [dbo].[Provinces] ([ProvinceId], [ProvinceCode], [MapCode], [EnName], [DrName], [PaName], [IsActive], [BeneficiaryID]) VALUES (28, N'PWN', N'af-pv', N'Parwan', N'پروان', N'پروان', 1, NULL)
INSERT [dbo].[Provinces] ([ProvinceId], [ProvinceCode], [MapCode], [EnName], [DrName], [PaName], [IsActive], [BeneficiaryID]) VALUES (29, N'SMN', N'af-sm', N'Samangan', N'سمنگان', N'سمنګان', 1, NULL)
INSERT [dbo].[Provinces] ([ProvinceId], [ProvinceCode], [MapCode], [EnName], [DrName], [PaName], [IsActive], [BeneficiaryID]) VALUES (30, N'SPL', N'af-sp', N'Sari Pul', N'سرپل', N'سرپل', 1, NULL)
INSERT [dbo].[Provinces] ([ProvinceId], [ProvinceCode], [MapCode], [EnName], [DrName], [PaName], [IsActive], [BeneficiaryID]) VALUES (31, N'TKH', N'af-tk', N'Takhar', N'تخار', N'تخار', 1, NULL)
INSERT [dbo].[Provinces] ([ProvinceId], [ProvinceCode], [MapCode], [EnName], [DrName], [PaName], [IsActive], [BeneficiaryID]) VALUES (32, N'URZ', N'af-oz', N'Uruzgan', N'ارزگان', N'ارزګان', 1, NULL)
INSERT [dbo].[Provinces] ([ProvinceId], [ProvinceCode], [MapCode], [EnName], [DrName], [PaName], [IsActive], [BeneficiaryID]) VALUES (33, N'WDK', N'af-vr', N'Maydan Wardak', N'میدان وردک', N'میدان وردک', 1, NULL)
INSERT [dbo].[Provinces] ([ProvinceId], [ProvinceCode], [MapCode], [EnName], [DrName], [PaName], [IsActive], [BeneficiaryID]) VALUES (34, N'ZBL', N'af-zb', N'Zabul', N'زابل', N'زابل', 1, NULL)
SET IDENTITY_INSERT [dbo].[Provinces] OFF
/****** Object:  Index [IX_AspNetRoleClaims_RoleId]    Script Date: 4/8/2020 9:27:01 AM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetRoleClaims_RoleId] ON [dbo].[AspNetRoleClaims]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [RoleNameIndex]    Script Date: 4/8/2020 9:27:01 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[NormalizedName] ASC
)
WHERE ([NormalizedName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_AspNetUserClaims_UserId]    Script Date: 4/8/2020 9:27:01 AM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserClaims_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_AspNetUserLogins_UserId]    Script Date: 4/8/2020 9:27:01 AM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserLogins_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_AspNetUserRoles_RoleId]    Script Date: 4/8/2020 9:27:01 AM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserRoles_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_AspNetUserRoles_RoleId1]    Script Date: 4/8/2020 9:27:01 AM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserRoles_RoleId1] ON [dbo].[AspNetUserRoles]
(
	[RoleId1] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_AspNetUserRoles_UserId1]    Script Date: 4/8/2020 9:27:01 AM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserRoles_UserId1] ON [dbo].[AspNetUserRoles]
(
	[UserId1] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [EmailIndex]    Script Date: 4/8/2020 9:27:01 AM ******/
CREATE NONCLUSTERED INDEX [EmailIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedEmail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UserNameIndex]    Script Date: 4/8/2020 9:27:01 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedUserName] ASC
)
WHERE ([NormalizedUserName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_BenefitedFromOrgs_BeneficiaryID]    Script Date: 4/8/2020 9:27:01 AM ******/
CREATE NONCLUSTERED INDEX [IX_BenefitedFromOrgs_BeneficiaryID] ON [dbo].[BenefitedFromOrgs]
(
	[BeneficiaryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_BroughtItems_BeneficiaryID]    Script Date: 4/8/2020 9:27:01 AM ******/
CREATE NONCLUSTERED INDEX [IX_BroughtItems_BeneficiaryID] ON [dbo].[BroughtItems]
(
	[BeneficiaryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Determinations_BeneficiaryID]    Script Date: 4/8/2020 9:27:01 AM ******/
CREATE NONCLUSTERED INDEX [IX_Determinations_BeneficiaryID] ON [dbo].[Determinations]
(
	[BeneficiaryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_HostCountrySchool_BeneficiaryID]    Script Date: 4/8/2020 9:27:01 AM ******/
CREATE NONCLUSTERED INDEX [IX_HostCountrySchool_BeneficiaryID] ON [dbo].[HostCountrySchool]
(
	[BeneficiaryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Individuals_BeneficiaryID]    Script Date: 4/8/2020 9:27:01 AM ******/
CREATE NONCLUSTERED INDEX [IX_Individuals_BeneficiaryID] ON [dbo].[Individuals]
(
	[BeneficiaryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_LivelihoodEmpNeeds_BeneficiaryID]    Script Date: 4/8/2020 9:27:01 AM ******/
CREATE NONCLUSTERED INDEX [IX_LivelihoodEmpNeeds_BeneficiaryID] ON [dbo].[LivelihoodEmpNeeds]
(
	[BeneficiaryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_MainConcerns_BeneficiaryID]    Script Date: 4/8/2020 9:27:01 AM ******/
CREATE NONCLUSTERED INDEX [IX_MainConcerns_BeneficiaryID] ON [dbo].[MainConcerns]
(
	[BeneficiaryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_MoneySources_BeneficiaryID]    Script Date: 4/8/2020 9:27:01 AM ******/
CREATE NONCLUSTERED INDEX [IX_MoneySources_BeneficiaryID] ON [dbo].[MoneySources]
(
	[BeneficiaryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_NeedTools_BeneficiaryID]    Script Date: 4/8/2020 9:27:01 AM ******/
CREATE NONCLUSTERED INDEX [IX_NeedTools_BeneficiaryID] ON [dbo].[NeedTools]
(
	[BeneficiaryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_PostArrivalNeeds_BeneficiaryID]    Script Date: 4/8/2020 9:27:01 AM ******/
CREATE NONCLUSTERED INDEX [IX_PostArrivalNeeds_BeneficiaryID] ON [dbo].[PostArrivalNeeds]
(
	[BeneficiaryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Provinces_BeneficiaryID]    Script Date: 4/8/2020 9:27:01 AM ******/
CREATE NONCLUSTERED INDEX [IX_Provinces_BeneficiaryID] ON [dbo].[Provinces]
(
	[BeneficiaryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_PSN_BeneficiaryID]    Script Date: 4/8/2020 9:27:01 AM ******/
CREATE NONCLUSTERED INDEX [IX_PSN_BeneficiaryID] ON [dbo].[PSN]
(
	[BeneficiaryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_ReturnReasons_BeneficiaryID]    Script Date: 4/8/2020 9:27:01 AM ******/
CREATE NONCLUSTERED INDEX [IX_ReturnReasons_BeneficiaryID] ON [dbo].[ReturnReasons]
(
	[BeneficiaryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Transportations_BeneficiaryID]    Script Date: 4/8/2020 9:27:01 AM ******/
CREATE NONCLUSTERED INDEX [IX_Transportations_BeneficiaryID] ON [dbo].[Transportations]
(
	[BeneficiaryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AspNetRoleClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetRoleClaims] CHECK CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId1] FOREIGN KEY([RoleId1])
REFERENCES [dbo].[AspNetRoles] ([Id])
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId1]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId1] FOREIGN KEY([UserId1])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId1]
GO
ALTER TABLE [dbo].[AspNetUserTokens]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserTokens] CHECK CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[BenefitedFromOrgs]  WITH CHECK ADD  CONSTRAINT [FK_BenefitedFromOrgs_Beneficiaries_BeneficiaryID] FOREIGN KEY([BeneficiaryID])
REFERENCES [dbo].[Beneficiaries] ([BeneficiaryID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[BenefitedFromOrgs] CHECK CONSTRAINT [FK_BenefitedFromOrgs_Beneficiaries_BeneficiaryID]
GO
ALTER TABLE [dbo].[BroughtItems]  WITH CHECK ADD  CONSTRAINT [FK_BroughtItems_Beneficiaries_BeneficiaryID] FOREIGN KEY([BeneficiaryID])
REFERENCES [dbo].[Beneficiaries] ([BeneficiaryID])
GO
ALTER TABLE [dbo].[BroughtItems] CHECK CONSTRAINT [FK_BroughtItems_Beneficiaries_BeneficiaryID]
GO
ALTER TABLE [dbo].[Determinations]  WITH CHECK ADD  CONSTRAINT [FK_Determinations_Beneficiaries_BeneficiaryID] FOREIGN KEY([BeneficiaryID])
REFERENCES [dbo].[Beneficiaries] ([BeneficiaryID])
GO
ALTER TABLE [dbo].[Determinations] CHECK CONSTRAINT [FK_Determinations_Beneficiaries_BeneficiaryID]
GO
ALTER TABLE [dbo].[HostCountrySchool]  WITH CHECK ADD  CONSTRAINT [FK_HostCountrySchool_Beneficiaries_BeneficiaryID] FOREIGN KEY([BeneficiaryID])
REFERENCES [dbo].[Beneficiaries] ([BeneficiaryID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[HostCountrySchool] CHECK CONSTRAINT [FK_HostCountrySchool_Beneficiaries_BeneficiaryID]
GO
ALTER TABLE [dbo].[Individuals]  WITH CHECK ADD  CONSTRAINT [FK_Individuals_Beneficiaries_BeneficiaryID] FOREIGN KEY([BeneficiaryID])
REFERENCES [dbo].[Beneficiaries] ([BeneficiaryID])
GO
ALTER TABLE [dbo].[Individuals] CHECK CONSTRAINT [FK_Individuals_Beneficiaries_BeneficiaryID]
GO
ALTER TABLE [dbo].[LivelihoodEmpNeeds]  WITH CHECK ADD  CONSTRAINT [FK_LivelihoodEmpNeeds_Beneficiaries_BeneficiaryID] FOREIGN KEY([BeneficiaryID])
REFERENCES [dbo].[Beneficiaries] ([BeneficiaryID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[LivelihoodEmpNeeds] CHECK CONSTRAINT [FK_LivelihoodEmpNeeds_Beneficiaries_BeneficiaryID]
GO
ALTER TABLE [dbo].[MainConcerns]  WITH CHECK ADD  CONSTRAINT [FK_MainConcerns_Beneficiaries_BeneficiaryID] FOREIGN KEY([BeneficiaryID])
REFERENCES [dbo].[Beneficiaries] ([BeneficiaryID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[MainConcerns] CHECK CONSTRAINT [FK_MainConcerns_Beneficiaries_BeneficiaryID]
GO
ALTER TABLE [dbo].[MoneySources]  WITH CHECK ADD  CONSTRAINT [FK_MoneySources_Beneficiaries_BeneficiaryID] FOREIGN KEY([BeneficiaryID])
REFERENCES [dbo].[Beneficiaries] ([BeneficiaryID])
GO
ALTER TABLE [dbo].[MoneySources] CHECK CONSTRAINT [FK_MoneySources_Beneficiaries_BeneficiaryID]
GO
ALTER TABLE [dbo].[NeedTools]  WITH CHECK ADD  CONSTRAINT [FK_NeedTools_Beneficiaries_BeneficiaryID] FOREIGN KEY([BeneficiaryID])
REFERENCES [dbo].[Beneficiaries] ([BeneficiaryID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[NeedTools] CHECK CONSTRAINT [FK_NeedTools_Beneficiaries_BeneficiaryID]
GO
ALTER TABLE [dbo].[PostArrivalNeeds]  WITH CHECK ADD  CONSTRAINT [FK_PostArrivalNeeds_Beneficiaries_BeneficiaryID] FOREIGN KEY([BeneficiaryID])
REFERENCES [dbo].[Beneficiaries] ([BeneficiaryID])
GO
ALTER TABLE [dbo].[PostArrivalNeeds] CHECK CONSTRAINT [FK_PostArrivalNeeds_Beneficiaries_BeneficiaryID]
GO
ALTER TABLE [dbo].[Provinces]  WITH CHECK ADD  CONSTRAINT [FK_Provinces_Beneficiaries_BeneficiaryID] FOREIGN KEY([BeneficiaryID])
REFERENCES [dbo].[Beneficiaries] ([BeneficiaryID])
GO
ALTER TABLE [dbo].[Provinces] CHECK CONSTRAINT [FK_Provinces_Beneficiaries_BeneficiaryID]
GO
ALTER TABLE [dbo].[PSN]  WITH CHECK ADD  CONSTRAINT [FK_PSN_Beneficiaries_BeneficiaryID] FOREIGN KEY([BeneficiaryID])
REFERENCES [dbo].[Beneficiaries] ([BeneficiaryID])
GO
ALTER TABLE [dbo].[PSN] CHECK CONSTRAINT [FK_PSN_Beneficiaries_BeneficiaryID]
GO
ALTER TABLE [dbo].[ReturnReasons]  WITH CHECK ADD  CONSTRAINT [FK_ReturnReasons_Beneficiaries_BeneficiaryID] FOREIGN KEY([BeneficiaryID])
REFERENCES [dbo].[Beneficiaries] ([BeneficiaryID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ReturnReasons] CHECK CONSTRAINT [FK_ReturnReasons_Beneficiaries_BeneficiaryID]
GO
ALTER TABLE [dbo].[Transportations]  WITH CHECK ADD  CONSTRAINT [FK_Transportations_Beneficiaries_BeneficiaryID] FOREIGN KEY([BeneficiaryID])
REFERENCES [dbo].[Beneficiaries] ([BeneficiaryID])
GO
ALTER TABLE [dbo].[Transportations] CHECK CONSTRAINT [FK_Transportations_Beneficiaries_BeneficiaryID]
GO
USE [master]
GO
ALTER DATABASE [BSAF] SET  READ_WRITE 
GO
