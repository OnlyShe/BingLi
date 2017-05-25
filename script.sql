USE [yixiang]
GO
/****** Object:  Table [dbo].[answer]    Script Date: 2017/5/24 14:17:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[answer](
	[an_id] [int] IDENTITY(100001,1) NOT NULL,
	[an_content] [varchar](45) NOT NULL,
	[q_id] [int] NOT NULL,
	[d_id] [int] NOT NULL,
	[an_time] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[an_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[disease]    Script Date: 2017/5/24 14:17:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[disease](
	[dis_id] [int] IDENTITY(100001,1) NOT NULL,
	[dis_name] [varchar](45) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[dis_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[doctors]    Script Date: 2017/5/24 14:17:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[doctors](
	[d_id] [int] IDENTITY(100001,1) NOT NULL,
	[d_name] [varchar](45) NOT NULL,
	[h_id] [int] NOT NULL,
	[d_idcard] [nchar](18) NOT NULL,
	[pass] [nchar](45) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[d_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[explain]    Script Date: 2017/5/24 14:17:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[explain](
	[e_id] [int] IDENTITY(100001,1) NOT NULL,
	[d_id] [int] NOT NULL,
	[e_express] [varchar](45) NULL,
	[e_date] [datetime] NULL,
	[dis_id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[e_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[hospitals]    Script Date: 2017/5/24 14:17:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[hospitals](
	[h_id] [int] IDENTITY(100001,1) NOT NULL,
	[h_name] [varchar](45) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[h_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[question]    Script Date: 2017/5/24 14:17:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[question](
	[q_id] [int] IDENTITY(100001,1) NOT NULL,
	[q_content] [varchar](45) NOT NULL,
	[u_id] [int] NOT NULL,
	[q_time] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[q_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[records]    Script Date: 2017/5/24 14:17:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[records](
	[r_id] [int] IDENTITY(100001,1) NOT NULL,
	[u_name] [varchar](45) NOT NULL,
	[u_idcard] [nchar](18) NOT NULL,
	[u_sex] [char](2) NULL,
	[r_root] [varchar](45) NOT NULL,
	[d_id] [int] NOT NULL,
	[dis_id] [int] NOT NULL,
	[r_time] [datetime] NULL,
	[r_linic] [varchar](45) NULL,
	[r_check] [varchar](45) NULL,
	[r_treat] [varchar](45) NULL,
	[r_medcine] [varchar](45) NULL,
	[r_cost] [nchar](45) NULL,
PRIMARY KEY CLUSTERED 
(
	[r_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[users]    Script Date: 2017/5/24 14:17:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[users](
	[u_id] [int] IDENTITY(100001,1) NOT NULL,
	[u_name] [varchar](45) NOT NULL,
	[u_real_name] [varchar](45) NOT NULL,
	[u_idcard] [nchar](18) NOT NULL,
	[pass] [nchar](45) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[u_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[answer] ON 

INSERT [dbo].[answer] ([an_id], [an_content], [q_id], [d_id], [an_time]) VALUES (100001, N'高血压是一种很危险的病', 100001, 100002, CAST(0x0000A77C00C6D893 AS DateTime))
SET IDENTITY_INSERT [dbo].[answer] OFF
SET IDENTITY_INSERT [dbo].[disease] ON 

INSERT [dbo].[disease] ([dis_id], [dis_name]) VALUES (100001, N'高血压')
SET IDENTITY_INSERT [dbo].[disease] OFF
SET IDENTITY_INSERT [dbo].[doctors] ON 

INSERT [dbo].[doctors] ([d_id], [d_name], [h_id], [d_idcard], [pass]) VALUES (100002, N'李四', 100001, N'145152356325632589', N'123456                                       ')
SET IDENTITY_INSERT [dbo].[doctors] OFF
SET IDENTITY_INSERT [dbo].[explain] ON 

INSERT [dbo].[explain] ([e_id], [d_id], [e_express], [e_date], [dis_id]) VALUES (100001, 100002, N'高血压是一种病', CAST(0x0000A77C00BF2506 AS DateTime), 100001)
SET IDENTITY_INSERT [dbo].[explain] OFF
SET IDENTITY_INSERT [dbo].[hospitals] ON 

INSERT [dbo].[hospitals] ([h_id], [h_name]) VALUES (100001, N'第一人民医院')
SET IDENTITY_INSERT [dbo].[hospitals] OFF
SET IDENTITY_INSERT [dbo].[question] ON 

INSERT [dbo].[question] ([q_id], [q_content], [u_id], [q_time]) VALUES (100001, N'高血压的具体病症', 100002, CAST(0x0000A77C00C6275F AS DateTime))
SET IDENTITY_INSERT [dbo].[question] OFF
SET IDENTITY_INSERT [dbo].[records] ON 

INSERT [dbo].[records] ([r_id], [u_name], [u_idcard], [u_sex], [r_root], [d_id], [dis_id], [r_time], [r_linic], [r_check], [r_treat], [r_medcine], [r_cost]) VALUES (100003, N'李红', N'665548199701086484', N'女', N'浙江', 100002, 100001, CAST(0x0000A77C00CB4EB7 AS DateTime), N'浮肿', N'高血压巴拉巴拉', NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[records] OFF
SET IDENTITY_INSERT [dbo].[users] ON 

INSERT [dbo].[users] ([u_id], [u_name], [u_real_name], [u_idcard], [pass]) VALUES (100002, N'小红', N'李红', N'665548199701086484', N'123456                                       ')
SET IDENTITY_INSERT [dbo].[users] OFF
ALTER TABLE [dbo].[answer]  WITH CHECK ADD FOREIGN KEY([d_id])
REFERENCES [dbo].[doctors] ([d_id])
GO
ALTER TABLE [dbo].[answer]  WITH CHECK ADD FOREIGN KEY([q_id])
REFERENCES [dbo].[question] ([q_id])
GO
ALTER TABLE [dbo].[doctors]  WITH CHECK ADD FOREIGN KEY([h_id])
REFERENCES [dbo].[hospitals] ([h_id])
GO
ALTER TABLE [dbo].[explain]  WITH CHECK ADD FOREIGN KEY([dis_id])
REFERENCES [dbo].[disease] ([dis_id])
GO
ALTER TABLE [dbo].[explain]  WITH CHECK ADD FOREIGN KEY([d_id])
REFERENCES [dbo].[doctors] ([d_id])
GO
ALTER TABLE [dbo].[question]  WITH CHECK ADD FOREIGN KEY([u_id])
REFERENCES [dbo].[users] ([u_id])
GO
ALTER TABLE [dbo].[records]  WITH CHECK ADD FOREIGN KEY([dis_id])
REFERENCES [dbo].[disease] ([dis_id])
GO
ALTER TABLE [dbo].[records]  WITH CHECK ADD FOREIGN KEY([d_id])
REFERENCES [dbo].[doctors] ([d_id])
GO
ALTER TABLE [dbo].[records]  WITH CHECK ADD CHECK  (([u_sex]='男' OR [u_sex]='女'))
GO
