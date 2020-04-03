USE [BSAF]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 4/1/2020 11:27:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](128) NOT NULL,
	[Email] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](256) NULL,
	[PhoneNumberConfirmed] [bit] NULL,
	[TwoFactorEnabled] [bit] NULL,
	[LockoutEnd] [datetimeoffset](7) NULL,
	[LockoutEnabled] [bit] NULL,
	[AccessFailedCount] [int] NULL,
	[UserName] [nvarchar](256) NOT NULL,
	[StationCode] [nvarchar](200) NULL,
	[NormalizedEmail] [nvarchar](256) NULL,
	[NormalizedUserName] [nvarchar](256) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [UserName], [StationCode], [NormalizedEmail], [NormalizedUserName], [ConcurrencyStamp]) VALUES (N'3fd249ab-4ddd-477b-86e7-8f956d284648', N'a@gmail.com', 0, N'AQAAAAEAACcQAAAAEI1oT8e+GGbZks7Wht9nTG/g53uS8pz/KVTn7ufywj5DCpptG1RfxOg0xsL19D6MmQ==', N'OFFILTD3BGFD7XJXJPFA62I5H6LTWAKD', NULL, 0, 0, NULL, 1, 0, N'ahmad', NULL, N'A@GMAIL.COM', N'AHMAD', N'e239066c-901f-4503-afbd-29f55a8be03b')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [UserName], [StationCode], [NormalizedEmail], [NormalizedUserName], [ConcurrencyStamp]) VALUES (N'9c9fee83-2218-4a36-ab1f-658c140071f6', N'sharifullahsh@gmail.com', 0, N'AKBpKQgHFcwKUz+V5k014P1oHCBhwJHwNFzp0CIj/dFtd24fzbnG/zLlN6mFv2sERQ==', N'b240e4ee-e369-442b-9a96-7dcf3e51e5ab', NULL, 0, 0, NULL, 0, 0, N'sharif', N'TRK', NULL, NULL, NULL)
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [UserName], [StationCode], [NormalizedEmail], [NormalizedUserName], [ConcurrencyStamp]) VALUES (N'dbeecc31-fc19-4fb9-b10d-001fa4243592', N'zia@gmail.com', 0, N'ACIQ/wOSYZz3Xlm7w2yhiE6N1VZSDZ+ESgHVOgZTyEejlZ1Z5kRr5EwC4U2KmHQjtQ==', N'a23bf14d-c9d3-4263-9a65-0ccebf78efb3', NULL, 0, 0, NULL, 1, 0, N'zia', N'KBL', NULL, NULL, NULL)
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [UserName], [StationCode], [NormalizedEmail], [NormalizedUserName], [ConcurrencyStamp]) VALUES (N'e2af6f69-f0fd-4feb-814a-ea33ad9b26c0', N's@gmail.com', 0, N'AOopF4B9ihtTJ7jSzhyVeBCbpaWvGeg8exkOfUOHrObrVmYlM19Fd33h9G4GabzqIw==', N'03df4e3d-29d3-40d4-8e20-061a337d724d', NULL, 0, 0, NULL, 1, 0, N's', N'KBL', NULL, NULL, NULL)
