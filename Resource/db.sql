USE [CMSCore]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 6/15/2018 12:14:51 AM ******/
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
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 6/15/2018 12:14:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
	[RoleId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetRoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 6/15/2018 12:14:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](450) NOT NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[Discriminator] [nvarchar](max) NOT NULL,
	[Name] [nvarchar](256) NULL,
	[NormalizedName] [nvarchar](256) NULL,
 CONSTRAINT [PK_AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 6/15/2018 12:14:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 6/15/2018 12:14:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](450) NOT NULL,
	[ProviderKey] [nvarchar](450) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 6/15/2018 12:14:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](450) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 6/15/2018 12:14:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](450) NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[Email] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[LockoutEnd] [datetimeoffset](7) NULL,
	[NormalizedEmail] [nvarchar](256) NULL,
	[NormalizedUserName] [nvarchar](256) NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[UserName] [nvarchar](256) NULL,
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 6/15/2018 12:14:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserTokens](
	[UserId] [nvarchar](450) NOT NULL,
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
/****** Object:  Table [dbo].[AutoHistory]    Script Date: 6/15/2018 12:14:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AutoHistory](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Changed] [nvarchar](2048) NULL,
	[Created] [datetime2](7) NOT NULL,
	[Kind] [int] NOT NULL,
	[RowId] [nvarchar](50) NOT NULL,
	[TableName] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_AutoHistory] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Categories]    Script Date: 6/15/2018 12:14:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CategoriesData] [nvarchar](max) NULL,
	[CategoriesOptions] [nvarchar](max) NULL,
	[DateCreate] [datetime2](7) NOT NULL,
	[DateModified] [datetime2](7) NOT NULL,
	[UniqeId] [uniqueidentifier] NOT NULL,
	[UserId] [nvarchar](max) NULL,
 CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Medias]    Script Date: 6/15/2018 12:14:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Medias](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[DateCreate] [datetime2](7) NOT NULL,
	[DateModified] [datetime2](7) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[OwnerId] [nvarchar](450) NULL,
	[Path] [nvarchar](max) NULL,
	[UniqeId] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_Medias] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[OpenIddictApplications]    Script Date: 6/15/2018 12:14:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OpenIddictApplications](
	[Id] [nvarchar](450) NOT NULL,
	[ClientId] [nvarchar](450) NOT NULL,
	[ClientSecret] [nvarchar](max) NULL,
	[ConcurrencyToken] [nvarchar](max) NULL,
	[ConsentType] [nvarchar](max) NULL,
	[DisplayName] [nvarchar](max) NULL,
	[Permissions] [nvarchar](max) NULL,
	[PostLogoutRedirectUris] [nvarchar](max) NULL,
	[Properties] [nvarchar](max) NULL,
	[RedirectUris] [nvarchar](max) NULL,
	[Type] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_OpenIddictApplications] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[OpenIddictAuthorizations]    Script Date: 6/15/2018 12:14:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OpenIddictAuthorizations](
	[Id] [nvarchar](450) NOT NULL,
	[ApplicationId] [nvarchar](450) NULL,
	[ConcurrencyToken] [nvarchar](max) NULL,
	[Properties] [nvarchar](max) NULL,
	[Scopes] [nvarchar](max) NULL,
	[Status] [nvarchar](max) NOT NULL,
	[Subject] [nvarchar](max) NOT NULL,
	[Type] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_OpenIddictAuthorizations] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[OpenIddictScopes]    Script Date: 6/15/2018 12:14:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OpenIddictScopes](
	[Id] [nvarchar](450) NOT NULL,
	[ConcurrencyToken] [nvarchar](max) NULL,
	[Description] [nvarchar](max) NULL,
	[DisplayName] [nvarchar](max) NULL,
	[Name] [nvarchar](450) NOT NULL,
	[Properties] [nvarchar](max) NULL,
	[Resources] [nvarchar](max) NULL,
 CONSTRAINT [PK_OpenIddictScopes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[OpenIddictTokens]    Script Date: 6/15/2018 12:14:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OpenIddictTokens](
	[Id] [nvarchar](450) NOT NULL,
	[ApplicationId] [nvarchar](450) NULL,
	[AuthorizationId] [nvarchar](450) NULL,
	[ConcurrencyToken] [nvarchar](max) NULL,
	[CreationDate] [datetimeoffset](7) NULL,
	[ExpirationDate] [datetimeoffset](7) NULL,
	[Payload] [nvarchar](max) NULL,
	[Properties] [nvarchar](max) NULL,
	[ReferenceId] [nvarchar](450) NULL,
	[Status] [nvarchar](max) NULL,
	[Subject] [nvarchar](max) NOT NULL,
	[Type] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_OpenIddictTokens] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PasswordRequests]    Script Date: 6/15/2018 12:14:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PasswordRequests](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[DateCreate] [datetime2](7) NOT NULL,
	[DateModified] [datetime2](7) NOT NULL,
	[Email] [nvarchar](max) NULL,
	[IsActive] [bit] NOT NULL,
	[Token] [nvarchar](max) NULL,
	[UniqeId] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_PasswordRequests] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Posts]    Script Date: 6/15/2018 12:14:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Posts](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Content] [nvarchar](max) NULL,
	[DateCreate] [datetime2](7) NOT NULL,
	[DateModified] [datetime2](7) NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[ShortDescription] [nvarchar](max) NULL,
	[TagsId] [int] NULL,
	[Title] [nvarchar](max) NULL,
	[UniqeId] [uniqueidentifier] NOT NULL,
	[UserId] [nvarchar](450) NULL,
 CONSTRAINT [PK_Posts] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TagOptions]    Script Date: 6/15/2018 12:14:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TagOptions](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[DateCreate] [datetime2](7) NOT NULL,
	[DateModified] [datetime2](7) NOT NULL,
	[Options] [nvarchar](max) NULL,
	[PostId] [int] NULL,
	[UniqeId] [uniqueidentifier] NOT NULL,
	[UserId] [nvarchar](450) NULL,
 CONSTRAINT [PK_TagOptions] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Tags]    Script Date: 6/15/2018 12:14:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tags](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[DateCreate] [datetime2](7) NOT NULL,
	[DateModified] [datetime2](7) NOT NULL,
	[TagData] [nvarchar](max) NULL,
	[TagOptions] [nvarchar](max) NULL,
	[UniqeId] [uniqueidentifier] NOT NULL,
	[UserId] [nvarchar](max) NULL,
 CONSTRAINT [PK_Tags] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Themes]    Script Date: 6/15/2018 12:14:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Themes](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[DateCreate] [datetime2](7) NOT NULL,
	[DateModified] [datetime2](7) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Path] [nvarchar](max) NULL,
	[Thumbnail] [nvarchar](max) NULL,
	[UniqeId] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_Themes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20180531172611_InitDb', N'2.1.0-rtm-30799')
INSERT [dbo].[AspNetRoles] ([Id], [ConcurrencyStamp], [Discriminator], [Name], [NormalizedName]) VALUES (N'551d1c8b-2dde-47ca-baf4-4f00f3e7c053', N'2c9f954f-260c-48a9-b8b7-d526a3e20414', N'ApplicationRole', N'Administrator', N'ADMINISTRATOR')
INSERT [dbo].[AspNetRoles] ([Id], [ConcurrencyStamp], [Discriminator], [Name], [NormalizedName]) VALUES (N'6b46ab13-1683-4b36-9023-a70f030df46c', N'2a4d827b-a4df-4c85-ac38-29e3876a21f9', N'ApplicationRole', N'Owner', N'OWNER')
INSERT [dbo].[AspNetRoles] ([Id], [ConcurrencyStamp], [Discriminator], [Name], [NormalizedName]) VALUES (N'ba4ae6a6-ad42-4614-8608-05c4cec23d31', N'cecb6138-6728-4d0c-a360-2e68cda6dee6', N'ApplicationRole', N'Editor', N'EDITOR')
INSERT [dbo].[AspNetRoles] ([Id], [ConcurrencyStamp], [Discriminator], [Name], [NormalizedName]) VALUES (N'bbdcb9e7-aaad-4a69-83d2-bd32e811c402', N'2ec8f545-99e8-4672-a28a-8962a8dbec9a', N'ApplicationRole', N'ContentWriter', N'CONTENTWRITER')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'8dd1feb6-8068-4593-83b8-291f523483dc', N'551d1c8b-2dde-47ca-baf4-4f00f3e7c053')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'c3e40e7f-aca2-4f55-ae88-44a44f64dd12', N'551d1c8b-2dde-47ca-baf4-4f00f3e7c053')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'c3e40e7f-aca2-4f55-ae88-44a44f64dd12', N'6b46ab13-1683-4b36-9023-a70f030df46c')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'4d272cc9-c2ff-42eb-8afc-5509353fdf42', N'ba4ae6a6-ad42-4614-8608-05c4cec23d31')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'68627c5a-5788-4820-bd9d-0034d3f0239b', N'ba4ae6a6-ad42-4614-8608-05c4cec23d31')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'92bf0744-98e0-4ae7-b1de-0cddf5327989', N'ba4ae6a6-ad42-4614-8608-05c4cec23d31')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'a1add451-7dd2-46fd-9877-1996e3f1fb4c', N'ba4ae6a6-ad42-4614-8608-05c4cec23d31')
INSERT [dbo].[AspNetUsers] ([Id], [AccessFailedCount], [ConcurrencyStamp], [Email], [EmailConfirmed], [LockoutEnabled], [LockoutEnd], [NormalizedEmail], [NormalizedUserName], [PasswordHash], [PhoneNumber], [PhoneNumberConfirmed], [SecurityStamp], [TwoFactorEnabled], [UserName]) VALUES (N'4d272cc9-c2ff-42eb-8afc-5509353fdf42', 0, N'500c5572-17c0-4dc0-817d-e47693333712', N'ngohungphuc4@gmail.com', 1, 0, NULL, N'NGOHUNGPHUC4@GMAIL.COM', N'TONY4', N'AQAAAAEAACcQAAAAEIE7uii0lFUUBCRYOcGDFKAomwW6EKwSxYKy7zWB9G+9u2LECW4eFF0N0nI1/CSZyA==', NULL, 1, N'5ee54ba1-c45b-4dcf-aadd-2ddecead5697', 0, N'tony4')
INSERT [dbo].[AspNetUsers] ([Id], [AccessFailedCount], [ConcurrencyStamp], [Email], [EmailConfirmed], [LockoutEnabled], [LockoutEnd], [NormalizedEmail], [NormalizedUserName], [PasswordHash], [PhoneNumber], [PhoneNumberConfirmed], [SecurityStamp], [TwoFactorEnabled], [UserName]) VALUES (N'68627c5a-5788-4820-bd9d-0034d3f0239b', 0, N'3ba9befb-a760-41c9-8112-b8f28ab56b1a', N'ngohungphuc2@gmail.com', 1, 0, NULL, N'NGOHUNGPHUC2@GMAIL.COM', N'TONY2', N'AQAAAAEAACcQAAAAEHuZI8yUPYzMIAjVLZh6g4FLyeF162IfKtRWFu4yv08QUVlNKTsnvQu8EZV5+vqnqw==', NULL, 1, N'05ba9067-28d2-40ba-8465-f3d257e50ae7', 0, N'tony2')
INSERT [dbo].[AspNetUsers] ([Id], [AccessFailedCount], [ConcurrencyStamp], [Email], [EmailConfirmed], [LockoutEnabled], [LockoutEnd], [NormalizedEmail], [NormalizedUserName], [PasswordHash], [PhoneNumber], [PhoneNumberConfirmed], [SecurityStamp], [TwoFactorEnabled], [UserName]) VALUES (N'8dd1feb6-8068-4593-83b8-291f523483dc', 0, N'ae1621fc-77c0-4fcf-91c0-017a7ee4ebee', N'ngohungphuc1@gmail.com', 1, 0, NULL, N'NGOHUNGPHUC1@GMAIL.COM', N'TONY1', N'AQAAAAEAACcQAAAAEOGDNb25/Ohsophl95WkR9YsM0lLyG0aFkGNT4XX6fdzl3ytVcNJ/Tm2zvDAYfBiMw==', NULL, 1, N'aa94b304-14eb-4cac-bedf-eeb4bbb8d13f', 0, N'tony1')
INSERT [dbo].[AspNetUsers] ([Id], [AccessFailedCount], [ConcurrencyStamp], [Email], [EmailConfirmed], [LockoutEnabled], [LockoutEnd], [NormalizedEmail], [NormalizedUserName], [PasswordHash], [PhoneNumber], [PhoneNumberConfirmed], [SecurityStamp], [TwoFactorEnabled], [UserName]) VALUES (N'92bf0744-98e0-4ae7-b1de-0cddf5327989', 0, N'fd0e4b78-d032-40bb-99a2-5d36a000798e', N'ngohungphuc3@gmail.com', 1, 0, NULL, N'NGOHUNGPHUC3@GMAIL.COM', N'TONY3', N'AQAAAAEAACcQAAAAEKMgBDLEcVGPUder17oMsSBIPl3OQCU+BvmjfctsCaWHqJ/4tinZ6cuHRqK2zO4hUw==', NULL, 1, N'2387e104-4d99-47a7-88fd-e97511f91ffd', 0, N'tony3')
INSERT [dbo].[AspNetUsers] ([Id], [AccessFailedCount], [ConcurrencyStamp], [Email], [EmailConfirmed], [LockoutEnabled], [LockoutEnd], [NormalizedEmail], [NormalizedUserName], [PasswordHash], [PhoneNumber], [PhoneNumberConfirmed], [SecurityStamp], [TwoFactorEnabled], [UserName]) VALUES (N'a1add451-7dd2-46fd-9877-1996e3f1fb4c', 0, N'b1cee777-e9cb-4a50-aaab-3b556f3374d5', N'ngohungphuc5@gmail.com', 1, 0, NULL, N'NGOHUNGPHUC5@GMAIL.COM', N'TONY5', N'AQAAAAEAACcQAAAAEBLTW7Bqj6/chwBQQ5HEA9vpVAdy9SKsQX8PUfA/RtGdrHYt7If/m+H27ljrsBbitQ==', NULL, 1, N'fd695911-46b2-4ff1-b217-b1b7d6519d2a', 0, N'tony5')
INSERT [dbo].[AspNetUsers] ([Id], [AccessFailedCount], [ConcurrencyStamp], [Email], [EmailConfirmed], [LockoutEnabled], [LockoutEnd], [NormalizedEmail], [NormalizedUserName], [PasswordHash], [PhoneNumber], [PhoneNumberConfirmed], [SecurityStamp], [TwoFactorEnabled], [UserName]) VALUES (N'c3e40e7f-aca2-4f55-ae88-44a44f64dd12', 0, N'c4dc4627-e3fe-4976-9e05-3fdd3adec7a4', N'ngohungphuc95@gmail.com', 1, 0, NULL, N'NGOHUNGPHUC95@GMAIL.COM', N'TONY', N'AQAAAAEAACcQAAAAEDuhzD4f+J0XO/e2kgJzB7bd3ih9YVSpkavOavmy3Mxkmtt8NjDev/Oob7Q0K/Y0KQ==', NULL, 1, N'd453998d-a214-4b6e-961d-7ed186069907', 0, N'tony')
INSERT [dbo].[OpenIddictAuthorizations] ([Id], [ApplicationId], [ConcurrencyToken], [Properties], [Scopes], [Status], [Subject], [Type]) VALUES (N'ad515572-cf47-4771-a1c7-b8b5a69016dc', NULL, N'2b126797-6ccb-4125-9443-23b3b8f14cd6', NULL, N'["offline_access"]', N'valid', N'c3e40e7f-aca2-4f55-ae88-44a44f64dd12', N'ad-hoc')
INSERT [dbo].[OpenIddictTokens] ([Id], [ApplicationId], [AuthorizationId], [ConcurrencyToken], [CreationDate], [ExpirationDate], [Payload], [Properties], [ReferenceId], [Status], [Subject], [Type]) VALUES (N'724d234b-9430-40aa-94b5-911a63f5fdb9', NULL, N'ad515572-cf47-4771-a1c7-b8b5a69016dc', N'2abd95a8-9bba-41d5-8bad-05845ea11141', CAST(N'2018-06-14T17:13:46.0000000+00:00' AS DateTimeOffset), CAST(N'2018-06-28T17:13:46.0000000+00:00' AS DateTimeOffset), NULL, NULL, NULL, N'valid', N'c3e40e7f-aca2-4f55-ae88-44a44f64dd12', N'refresh_token')
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
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserTokens]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserTokens] CHECK CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[Medias]  WITH CHECK ADD  CONSTRAINT [FK_Medias_AspNetUsers_OwnerId] FOREIGN KEY([OwnerId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[Medias] CHECK CONSTRAINT [FK_Medias_AspNetUsers_OwnerId]
GO
ALTER TABLE [dbo].[OpenIddictAuthorizations]  WITH CHECK ADD  CONSTRAINT [FK_OpenIddictAuthorizations_OpenIddictApplications_ApplicationId] FOREIGN KEY([ApplicationId])
REFERENCES [dbo].[OpenIddictApplications] ([Id])
GO
ALTER TABLE [dbo].[OpenIddictAuthorizations] CHECK CONSTRAINT [FK_OpenIddictAuthorizations_OpenIddictApplications_ApplicationId]
GO
ALTER TABLE [dbo].[OpenIddictTokens]  WITH CHECK ADD  CONSTRAINT [FK_OpenIddictTokens_OpenIddictApplications_ApplicationId] FOREIGN KEY([ApplicationId])
REFERENCES [dbo].[OpenIddictApplications] ([Id])
GO
ALTER TABLE [dbo].[OpenIddictTokens] CHECK CONSTRAINT [FK_OpenIddictTokens_OpenIddictApplications_ApplicationId]
GO
ALTER TABLE [dbo].[OpenIddictTokens]  WITH CHECK ADD  CONSTRAINT [FK_OpenIddictTokens_OpenIddictAuthorizations_AuthorizationId] FOREIGN KEY([AuthorizationId])
REFERENCES [dbo].[OpenIddictAuthorizations] ([Id])
GO
ALTER TABLE [dbo].[OpenIddictTokens] CHECK CONSTRAINT [FK_OpenIddictTokens_OpenIddictAuthorizations_AuthorizationId]
GO
ALTER TABLE [dbo].[Posts]  WITH CHECK ADD  CONSTRAINT [FK_Posts_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[Posts] CHECK CONSTRAINT [FK_Posts_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[Posts]  WITH CHECK ADD  CONSTRAINT [FK_Posts_Tags_TagsId] FOREIGN KEY([TagsId])
REFERENCES [dbo].[Tags] ([Id])
GO
ALTER TABLE [dbo].[Posts] CHECK CONSTRAINT [FK_Posts_Tags_TagsId]
GO
ALTER TABLE [dbo].[TagOptions]  WITH CHECK ADD  CONSTRAINT [FK_TagOptions_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[TagOptions] CHECK CONSTRAINT [FK_TagOptions_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[TagOptions]  WITH CHECK ADD  CONSTRAINT [FK_TagOptions_Posts_PostId] FOREIGN KEY([PostId])
REFERENCES [dbo].[Posts] ([Id])
GO
ALTER TABLE [dbo].[TagOptions] CHECK CONSTRAINT [FK_TagOptions_Posts_PostId]
GO
