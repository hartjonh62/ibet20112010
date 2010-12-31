USE [ibb20112010]
GO
/****** Object:  Table [dbo].[tblAgent]    Script Date: 12/31/2010 17:36:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblAgent](
	[AgentId] [bigint] IDENTITY(1,1) NOT NULL,
	[AgentUserName] [nvarchar](50) NULL,
	[AgentPass] [nvarchar](50) NULL,
	[AgentPermission] [varchar](50) NULL,
 CONSTRAINT [PK_TBL_Agent] PRIMARY KEY CLUSTERED 
(
	[AgentId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[tblAgent] ON
INSERT [dbo].[tblAgent] ([AgentId], [AgentUserName], [AgentPass], [AgentPermission]) VALUES (1, N'admin', N'admin', NULL)
INSERT [dbo].[tblAgent] ([AgentId], [AgentUserName], [AgentPass], [AgentPermission]) VALUES (2, N'thangnx', N'thangnxmvc', NULL)
SET IDENTITY_INSERT [dbo].[tblAgent] OFF
/****** Object:  Table [dbo].[tblAdm_Accounts]    Script Date: 12/31/2010 17:36:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblAdm_Accounts](
	[AdminId] [int] IDENTITY(1,1) NOT NULL,
	[AdminName] [nvarchar](250) NULL,
	[AdminPass] [nvarchar](250) NULL,
	[SubAdmin] [int] NULL,
	[GroupHolders] [nvarchar](50) NULL,
	[SGMIDs] [nvarchar](200) NULL,
	[LastLoginTime] [datetime] NULL,
	[LastLoginIp] [nvarchar](50) NULL,
	[CreateDate] [datetime] NULL,
	[CreateBy] [int] NULL,
	[ModifyDate] [datetime] NULL,
	[ModifyBy] [int] NULL,
 CONSTRAINT [PK_Admins] PRIMARY KEY CLUSTERED 
(
	[AdminId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[tblAdm_Accounts] ON
INSERT [dbo].[tblAdm_Accounts] ([AdminId], [AdminName], [AdminPass], [SubAdmin], [GroupHolders], [SGMIDs], [LastLoginTime], [LastLoginIp], [CreateDate], [CreateBy], [ModifyDate], [ModifyBy]) VALUES (1, N'admin', N'E10ADC3949BA59ABBE56E057F20F883E', 0, N'Admin', N'0,0', CAST(0x00009DC300A78AA0 AS DateTime), NULL, CAST(0x00009DC300970FE0 AS DateTime), NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[tblAdm_Accounts] OFF
/****** Object:  Table [dbo].[tblAccounts]    Script Date: 12/31/2010 17:36:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblAccounts](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[ParentID] [bigint] NULL,
	[SGMId] [bigint] NULL,
	[GMId] [bigint] NULL,
	[MaterId] [bigint] NULL,
	[AgentId] [bigint] NULL,
	[AccountID] [bigint] NULL,
	[AccGrade] [int] NULL,
	[UserName] [nvarchar](50) NULL,
	[Password] [nvarchar](150) NULL,
	[NickName] [nvarchar](250) NULL,
	[Firtname] [nvarchar](100) NULL,
	[LastName] [nvarchar](150) NULL,
	[Phone] [nvarchar](50) NULL,
	[MobilePhone] [nvarchar](50) NULL,
	[MaxCredit] [decimal](18, 2) NULL,
	[Fax] [nvarchar](50) NULL,
	[IsOpen] [bit] NULL,
	[IsSuspended] [bit] NULL,
	[AllowAutoPT] [bit] NULL,
	[TransferConditionId] [int] NULL,
	[CreateBy] [bigint] NULL,
	[CreateDate] [datetime] NULL,
	[ModifyBy] [bigint] NULL,
	[ModifyDate] [datetime] NULL,
	[LastTxn] [datetime] NULL,
	[PasswordExpiryDate] [datetime] NULL,
	[LoginIP] [nvarchar](50) NULL,
	[LoginTime] [datetime] NULL,
	[LastLoginIP] [nvarchar](50) NULL,
	[LastLoginTime] [datetime] NULL,
	[IsOutright] [bit] NULL,
 CONSTRAINT [PK_tblUsers] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'1:SGM; 2:GM; 3:Master; 4:Agent; 5:Member' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tblAccounts', @level2type=N'COLUMN',@level2name=N'AccGrade'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Thoi gian bet gan nhat' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tblAccounts', @level2type=N'COLUMN',@level2name=N'LastTxn'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Thoi gian expriry password' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tblAccounts', @level2type=N'COLUMN',@level2name=N'PasswordExpiryDate'
GO
SET IDENTITY_INSERT [dbo].[tblAccounts] ON
INSERT [dbo].[tblAccounts] ([ID], [ParentID], [SGMId], [GMId], [MaterId], [AgentId], [AccountID], [AccGrade], [UserName], [Password], [NickName], [Firtname], [LastName], [Phone], [MobilePhone], [MaxCredit], [Fax], [IsOpen], [IsSuspended], [AllowAutoPT], [TransferConditionId], [CreateBy], [CreateDate], [ModifyBy], [ModifyDate], [LastTxn], [PasswordExpiryDate], [LoginIP], [LoginTime], [LastLoginIP], [LastLoginTime], [IsOutright]) VALUES (2, 15, 4, 7, 10, 15, 15, 4, N'SKCE909Sub01', N'E10ADC3949BA59ABBE56E057F20F883E', N'', N'Agent sub1', N'test', N'', N'', CAST(2.00 AS Decimal(18, 2)), N'', 0, 0, 0, -1, -1, CAST(0x00009DAD013292D0 AS DateTime), -1, CAST(0x00009DAD013292D0 AS DateTime), CAST(0x00009DAD013292D0 AS DateTime), CAST(0x00009DBF00000000 AS DateTime), N'117.4.200.225', CAST(0x00009DAD013292D0 AS DateTime), N'127.0.0.1', CAST(0x00009DC20103FB57 AS DateTime), 1)
INSERT [dbo].[tblAccounts] ([ID], [ParentID], [SGMId], [GMId], [MaterId], [AgentId], [AccountID], [AccGrade], [UserName], [Password], [NickName], [Firtname], [LastName], [Phone], [MobilePhone], [MaxCredit], [Fax], [IsOpen], [IsSuspended], [AllowAutoPT], [TransferConditionId], [CreateBy], [CreateDate], [ModifyBy], [ModifyDate], [LastTxn], [PasswordExpiryDate], [LoginIP], [LoginTime], [LastLoginIP], [LastLoginTime], [IsOutright]) VALUES (3, 15, 4, 7, 10, 15, 15, 4, N'SKCE909Sub02', N'E10ADC3949BA59ABBE56E057F20F883E', NULL, N'Agent sub2', N'test', NULL, NULL, NULL, NULL, 1, 0, 1, NULL, NULL, CAST(0x00009DAD013292D0 AS DateTime), NULL, CAST(0x00009DAD013292D0 AS DateTime), CAST(0x00009DAD013292D0 AS DateTime), CAST(0x00009DBF00000000 AS DateTime), N'117.4.200.225', CAST(0x00009DAD013292D0 AS DateTime), N'117.4.207.208', CAST(0x00009DAD013292D0 AS DateTime), 1)
INSERT [dbo].[tblAccounts] ([ID], [ParentID], [SGMId], [GMId], [MaterId], [AgentId], [AccountID], [AccGrade], [UserName], [Password], [NickName], [Firtname], [LastName], [Phone], [MobilePhone], [MaxCredit], [Fax], [IsOpen], [IsSuspended], [AllowAutoPT], [TransferConditionId], [CreateBy], [CreateDate], [ModifyBy], [ModifyDate], [LastTxn], [PasswordExpiryDate], [LoginIP], [LoginTime], [LastLoginIP], [LastLoginTime], [IsOutright]) VALUES (4, 0, 0, 0, 0, 0, 0, 1, N'S', N'E10ADC3949BA59ABBE56E057F20F883E', N'', N'Super GM 1', N'', N'', N'', CAST(10000000.00 AS Decimal(18, 2)), N'', 1, 0, 1, -1, -1, CAST(0x00009DAD013292D0 AS DateTime), -1, CAST(0x00009DAD013292D0 AS DateTime), CAST(0x00009DAD013292D0 AS DateTime), CAST(0x00009DBF00000000 AS DateTime), N'117.4.200.225', CAST(0x00009DAD013292D0 AS DateTime), N'127.0.0.1', CAST(0x00009DC201022E2C AS DateTime), 1)
INSERT [dbo].[tblAccounts] ([ID], [ParentID], [SGMId], [GMId], [MaterId], [AgentId], [AccountID], [AccGrade], [UserName], [Password], [NickName], [Firtname], [LastName], [Phone], [MobilePhone], [MaxCredit], [Fax], [IsOpen], [IsSuspended], [AllowAutoPT], [TransferConditionId], [CreateBy], [CreateDate], [ModifyBy], [ModifyDate], [LastTxn], [PasswordExpiryDate], [LoginIP], [LoginTime], [LastLoginIP], [LastLoginTime], [IsOutright]) VALUES (7, 4, 4, 0, 0, 0, 0, 2, N'SKC', N'E10ADC3949BA59ABBE56E057F20F883E', N'', N'GM 1', N'', N'123456', N'', CAST(200000.00 AS Decimal(18, 2)), N'', 1, 0, 1, -1, 4, CAST(0x00009DAD013292D0 AS DateTime), 4, CAST(0x00009DA800B683FA AS DateTime), CAST(0x00009DA800B683FA AS DateTime), CAST(0x00009DC600000000 AS DateTime), N'', CAST(0x00009DA800B683FA AS DateTime), N'127.0.0.1', CAST(0x00009DC201032B39 AS DateTime), 1)
INSERT [dbo].[tblAccounts] ([ID], [ParentID], [SGMId], [GMId], [MaterId], [AgentId], [AccountID], [AccGrade], [UserName], [Password], [NickName], [Firtname], [LastName], [Phone], [MobilePhone], [MaxCredit], [Fax], [IsOpen], [IsSuspended], [AllowAutoPT], [TransferConditionId], [CreateBy], [CreateDate], [ModifyBy], [ModifyDate], [LastTxn], [PasswordExpiryDate], [LoginIP], [LoginTime], [LastLoginIP], [LastLoginTime], [IsOutright]) VALUES (10, 7, 4, 7, 0, 0, 0, 3, N'SKCE9', N'E10ADC3949BA59ABBE56E057F20F883E', N'', N'Mater 1', N'', N'', N'', CAST(90000.00 AS Decimal(18, 2)), N'', 1, 0, 1, -1, -1, CAST(0x00009DAD013292D0 AS DateTime), -1, CAST(0x00009DAD013292D0 AS DateTime), CAST(0x00009DAD013292D0 AS DateTime), CAST(0x00009DBF00000000 AS DateTime), N'117.4.200.225', CAST(0x00009DAD013292D0 AS DateTime), N'127.0.0.1', CAST(0x00009DC200BB92CE AS DateTime), 1)
INSERT [dbo].[tblAccounts] ([ID], [ParentID], [SGMId], [GMId], [MaterId], [AgentId], [AccountID], [AccGrade], [UserName], [Password], [NickName], [Firtname], [LastName], [Phone], [MobilePhone], [MaxCredit], [Fax], [IsOpen], [IsSuspended], [AllowAutoPT], [TransferConditionId], [CreateBy], [CreateDate], [ModifyBy], [ModifyDate], [LastTxn], [PasswordExpiryDate], [LoginIP], [LoginTime], [LastLoginIP], [LastLoginTime], [IsOutright]) VALUES (15, 10, 4, 7, 10, 0, 0, 4, N'SKCE909', N'E10ADC3949BA59ABBE56E057F20F883E', N'', N'Agent 3', N'', N'', N'', CAST(50000.00 AS Decimal(18, 2)), N'', 1, 0, 1, -1, -1, CAST(0x00009DAD013292D0 AS DateTime), -1, CAST(0x00009DAD013292D0 AS DateTime), CAST(0x00009DAD013292D0 AS DateTime), CAST(0x00009DBF00000000 AS DateTime), N'117.4.200.225', CAST(0x00009DAD013292D0 AS DateTime), N'127.0.0.1', CAST(0x00009DC30097473C AS DateTime), 1)
INSERT [dbo].[tblAccounts] ([ID], [ParentID], [SGMId], [GMId], [MaterId], [AgentId], [AccountID], [AccGrade], [UserName], [Password], [NickName], [Firtname], [LastName], [Phone], [MobilePhone], [MaxCredit], [Fax], [IsOpen], [IsSuspended], [AllowAutoPT], [TransferConditionId], [CreateBy], [CreateDate], [ModifyBy], [ModifyDate], [LastTxn], [PasswordExpiryDate], [LoginIP], [LoginTime], [LastLoginIP], [LastLoginTime], [IsOutright]) VALUES (16, 15, 4, 7, 10, 15, 0, 5, N'SKCE909001', N'E10ADC3949BA59ABBE56E057F20F883E', N'', N'Member 1', N'', N'123', N'', CAST(300.00 AS Decimal(18, 2)), N'', 1, 0, 0, -1, 15, CAST(0x00009DA100AD1AE9 AS DateTime), 15, CAST(0x00009DA100AD1AE9 AS DateTime), CAST(0x00009DA100AD1AE9 AS DateTime), CAST(0x00009DBF00000000 AS DateTime), N'117.4.200.225', CAST(0x00009DA100AD1AE9 AS DateTime), N'117.4.207.208', CAST(0x00009DA100AD1AE9 AS DateTime), 1)
INSERT [dbo].[tblAccounts] ([ID], [ParentID], [SGMId], [GMId], [MaterId], [AgentId], [AccountID], [AccGrade], [UserName], [Password], [NickName], [Firtname], [LastName], [Phone], [MobilePhone], [MaxCredit], [Fax], [IsOpen], [IsSuspended], [AllowAutoPT], [TransferConditionId], [CreateBy], [CreateDate], [ModifyBy], [ModifyDate], [LastTxn], [PasswordExpiryDate], [LoginIP], [LoginTime], [LastLoginIP], [LastLoginTime], [IsOutright]) VALUES (17, 15, 4, 7, 10, 15, 0, 5, N'SKCE909002', N'E10ADC3949BA59ABBE56E057F20F883E', N'', N'Member 2', N'', N'', N'', CAST(1000.00 AS Decimal(18, 2)), N'', 1, 0, 1, -1, -1, CAST(0x00009DAD013292D0 AS DateTime), -1, CAST(0x00009DAD013292D0 AS DateTime), CAST(0x00009DAD013292D0 AS DateTime), CAST(0x00009DBF00000000 AS DateTime), N'117.4.200.225', CAST(0x00009DAD013292D0 AS DateTime), N'117.4.207.208', CAST(0x00009DAD013292D0 AS DateTime), 1)
INSERT [dbo].[tblAccounts] ([ID], [ParentID], [SGMId], [GMId], [MaterId], [AgentId], [AccountID], [AccGrade], [UserName], [Password], [NickName], [Firtname], [LastName], [Phone], [MobilePhone], [MaxCredit], [Fax], [IsOpen], [IsSuspended], [AllowAutoPT], [TransferConditionId], [CreateBy], [CreateDate], [ModifyBy], [ModifyDate], [LastTxn], [PasswordExpiryDate], [LoginIP], [LoginTime], [LastLoginIP], [LastLoginTime], [IsOutright]) VALUES (18, 15, 4, 7, 10, 15, 0, 5, N'SKCE9090D1', N'E10ADC3949BA59ABBE56E057F20F883E', N'', N'Member 3', N'', N'', N'', CAST(200.00 AS Decimal(18, 2)), N'', 1, 0, 1, -1, -1, CAST(0x00009DAD013292D0 AS DateTime), -1, CAST(0x00009DAD013292D0 AS DateTime), CAST(0x00009DAD013292D0 AS DateTime), CAST(0x00009DBF00000000 AS DateTime), N'117.4.200.225', CAST(0x00009DAD013292D0 AS DateTime), N'117.4.207.208', CAST(0x00009DAD013292D0 AS DateTime), 1)
INSERT [dbo].[tblAccounts] ([ID], [ParentID], [SGMId], [GMId], [MaterId], [AgentId], [AccountID], [AccGrade], [UserName], [Password], [NickName], [Firtname], [LastName], [Phone], [MobilePhone], [MaxCredit], [Fax], [IsOpen], [IsSuspended], [AllowAutoPT], [TransferConditionId], [CreateBy], [CreateDate], [ModifyBy], [ModifyDate], [LastTxn], [PasswordExpiryDate], [LoginIP], [LoginTime], [LastLoginIP], [LastLoginTime], [IsOutright]) VALUES (35, 4, 4, 0, 0, 0, 0, 2, N'AAB', N'E462CD71F86062F24BE622EA02B7C98B', N'', N'GM A', N'', N'', N'', CAST(80000.00 AS Decimal(18, 2)), N'', 1, 0, 0, 0, 4, CAST(0x00009DA800C000B4 AS DateTime), 4, CAST(0x00009DA800C000B4 AS DateTime), CAST(0x00009DA800C000B4 AS DateTime), CAST(0x00009DC600000000 AS DateTime), N'', CAST(0x00009DA800C000B4 AS DateTime), N'', CAST(0x00009DA800C000B4 AS DateTime), 1)
INSERT [dbo].[tblAccounts] ([ID], [ParentID], [SGMId], [GMId], [MaterId], [AgentId], [AccountID], [AccGrade], [UserName], [Password], [NickName], [Firtname], [LastName], [Phone], [MobilePhone], [MaxCredit], [Fax], [IsOpen], [IsSuspended], [AllowAutoPT], [TransferConditionId], [CreateBy], [CreateDate], [ModifyBy], [ModifyDate], [LastTxn], [PasswordExpiryDate], [LoginIP], [LoginTime], [LastLoginIP], [LastLoginTime], [IsOutright]) VALUES (38, 4, 4, 0, 0, 0, 0, 2, N'11B', N'E10ADC3949BA59ABBE56E057F20F883E', N'', N'thang', N'', N'', N'', CAST(20000.00 AS Decimal(18, 2)), N'', 1, 0, 0, 0, 4, CAST(0x00009DA901105276 AS DateTime), 4, CAST(0x00009DA901105276 AS DateTime), CAST(0x00009DA901105276 AS DateTime), CAST(0x00009DC700000000 AS DateTime), N'', CAST(0x00009DA901105276 AS DateTime), N'', CAST(0x00009DA901105276 AS DateTime), 1)
INSERT [dbo].[tblAccounts] ([ID], [ParentID], [SGMId], [GMId], [MaterId], [AgentId], [AccountID], [AccGrade], [UserName], [Password], [NickName], [Firtname], [LastName], [Phone], [MobilePhone], [MaxCredit], [Fax], [IsOpen], [IsSuspended], [AllowAutoPT], [TransferConditionId], [CreateBy], [CreateDate], [ModifyBy], [ModifyDate], [LastTxn], [PasswordExpiryDate], [LoginIP], [LoginTime], [LastLoginIP], [LastLoginTime], [IsOutright]) VALUES (39, 15, 4, 7, 10, 0, 15, 4, N'SKCE909Sub03', N'E99A18C428CB38D5F260853678922E03', N'', N'thang', N'vu', N'', N'', CAST(0.00 AS Decimal(18, 2)), N'', 1, 0, 1, 0, 0, CAST(0x00009DAD00D33692 AS DateTime), 0, CAST(0x00009DAD00D33692 AS DateTime), CAST(0x00009DAD00D33692 AS DateTime), CAST(0x00009DCB00000000 AS DateTime), N'', CAST(0x00009DAD00D33692 AS DateTime), N'', CAST(0x00009DAD00D33692 AS DateTime), 1)
INSERT [dbo].[tblAccounts] ([ID], [ParentID], [SGMId], [GMId], [MaterId], [AgentId], [AccountID], [AccGrade], [UserName], [Password], [NickName], [Firtname], [LastName], [Phone], [MobilePhone], [MaxCredit], [Fax], [IsOpen], [IsSuspended], [AllowAutoPT], [TransferConditionId], [CreateBy], [CreateDate], [ModifyBy], [ModifyDate], [LastTxn], [PasswordExpiryDate], [LoginIP], [LoginTime], [LastLoginIP], [LastLoginTime], [IsOutright]) VALUES (40, 7, 4, 7, 0, 0, 0, 3, N'SK099', N'E462CD71F86062F24BE622EA02B7C98B', N'', N'', N'', N'', N'', CAST(50.00 AS Decimal(18, 2)), N'', 1, 0, 1, 0, 7, CAST(0x00009DAD0115F542 AS DateTime), 7, CAST(0x00009DAD0115F542 AS DateTime), CAST(0x00009DAD0115F542 AS DateTime), CAST(0x00009DCB00000000 AS DateTime), N'', CAST(0x00009DAD0115F542 AS DateTime), N'', CAST(0x00009DAD0115F542 AS DateTime), 1)
INSERT [dbo].[tblAccounts] ([ID], [ParentID], [SGMId], [GMId], [MaterId], [AgentId], [AccountID], [AccGrade], [UserName], [Password], [NickName], [Firtname], [LastName], [Phone], [MobilePhone], [MaxCredit], [Fax], [IsOpen], [IsSuspended], [AllowAutoPT], [TransferConditionId], [CreateBy], [CreateDate], [ModifyBy], [ModifyDate], [LastTxn], [PasswordExpiryDate], [LoginIP], [LoginTime], [LastLoginIP], [LastLoginTime], [IsOutright]) VALUES (41, 15, 4, 7, 10, 0, 15, 4, N'SKCE909Sub04', N'E99A18C428CB38D5F260853678922E03', N'', N'alo', N'', N'', N'', CAST(0.00 AS Decimal(18, 2)), N'', 1, 0, 1, 0, 0, CAST(0x00009DAD012D142D AS DateTime), 0, CAST(0x00009DAD012D142D AS DateTime), CAST(0x00009DAD012D142D AS DateTime), CAST(0x00009DCB00000000 AS DateTime), N'', CAST(0x00009DAD012D142D AS DateTime), N'', CAST(0x00009DAD012D142D AS DateTime), 1)
INSERT [dbo].[tblAccounts] ([ID], [ParentID], [SGMId], [GMId], [MaterId], [AgentId], [AccountID], [AccGrade], [UserName], [Password], [NickName], [Firtname], [LastName], [Phone], [MobilePhone], [MaxCredit], [Fax], [IsOpen], [IsSuspended], [AllowAutoPT], [TransferConditionId], [CreateBy], [CreateDate], [ModifyBy], [ModifyDate], [LastTxn], [PasswordExpiryDate], [LoginIP], [LoginTime], [LastLoginIP], [LastLoginTime], [IsOutright]) VALUES (42, 15, 4, 7, 10, 0, 15, 4, N'SKCE909Sub05', N'E99A18C428CB38D5F260853678922E03', N'', N'lo a', N'', N'', N'', CAST(0.00 AS Decimal(18, 2)), N'', 1, 0, 1, 0, 0, CAST(0x00009DAD012DCCE4 AS DateTime), 0, CAST(0x00009DAD012DCCE4 AS DateTime), CAST(0x00009DAD012DCCE4 AS DateTime), CAST(0x00009DCB00000000 AS DateTime), N'', CAST(0x00009DAD012DCCE4 AS DateTime), N'', CAST(0x00009DAD012DCCE4 AS DateTime), 1)
INSERT [dbo].[tblAccounts] ([ID], [ParentID], [SGMId], [GMId], [MaterId], [AgentId], [AccountID], [AccGrade], [UserName], [Password], [NickName], [Firtname], [LastName], [Phone], [MobilePhone], [MaxCredit], [Fax], [IsOpen], [IsSuspended], [AllowAutoPT], [TransferConditionId], [CreateBy], [CreateDate], [ModifyBy], [ModifyDate], [LastTxn], [PasswordExpiryDate], [LoginIP], [LoginTime], [LastLoginIP], [LastLoginTime], [IsOutright]) VALUES (43, 15, 4, 7, 10, 0, 15, 4, N'SKCE909Sub06', N'E99A18C428CB38D5F260853678922E03', N'', N'xoa de', N'', N'', N'', CAST(0.00 AS Decimal(18, 2)), N'', 1, 0, 1, 0, 0, CAST(0x00009DAD012EED4B AS DateTime), 0, CAST(0x00009DAD012EED4B AS DateTime), CAST(0x00009DAD012EED4B AS DateTime), CAST(0x00009DCB00000000 AS DateTime), N'', CAST(0x00009DAD012EED4B AS DateTime), N'', CAST(0x00009DAD012EED4B AS DateTime), 1)
INSERT [dbo].[tblAccounts] ([ID], [ParentID], [SGMId], [GMId], [MaterId], [AgentId], [AccountID], [AccGrade], [UserName], [Password], [NickName], [Firtname], [LastName], [Phone], [MobilePhone], [MaxCredit], [Fax], [IsOpen], [IsSuspended], [AllowAutoPT], [TransferConditionId], [CreateBy], [CreateDate], [ModifyBy], [ModifyDate], [LastTxn], [PasswordExpiryDate], [LoginIP], [LoginTime], [LastLoginIP], [LastLoginTime], [IsOutright]) VALUES (44, 15, 4, 7, 10, 0, 15, 4, N'SKCE909Sub07', N'E99A18C428CB38D5F260853678922E03', N'', N'reports', N'thoi nhe', N'', N'', CAST(0.00 AS Decimal(18, 2)), N'', 0, 0, 1, 0, 0, CAST(0x00009DAD012FDC3E AS DateTime), 0, CAST(0x00009DAD012FDC3E AS DateTime), CAST(0x00009DAD012FDC3E AS DateTime), CAST(0x00009DCB00000000 AS DateTime), N'', CAST(0x00009DAD012FDC3E AS DateTime), N'', CAST(0x00009DAD012FDC3E AS DateTime), 1)
INSERT [dbo].[tblAccounts] ([ID], [ParentID], [SGMId], [GMId], [MaterId], [AgentId], [AccountID], [AccGrade], [UserName], [Password], [NickName], [Firtname], [LastName], [Phone], [MobilePhone], [MaxCredit], [Fax], [IsOpen], [IsSuspended], [AllowAutoPT], [TransferConditionId], [CreateBy], [CreateDate], [ModifyBy], [ModifyDate], [LastTxn], [PasswordExpiryDate], [LoginIP], [LoginTime], [LastLoginIP], [LastLoginTime], [IsOutright]) VALUES (45, 15, 4, 7, 10, 0, 15, 4, N'SKCE909Sub08', N'E99A18C428CB38D5F260853678922E03', N'', N'xoa', N'dum', N'', N'', CAST(0.00 AS Decimal(18, 2)), N'', 0, 0, 1, 0, 0, CAST(0x00009DAD0132932C AS DateTime), 0, CAST(0x00009DAD0132932C AS DateTime), CAST(0x00009DAD0132932C AS DateTime), CAST(0x00009DCB00000000 AS DateTime), N'', CAST(0x00009DAD0132932C AS DateTime), N'', CAST(0x00009DAD0132932C AS DateTime), 1)
INSERT [dbo].[tblAccounts] ([ID], [ParentID], [SGMId], [GMId], [MaterId], [AgentId], [AccountID], [AccGrade], [UserName], [Password], [NickName], [Firtname], [LastName], [Phone], [MobilePhone], [MaxCredit], [Fax], [IsOpen], [IsSuspended], [AllowAutoPT], [TransferConditionId], [CreateBy], [CreateDate], [ModifyBy], [ModifyDate], [LastTxn], [PasswordExpiryDate], [LoginIP], [LoginTime], [LastLoginIP], [LastLoginTime], [IsOutright]) VALUES (46, 15, 4, 7, 10, 0, 15, 4, N'SKCE909Sub09', N'E99A18C428CB38D5F260853678922E03', N'', N'xoa', N'dicung', N'', N'', CAST(0.00 AS Decimal(18, 2)), N'', 0, 0, 1, 0, 0, CAST(0x00009DAD013306AD AS DateTime), 0, CAST(0x00009DAD013306AD AS DateTime), CAST(0x00009DAD013306AD AS DateTime), CAST(0x00009DCB00000000 AS DateTime), N'', CAST(0x00009DAD013306AD AS DateTime), N'', CAST(0x00009DAD013306AD AS DateTime), 1)
INSERT [dbo].[tblAccounts] ([ID], [ParentID], [SGMId], [GMId], [MaterId], [AgentId], [AccountID], [AccGrade], [UserName], [Password], [NickName], [Firtname], [LastName], [Phone], [MobilePhone], [MaxCredit], [Fax], [IsOpen], [IsSuspended], [AllowAutoPT], [TransferConditionId], [CreateBy], [CreateDate], [ModifyBy], [ModifyDate], [LastTxn], [PasswordExpiryDate], [LoginIP], [LoginTime], [LastLoginIP], [LastLoginTime], [IsOutright]) VALUES (47, 4, 4, 0, 0, 0, 0, 2, N'S68', N'E462CD71F86062F24BE622EA02B7C98B', N'', N'', N'', N'', N'', CAST(20000.00 AS Decimal(18, 2)), N'', 1, 0, 0, 0, 4, CAST(0x00009DAD0182B290 AS DateTime), 4, CAST(0x00009DAD0182B290 AS DateTime), CAST(0x00009DAD0182B290 AS DateTime), CAST(0x00009DCB00000000 AS DateTime), N'', CAST(0x00009DAD0182B290 AS DateTime), N'', CAST(0x00009DAD0182B290 AS DateTime), 1)
INSERT [dbo].[tblAccounts] ([ID], [ParentID], [SGMId], [GMId], [MaterId], [AgentId], [AccountID], [AccGrade], [UserName], [Password], [NickName], [Firtname], [LastName], [Phone], [MobilePhone], [MaxCredit], [Fax], [IsOpen], [IsSuspended], [AllowAutoPT], [TransferConditionId], [CreateBy], [CreateDate], [ModifyBy], [ModifyDate], [LastTxn], [PasswordExpiryDate], [LoginIP], [LoginTime], [LastLoginIP], [LastLoginTime], [IsOutright]) VALUES (50, 15, 4, 7, 10, 15, 0, 5, N'SKCE909000', N'E462CD71F86062F24BE622EA02B7C98B', N'', N'', N'', N'', N'', CAST(5.00 AS Decimal(18, 2)), N'', 0, 0, 0, 0, 15, CAST(0x00009DAE009296CA AS DateTime), 15, CAST(0x00009DAE009296CA AS DateTime), CAST(0x00009DAE009296CA AS DateTime), CAST(0x00009DCC00000000 AS DateTime), N'', CAST(0x00009DAE009296CA AS DateTime), N'', CAST(0x00009DAE009296CA AS DateTime), 1)
INSERT [dbo].[tblAccounts] ([ID], [ParentID], [SGMId], [GMId], [MaterId], [AgentId], [AccountID], [AccGrade], [UserName], [Password], [NickName], [Firtname], [LastName], [Phone], [MobilePhone], [MaxCredit], [Fax], [IsOpen], [IsSuspended], [AllowAutoPT], [TransferConditionId], [CreateBy], [CreateDate], [ModifyBy], [ModifyDate], [LastTxn], [PasswordExpiryDate], [LoginIP], [LoginTime], [LastLoginIP], [LastLoginTime], [IsOutright]) VALUES (51, 10, 4, 7, 0, 0, 10, 3, N'SKCE9Sub01', N'E99A18C428CB38D5F260853678922E03', N'', N'sub01', N'', N'', N'', CAST(0.00 AS Decimal(18, 2)), N'', 1, 0, 1, 0, 0, CAST(0x00009DB9001FCFE9 AS DateTime), 0, CAST(0x00009DB9001FCFE9 AS DateTime), CAST(0x00009DB9001FCFE9 AS DateTime), CAST(0x00009DD700000000 AS DateTime), N'', CAST(0x00009DB9001FCFE9 AS DateTime), N'', CAST(0x00009DB9001FCFE9 AS DateTime), 0)
INSERT [dbo].[tblAccounts] ([ID], [ParentID], [SGMId], [GMId], [MaterId], [AgentId], [AccountID], [AccGrade], [UserName], [Password], [NickName], [Firtname], [LastName], [Phone], [MobilePhone], [MaxCredit], [Fax], [IsOpen], [IsSuspended], [AllowAutoPT], [TransferConditionId], [CreateBy], [CreateDate], [ModifyBy], [ModifyDate], [LastTxn], [PasswordExpiryDate], [LoginIP], [LoginTime], [LastLoginIP], [LastLoginTime], [IsOutright]) VALUES (52, 10, 4, 7, 0, 0, 10, 3, N'SKCE9Sub02', N'E99A18C428CB38D5F260853678922E03', N'', N'tt', N'', N'', N'', CAST(0.00 AS Decimal(18, 2)), N'', 1, 0, 1, 0, 0, CAST(0x00009DBA00A26D46 AS DateTime), 0, CAST(0x00009DBA00A26D46 AS DateTime), CAST(0x00009DBA00A26D46 AS DateTime), CAST(0x00009DD800000000 AS DateTime), N'', CAST(0x00009DBA00A26D46 AS DateTime), N'', CAST(0x00009DBA00A26D46 AS DateTime), 0)
INSERT [dbo].[tblAccounts] ([ID], [ParentID], [SGMId], [GMId], [MaterId], [AgentId], [AccountID], [AccGrade], [UserName], [Password], [NickName], [Firtname], [LastName], [Phone], [MobilePhone], [MaxCredit], [Fax], [IsOpen], [IsSuspended], [AllowAutoPT], [TransferConditionId], [CreateBy], [CreateDate], [ModifyBy], [ModifyDate], [LastTxn], [PasswordExpiryDate], [LoginIP], [LoginTime], [LastLoginIP], [LastLoginTime], [IsOutright]) VALUES (53, 15, 4, 7, 10, 15, 0, 5, N'SKCE90900A', N'E462CD71F86062F24BE622EA02B7C98B', N'', N'test', N'', N'', N'', CAST(400.00 AS Decimal(18, 2)), N'', 1, 0, 0, 0, 15, CAST(0x00009DC200F812E9 AS DateTime), 15, CAST(0x00009DC200F812E9 AS DateTime), CAST(0x00009DC200F812E9 AS DateTime), CAST(0x00009DE000000000 AS DateTime), N'', CAST(0x00009DC200F812E9 AS DateTime), N'', CAST(0x00009DC200F812E9 AS DateTime), 1)
INSERT [dbo].[tblAccounts] ([ID], [ParentID], [SGMId], [GMId], [MaterId], [AgentId], [AccountID], [AccGrade], [UserName], [Password], [NickName], [Firtname], [LastName], [Phone], [MobilePhone], [MaxCredit], [Fax], [IsOpen], [IsSuspended], [AllowAutoPT], [TransferConditionId], [CreateBy], [CreateDate], [ModifyBy], [ModifyDate], [LastTxn], [PasswordExpiryDate], [LoginIP], [LoginTime], [LastLoginIP], [LastLoginTime], [IsOutright]) VALUES (57, 15, 4, 7, 10, 15, 0, 5, N'SKCE909ABC', N'E462CD71F86062F24BE622EA02B7C98B', N'', N'', N'', N'', N'', CAST(500.00 AS Decimal(18, 2)), N'', 0, 0, 0, 0, 15, CAST(0x00009DC3000FBA40 AS DateTime), 15, CAST(0x00009DC3000FBA40 AS DateTime), CAST(0x00009DC3000FBA40 AS DateTime), CAST(0x00009DE100000000 AS DateTime), N'', CAST(0x00009DC3000FBA40 AS DateTime), N'', CAST(0x00009DC3000FBA40 AS DateTime), 1)
INSERT [dbo].[tblAccounts] ([ID], [ParentID], [SGMId], [GMId], [MaterId], [AgentId], [AccountID], [AccGrade], [UserName], [Password], [NickName], [Firtname], [LastName], [Phone], [MobilePhone], [MaxCredit], [Fax], [IsOpen], [IsSuspended], [AllowAutoPT], [TransferConditionId], [CreateBy], [CreateDate], [ModifyBy], [ModifyDate], [LastTxn], [PasswordExpiryDate], [LoginIP], [LoginTime], [LastLoginIP], [LastLoginTime], [IsOutright]) VALUES (58, 15, 4, 7, 10, 15, 0, 5, N'SKCE909ABB', N'E462CD71F86062F24BE622EA02B7C98B', N'', N'', N'', N'', N'', CAST(0.00 AS Decimal(18, 2)), N'', 0, 0, 0, 0, 15, CAST(0x00009DC30011FD86 AS DateTime), 15, CAST(0x00009DC30011FD86 AS DateTime), CAST(0x00009DC30011FD86 AS DateTime), CAST(0x00009DE100000000 AS DateTime), N'', CAST(0x00009DC30011FD86 AS DateTime), N'', CAST(0x00009DC30011FD86 AS DateTime), 1)
INSERT [dbo].[tblAccounts] ([ID], [ParentID], [SGMId], [GMId], [MaterId], [AgentId], [AccountID], [AccGrade], [UserName], [Password], [NickName], [Firtname], [LastName], [Phone], [MobilePhone], [MaxCredit], [Fax], [IsOpen], [IsSuspended], [AllowAutoPT], [TransferConditionId], [CreateBy], [CreateDate], [ModifyBy], [ModifyDate], [LastTxn], [PasswordExpiryDate], [LoginIP], [LoginTime], [LastLoginIP], [LastLoginTime], [IsOutright]) VALUES (59, 15, 4, 7, 10, 15, 0, 5, N'SKCE909ABD', N'E462CD71F86062F24BE622EA02B7C98B', N'', N'User face 3', N'Nguyen', N'', N'0987643422', CAST(200.00 AS Decimal(18, 2)), N'', 0, 0, 0, 0, 15, CAST(0x00009DC3001258B6 AS DateTime), 15, CAST(0x00009DC3001258B6 AS DateTime), CAST(0x00009DC3001258B6 AS DateTime), CAST(0x00009DE100000000 AS DateTime), N'', CAST(0x00009DC3001258B6 AS DateTime), N'', CAST(0x00009DC3001258B6 AS DateTime), 1)
INSERT [dbo].[tblAccounts] ([ID], [ParentID], [SGMId], [GMId], [MaterId], [AgentId], [AccountID], [AccGrade], [UserName], [Password], [NickName], [Firtname], [LastName], [Phone], [MobilePhone], [MaxCredit], [Fax], [IsOpen], [IsSuspended], [AllowAutoPT], [TransferConditionId], [CreateBy], [CreateDate], [ModifyBy], [ModifyDate], [LastTxn], [PasswordExpiryDate], [LoginIP], [LoginTime], [LastLoginIP], [LastLoginTime], [IsOutright]) VALUES (73, 2, 4, 7, 10, 2, 0, 1, N'SMQQ0200E', N'33dc5df5d29a4311ba6d4c994a6708fa', N'', N'sdfg', N'sadf', N'sadf', N'sadf', CAST(0.00 AS Decimal(18, 2)), N'asdf', 1, 0, 1, 0, 2, CAST(0x00009E5B00FC6CCB AS DateTime), 0, CAST(0x00009E5B00FC6CCB AS DateTime), CAST(0x00009E5B00FC6CCB AS DateTime), CAST(0x00009E5B00FC6CCB AS DateTime), N'', CAST(0x00009E5B00FC6CCC AS DateTime), N'', CAST(0x00009E5B00FC6CCC AS DateTime), 1)
INSERT [dbo].[tblAccounts] ([ID], [ParentID], [SGMId], [GMId], [MaterId], [AgentId], [AccountID], [AccGrade], [UserName], [Password], [NickName], [Firtname], [LastName], [Phone], [MobilePhone], [MaxCredit], [Fax], [IsOpen], [IsSuspended], [AllowAutoPT], [TransferConditionId], [CreateBy], [CreateDate], [ModifyBy], [ModifyDate], [LastTxn], [PasswordExpiryDate], [LoginIP], [LoginTime], [LastLoginIP], [LastLoginTime], [IsOutright]) VALUES (74, 2, 4, 7, 10, 2, 0, 1, N'SMQQ02041', N'af5b3d17aa1e2ff2a0f83142d692d701', N'', N'sdf', N'dsaf', N'asdf', N'sadf', CAST(0.00 AS Decimal(18, 2)), N'sadf', 1, 0, 1, 0, 2, CAST(0x00009E5B00FD30F4 AS DateTime), 0, CAST(0x00009E5B00FD30F4 AS DateTime), CAST(0x00009E5B00FD30F4 AS DateTime), CAST(0x00009E5B00FD30F4 AS DateTime), N'', CAST(0x00009E5B00FD30F4 AS DateTime), N'', CAST(0x00009E5B00FD30F4 AS DateTime), 1)
INSERT [dbo].[tblAccounts] ([ID], [ParentID], [SGMId], [GMId], [MaterId], [AgentId], [AccountID], [AccGrade], [UserName], [Password], [NickName], [Firtname], [LastName], [Phone], [MobilePhone], [MaxCredit], [Fax], [IsOpen], [IsSuspended], [AllowAutoPT], [TransferConditionId], [CreateBy], [CreateDate], [ModifyBy], [ModifyDate], [LastTxn], [PasswordExpiryDate], [LoginIP], [LoginTime], [LastLoginIP], [LastLoginTime], [IsOutright]) VALUES (75, 2, 4, 7, 10, 2, 0, 1, N'SMQQ0202H', N'bd3a46e26dc0f81a18155183d13fdf37', N'', N'asdf', N'dsaf', N'sdf', N'sadf', CAST(0.00 AS Decimal(18, 2)), N'sadf', 1, 0, 1, 0, 2, CAST(0x00009E5B00FE37DD AS DateTime), 0, CAST(0x00009E5B00FE37DD AS DateTime), CAST(0x00009E5B00FE37DD AS DateTime), CAST(0x00009E5B00FE37DD AS DateTime), N'', CAST(0x00009E5B00FE37DD AS DateTime), N'', CAST(0x00009E5B00FE37DD AS DateTime), 1)
INSERT [dbo].[tblAccounts] ([ID], [ParentID], [SGMId], [GMId], [MaterId], [AgentId], [AccountID], [AccGrade], [UserName], [Password], [NickName], [Firtname], [LastName], [Phone], [MobilePhone], [MaxCredit], [Fax], [IsOpen], [IsSuspended], [AllowAutoPT], [TransferConditionId], [CreateBy], [CreateDate], [ModifyBy], [ModifyDate], [LastTxn], [PasswordExpiryDate], [LoginIP], [LoginTime], [LastLoginIP], [LastLoginTime], [IsOutright]) VALUES (76, 2, 4, 7, 10, 2, 0, 1, N'SMQQ02351', N'6572bdaff799084b973320f43f09b363', N'', N'af', N'sadf', N'asdf', N'adsf', CAST(0.00 AS Decimal(18, 2)), N'asdf', 1, 0, 1, 0, 2, CAST(0x00009E5B00FEAF7F AS DateTime), 0, CAST(0x00009E5B00FEAF7F AS DateTime), CAST(0x00009E5B00FEAF7F AS DateTime), CAST(0x00009E5B00FEAF7F AS DateTime), N'', CAST(0x00009E5B00FEAF7F AS DateTime), N'', CAST(0x00009E5B00FEAF7F AS DateTime), 1)
INSERT [dbo].[tblAccounts] ([ID], [ParentID], [SGMId], [GMId], [MaterId], [AgentId], [AccountID], [AccGrade], [UserName], [Password], [NickName], [Firtname], [LastName], [Phone], [MobilePhone], [MaxCredit], [Fax], [IsOpen], [IsSuspended], [AllowAutoPT], [TransferConditionId], [CreateBy], [CreateDate], [ModifyBy], [ModifyDate], [LastTxn], [PasswordExpiryDate], [LoginIP], [LoginTime], [LastLoginIP], [LastLoginTime], [IsOutright]) VALUES (77, 2, 4, 7, 10, 2, 0, 1, N'SMQQ0230D', N'1b5e6864fbb764f2cccef5c50f3928df', N'', N'daf', N'adsf', N'sadf', N'asdf', CAST(0.00 AS Decimal(18, 2)), N'sadf', 1, 0, 1, 0, 2, CAST(0x00009E5B00FF2FED AS DateTime), 0, CAST(0x00009E5B00FF2FED AS DateTime), CAST(0x00009E5B00FF2FED AS DateTime), CAST(0x00009E5B00FF2FED AS DateTime), N'', CAST(0x00009E5B00FF2FED AS DateTime), N'', CAST(0x00009E5B00FF2FED AS DateTime), 1)
INSERT [dbo].[tblAccounts] ([ID], [ParentID], [SGMId], [GMId], [MaterId], [AgentId], [AccountID], [AccGrade], [UserName], [Password], [NickName], [Firtname], [LastName], [Phone], [MobilePhone], [MaxCredit], [Fax], [IsOpen], [IsSuspended], [AllowAutoPT], [TransferConditionId], [CreateBy], [CreateDate], [ModifyBy], [ModifyDate], [LastTxn], [PasswordExpiryDate], [LoginIP], [LoginTime], [LastLoginIP], [LastLoginTime], [IsOutright]) VALUES (78, 2, 4, 7, 10, 2, 0, 1, N'SMQQ028AR', N'33dc5df5d29a4311ba6d4c994a6708fa', N'', N'dsaf', N'asdf', N'sadf', N'asdf', CAST(0.00 AS Decimal(18, 2)), N'sadf', 1, 0, 1, 0, 2, CAST(0x00009E5B00FF9EBF AS DateTime), 0, CAST(0x00009E5B00FF9EBF AS DateTime), CAST(0x00009E5B00FF9EBF AS DateTime), CAST(0x00009E5B00FF9EBF AS DateTime), N'', CAST(0x00009E5B00FF9EBF AS DateTime), N'', CAST(0x00009E5B00FF9EC0 AS DateTime), 1)
INSERT [dbo].[tblAccounts] ([ID], [ParentID], [SGMId], [GMId], [MaterId], [AgentId], [AccountID], [AccGrade], [UserName], [Password], [NickName], [Firtname], [LastName], [Phone], [MobilePhone], [MaxCredit], [Fax], [IsOpen], [IsSuspended], [AllowAutoPT], [TransferConditionId], [CreateBy], [CreateDate], [ModifyBy], [ModifyDate], [LastTxn], [PasswordExpiryDate], [LoginIP], [LoginTime], [LastLoginIP], [LastLoginTime], [IsOutright]) VALUES (79, 2, 4, 7, 10, 2, 0, 1, N'SMQQ02001', N'71544e800f09519faf87da2ba3ad8bf4', N'', N'sdaf', N'adsf', N'sadf', N'asdf', CAST(0.00 AS Decimal(18, 2)), N'asdf', 1, 0, 1, 0, 2, CAST(0x00009E5B01016F1A AS DateTime), 0, CAST(0x00009E5B01016F1A AS DateTime), CAST(0x00009E5B01016F1A AS DateTime), CAST(0x00009E5B01016F1A AS DateTime), N'', CAST(0x00009E5B01016F1A AS DateTime), N'', CAST(0x00009E5B01016F1A AS DateTime), 1)
INSERT [dbo].[tblAccounts] ([ID], [ParentID], [SGMId], [GMId], [MaterId], [AgentId], [AccountID], [AccGrade], [UserName], [Password], [NickName], [Firtname], [LastName], [Phone], [MobilePhone], [MaxCredit], [Fax], [IsOpen], [IsSuspended], [AllowAutoPT], [TransferConditionId], [CreateBy], [CreateDate], [ModifyBy], [ModifyDate], [LastTxn], [PasswordExpiryDate], [LoginIP], [LoginTime], [LastLoginIP], [LastLoginTime], [IsOutright]) VALUES (80, 2, 4, 7, 10, 2, 0, 1, N'SMQQ02367', N'cb04872a7c1dd9d6a4b30bab70cccbe0', N'', N'sdaf', N'sdaf', N'asdf', N'sadf', CAST(0.00 AS Decimal(18, 2)), N'sadf', 1, 0, 1, 0, 2, CAST(0x00009E5B0101ED52 AS DateTime), 0, CAST(0x00009E5B0101ED52 AS DateTime), CAST(0x00009E5B0101ED52 AS DateTime), CAST(0x00009E5B0101ED52 AS DateTime), N'', CAST(0x00009E5B0101ED52 AS DateTime), N'', CAST(0x00009E5B0101ED52 AS DateTime), 1)
INSERT [dbo].[tblAccounts] ([ID], [ParentID], [SGMId], [GMId], [MaterId], [AgentId], [AccountID], [AccGrade], [UserName], [Password], [NickName], [Firtname], [LastName], [Phone], [MobilePhone], [MaxCredit], [Fax], [IsOpen], [IsSuspended], [AllowAutoPT], [TransferConditionId], [CreateBy], [CreateDate], [ModifyBy], [ModifyDate], [LastTxn], [PasswordExpiryDate], [LoginIP], [LoginTime], [LastLoginIP], [LastLoginTime], [IsOutright]) VALUES (81, 2, 4, 7, 10, 2, 0, 1, N'SMQQ02AAA', N'sadf123', N'', N'thiep A B', N'nguyen dang', N'0976176236', N'thiep', CAST(5.00 AS Decimal(18, 2)), N'fax', 0, 0, 1, 0, 2, CAST(0x00009E5C00ECE42D AS DateTime), 2, CAST(0x00009E5C00FBA64A AS DateTime), CAST(0x00009E5C00ECE42D AS DateTime), CAST(0x00009E5C00ECE42D AS DateTime), N'', CAST(0x00009E5C00ECE42D AS DateTime), N'', CAST(0x00009E5C00ECE42D AS DateTime), 1)
INSERT [dbo].[tblAccounts] ([ID], [ParentID], [SGMId], [GMId], [MaterId], [AgentId], [AccountID], [AccGrade], [UserName], [Password], [NickName], [Firtname], [LastName], [Phone], [MobilePhone], [MaxCredit], [Fax], [IsOpen], [IsSuspended], [AllowAutoPT], [TransferConditionId], [CreateBy], [CreateDate], [ModifyBy], [ModifyDate], [LastTxn], [PasswordExpiryDate], [LoginIP], [LoginTime], [LastLoginIP], [LastLoginTime], [IsOutright]) VALUES (82, 2, 4, 7, 10, 2, 0, 1, N'SMQQ02051', N'519f5e0cee990f97aff7ce4e77029615', N'', N'thiepga', N'sadf', N'sadf', N'asdf', CAST(0.00 AS Decimal(18, 2)), N'safd', 1, 0, 1, 0, 2, CAST(0x00009E5C0105C110 AS DateTime), 0, CAST(0x00009E5C0105C110 AS DateTime), CAST(0x00009E5C0105C110 AS DateTime), CAST(0x00009E5C0105C110 AS DateTime), N'', CAST(0x00009E5C0105C110 AS DateTime), N'', CAST(0x00009E5C0105C110 AS DateTime), 1)
INSERT [dbo].[tblAccounts] ([ID], [ParentID], [SGMId], [GMId], [MaterId], [AgentId], [AccountID], [AccGrade], [UserName], [Password], [NickName], [Firtname], [LastName], [Phone], [MobilePhone], [MaxCredit], [Fax], [IsOpen], [IsSuspended], [AllowAutoPT], [TransferConditionId], [CreateBy], [CreateDate], [ModifyBy], [ModifyDate], [LastTxn], [PasswordExpiryDate], [LoginIP], [LoginTime], [LastLoginIP], [LastLoginTime], [IsOutright]) VALUES (83, 2, 4, 7, 10, 2, 0, 1, N'SMQQ0200D', N'1b5e6864fbb764f2cccef5c50f3928df', N'', N'sdaf', N'sadf', N'sadf', N'saf', CAST(0.00 AS Decimal(18, 2)), N'safd', 1, 0, 1, 0, 2, CAST(0x00009E5C01061C38 AS DateTime), 0, CAST(0x00009E5C01061C38 AS DateTime), CAST(0x00009E5C01061C38 AS DateTime), CAST(0x00009E5C01061C38 AS DateTime), N'', CAST(0x00009E5C01061C38 AS DateTime), N'', CAST(0x00009E5C01061C38 AS DateTime), 1)
INSERT [dbo].[tblAccounts] ([ID], [ParentID], [SGMId], [GMId], [MaterId], [AgentId], [AccountID], [AccGrade], [UserName], [Password], [NickName], [Firtname], [LastName], [Phone], [MobilePhone], [MaxCredit], [Fax], [IsOpen], [IsSuspended], [AllowAutoPT], [TransferConditionId], [CreateBy], [CreateDate], [ModifyBy], [ModifyDate], [LastTxn], [PasswordExpiryDate], [LoginIP], [LoginTime], [LastLoginIP], [LastLoginTime], [IsOutright]) VALUES (84, 2, 4, 7, 10, 2, 0, 1, N'SMQQ0200B', N'33dc5df5d29a4311ba6d4c994a6708fa', N'', N'sdaf', N'sadf', N'sadf', N'saf', CAST(0.00 AS Decimal(18, 2)), N'safd', 1, 0, 1, 0, 2, CAST(0x00009E5C010684A1 AS DateTime), 0, CAST(0x00009E5C010684A1 AS DateTime), CAST(0x00009E5C010684A1 AS DateTime), CAST(0x00009E5C010684A1 AS DateTime), N'', CAST(0x00009E5C010684A1 AS DateTime), N'', CAST(0x00009E5C010684A1 AS DateTime), 1)
INSERT [dbo].[tblAccounts] ([ID], [ParentID], [SGMId], [GMId], [MaterId], [AgentId], [AccountID], [AccGrade], [UserName], [Password], [NickName], [Firtname], [LastName], [Phone], [MobilePhone], [MaxCredit], [Fax], [IsOpen], [IsSuspended], [AllowAutoPT], [TransferConditionId], [CreateBy], [CreateDate], [ModifyBy], [ModifyDate], [LastTxn], [PasswordExpiryDate], [LoginIP], [LoginTime], [LastLoginIP], [LastLoginTime], [IsOutright]) VALUES (85, 2, 4, 7, 10, 2, 0, 1, N'SMQQ020E1', N'6fcb07632c3783cf1fe3e6a422879967', N'', N'sdf', N'ádf', N'ádf', N'sadf', CAST(0.00 AS Decimal(18, 2)), N'sadf', 1, 0, 1, 0, 2, CAST(0x00009E5C01091078 AS DateTime), 0, CAST(0x00009E5C01091078 AS DateTime), CAST(0x00009E5C01091078 AS DateTime), CAST(0x00009E5C01091078 AS DateTime), N'', CAST(0x00009E5C01091078 AS DateTime), N'', CAST(0x00009E5C01091078 AS DateTime), 1)
INSERT [dbo].[tblAccounts] ([ID], [ParentID], [SGMId], [GMId], [MaterId], [AgentId], [AccountID], [AccGrade], [UserName], [Password], [NickName], [Firtname], [LastName], [Phone], [MobilePhone], [MaxCredit], [Fax], [IsOpen], [IsSuspended], [AllowAutoPT], [TransferConditionId], [CreateBy], [CreateDate], [ModifyBy], [ModifyDate], [LastTxn], [PasswordExpiryDate], [LoginIP], [LoginTime], [LastLoginIP], [LastLoginTime], [IsOutright]) VALUES (86, 2, 4, 7, 10, 2, 0, 1, N'SMQQ020C1', N'6572bdaff799084b973320f43f09b363', N'', N'sdf', N'sadf', N'asfd', N'sadf', CAST(0.00 AS Decimal(18, 2)), N'asdf', 1, 0, 1, 0, 2, CAST(0x00009E5C01099D9A AS DateTime), 0, CAST(0x00009E5C01099D9A AS DateTime), CAST(0x00009E5C01099D9A AS DateTime), CAST(0x00009E5C01099D9A AS DateTime), N'', CAST(0x00009E5C01099D9A AS DateTime), N'', CAST(0x00009E5C01099D9A AS DateTime), 1)
INSERT [dbo].[tblAccounts] ([ID], [ParentID], [SGMId], [GMId], [MaterId], [AgentId], [AccountID], [AccGrade], [UserName], [Password], [NickName], [Firtname], [LastName], [Phone], [MobilePhone], [MaxCredit], [Fax], [IsOpen], [IsSuspended], [AllowAutoPT], [TransferConditionId], [CreateBy], [CreateDate], [ModifyBy], [ModifyDate], [LastTxn], [PasswordExpiryDate], [LoginIP], [LoginTime], [LastLoginIP], [LastLoginTime], [IsOutright]) VALUES (87, 2, 4, 7, 10, 2, 0, 1, N'SMQQ029C1', N'33dc5df5d29a4311ba6d4c994a6708fa', N'', N'sdf', N'sadf', N'asfd', N'sadf', CAST(0.00 AS Decimal(18, 2)), N'asdf', 1, 0, 1, 0, 2, CAST(0x00009E5C0109C297 AS DateTime), 0, CAST(0x00009E5C0109C297 AS DateTime), CAST(0x00009E5C0109C297 AS DateTime), CAST(0x00009E5C0109C297 AS DateTime), N'', CAST(0x00009E5C0109C297 AS DateTime), N'', CAST(0x00009E5C0109C297 AS DateTime), 1)
INSERT [dbo].[tblAccounts] ([ID], [ParentID], [SGMId], [GMId], [MaterId], [AgentId], [AccountID], [AccGrade], [UserName], [Password], [NickName], [Firtname], [LastName], [Phone], [MobilePhone], [MaxCredit], [Fax], [IsOpen], [IsSuspended], [AllowAutoPT], [TransferConditionId], [CreateBy], [CreateDate], [ModifyBy], [ModifyDate], [LastTxn], [PasswordExpiryDate], [LoginIP], [LoginTime], [LastLoginIP], [LastLoginTime], [IsOutright]) VALUES (88, 2, 4, 7, 10, 2, 0, 1, N'SMQQ02E01', N'8cbfba73f3a377f5d19ae3b143c94a38', N'', N'sadf', N'sdf', N'asdf', N'asfd', CAST(0.00 AS Decimal(18, 2)), N'afd', 1, 0, 1, 0, 2, CAST(0x00009E5C010BB24C AS DateTime), 0, CAST(0x00009E5C010BB24C AS DateTime), CAST(0x00009E5C010BB24C AS DateTime), CAST(0x00009E5C010BB24C AS DateTime), N'', CAST(0x00009E5C010BB24C AS DateTime), N'', CAST(0x00009E5C010BB24C AS DateTime), 1)
INSERT [dbo].[tblAccounts] ([ID], [ParentID], [SGMId], [GMId], [MaterId], [AgentId], [AccountID], [AccGrade], [UserName], [Password], [NickName], [Firtname], [LastName], [Phone], [MobilePhone], [MaxCredit], [Fax], [IsOpen], [IsSuspended], [AllowAutoPT], [TransferConditionId], [CreateBy], [CreateDate], [ModifyBy], [ModifyDate], [LastTxn], [PasswordExpiryDate], [LoginIP], [LoginTime], [LastLoginIP], [LastLoginTime], [IsOutright]) VALUES (89, 2, 4, 7, 10, 2, 0, 1, N'SMQQ02H01', N'71544e800f09519faf87da2ba3ad8bf4', N'', N'asdf', N'dsaf', N'asdf', N'sdaf', CAST(0.00 AS Decimal(18, 2)), N'safd', 1, 0, 1, 0, 2, CAST(0x00009E5C010C8437 AS DateTime), 0, CAST(0x00009E5C010C8437 AS DateTime), CAST(0x00009E5C010C8437 AS DateTime), CAST(0x00009E5C010C8437 AS DateTime), N'', CAST(0x00009E5C010C8437 AS DateTime), N'', CAST(0x00009E5C010C8437 AS DateTime), 1)
INSERT [dbo].[tblAccounts] ([ID], [ParentID], [SGMId], [GMId], [MaterId], [AgentId], [AccountID], [AccGrade], [UserName], [Password], [NickName], [Firtname], [LastName], [Phone], [MobilePhone], [MaxCredit], [Fax], [IsOpen], [IsSuspended], [AllowAutoPT], [TransferConditionId], [CreateBy], [CreateDate], [ModifyBy], [ModifyDate], [LastTxn], [PasswordExpiryDate], [LoginIP], [LoginTime], [LastLoginIP], [LastLoginTime], [IsOutright]) VALUES (90, 2, 4, 7, 10, 2, 0, 1, N'SMQQ020W1', N'011c73c09ac2d850761ed8695ce38d3e', N'', N'sdf', N'asdf', N'asdf', N'asdf', CAST(0.00 AS Decimal(18, 2)), N'sadf', 1, 0, 1, 0, 2, CAST(0x00009E5C010E125C AS DateTime), 0, CAST(0x00009E5C010E125C AS DateTime), CAST(0x00009E5C010E125C AS DateTime), CAST(0x00009E5C010E125C AS DateTime), N'', CAST(0x00009E5C010E125C AS DateTime), N'', CAST(0x00009E5C010E125C AS DateTime), 1)
INSERT [dbo].[tblAccounts] ([ID], [ParentID], [SGMId], [GMId], [MaterId], [AgentId], [AccountID], [AccGrade], [UserName], [Password], [NickName], [Firtname], [LastName], [Phone], [MobilePhone], [MaxCredit], [Fax], [IsOpen], [IsSuspended], [AllowAutoPT], [TransferConditionId], [CreateBy], [CreateDate], [ModifyBy], [ModifyDate], [LastTxn], [PasswordExpiryDate], [LoginIP], [LoginTime], [LastLoginIP], [LastLoginTime], [IsOutright]) VALUES (91, 2, 4, 7, 10, 2, 0, 1, N'SMQQ020Y1', N'0ceb1de053b2abc83eba70c31774d8ab', N'', N'asdf', N'sadf', N'asdf', N'asf', CAST(0.00 AS Decimal(18, 2)), N'asdf', 1, 0, 1, 0, 2, CAST(0x00009E5C010EAF5B AS DateTime), 0, CAST(0x00009E5C010EAF5B AS DateTime), CAST(0x00009E5C010EAF5B AS DateTime), CAST(0x00009E5C010EAF5B AS DateTime), N'', CAST(0x00009E5C010EAF5B AS DateTime), N'', CAST(0x00009E5C010EAF5B AS DateTime), 1)
SET IDENTITY_INSERT [dbo].[tblAccounts] OFF
/****** Object:  Table [dbo].[TempBet]    Script Date: 12/31/2010 17:36:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TempBet](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[AccID] [bigint] NULL,
	[MatchID] [bigint] NULL,
	[BetTypeID] [int] NULL,
	[ParentID] [bigint] NULL,
	[SGMId] [bigint] NULL,
	[GMId] [bigint] NULL,
	[MasterId] [bigint] NULL,
	[AgentId] [bigint] NULL,
	[StrAcc] [nvarchar](50) NULL,
	[BetType] [nvarchar](255) NULL,
	[LeaguaName] [nvarchar](255) NULL,
	[Home] [nvarchar](255) NULL,
	[Away] [nvarchar](255) NULL,
	[Time] [nvarchar](255) NULL,
	[TransTime] [datetime] NULL,
	[Code] [nvarchar](50) NULL,
	[Choice] [nvarchar](50) NULL,
	[Hdp] [float] NULL,
	[Odds] [float] NULL,
	[Stake] [decimal](18, 2) NULL,
	[Status] [nvarchar](50) NULL,
	[IPBet] [nvarchar](50) NULL,
	[PotentialWin] [float] NULL,
	[Win] [float] NULL,
	[IsLiveBet] [bit] NULL,
	[ResultLiveBet] [nvarchar](50) NULL,
	[ResultTime] [datetime] NULL,
	[FinalScore] [nvarchar](50) NULL,
	[PTSGM] [float] NULL,
	[PTGM] [float] NULL,
	[PTMaster] [float] NULL,
	[PTAgent] [float] NULL,
	[CommSGM] [float] NULL,
	[CommGM] [float] NULL,
	[CommMaster] [float] NULL,
	[CommAgent] [float] NULL,
	[CommMember] [float] NULL,
	[OTValue] [nchar](10) NULL,
	[NameEvent] [nvarchar](150) NULL,
	[ReportDate] [datetime] NULL,
	[ptVal] [float] NULL,
	[winVal] [float] NULL,
	[loseVal] [float] NULL
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[TempBet] ON
INSERT [dbo].[TempBet] ([ID], [AccID], [MatchID], [BetTypeID], [ParentID], [SGMId], [GMId], [MasterId], [AgentId], [StrAcc], [BetType], [LeaguaName], [Home], [Away], [Time], [TransTime], [Code], [Choice], [Hdp], [Odds], [Stake], [Status], [IPBet], [PotentialWin], [Win], [IsLiveBet], [ResultLiveBet], [ResultTime], [FinalScore], [PTSGM], [PTGM], [PTMaster], [PTAgent], [CommSGM], [CommGM], [CommMaster], [CommAgent], [CommMember], [OTValue], [NameEvent], [ReportDate], [ptVal], [winVal], [loseVal]) VALUES (40, 16, 16, 5, 15, 4, 7, 10, 15, N'SCKE909001', N'FT.1 X 2', N'2010 FIFA World Cup South Africa', N'Brazil', N'Netherlands', N'LIVE 10:00PM', CAST(0x00009DA60180A524 AS DateTime), N'0332', N'1', 0, 1.97, CAST(3.00 AS Decimal(18, 2)), N'Running', N'117.4.199.137', 5.91, -3, 0, N'0 - 0', CAST(0x00009DA601851708 AS DateTime), N'-', 30, 5, 65, 0, 1, 0.6, 0.4, 0.25, 0.25, N'MY        ', N'Soccer', CAST(0x00009DB900000000 AS DateTime), 0, 5.91, 3)
SET IDENTITY_INSERT [dbo].[TempBet] OFF
/****** Object:  Table [dbo].[tblUserSoccerEvent]    Script Date: 12/31/2010 17:36:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblUserSoccerEvent](
	[EventID] [int] NOT NULL,
	[AccID] [bigint] NOT NULL,
 CONSTRAINT [PK_tblUserSoccerEvent] PRIMARY KEY CLUSTERED 
(
	[EventID] ASC,
	[AccID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblUserRights]    Script Date: 12/31/2010 17:36:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblUserRights](
	[UserID] [bigint] NOT NULL,
	[intFunctionID] [int] NOT NULL,
	[GradeID] [int] NULL
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'1:SGM;2:GM;3:Master;4:Agent;5:Member;6:Group' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tblUserRights', @level2type=N'COLUMN',@level2name=N'GradeID'
GO
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (15, 4, 4)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (15, 31, 4)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (15, 32, 4)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (15, 3, 4)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (15, 8, 4)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (15, 21, 4)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (15, 6, 4)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (15, 7, 4)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (15, 9, 4)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (15, 10, 4)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (15, 11, 4)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (15, 22, 4)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (15, 14, 4)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (15, 15, 4)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (15, 16, 4)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (15, 17, 4)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (15, 18, 4)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (15, 19, 4)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (15, 20, 4)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (2, 1, 4)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (2, 2, 4)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (2, 3, 4)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (2, 4, 4)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (15, 24, 4)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (2, 5, 4)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (2, 6, 4)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (2, 7, 4)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (2, 8, 4)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (2, 9, 4)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (2, 10, 4)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (15, 25, 4)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (15, 26, 4)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (2, 11, 4)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (2, 12, 4)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (2, 13, 4)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (15, 35, 4)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (15, 36, 4)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (15, 37, 4)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (15, 38, 4)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (15, 28, 4)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (15, 29, 4)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (15, 30, 4)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (7, 3, 2)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (7, 4, 2)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (7, 6, 2)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (7, 7, 2)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (7, 8, 2)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (7, 9, 2)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (7, 10, 2)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (7, 11, 2)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (7, 14, 2)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (7, 15, 2)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (7, 45, 2)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (7, 17, 2)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (7, 18, 2)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (7, 19, 2)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (7, 20, 2)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (7, 46, 2)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (7, 47, 2)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (7, 24, 2)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (7, 25, 2)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (7, 26, 2)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (7, 28, 2)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (7, 29, 2)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (7, 30, 2)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (7, 40, 2)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (7, 32, 2)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (7, 43, 2)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (7, 56, 2)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (7, 37, 2)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (7, 36, 2)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (4, 3, 1)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (4, 4, 1)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (4, 6, 1)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (4, 7, 1)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (4, 8, 1)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (4, 9, 1)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (4, 10, 1)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (4, 11, 1)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (4, 14, 1)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (4, 15, 1)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (4, 48, 1)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (4, 17, 1)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (4, 18, 1)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (4, 19, 1)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (4, 20, 1)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (4, 49, 1)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (4, 50, 1)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (4, 24, 1)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (4, 25, 1)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (4, 26, 1)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (4, 28, 1)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (4, 29, 1)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (4, 30, 1)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (4, 39, 1)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (4, 32, 1)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (4, 42, 1)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (4, 36, 1)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (4, 37, 1)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (4, 55, 1)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (10, 3, 3)
GO
print 'Processed 100 total records'
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (10, 4, 3)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (10, 6, 3)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (10, 7, 3)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (10, 8, 3)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (10, 9, 3)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (10, 10, 3)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (10, 11, 3)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (10, 14, 3)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (10, 15, 3)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (10, 51, 3)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (10, 17, 3)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (10, 18, 3)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (10, 19, 3)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (10, 20, 3)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (10, 52, 3)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (10, 24, 3)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (10, 25, 3)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (10, 26, 3)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (10, 28, 3)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (10, 29, 3)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (10, 30, 3)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (10, 41, 3)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (10, 32, 3)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (10, 44, 3)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (10, 36, 3)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (10, 37, 3)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (10, 53, 3)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (35, 3, 2)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (35, 4, 2)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (35, 6, 2)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (35, 7, 2)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (35, 8, 2)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (35, 9, 2)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (35, 10, 2)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (35, 11, 2)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (35, 14, 2)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (35, 15, 2)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (35, 17, 2)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (35, 18, 2)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (35, 19, 2)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (35, 20, 2)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (35, 45, 2)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (35, 46, 2)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (35, 47, 2)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (35, 24, 2)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (35, 25, 2)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (35, 26, 2)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (35, 28, 2)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (35, 29, 2)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (35, 30, 2)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (35, 40, 2)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (35, 32, 2)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (35, 43, 2)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (35, 36, 2)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (35, 37, 2)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (35, 56, 2)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (10, 57, 3)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (38, 3, 2)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (38, 4, 2)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (2, 32, 4)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (2, 35, 4)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (2, 36, 4)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (2, 14, 4)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (2, 15, 4)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (2, 16, 4)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (2, 21, 4)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (2, 22, 4)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (2, 23, 4)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (2, 24, 4)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (2, 25, 4)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (2, 26, 4)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (2, 27, 4)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (2, 28, 4)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (2, 37, 4)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (3, 31, 4)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (2, 38, 4)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (2, 18, 4)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (3, 18, 4)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (3, 32, 4)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (3, 35, 4)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (3, 36, 4)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (3, 37, 4)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (3, 38, 4)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (3, 16, 4)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (3, 21, 4)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (3, 22, 4)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (3, 23, 4)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (3, 24, 4)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (3, 25, 4)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (3, 26, 4)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (3, 27, 4)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (3, 28, 4)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (3, 29, 4)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (3, 30, 4)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (2, 29, 4)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (2, 30, 4)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (40, 3, 3)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (40, 4, 3)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (40, 6, 3)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (40, 7, 3)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (40, 8, 3)
GO
print 'Processed 200 total records'
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (40, 9, 3)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (40, 10, 3)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (40, 11, 3)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (40, 14, 3)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (40, 15, 3)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (40, 17, 3)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (40, 18, 3)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (40, 19, 3)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (40, 20, 3)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (40, 51, 3)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (40, 52, 3)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (40, 53, 3)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (40, 24, 3)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (40, 25, 3)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (40, 26, 3)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (40, 28, 3)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (40, 29, 3)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (40, 30, 3)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (40, 41, 3)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (40, 32, 3)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (40, 44, 3)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (40, 36, 3)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (40, 37, 3)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (40, 57, 3)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (1, 18, 3)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (47, 3, 2)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (47, 4, 2)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (47, 6, 2)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (47, 7, 2)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (47, 8, 2)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (47, 9, 2)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (47, 10, 2)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (47, 11, 2)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (47, 14, 2)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (47, 15, 2)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (47, 17, 2)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (47, 18, 2)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (47, 19, 2)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (47, 20, 2)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (47, 45, 2)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (47, 46, 2)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (47, 47, 2)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (47, 24, 2)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (47, 25, 2)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (47, 26, 2)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (47, 28, 2)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (47, 29, 2)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (47, 30, 2)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (47, 40, 2)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (47, 32, 2)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (47, 43, 2)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (47, 36, 2)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (47, 37, 2)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (47, 56, 2)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (44, 18, 4)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (44, 32, 4)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (44, 35, 4)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (44, 36, 4)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (44, 37, 4)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (44, 38, 4)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (51, 4, 3)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (51, 5, 3)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (51, 6, 3)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (51, 7, 3)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (51, 8, 3)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (51, 9, 3)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (51, 10, 3)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (51, 11, 3)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (51, 12, 3)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (51, 13, 3)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (51, 14, 3)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (51, 15, 3)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (51, 16, 3)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (51, 21, 3)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (51, 22, 3)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (51, 23, 3)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (51, 24, 3)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (51, 25, 3)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (51, 26, 3)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (51, 27, 3)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (51, 28, 3)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (51, 29, 3)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (51, 30, 3)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (51, 31, 3)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (51, 35, 3)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (51, 36, 3)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (51, 37, 3)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (51, 38, 3)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (51, 32, 3)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (52, 4, 3)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (52, 5, 3)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (52, 6, 3)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (52, 7, 3)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (52, 8, 3)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (52, 9, 3)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (52, 10, 3)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (52, 11, 3)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (52, 12, 3)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (52, 13, 3)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (52, 14, 3)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (52, 15, 3)
GO
print 'Processed 300 total records'
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (38, 6, 2)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (38, 7, 2)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (38, 8, 2)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (38, 9, 2)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (38, 10, 2)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (38, 11, 2)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (38, 14, 2)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (38, 15, 2)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (38, 17, 2)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (38, 18, 2)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (38, 19, 2)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (38, 20, 2)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (38, 45, 2)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (38, 46, 2)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (38, 47, 2)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (38, 24, 2)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (38, 25, 2)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (38, 26, 2)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (38, 28, 2)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (38, 29, 2)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (38, 30, 2)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (38, 40, 2)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (38, 32, 2)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (38, 43, 2)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (38, 36, 2)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (38, 37, 2)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (38, 56, 2)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (2, 31, 4)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (3, 4, 4)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (3, 5, 4)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (3, 6, 4)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (3, 7, 4)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (3, 8, 4)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (3, 9, 4)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (3, 10, 4)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (3, 11, 4)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (3, 12, 4)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (3, 13, 4)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (3, 14, 4)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (3, 15, 4)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (52, 16, 3)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (52, 21, 3)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (52, 22, 3)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (52, 23, 3)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (52, 24, 3)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (52, 25, 3)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (52, 26, 3)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (52, 27, 3)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (52, 28, 3)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (52, 29, 3)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (52, 30, 3)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (52, 31, 3)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (52, 32, 3)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (52, 35, 3)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (52, 36, 3)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (52, 37, 3)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (52, 38, 3)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (52, 18, 3)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (43, 4, 4)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (43, 5, 4)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (43, 6, 4)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (43, 7, 4)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (43, 8, 4)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (43, 9, 4)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (43, 10, 4)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (43, 11, 4)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (43, 12, 4)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (43, 13, 4)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (43, 14, 4)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (43, 15, 4)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (43, 31, 4)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (43, 32, 4)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (43, 35, 4)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (43, 36, 4)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (43, 37, 4)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (43, 38, 4)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (45, 4, 4)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (45, 5, 4)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (45, 6, 4)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (45, 7, 4)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (45, 8, 4)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (45, 9, 4)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (45, 10, 4)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (45, 11, 4)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (45, 12, 4)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (45, 13, 4)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (45, 14, 4)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (45, 15, 4)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (45, 16, 4)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (45, 21, 4)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (45, 22, 4)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (45, 23, 4)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (45, 24, 4)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (45, 25, 4)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (45, 26, 4)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (45, 27, 4)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (45, 28, 4)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (45, 29, 4)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (45, 30, 4)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (45, 31, 4)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (45, 32, 4)
GO
print 'Processed 400 total records'
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (45, 35, 4)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (45, 36, 4)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (45, 37, 4)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (45, 38, 4)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (45, 18, 4)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (46, 4, 4)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (46, 5, 4)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (46, 6, 4)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (46, 7, 4)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (46, 8, 4)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (46, 9, 4)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (46, 10, 4)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (46, 11, 4)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (46, 12, 4)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (46, 13, 4)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (46, 14, 4)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (46, 15, 4)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (46, 16, 4)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (46, 21, 4)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (46, 22, 4)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (46, 23, 4)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (46, 24, 4)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (46, 25, 4)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (46, 26, 4)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (46, 27, 4)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (46, 28, 4)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (46, 29, 4)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (46, 30, 4)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (46, 31, 4)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (46, 32, 4)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (46, 35, 4)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (46, 36, 4)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (46, 37, 4)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (46, 38, 4)
INSERT [dbo].[tblUserRights] ([UserID], [intFunctionID], [GradeID]) VALUES (46, 18, 4)
/****** Object:  Table [dbo].[tblUserCommission]    Script Date: 12/31/2010 17:36:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblUserCommission](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[AccID] [bigint] NULL,
	[CommA] [decimal](18, 4) NULL,
	[CommB] [decimal](18, 4) NULL,
	[CommC] [decimal](18, 4) NULL,
	[CommD] [decimal](18, 4) NULL,
	[Comm1X2] [decimal](18, 4) NULL,
	[CommOther] [decimal](18, 4) NULL,
	[CreateBy] [bigint] NULL,
	[CreateDate] [datetime] NULL,
	[ModifyBy] [bigint] NULL,
	[ModifyDate] [datetime] NULL,
 CONSTRAINT [PK_tblCommission] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[tblUserCommission] ON
INSERT [dbo].[tblUserCommission] ([ID], [AccID], [CommA], [CommB], [CommC], [CommD], [Comm1X2], [CommOther], [CreateBy], [CreateDate], [ModifyBy], [ModifyDate]) VALUES (1, 15, CAST(0.0025 AS Decimal(18, 4)), CAST(0.0050 AS Decimal(18, 4)), CAST(0.0075 AS Decimal(18, 4)), CAST(0.0100 AS Decimal(18, 4)), CAST(0.0025 AS Decimal(18, 4)), CAST(0.0100 AS Decimal(18, 4)), NULL, CAST(0x00009DA800BFFFF4 AS DateTime), NULL, CAST(0x00009DA800BFFFF4 AS DateTime))
INSERT [dbo].[tblUserCommission] ([ID], [AccID], [CommA], [CommB], [CommC], [CommD], [Comm1X2], [CommOther], [CreateBy], [CreateDate], [ModifyBy], [ModifyDate]) VALUES (11, 4, CAST(0.0025 AS Decimal(18, 4)), CAST(0.0050 AS Decimal(18, 4)), CAST(0.0075 AS Decimal(18, 4)), CAST(0.0100 AS Decimal(18, 4)), CAST(0.0025 AS Decimal(18, 4)), CAST(0.0100 AS Decimal(18, 4)), NULL, CAST(0x00009DA800BFFFF4 AS DateTime), NULL, CAST(0x00009DA800BFFFF4 AS DateTime))
INSERT [dbo].[tblUserCommission] ([ID], [AccID], [CommA], [CommB], [CommC], [CommD], [Comm1X2], [CommOther], [CreateBy], [CreateDate], [ModifyBy], [ModifyDate]) VALUES (12, 7, CAST(0.0025 AS Decimal(18, 4)), CAST(0.0050 AS Decimal(18, 4)), CAST(0.0075 AS Decimal(18, 4)), CAST(0.0100 AS Decimal(18, 4)), CAST(0.0025 AS Decimal(18, 4)), CAST(0.0100 AS Decimal(18, 4)), 4, CAST(0x00009DA800B68403 AS DateTime), 4, CAST(0x00009DA800B68403 AS DateTime))
INSERT [dbo].[tblUserCommission] ([ID], [AccID], [CommA], [CommB], [CommC], [CommD], [Comm1X2], [CommOther], [CreateBy], [CreateDate], [ModifyBy], [ModifyDate]) VALUES (16, 10, CAST(0.0025 AS Decimal(18, 4)), CAST(0.0050 AS Decimal(18, 4)), CAST(0.0075 AS Decimal(18, 4)), CAST(0.0100 AS Decimal(18, 4)), CAST(0.0025 AS Decimal(18, 4)), CAST(0.0100 AS Decimal(18, 4)), 7, CAST(0x00009D9F00BCB5D1 AS DateTime), 7, CAST(0x00009D9F00BCB5D1 AS DateTime))
INSERT [dbo].[tblUserCommission] ([ID], [AccID], [CommA], [CommB], [CommC], [CommD], [Comm1X2], [CommOther], [CreateBy], [CreateDate], [ModifyBy], [ModifyDate]) VALUES (18, 16, CAST(0.0025 AS Decimal(18, 4)), CAST(0.0050 AS Decimal(18, 4)), CAST(0.0075 AS Decimal(18, 4)), CAST(0.0100 AS Decimal(18, 4)), CAST(0.0025 AS Decimal(18, 4)), CAST(0.0100 AS Decimal(18, 4)), NULL, CAST(0x00009DA800BFFFF4 AS DateTime), NULL, CAST(0x00009DA800BFFFF4 AS DateTime))
INSERT [dbo].[tblUserCommission] ([ID], [AccID], [CommA], [CommB], [CommC], [CommD], [Comm1X2], [CommOther], [CreateBy], [CreateDate], [ModifyBy], [ModifyDate]) VALUES (19, 17, CAST(0.0025 AS Decimal(18, 4)), CAST(0.0050 AS Decimal(18, 4)), CAST(0.0075 AS Decimal(18, 4)), CAST(0.0100 AS Decimal(18, 4)), CAST(0.0025 AS Decimal(18, 4)), CAST(0.0100 AS Decimal(18, 4)), NULL, CAST(0x00009DA800BFFFF4 AS DateTime), NULL, CAST(0x00009DA800BFFFF4 AS DateTime))
INSERT [dbo].[tblUserCommission] ([ID], [AccID], [CommA], [CommB], [CommC], [CommD], [Comm1X2], [CommOther], [CreateBy], [CreateDate], [ModifyBy], [ModifyDate]) VALUES (20, 18, CAST(0.0025 AS Decimal(18, 4)), CAST(0.0050 AS Decimal(18, 4)), CAST(0.0075 AS Decimal(18, 4)), CAST(0.0100 AS Decimal(18, 4)), CAST(0.0025 AS Decimal(18, 4)), CAST(0.0100 AS Decimal(18, 4)), NULL, CAST(0x00009DA800BFFFF4 AS DateTime), NULL, CAST(0x00009DA800BFFFF4 AS DateTime))
INSERT [dbo].[tblUserCommission] ([ID], [AccID], [CommA], [CommB], [CommC], [CommD], [Comm1X2], [CommOther], [CreateBy], [CreateDate], [ModifyBy], [ModifyDate]) VALUES (21, 35, CAST(0.0025 AS Decimal(18, 4)), CAST(0.0050 AS Decimal(18, 4)), CAST(0.0075 AS Decimal(18, 4)), CAST(0.0100 AS Decimal(18, 4)), CAST(0.0025 AS Decimal(18, 4)), CAST(0.0100 AS Decimal(18, 4)), 4, CAST(0x00009DA800C000BE AS DateTime), 4, CAST(0x00009DA800C000BE AS DateTime))
INSERT [dbo].[tblUserCommission] ([ID], [AccID], [CommA], [CommB], [CommC], [CommD], [Comm1X2], [CommOther], [CreateBy], [CreateDate], [ModifyBy], [ModifyDate]) VALUES (22, 38, CAST(0.0025 AS Decimal(18, 4)), CAST(0.0050 AS Decimal(18, 4)), CAST(0.0075 AS Decimal(18, 4)), CAST(0.0100 AS Decimal(18, 4)), CAST(0.0025 AS Decimal(18, 4)), CAST(0.0100 AS Decimal(18, 4)), 4, CAST(0x00009DA90110528A AS DateTime), 4, CAST(0x00009DA90110528A AS DateTime))
INSERT [dbo].[tblUserCommission] ([ID], [AccID], [CommA], [CommB], [CommC], [CommD], [Comm1X2], [CommOther], [CreateBy], [CreateDate], [ModifyBy], [ModifyDate]) VALUES (23, 40, CAST(0.0025 AS Decimal(18, 4)), CAST(0.0050 AS Decimal(18, 4)), CAST(0.0075 AS Decimal(18, 4)), CAST(0.0100 AS Decimal(18, 4)), CAST(0.0025 AS Decimal(18, 4)), CAST(0.0100 AS Decimal(18, 4)), 7, CAST(0x00009DAD0115F550 AS DateTime), 7, CAST(0x00009DAD0115F550 AS DateTime))
INSERT [dbo].[tblUserCommission] ([ID], [AccID], [CommA], [CommB], [CommC], [CommD], [Comm1X2], [CommOther], [CreateBy], [CreateDate], [ModifyBy], [ModifyDate]) VALUES (24, 47, CAST(0.0025 AS Decimal(18, 4)), CAST(0.0050 AS Decimal(18, 4)), CAST(0.0075 AS Decimal(18, 4)), CAST(0.0100 AS Decimal(18, 4)), CAST(0.0025 AS Decimal(18, 4)), CAST(0.0100 AS Decimal(18, 4)), 4, CAST(0x00009DAD0182B295 AS DateTime), 4, CAST(0x00009DAD0182B295 AS DateTime))
INSERT [dbo].[tblUserCommission] ([ID], [AccID], [CommA], [CommB], [CommC], [CommD], [Comm1X2], [CommOther], [CreateBy], [CreateDate], [ModifyBy], [ModifyDate]) VALUES (25, 50, CAST(0.0025 AS Decimal(18, 4)), CAST(0.0000 AS Decimal(18, 4)), CAST(0.0000 AS Decimal(18, 4)), CAST(0.0000 AS Decimal(18, 4)), CAST(0.0025 AS Decimal(18, 4)), CAST(0.0100 AS Decimal(18, 4)), 15, CAST(0x00009DAE009296D3 AS DateTime), 15, CAST(0x00009DAE009296D3 AS DateTime))
INSERT [dbo].[tblUserCommission] ([ID], [AccID], [CommA], [CommB], [CommC], [CommD], [Comm1X2], [CommOther], [CreateBy], [CreateDate], [ModifyBy], [ModifyDate]) VALUES (26, 53, CAST(0.0000 AS Decimal(18, 4)), CAST(0.0040 AS Decimal(18, 4)), CAST(0.0000 AS Decimal(18, 4)), CAST(0.0000 AS Decimal(18, 4)), CAST(0.0025 AS Decimal(18, 4)), CAST(0.0100 AS Decimal(18, 4)), 15, CAST(0x00009DC200F812ED AS DateTime), 15, CAST(0x00009DC200F812ED AS DateTime))
INSERT [dbo].[tblUserCommission] ([ID], [AccID], [CommA], [CommB], [CommC], [CommD], [Comm1X2], [CommOther], [CreateBy], [CreateDate], [ModifyBy], [ModifyDate]) VALUES (30, 57, CAST(0.0025 AS Decimal(18, 4)), CAST(0.0000 AS Decimal(18, 4)), CAST(0.0000 AS Decimal(18, 4)), CAST(0.0000 AS Decimal(18, 4)), CAST(0.0025 AS Decimal(18, 4)), CAST(0.0100 AS Decimal(18, 4)), 15, CAST(0x00009DC3000FBA40 AS DateTime), 15, CAST(0x00009DC3000FBA40 AS DateTime))
INSERT [dbo].[tblUserCommission] ([ID], [AccID], [CommA], [CommB], [CommC], [CommD], [Comm1X2], [CommOther], [CreateBy], [CreateDate], [ModifyBy], [ModifyDate]) VALUES (31, 58, CAST(0.0000 AS Decimal(18, 4)), CAST(0.0000 AS Decimal(18, 4)), CAST(0.0075 AS Decimal(18, 4)), CAST(0.0000 AS Decimal(18, 4)), CAST(0.0025 AS Decimal(18, 4)), CAST(0.0100 AS Decimal(18, 4)), 15, CAST(0x00009DC30011FD86 AS DateTime), 15, CAST(0x00009DC30011FD86 AS DateTime))
INSERT [dbo].[tblUserCommission] ([ID], [AccID], [CommA], [CommB], [CommC], [CommD], [Comm1X2], [CommOther], [CreateBy], [CreateDate], [ModifyBy], [ModifyDate]) VALUES (32, 59, CAST(0.0000 AS Decimal(18, 4)), CAST(0.0000 AS Decimal(18, 4)), CAST(0.0000 AS Decimal(18, 4)), CAST(0.0100 AS Decimal(18, 4)), CAST(0.0025 AS Decimal(18, 4)), CAST(0.0100 AS Decimal(18, 4)), 15, CAST(0x00009DC3001258B6 AS DateTime), 15, CAST(0x00009DC3001258B6 AS DateTime))
INSERT [dbo].[tblUserCommission] ([ID], [AccID], [CommA], [CommB], [CommC], [CommD], [Comm1X2], [CommOther], [CreateBy], [CreateDate], [ModifyBy], [ModifyDate]) VALUES (33, 80, CAST(0.0025 AS Decimal(18, 4)), CAST(0.0025 AS Decimal(18, 4)), CAST(0.0025 AS Decimal(18, 4)), CAST(0.0025 AS Decimal(18, 4)), CAST(0.0025 AS Decimal(18, 4)), CAST(0.0100 AS Decimal(18, 4)), 2, CAST(0x00009E5B0101FB48 AS DateTime), 0, CAST(0x00009E5B0101FB49 AS DateTime))
INSERT [dbo].[tblUserCommission] ([ID], [AccID], [CommA], [CommB], [CommC], [CommD], [Comm1X2], [CommOther], [CreateBy], [CreateDate], [ModifyBy], [ModifyDate]) VALUES (34, 80, CAST(0.0025 AS Decimal(18, 4)), CAST(0.0025 AS Decimal(18, 4)), CAST(0.0025 AS Decimal(18, 4)), CAST(0.0025 AS Decimal(18, 4)), CAST(0.0025 AS Decimal(18, 4)), CAST(0.0100 AS Decimal(18, 4)), 2, CAST(0x00009E5B0101FB48 AS DateTime), 0, CAST(0x00009E5B0101FB49 AS DateTime))
INSERT [dbo].[tblUserCommission] ([ID], [AccID], [CommA], [CommB], [CommC], [CommD], [Comm1X2], [CommOther], [CreateBy], [CreateDate], [ModifyBy], [ModifyDate]) VALUES (35, 81, CAST(0.0010 AS Decimal(18, 4)), CAST(0.0010 AS Decimal(18, 4)), CAST(0.0010 AS Decimal(18, 4)), CAST(0.0010 AS Decimal(18, 4)), CAST(0.0015 AS Decimal(18, 4)), CAST(0.0085 AS Decimal(18, 4)), 2, CAST(0x00009E5C00ECE447 AS DateTime), 0, CAST(0x00009E5C00ECE447 AS DateTime))
INSERT [dbo].[tblUserCommission] ([ID], [AccID], [CommA], [CommB], [CommC], [CommD], [Comm1X2], [CommOther], [CreateBy], [CreateDate], [ModifyBy], [ModifyDate]) VALUES (36, 81, CAST(0.0025 AS Decimal(18, 4)), CAST(0.0025 AS Decimal(18, 4)), CAST(0.0025 AS Decimal(18, 4)), CAST(0.0025 AS Decimal(18, 4)), CAST(0.0015 AS Decimal(18, 4)), CAST(0.0085 AS Decimal(18, 4)), 81, CAST(0x00009E5C00FBA9B1 AS DateTime), 0, CAST(0x00009E5C00FBA9B1 AS DateTime))
INSERT [dbo].[tblUserCommission] ([ID], [AccID], [CommA], [CommB], [CommC], [CommD], [Comm1X2], [CommOther], [CreateBy], [CreateDate], [ModifyBy], [ModifyDate]) VALUES (37, 91, CAST(0.0025 AS Decimal(18, 4)), CAST(0.0025 AS Decimal(18, 4)), CAST(0.0025 AS Decimal(18, 4)), CAST(0.0100 AS Decimal(18, 4)), CAST(0.0025 AS Decimal(18, 4)), CAST(0.0100 AS Decimal(18, 4)), 2, CAST(0x00009E5C010EAF6D AS DateTime), 0, CAST(0x00009E5C010EAF6D AS DateTime))
INSERT [dbo].[tblUserCommission] ([ID], [AccID], [CommA], [CommB], [CommC], [CommD], [Comm1X2], [CommOther], [CreateBy], [CreateDate], [ModifyBy], [ModifyDate]) VALUES (38, 91, CAST(0.0025 AS Decimal(18, 4)), CAST(0.0025 AS Decimal(18, 4)), CAST(0.0025 AS Decimal(18, 4)), CAST(0.0100 AS Decimal(18, 4)), CAST(0.0025 AS Decimal(18, 4)), CAST(0.0100 AS Decimal(18, 4)), 2, CAST(0x00009E5C010EAF6D AS DateTime), 0, CAST(0x00009E5C010EAF6D AS DateTime))
SET IDENTITY_INSERT [dbo].[tblUserCommission] OFF
/****** Object:  Table [dbo].[tblTemp]    Script Date: 12/31/2010 17:36:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblTemp](
	[IDTBL] [bigint] NOT NULL,
	[MUID] [varchar](200) NULL,
	[MatchId] [bigint] NULL,
	[MatchCode] [varchar](50) NULL,
	[MatchCount] [bigint] NULL,
	[LeagueId] [bigint] NULL,
	[LeagueName] [varchar](200) NULL,
	[HomeName] [varchar](200) NULL,
	[AwayName] [varchar](200) NULL,
	[KickoffTime] [varchar](50) NULL,
	[StatsId] [int] NULL,
	[SportRadar] [int] NULL,
	[StreamingId] [int] NULL,
	[ShowTime] [varchar](50) NULL,
	[Favorite] [bit] NULL,
	[FlagLive] [bit] NULL,
	[LivePeriod] [int] NULL,
	[CsStatus] [int] NULL,
	[InjuryTime] [int] NULL,
	[ScoreH] [int] NULL,
	[ScoreA] [int] NULL,
	[RedCardH] [int] NULL,
	[RedCardA] [int] NULL,
	[MoreCount] [int] NULL,
	[OddsId_1] [bigint] NULL,
	[Value_1] [nvarchar](50) NULL,
	[Odds_1_H] [nvarchar](50) NULL,
	[Odds_1_A] [nvarchar](50) NULL,
	[FavorF] [nvarchar](50) NULL,
	[OddsId_3] [bigint] NULL,
	[Goal_3] [nvarchar](50) NULL,
	[Odds_3_O] [nvarchar](50) NULL,
	[Odds_3_U] [nvarchar](50) NULL,
	[OddsId_5] [bigint] NULL,
	[Odds_5_1] [nvarchar](50) NULL,
	[Odds_5_X] [nvarchar](50) NULL,
	[Odds_5_2] [nvarchar](50) NULL,
	[OddsId_7] [bigint] NULL,
	[Value_7] [nvarchar](50) NULL,
	[Odds_7_H] [nvarchar](50) NULL,
	[Odds_7_A] [nvarchar](50) NULL,
	[FavorH1] [nvarchar](50) NULL,
	[OddsId_8] [bigint] NULL,
	[Goal_8] [nvarchar](50) NULL,
	[Odds_8_O] [nvarchar](50) NULL,
	[Odds_8_U] [nvarchar](50) NULL,
	[OddsId_15] [bigint] NULL,
	[Odds_15_1] [nvarchar](50) NULL,
	[Odds_15_X] [nvarchar](50) NULL,
	[Odds_15_2] [nvarchar](50) NULL,
	[OddsId_4] [bigint] NULL,
	[Odds_4_00] [nvarchar](50) NULL,
	[Odds_4_01] [nvarchar](50) NULL,
	[Odds_4_02] [nvarchar](50) NULL,
	[Odds_4_03] [nvarchar](50) NULL,
	[Odds_4_04] [nvarchar](50) NULL,
	[Odds_4_05] [nvarchar](50) NULL,
	[Odds_4_10] [nvarchar](50) NULL,
	[Odds_4_11] [nvarchar](50) NULL,
	[Odds_4_12] [nvarchar](50) NULL,
	[Odds_4_13] [nvarchar](50) NULL,
	[Odds_4_14] [nvarchar](50) NULL,
	[Odds_4_20] [nvarchar](50) NULL,
	[Odds_4_21] [nvarchar](50) NULL,
	[Odds_4_22] [nvarchar](50) NULL,
	[Odds_4_23] [nvarchar](50) NULL,
	[Odds_4_24] [nvarchar](50) NULL,
	[Odds_4_30] [nvarchar](50) NULL,
	[Odds_4_31] [nvarchar](50) NULL,
	[Odds_4_32] [nvarchar](50) NULL,
	[Odds_4_33] [nvarchar](50) NULL,
	[Odds_4_34] [nvarchar](50) NULL,
	[Odds_4_40] [nvarchar](50) NULL,
	[Odds_4_41] [nvarchar](50) NULL,
	[Odds_4_42] [nvarchar](50) NULL,
	[Odds_4_43] [nvarchar](50) NULL,
	[Odds_4_44] [nvarchar](50) NULL,
	[Odds_4_50] [nvarchar](50) NULL,
	[OddsId_2] [bigint] NULL,
	[Odds_2_O] [nvarchar](50) NULL,
	[Odds_2_E] [nvarchar](50) NULL,
	[OddsId_6] [bigint] NULL,
	[Odds_6_01] [nvarchar](50) NULL,
	[Odds_6_23] [nvarchar](50) NULL,
	[Odds_6_46] [nvarchar](50) NULL,
	[Odds_6_7] [nvarchar](50) NULL,
	[OddsId_12] [bigint] NULL,
	[Odds_12_O] [nvarchar](50) NULL,
	[Odds_12_E] [nvarchar](50) NULL,
	[OddsId_16] [bigint] NULL,
	[Odds_16_HH] [nvarchar](50) NULL,
	[Odds_16_HD] [nvarchar](50) NULL,
	[Odds_16_HA] [nvarchar](50) NULL,
	[Odds_16_DH] [nvarchar](50) NULL,
	[Odds_16_DD] [nvarchar](50) NULL,
	[Odds_16_DA] [nvarchar](50) NULL,
	[Odds_16_AH] [nvarchar](50) NULL,
	[Odds_16_AD] [nvarchar](50) NULL,
	[Odds_16_AA] [nvarchar](50) NULL,
	[OddsId_14] [bigint] NULL,
	[Odds_14_NO] [nvarchar](50) NULL,
	[Odds_14_HF] [nvarchar](50) NULL,
	[Odds_14_HL] [nvarchar](50) NULL,
	[Odds_14_AF] [nvarchar](50) NULL,
	[Odds_14_AL] [nvarchar](50) NULL,
	[Status] [bit] NULL,
	[Show] [bit] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblSystemSetting]    Script Date: 12/31/2010 17:36:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblSystemSetting](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](250) NULL,
	[MinValue] [float] NULL,
	[MaxValue] [float] NULL,
 CONSTRAINT [PK_tblSystemSetting] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblSoccerLive]    Script Date: 12/31/2010 17:36:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblSoccerLive](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[AccID] [bigint] NULL,
	[Handi_NG] [decimal](18, 2) NULL,
	[Over_Under] [decimal](18, 2) NULL,
	[FirtHandicap] [decimal](18, 2) NULL,
	[FirtOverUnder] [decimal](18, 2) NULL,
 CONSTRAINT [PK_tblSoccerLive] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[tblSoccerLive] ON
INSERT [dbo].[tblSoccerLive] ([ID], [AccID], [Handi_NG], [Over_Under], [FirtHandicap], [FirtOverUnder]) VALUES (1, 15, CAST(0.02 AS Decimal(18, 2)), CAST(0.05 AS Decimal(18, 2)), CAST(0.07 AS Decimal(18, 2)), CAST(0.08 AS Decimal(18, 2)))
INSERT [dbo].[tblSoccerLive] ([ID], [AccID], [Handi_NG], [Over_Under], [FirtHandicap], [FirtOverUnder]) VALUES (12, 4, CAST(0.80 AS Decimal(18, 2)), CAST(0.80 AS Decimal(18, 2)), CAST(0.80 AS Decimal(18, 2)), CAST(0.80 AS Decimal(18, 2)))
INSERT [dbo].[tblSoccerLive] ([ID], [AccID], [Handi_NG], [Over_Under], [FirtHandicap], [FirtOverUnder]) VALUES (13, 7, CAST(0.70 AS Decimal(18, 2)), CAST(0.70 AS Decimal(18, 2)), CAST(0.70 AS Decimal(18, 2)), CAST(0.70 AS Decimal(18, 2)))
INSERT [dbo].[tblSoccerLive] ([ID], [AccID], [Handi_NG], [Over_Under], [FirtHandicap], [FirtOverUnder]) VALUES (14, 10, CAST(0.02 AS Decimal(18, 2)), CAST(0.02 AS Decimal(18, 2)), CAST(0.02 AS Decimal(18, 2)), CAST(0.02 AS Decimal(18, 2)))
INSERT [dbo].[tblSoccerLive] ([ID], [AccID], [Handi_NG], [Over_Under], [FirtHandicap], [FirtOverUnder]) VALUES (18, 16, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[tblSoccerLive] ([ID], [AccID], [Handi_NG], [Over_Under], [FirtHandicap], [FirtOverUnder]) VALUES (19, 17, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[tblSoccerLive] ([ID], [AccID], [Handi_NG], [Over_Under], [FirtHandicap], [FirtOverUnder]) VALUES (20, 18, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[tblSoccerLive] ([ID], [AccID], [Handi_NG], [Over_Under], [FirtHandicap], [FirtOverUnder]) VALUES (21, 35, CAST(0.10 AS Decimal(18, 2)), CAST(0.10 AS Decimal(18, 2)), CAST(0.10 AS Decimal(18, 2)), CAST(0.10 AS Decimal(18, 2)))
INSERT [dbo].[tblSoccerLive] ([ID], [AccID], [Handi_NG], [Over_Under], [FirtHandicap], [FirtOverUnder]) VALUES (22, 38, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[tblSoccerLive] ([ID], [AccID], [Handi_NG], [Over_Under], [FirtHandicap], [FirtOverUnder]) VALUES (23, 40, CAST(0.10 AS Decimal(18, 2)), CAST(0.10 AS Decimal(18, 2)), CAST(0.10 AS Decimal(18, 2)), CAST(0.10 AS Decimal(18, 2)))
INSERT [dbo].[tblSoccerLive] ([ID], [AccID], [Handi_NG], [Over_Under], [FirtHandicap], [FirtOverUnder]) VALUES (24, 47, CAST(0.10 AS Decimal(18, 2)), CAST(0.10 AS Decimal(18, 2)), CAST(0.10 AS Decimal(18, 2)), CAST(0.10 AS Decimal(18, 2)))
INSERT [dbo].[tblSoccerLive] ([ID], [AccID], [Handi_NG], [Over_Under], [FirtHandicap], [FirtOverUnder]) VALUES (25, 50, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[tblSoccerLive] ([ID], [AccID], [Handi_NG], [Over_Under], [FirtHandicap], [FirtOverUnder]) VALUES (26, 53, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[tblSoccerLive] ([ID], [AccID], [Handi_NG], [Over_Under], [FirtHandicap], [FirtOverUnder]) VALUES (30, 57, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[tblSoccerLive] ([ID], [AccID], [Handi_NG], [Over_Under], [FirtHandicap], [FirtOverUnder]) VALUES (31, 58, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[tblSoccerLive] ([ID], [AccID], [Handi_NG], [Over_Under], [FirtHandicap], [FirtOverUnder]) VALUES (32, 59, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[tblSoccerLive] ([ID], [AccID], [Handi_NG], [Over_Under], [FirtHandicap], [FirtOverUnder]) VALUES (33, 77, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[tblSoccerLive] ([ID], [AccID], [Handi_NG], [Over_Under], [FirtHandicap], [FirtOverUnder]) VALUES (34, 77, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[tblSoccerLive] ([ID], [AccID], [Handi_NG], [Over_Under], [FirtHandicap], [FirtOverUnder]) VALUES (35, 78, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[tblSoccerLive] ([ID], [AccID], [Handi_NG], [Over_Under], [FirtHandicap], [FirtOverUnder]) VALUES (36, 78, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[tblSoccerLive] ([ID], [AccID], [Handi_NG], [Over_Under], [FirtHandicap], [FirtOverUnder]) VALUES (37, 79, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[tblSoccerLive] ([ID], [AccID], [Handi_NG], [Over_Under], [FirtHandicap], [FirtOverUnder]) VALUES (38, 79, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[tblSoccerLive] ([ID], [AccID], [Handi_NG], [Over_Under], [FirtHandicap], [FirtOverUnder]) VALUES (39, 80, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[tblSoccerLive] ([ID], [AccID], [Handi_NG], [Over_Under], [FirtHandicap], [FirtOverUnder]) VALUES (40, 80, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[tblSoccerLive] ([ID], [AccID], [Handi_NG], [Over_Under], [FirtHandicap], [FirtOverUnder]) VALUES (41, 81, CAST(0.00 AS Decimal(18, 2)), CAST(0.02 AS Decimal(18, 2)), CAST(0.02 AS Decimal(18, 2)), CAST(0.02 AS Decimal(18, 2)))
INSERT [dbo].[tblSoccerLive] ([ID], [AccID], [Handi_NG], [Over_Under], [FirtHandicap], [FirtOverUnder]) VALUES (42, 81, CAST(0.00 AS Decimal(18, 2)), CAST(0.02 AS Decimal(18, 2)), CAST(0.02 AS Decimal(18, 2)), CAST(0.02 AS Decimal(18, 2)))
INSERT [dbo].[tblSoccerLive] ([ID], [AccID], [Handi_NG], [Over_Under], [FirtHandicap], [FirtOverUnder]) VALUES (43, 81, CAST(0.00 AS Decimal(18, 2)), CAST(0.02 AS Decimal(18, 2)), CAST(0.02 AS Decimal(18, 2)), CAST(0.02 AS Decimal(18, 2)))
INSERT [dbo].[tblSoccerLive] ([ID], [AccID], [Handi_NG], [Over_Under], [FirtHandicap], [FirtOverUnder]) VALUES (44, 81, CAST(0.00 AS Decimal(18, 2)), CAST(0.02 AS Decimal(18, 2)), CAST(0.02 AS Decimal(18, 2)), CAST(0.02 AS Decimal(18, 2)))
INSERT [dbo].[tblSoccerLive] ([ID], [AccID], [Handi_NG], [Over_Under], [FirtHandicap], [FirtOverUnder]) VALUES (45, 81, CAST(0.00 AS Decimal(18, 2)), CAST(0.02 AS Decimal(18, 2)), CAST(0.02 AS Decimal(18, 2)), CAST(0.02 AS Decimal(18, 2)))
INSERT [dbo].[tblSoccerLive] ([ID], [AccID], [Handi_NG], [Over_Under], [FirtHandicap], [FirtOverUnder]) VALUES (46, 81, CAST(0.00 AS Decimal(18, 2)), CAST(0.02 AS Decimal(18, 2)), CAST(0.02 AS Decimal(18, 2)), CAST(0.02 AS Decimal(18, 2)))
INSERT [dbo].[tblSoccerLive] ([ID], [AccID], [Handi_NG], [Over_Under], [FirtHandicap], [FirtOverUnder]) VALUES (47, 81, CAST(0.00 AS Decimal(18, 2)), CAST(0.02 AS Decimal(18, 2)), CAST(0.02 AS Decimal(18, 2)), CAST(0.02 AS Decimal(18, 2)))
INSERT [dbo].[tblSoccerLive] ([ID], [AccID], [Handi_NG], [Over_Under], [FirtHandicap], [FirtOverUnder]) VALUES (48, 81, CAST(0.00 AS Decimal(18, 2)), CAST(0.02 AS Decimal(18, 2)), CAST(0.02 AS Decimal(18, 2)), CAST(0.02 AS Decimal(18, 2)))
INSERT [dbo].[tblSoccerLive] ([ID], [AccID], [Handi_NG], [Over_Under], [FirtHandicap], [FirtOverUnder]) VALUES (49, 82, CAST(0.00 AS Decimal(18, 2)), CAST(0.03 AS Decimal(18, 2)), CAST(0.03 AS Decimal(18, 2)), CAST(0.03 AS Decimal(18, 2)))
INSERT [dbo].[tblSoccerLive] ([ID], [AccID], [Handi_NG], [Over_Under], [FirtHandicap], [FirtOverUnder]) VALUES (50, 82, CAST(0.00 AS Decimal(18, 2)), CAST(0.03 AS Decimal(18, 2)), CAST(0.03 AS Decimal(18, 2)), CAST(0.03 AS Decimal(18, 2)))
INSERT [dbo].[tblSoccerLive] ([ID], [AccID], [Handi_NG], [Over_Under], [FirtHandicap], [FirtOverUnder]) VALUES (51, 83, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[tblSoccerLive] ([ID], [AccID], [Handi_NG], [Over_Under], [FirtHandicap], [FirtOverUnder]) VALUES (52, 83, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[tblSoccerLive] ([ID], [AccID], [Handi_NG], [Over_Under], [FirtHandicap], [FirtOverUnder]) VALUES (53, 84, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[tblSoccerLive] ([ID], [AccID], [Handi_NG], [Over_Under], [FirtHandicap], [FirtOverUnder]) VALUES (54, 84, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[tblSoccerLive] ([ID], [AccID], [Handi_NG], [Over_Under], [FirtHandicap], [FirtOverUnder]) VALUES (55, 85, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[tblSoccerLive] ([ID], [AccID], [Handi_NG], [Over_Under], [FirtHandicap], [FirtOverUnder]) VALUES (56, 85, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[tblSoccerLive] ([ID], [AccID], [Handi_NG], [Over_Under], [FirtHandicap], [FirtOverUnder]) VALUES (57, 86, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[tblSoccerLive] ([ID], [AccID], [Handi_NG], [Over_Under], [FirtHandicap], [FirtOverUnder]) VALUES (58, 86, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[tblSoccerLive] ([ID], [AccID], [Handi_NG], [Over_Under], [FirtHandicap], [FirtOverUnder]) VALUES (59, 87, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[tblSoccerLive] ([ID], [AccID], [Handi_NG], [Over_Under], [FirtHandicap], [FirtOverUnder]) VALUES (60, 87, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[tblSoccerLive] ([ID], [AccID], [Handi_NG], [Over_Under], [FirtHandicap], [FirtOverUnder]) VALUES (61, 88, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[tblSoccerLive] ([ID], [AccID], [Handi_NG], [Over_Under], [FirtHandicap], [FirtOverUnder]) VALUES (62, 88, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[tblSoccerLive] ([ID], [AccID], [Handi_NG], [Over_Under], [FirtHandicap], [FirtOverUnder]) VALUES (63, 89, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[tblSoccerLive] ([ID], [AccID], [Handi_NG], [Over_Under], [FirtHandicap], [FirtOverUnder]) VALUES (64, 89, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[tblSoccerLive] ([ID], [AccID], [Handi_NG], [Over_Under], [FirtHandicap], [FirtOverUnder]) VALUES (65, 90, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[tblSoccerLive] ([ID], [AccID], [Handi_NG], [Over_Under], [FirtHandicap], [FirtOverUnder]) VALUES (66, 90, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[tblSoccerLive] ([ID], [AccID], [Handi_NG], [Over_Under], [FirtHandicap], [FirtOverUnder]) VALUES (67, 91, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[tblSoccerLive] ([ID], [AccID], [Handi_NG], [Over_Under], [FirtHandicap], [FirtOverUnder]) VALUES (68, 91, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
SET IDENTITY_INSERT [dbo].[tblSoccerLive] OFF
/****** Object:  Table [dbo].[tblSoccerEvent]    Script Date: 12/31/2010 17:36:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblSoccerEvent](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[NameEvent] [nvarchar](255) NULL,
	[Minbet] [decimal](18, 0) NULL,
	[Maxbet] [decimal](18, 0) NULL,
	[MaxPerMath] [decimal](18, 0) NULL,
	[Handicap] [decimal](18, 2) NULL,
	[Over_Under] [decimal](18, 2) NULL,
	[Odd_Even] [decimal](18, 2) NULL,
	[MixParpal] [decimal](18, 2) NULL,
	[MoneyLine] [decimal](18, 2) NULL,
 CONSTRAINT [PK_tblSoccerEvent] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblSoccerDeadBall]    Script Date: 12/31/2010 17:36:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblSoccerDeadBall](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[AccID] [bigint] NULL,
	[Handi_NG] [decimal](18, 2) NULL,
	[Over_Under] [decimal](18, 2) NULL,
	[FirtHandicap] [decimal](18, 2) NULL,
	[FirtOverUnder] [decimal](18, 2) NULL,
	[Over_Event] [decimal](18, 2) NULL,
	[OneXTwo] [decimal](18, 2) NULL,
	[CorrectScore] [decimal](18, 2) NULL,
	[TotalGoal] [decimal](18, 2) NULL,
	[MixParlay] [decimal](18, 2) NULL,
	[Outright] [decimal](18, 2) NULL,
 CONSTRAINT [PK_tblSoccerDeadBall] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[tblSoccerDeadBall] ON
INSERT [dbo].[tblSoccerDeadBall] ([ID], [AccID], [Handi_NG], [Over_Under], [FirtHandicap], [FirtOverUnder], [Over_Event], [OneXTwo], [CorrectScore], [TotalGoal], [MixParlay], [Outright]) VALUES (1, 15, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[tblSoccerDeadBall] ([ID], [AccID], [Handi_NG], [Over_Under], [FirtHandicap], [FirtOverUnder], [Over_Event], [OneXTwo], [CorrectScore], [TotalGoal], [MixParlay], [Outright]) VALUES (12, 4, CAST(0.80 AS Decimal(18, 2)), CAST(0.80 AS Decimal(18, 2)), CAST(0.80 AS Decimal(18, 2)), CAST(0.80 AS Decimal(18, 2)), CAST(0.80 AS Decimal(18, 2)), CAST(0.80 AS Decimal(18, 2)), CAST(0.80 AS Decimal(18, 2)), CAST(0.80 AS Decimal(18, 2)), CAST(0.80 AS Decimal(18, 2)), CAST(0.80 AS Decimal(18, 2)))
INSERT [dbo].[tblSoccerDeadBall] ([ID], [AccID], [Handi_NG], [Over_Under], [FirtHandicap], [FirtOverUnder], [Over_Event], [OneXTwo], [CorrectScore], [TotalGoal], [MixParlay], [Outright]) VALUES (13, 7, CAST(0.70 AS Decimal(18, 2)), CAST(0.70 AS Decimal(18, 2)), CAST(0.70 AS Decimal(18, 2)), CAST(0.70 AS Decimal(18, 2)), CAST(0.70 AS Decimal(18, 2)), CAST(0.70 AS Decimal(18, 2)), CAST(0.70 AS Decimal(18, 2)), CAST(0.70 AS Decimal(18, 2)), CAST(0.70 AS Decimal(18, 2)), CAST(0.70 AS Decimal(18, 2)))
INSERT [dbo].[tblSoccerDeadBall] ([ID], [AccID], [Handi_NG], [Over_Under], [FirtHandicap], [FirtOverUnder], [Over_Event], [OneXTwo], [CorrectScore], [TotalGoal], [MixParlay], [Outright]) VALUES (14, 10, CAST(0.30 AS Decimal(18, 2)), CAST(0.30 AS Decimal(18, 2)), CAST(0.30 AS Decimal(18, 2)), CAST(0.30 AS Decimal(18, 2)), CAST(0.30 AS Decimal(18, 2)), CAST(0.20 AS Decimal(18, 2)), CAST(0.20 AS Decimal(18, 2)), CAST(0.20 AS Decimal(18, 2)), CAST(0.20 AS Decimal(18, 2)), CAST(0.20 AS Decimal(18, 2)))
INSERT [dbo].[tblSoccerDeadBall] ([ID], [AccID], [Handi_NG], [Over_Under], [FirtHandicap], [FirtOverUnder], [Over_Event], [OneXTwo], [CorrectScore], [TotalGoal], [MixParlay], [Outright]) VALUES (18, 16, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[tblSoccerDeadBall] ([ID], [AccID], [Handi_NG], [Over_Under], [FirtHandicap], [FirtOverUnder], [Over_Event], [OneXTwo], [CorrectScore], [TotalGoal], [MixParlay], [Outright]) VALUES (19, 17, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[tblSoccerDeadBall] ([ID], [AccID], [Handi_NG], [Over_Under], [FirtHandicap], [FirtOverUnder], [Over_Event], [OneXTwo], [CorrectScore], [TotalGoal], [MixParlay], [Outright]) VALUES (20, 18, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[tblSoccerDeadBall] ([ID], [AccID], [Handi_NG], [Over_Under], [FirtHandicap], [FirtOverUnder], [Over_Event], [OneXTwo], [CorrectScore], [TotalGoal], [MixParlay], [Outright]) VALUES (21, 35, CAST(0.10 AS Decimal(18, 2)), CAST(0.10 AS Decimal(18, 2)), CAST(0.10 AS Decimal(18, 2)), CAST(0.10 AS Decimal(18, 2)), CAST(0.10 AS Decimal(18, 2)), CAST(0.10 AS Decimal(18, 2)), CAST(0.10 AS Decimal(18, 2)), CAST(0.10 AS Decimal(18, 2)), CAST(0.10 AS Decimal(18, 2)), CAST(0.10 AS Decimal(18, 2)))
INSERT [dbo].[tblSoccerDeadBall] ([ID], [AccID], [Handi_NG], [Over_Under], [FirtHandicap], [FirtOverUnder], [Over_Event], [OneXTwo], [CorrectScore], [TotalGoal], [MixParlay], [Outright]) VALUES (22, 38, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[tblSoccerDeadBall] ([ID], [AccID], [Handi_NG], [Over_Under], [FirtHandicap], [FirtOverUnder], [Over_Event], [OneXTwo], [CorrectScore], [TotalGoal], [MixParlay], [Outright]) VALUES (23, 40, CAST(0.10 AS Decimal(18, 2)), CAST(0.10 AS Decimal(18, 2)), CAST(0.10 AS Decimal(18, 2)), CAST(0.10 AS Decimal(18, 2)), CAST(0.10 AS Decimal(18, 2)), CAST(0.10 AS Decimal(18, 2)), CAST(0.10 AS Decimal(18, 2)), CAST(0.10 AS Decimal(18, 2)), CAST(0.10 AS Decimal(18, 2)), CAST(0.10 AS Decimal(18, 2)))
INSERT [dbo].[tblSoccerDeadBall] ([ID], [AccID], [Handi_NG], [Over_Under], [FirtHandicap], [FirtOverUnder], [Over_Event], [OneXTwo], [CorrectScore], [TotalGoal], [MixParlay], [Outright]) VALUES (24, 47, CAST(0.10 AS Decimal(18, 2)), CAST(0.10 AS Decimal(18, 2)), CAST(0.10 AS Decimal(18, 2)), CAST(0.10 AS Decimal(18, 2)), CAST(0.10 AS Decimal(18, 2)), CAST(0.10 AS Decimal(18, 2)), CAST(0.10 AS Decimal(18, 2)), CAST(0.10 AS Decimal(18, 2)), CAST(0.10 AS Decimal(18, 2)), CAST(0.10 AS Decimal(18, 2)))
INSERT [dbo].[tblSoccerDeadBall] ([ID], [AccID], [Handi_NG], [Over_Under], [FirtHandicap], [FirtOverUnder], [Over_Event], [OneXTwo], [CorrectScore], [TotalGoal], [MixParlay], [Outright]) VALUES (25, 50, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[tblSoccerDeadBall] ([ID], [AccID], [Handi_NG], [Over_Under], [FirtHandicap], [FirtOverUnder], [Over_Event], [OneXTwo], [CorrectScore], [TotalGoal], [MixParlay], [Outright]) VALUES (26, 53, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[tblSoccerDeadBall] ([ID], [AccID], [Handi_NG], [Over_Under], [FirtHandicap], [FirtOverUnder], [Over_Event], [OneXTwo], [CorrectScore], [TotalGoal], [MixParlay], [Outright]) VALUES (30, 57, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[tblSoccerDeadBall] ([ID], [AccID], [Handi_NG], [Over_Under], [FirtHandicap], [FirtOverUnder], [Over_Event], [OneXTwo], [CorrectScore], [TotalGoal], [MixParlay], [Outright]) VALUES (31, 58, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[tblSoccerDeadBall] ([ID], [AccID], [Handi_NG], [Over_Under], [FirtHandicap], [FirtOverUnder], [Over_Event], [OneXTwo], [CorrectScore], [TotalGoal], [MixParlay], [Outright]) VALUES (32, 59, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[tblSoccerDeadBall] ([ID], [AccID], [Handi_NG], [Over_Under], [FirtHandicap], [FirtOverUnder], [Over_Event], [OneXTwo], [CorrectScore], [TotalGoal], [MixParlay], [Outright]) VALUES (33, 76, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[tblSoccerDeadBall] ([ID], [AccID], [Handi_NG], [Over_Under], [FirtHandicap], [FirtOverUnder], [Over_Event], [OneXTwo], [CorrectScore], [TotalGoal], [MixParlay], [Outright]) VALUES (34, 76, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[tblSoccerDeadBall] ([ID], [AccID], [Handi_NG], [Over_Under], [FirtHandicap], [FirtOverUnder], [Over_Event], [OneXTwo], [CorrectScore], [TotalGoal], [MixParlay], [Outright]) VALUES (35, 77, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[tblSoccerDeadBall] ([ID], [AccID], [Handi_NG], [Over_Under], [FirtHandicap], [FirtOverUnder], [Over_Event], [OneXTwo], [CorrectScore], [TotalGoal], [MixParlay], [Outright]) VALUES (36, 77, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[tblSoccerDeadBall] ([ID], [AccID], [Handi_NG], [Over_Under], [FirtHandicap], [FirtOverUnder], [Over_Event], [OneXTwo], [CorrectScore], [TotalGoal], [MixParlay], [Outright]) VALUES (37, 78, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[tblSoccerDeadBall] ([ID], [AccID], [Handi_NG], [Over_Under], [FirtHandicap], [FirtOverUnder], [Over_Event], [OneXTwo], [CorrectScore], [TotalGoal], [MixParlay], [Outright]) VALUES (38, 78, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[tblSoccerDeadBall] ([ID], [AccID], [Handi_NG], [Over_Under], [FirtHandicap], [FirtOverUnder], [Over_Event], [OneXTwo], [CorrectScore], [TotalGoal], [MixParlay], [Outright]) VALUES (39, 79, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[tblSoccerDeadBall] ([ID], [AccID], [Handi_NG], [Over_Under], [FirtHandicap], [FirtOverUnder], [Over_Event], [OneXTwo], [CorrectScore], [TotalGoal], [MixParlay], [Outright]) VALUES (40, 79, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[tblSoccerDeadBall] ([ID], [AccID], [Handi_NG], [Over_Under], [FirtHandicap], [FirtOverUnder], [Over_Event], [OneXTwo], [CorrectScore], [TotalGoal], [MixParlay], [Outright]) VALUES (41, 80, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[tblSoccerDeadBall] ([ID], [AccID], [Handi_NG], [Over_Under], [FirtHandicap], [FirtOverUnder], [Over_Event], [OneXTwo], [CorrectScore], [TotalGoal], [MixParlay], [Outright]) VALUES (42, 80, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[tblSoccerDeadBall] ([ID], [AccID], [Handi_NG], [Over_Under], [FirtHandicap], [FirtOverUnder], [Over_Event], [OneXTwo], [CorrectScore], [TotalGoal], [MixParlay], [Outright]) VALUES (43, 81, CAST(0.02 AS Decimal(18, 2)), CAST(0.02 AS Decimal(18, 2)), CAST(0.02 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.02 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[tblSoccerDeadBall] ([ID], [AccID], [Handi_NG], [Over_Under], [FirtHandicap], [FirtOverUnder], [Over_Event], [OneXTwo], [CorrectScore], [TotalGoal], [MixParlay], [Outright]) VALUES (44, 81, CAST(0.02 AS Decimal(18, 2)), CAST(0.02 AS Decimal(18, 2)), CAST(0.02 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.02 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[tblSoccerDeadBall] ([ID], [AccID], [Handi_NG], [Over_Under], [FirtHandicap], [FirtOverUnder], [Over_Event], [OneXTwo], [CorrectScore], [TotalGoal], [MixParlay], [Outright]) VALUES (45, 82, CAST(0.03 AS Decimal(18, 2)), CAST(0.03 AS Decimal(18, 2)), CAST(0.03 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.03 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[tblSoccerDeadBall] ([ID], [AccID], [Handi_NG], [Over_Under], [FirtHandicap], [FirtOverUnder], [Over_Event], [OneXTwo], [CorrectScore], [TotalGoal], [MixParlay], [Outright]) VALUES (46, 82, CAST(0.03 AS Decimal(18, 2)), CAST(0.03 AS Decimal(18, 2)), CAST(0.03 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.03 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[tblSoccerDeadBall] ([ID], [AccID], [Handi_NG], [Over_Under], [FirtHandicap], [FirtOverUnder], [Over_Event], [OneXTwo], [CorrectScore], [TotalGoal], [MixParlay], [Outright]) VALUES (47, 83, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[tblSoccerDeadBall] ([ID], [AccID], [Handi_NG], [Over_Under], [FirtHandicap], [FirtOverUnder], [Over_Event], [OneXTwo], [CorrectScore], [TotalGoal], [MixParlay], [Outright]) VALUES (48, 83, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[tblSoccerDeadBall] ([ID], [AccID], [Handi_NG], [Over_Under], [FirtHandicap], [FirtOverUnder], [Over_Event], [OneXTwo], [CorrectScore], [TotalGoal], [MixParlay], [Outright]) VALUES (49, 84, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[tblSoccerDeadBall] ([ID], [AccID], [Handi_NG], [Over_Under], [FirtHandicap], [FirtOverUnder], [Over_Event], [OneXTwo], [CorrectScore], [TotalGoal], [MixParlay], [Outright]) VALUES (50, 84, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[tblSoccerDeadBall] ([ID], [AccID], [Handi_NG], [Over_Under], [FirtHandicap], [FirtOverUnder], [Over_Event], [OneXTwo], [CorrectScore], [TotalGoal], [MixParlay], [Outright]) VALUES (51, 85, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[tblSoccerDeadBall] ([ID], [AccID], [Handi_NG], [Over_Under], [FirtHandicap], [FirtOverUnder], [Over_Event], [OneXTwo], [CorrectScore], [TotalGoal], [MixParlay], [Outright]) VALUES (52, 85, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[tblSoccerDeadBall] ([ID], [AccID], [Handi_NG], [Over_Under], [FirtHandicap], [FirtOverUnder], [Over_Event], [OneXTwo], [CorrectScore], [TotalGoal], [MixParlay], [Outright]) VALUES (53, 86, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[tblSoccerDeadBall] ([ID], [AccID], [Handi_NG], [Over_Under], [FirtHandicap], [FirtOverUnder], [Over_Event], [OneXTwo], [CorrectScore], [TotalGoal], [MixParlay], [Outright]) VALUES (54, 86, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[tblSoccerDeadBall] ([ID], [AccID], [Handi_NG], [Over_Under], [FirtHandicap], [FirtOverUnder], [Over_Event], [OneXTwo], [CorrectScore], [TotalGoal], [MixParlay], [Outright]) VALUES (55, 87, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[tblSoccerDeadBall] ([ID], [AccID], [Handi_NG], [Over_Under], [FirtHandicap], [FirtOverUnder], [Over_Event], [OneXTwo], [CorrectScore], [TotalGoal], [MixParlay], [Outright]) VALUES (56, 87, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[tblSoccerDeadBall] ([ID], [AccID], [Handi_NG], [Over_Under], [FirtHandicap], [FirtOverUnder], [Over_Event], [OneXTwo], [CorrectScore], [TotalGoal], [MixParlay], [Outright]) VALUES (57, 88, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[tblSoccerDeadBall] ([ID], [AccID], [Handi_NG], [Over_Under], [FirtHandicap], [FirtOverUnder], [Over_Event], [OneXTwo], [CorrectScore], [TotalGoal], [MixParlay], [Outright]) VALUES (58, 88, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[tblSoccerDeadBall] ([ID], [AccID], [Handi_NG], [Over_Under], [FirtHandicap], [FirtOverUnder], [Over_Event], [OneXTwo], [CorrectScore], [TotalGoal], [MixParlay], [Outright]) VALUES (59, 89, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[tblSoccerDeadBall] ([ID], [AccID], [Handi_NG], [Over_Under], [FirtHandicap], [FirtOverUnder], [Over_Event], [OneXTwo], [CorrectScore], [TotalGoal], [MixParlay], [Outright]) VALUES (60, 89, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[tblSoccerDeadBall] ([ID], [AccID], [Handi_NG], [Over_Under], [FirtHandicap], [FirtOverUnder], [Over_Event], [OneXTwo], [CorrectScore], [TotalGoal], [MixParlay], [Outright]) VALUES (61, 90, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[tblSoccerDeadBall] ([ID], [AccID], [Handi_NG], [Over_Under], [FirtHandicap], [FirtOverUnder], [Over_Event], [OneXTwo], [CorrectScore], [TotalGoal], [MixParlay], [Outright]) VALUES (62, 90, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[tblSoccerDeadBall] ([ID], [AccID], [Handi_NG], [Over_Under], [FirtHandicap], [FirtOverUnder], [Over_Event], [OneXTwo], [CorrectScore], [TotalGoal], [MixParlay], [Outright]) VALUES (63, 91, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[tblSoccerDeadBall] ([ID], [AccID], [Handi_NG], [Over_Under], [FirtHandicap], [FirtOverUnder], [Over_Event], [OneXTwo], [CorrectScore], [TotalGoal], [MixParlay], [Outright]) VALUES (64, 91, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
SET IDENTITY_INSERT [dbo].[tblSoccerDeadBall] OFF
/****** Object:  Table [dbo].[tblSoccerBetSetting]    Script Date: 12/31/2010 17:36:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblSoccerBetSetting](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[AccID] [bigint] NULL,
	[Minbet] [decimal](18, 0) NULL,
	[Maxbet] [decimal](18, 0) NULL,
	[MaxPerMatch] [decimal](18, 0) NULL,
 CONSTRAINT [PK_tblSoccerBetSetting] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[tblSoccerBetSetting] ON
INSERT [dbo].[tblSoccerBetSetting] ([ID], [AccID], [Minbet], [Maxbet], [MaxPerMatch]) VALUES (1, 15, CAST(5 AS Decimal(18, 0)), CAST(3000 AS Decimal(18, 0)), CAST(20000 AS Decimal(18, 0)))
INSERT [dbo].[tblSoccerBetSetting] ([ID], [AccID], [Minbet], [Maxbet], [MaxPerMatch]) VALUES (12, 4, CAST(5 AS Decimal(18, 0)), CAST(35000 AS Decimal(18, 0)), CAST(200000 AS Decimal(18, 0)))
INSERT [dbo].[tblSoccerBetSetting] ([ID], [AccID], [Minbet], [Maxbet], [MaxPerMatch]) VALUES (13, 7, CAST(5 AS Decimal(18, 0)), CAST(35000 AS Decimal(18, 0)), CAST(200000 AS Decimal(18, 0)))
INSERT [dbo].[tblSoccerBetSetting] ([ID], [AccID], [Minbet], [Maxbet], [MaxPerMatch]) VALUES (14, 10, CAST(5 AS Decimal(18, 0)), CAST(35000 AS Decimal(18, 0)), CAST(200000 AS Decimal(18, 0)))
INSERT [dbo].[tblSoccerBetSetting] ([ID], [AccID], [Minbet], [Maxbet], [MaxPerMatch]) VALUES (18, 16, CAST(5 AS Decimal(18, 0)), CAST(2000 AS Decimal(18, 0)), CAST(35000 AS Decimal(18, 0)))
INSERT [dbo].[tblSoccerBetSetting] ([ID], [AccID], [Minbet], [Maxbet], [MaxPerMatch]) VALUES (19, 17, CAST(5 AS Decimal(18, 0)), CAST(2000 AS Decimal(18, 0)), CAST(35000 AS Decimal(18, 0)))
INSERT [dbo].[tblSoccerBetSetting] ([ID], [AccID], [Minbet], [Maxbet], [MaxPerMatch]) VALUES (20, 18, CAST(5 AS Decimal(18, 0)), CAST(2000 AS Decimal(18, 0)), CAST(35000 AS Decimal(18, 0)))
INSERT [dbo].[tblSoccerBetSetting] ([ID], [AccID], [Minbet], [Maxbet], [MaxPerMatch]) VALUES (21, 35, CAST(5 AS Decimal(18, 0)), CAST(35000 AS Decimal(18, 0)), CAST(200000 AS Decimal(18, 0)))
INSERT [dbo].[tblSoccerBetSetting] ([ID], [AccID], [Minbet], [Maxbet], [MaxPerMatch]) VALUES (22, 38, CAST(5 AS Decimal(18, 0)), CAST(35000 AS Decimal(18, 0)), CAST(200000 AS Decimal(18, 0)))
INSERT [dbo].[tblSoccerBetSetting] ([ID], [AccID], [Minbet], [Maxbet], [MaxPerMatch]) VALUES (23, 40, CAST(5 AS Decimal(18, 0)), CAST(35000 AS Decimal(18, 0)), CAST(200000 AS Decimal(18, 0)))
INSERT [dbo].[tblSoccerBetSetting] ([ID], [AccID], [Minbet], [Maxbet], [MaxPerMatch]) VALUES (24, 47, CAST(5 AS Decimal(18, 0)), CAST(35000 AS Decimal(18, 0)), CAST(200000 AS Decimal(18, 0)))
INSERT [dbo].[tblSoccerBetSetting] ([ID], [AccID], [Minbet], [Maxbet], [MaxPerMatch]) VALUES (25, 50, CAST(5 AS Decimal(18, 0)), CAST(3000 AS Decimal(18, 0)), CAST(20000 AS Decimal(18, 0)))
INSERT [dbo].[tblSoccerBetSetting] ([ID], [AccID], [Minbet], [Maxbet], [MaxPerMatch]) VALUES (26, 53, CAST(5 AS Decimal(18, 0)), CAST(3000 AS Decimal(18, 0)), CAST(20000 AS Decimal(18, 0)))
INSERT [dbo].[tblSoccerBetSetting] ([ID], [AccID], [Minbet], [Maxbet], [MaxPerMatch]) VALUES (30, 57, CAST(5 AS Decimal(18, 0)), CAST(3000 AS Decimal(18, 0)), CAST(20000 AS Decimal(18, 0)))
INSERT [dbo].[tblSoccerBetSetting] ([ID], [AccID], [Minbet], [Maxbet], [MaxPerMatch]) VALUES (31, 58, CAST(5 AS Decimal(18, 0)), CAST(3000 AS Decimal(18, 0)), CAST(20000 AS Decimal(18, 0)))
INSERT [dbo].[tblSoccerBetSetting] ([ID], [AccID], [Minbet], [Maxbet], [MaxPerMatch]) VALUES (32, 59, CAST(5 AS Decimal(18, 0)), CAST(3000 AS Decimal(18, 0)), CAST(20000 AS Decimal(18, 0)))
INSERT [dbo].[tblSoccerBetSetting] ([ID], [AccID], [Minbet], [Maxbet], [MaxPerMatch]) VALUES (33, 72, CAST(5 AS Decimal(18, 0)), CAST(35000 AS Decimal(18, 0)), CAST(200000 AS Decimal(18, 0)))
INSERT [dbo].[tblSoccerBetSetting] ([ID], [AccID], [Minbet], [Maxbet], [MaxPerMatch]) VALUES (34, 72, CAST(5 AS Decimal(18, 0)), CAST(35000 AS Decimal(18, 0)), CAST(200000 AS Decimal(18, 0)))
INSERT [dbo].[tblSoccerBetSetting] ([ID], [AccID], [Minbet], [Maxbet], [MaxPerMatch]) VALUES (35, 73, CAST(5 AS Decimal(18, 0)), CAST(35000 AS Decimal(18, 0)), CAST(200000 AS Decimal(18, 0)))
INSERT [dbo].[tblSoccerBetSetting] ([ID], [AccID], [Minbet], [Maxbet], [MaxPerMatch]) VALUES (36, 73, CAST(5 AS Decimal(18, 0)), CAST(35000 AS Decimal(18, 0)), CAST(200000 AS Decimal(18, 0)))
INSERT [dbo].[tblSoccerBetSetting] ([ID], [AccID], [Minbet], [Maxbet], [MaxPerMatch]) VALUES (37, 74, CAST(5 AS Decimal(18, 0)), CAST(35000 AS Decimal(18, 0)), CAST(200000 AS Decimal(18, 0)))
INSERT [dbo].[tblSoccerBetSetting] ([ID], [AccID], [Minbet], [Maxbet], [MaxPerMatch]) VALUES (38, 74, CAST(5 AS Decimal(18, 0)), CAST(35000 AS Decimal(18, 0)), CAST(200000 AS Decimal(18, 0)))
INSERT [dbo].[tblSoccerBetSetting] ([ID], [AccID], [Minbet], [Maxbet], [MaxPerMatch]) VALUES (39, 75, CAST(5 AS Decimal(18, 0)), CAST(35000 AS Decimal(18, 0)), CAST(200000 AS Decimal(18, 0)))
INSERT [dbo].[tblSoccerBetSetting] ([ID], [AccID], [Minbet], [Maxbet], [MaxPerMatch]) VALUES (40, 75, CAST(5 AS Decimal(18, 0)), CAST(35000 AS Decimal(18, 0)), CAST(200000 AS Decimal(18, 0)))
INSERT [dbo].[tblSoccerBetSetting] ([ID], [AccID], [Minbet], [Maxbet], [MaxPerMatch]) VALUES (41, 76, CAST(5 AS Decimal(18, 0)), CAST(35000 AS Decimal(18, 0)), CAST(200000 AS Decimal(18, 0)))
INSERT [dbo].[tblSoccerBetSetting] ([ID], [AccID], [Minbet], [Maxbet], [MaxPerMatch]) VALUES (42, 76, CAST(5 AS Decimal(18, 0)), CAST(35000 AS Decimal(18, 0)), CAST(200000 AS Decimal(18, 0)))
INSERT [dbo].[tblSoccerBetSetting] ([ID], [AccID], [Minbet], [Maxbet], [MaxPerMatch]) VALUES (43, 77, CAST(5 AS Decimal(18, 0)), CAST(35000 AS Decimal(18, 0)), CAST(200000 AS Decimal(18, 0)))
INSERT [dbo].[tblSoccerBetSetting] ([ID], [AccID], [Minbet], [Maxbet], [MaxPerMatch]) VALUES (44, 77, CAST(5 AS Decimal(18, 0)), CAST(35000 AS Decimal(18, 0)), CAST(200000 AS Decimal(18, 0)))
INSERT [dbo].[tblSoccerBetSetting] ([ID], [AccID], [Minbet], [Maxbet], [MaxPerMatch]) VALUES (45, 78, CAST(5 AS Decimal(18, 0)), CAST(35000 AS Decimal(18, 0)), CAST(200000 AS Decimal(18, 0)))
INSERT [dbo].[tblSoccerBetSetting] ([ID], [AccID], [Minbet], [Maxbet], [MaxPerMatch]) VALUES (46, 78, CAST(5 AS Decimal(18, 0)), CAST(35000 AS Decimal(18, 0)), CAST(200000 AS Decimal(18, 0)))
INSERT [dbo].[tblSoccerBetSetting] ([ID], [AccID], [Minbet], [Maxbet], [MaxPerMatch]) VALUES (47, 79, CAST(5 AS Decimal(18, 0)), CAST(35000 AS Decimal(18, 0)), CAST(200000 AS Decimal(18, 0)))
INSERT [dbo].[tblSoccerBetSetting] ([ID], [AccID], [Minbet], [Maxbet], [MaxPerMatch]) VALUES (48, 79, CAST(5 AS Decimal(18, 0)), CAST(35000 AS Decimal(18, 0)), CAST(200000 AS Decimal(18, 0)))
INSERT [dbo].[tblSoccerBetSetting] ([ID], [AccID], [Minbet], [Maxbet], [MaxPerMatch]) VALUES (49, 80, CAST(5 AS Decimal(18, 0)), CAST(35000 AS Decimal(18, 0)), CAST(200000 AS Decimal(18, 0)))
INSERT [dbo].[tblSoccerBetSetting] ([ID], [AccID], [Minbet], [Maxbet], [MaxPerMatch]) VALUES (50, 80, CAST(5 AS Decimal(18, 0)), CAST(35000 AS Decimal(18, 0)), CAST(200000 AS Decimal(18, 0)))
INSERT [dbo].[tblSoccerBetSetting] ([ID], [AccID], [Minbet], [Maxbet], [MaxPerMatch]) VALUES (51, 81, CAST(5 AS Decimal(18, 0)), CAST(35000 AS Decimal(18, 0)), CAST(200000 AS Decimal(18, 0)))
INSERT [dbo].[tblSoccerBetSetting] ([ID], [AccID], [Minbet], [Maxbet], [MaxPerMatch]) VALUES (52, 81, CAST(5 AS Decimal(18, 0)), CAST(35000 AS Decimal(18, 0)), CAST(200000 AS Decimal(18, 0)))
INSERT [dbo].[tblSoccerBetSetting] ([ID], [AccID], [Minbet], [Maxbet], [MaxPerMatch]) VALUES (53, 82, CAST(5 AS Decimal(18, 0)), CAST(35000 AS Decimal(18, 0)), CAST(200000 AS Decimal(18, 0)))
INSERT [dbo].[tblSoccerBetSetting] ([ID], [AccID], [Minbet], [Maxbet], [MaxPerMatch]) VALUES (54, 82, CAST(5 AS Decimal(18, 0)), CAST(35000 AS Decimal(18, 0)), CAST(200000 AS Decimal(18, 0)))
INSERT [dbo].[tblSoccerBetSetting] ([ID], [AccID], [Minbet], [Maxbet], [MaxPerMatch]) VALUES (55, 83, CAST(5 AS Decimal(18, 0)), CAST(35000 AS Decimal(18, 0)), CAST(200000 AS Decimal(18, 0)))
INSERT [dbo].[tblSoccerBetSetting] ([ID], [AccID], [Minbet], [Maxbet], [MaxPerMatch]) VALUES (56, 83, CAST(5 AS Decimal(18, 0)), CAST(35000 AS Decimal(18, 0)), CAST(200000 AS Decimal(18, 0)))
INSERT [dbo].[tblSoccerBetSetting] ([ID], [AccID], [Minbet], [Maxbet], [MaxPerMatch]) VALUES (57, 84, CAST(5 AS Decimal(18, 0)), CAST(35000 AS Decimal(18, 0)), CAST(200000 AS Decimal(18, 0)))
INSERT [dbo].[tblSoccerBetSetting] ([ID], [AccID], [Minbet], [Maxbet], [MaxPerMatch]) VALUES (58, 84, CAST(5 AS Decimal(18, 0)), CAST(35000 AS Decimal(18, 0)), CAST(200000 AS Decimal(18, 0)))
INSERT [dbo].[tblSoccerBetSetting] ([ID], [AccID], [Minbet], [Maxbet], [MaxPerMatch]) VALUES (59, 85, CAST(5 AS Decimal(18, 0)), CAST(35000 AS Decimal(18, 0)), CAST(200000 AS Decimal(18, 0)))
INSERT [dbo].[tblSoccerBetSetting] ([ID], [AccID], [Minbet], [Maxbet], [MaxPerMatch]) VALUES (60, 85, CAST(5 AS Decimal(18, 0)), CAST(35000 AS Decimal(18, 0)), CAST(200000 AS Decimal(18, 0)))
INSERT [dbo].[tblSoccerBetSetting] ([ID], [AccID], [Minbet], [Maxbet], [MaxPerMatch]) VALUES (61, 86, CAST(5 AS Decimal(18, 0)), CAST(35000 AS Decimal(18, 0)), CAST(200000 AS Decimal(18, 0)))
INSERT [dbo].[tblSoccerBetSetting] ([ID], [AccID], [Minbet], [Maxbet], [MaxPerMatch]) VALUES (62, 86, CAST(5 AS Decimal(18, 0)), CAST(35000 AS Decimal(18, 0)), CAST(200000 AS Decimal(18, 0)))
INSERT [dbo].[tblSoccerBetSetting] ([ID], [AccID], [Minbet], [Maxbet], [MaxPerMatch]) VALUES (63, 87, CAST(5 AS Decimal(18, 0)), CAST(35000 AS Decimal(18, 0)), CAST(200000 AS Decimal(18, 0)))
INSERT [dbo].[tblSoccerBetSetting] ([ID], [AccID], [Minbet], [Maxbet], [MaxPerMatch]) VALUES (64, 87, CAST(5 AS Decimal(18, 0)), CAST(35000 AS Decimal(18, 0)), CAST(200000 AS Decimal(18, 0)))
INSERT [dbo].[tblSoccerBetSetting] ([ID], [AccID], [Minbet], [Maxbet], [MaxPerMatch]) VALUES (65, 88, CAST(5 AS Decimal(18, 0)), CAST(35000 AS Decimal(18, 0)), CAST(200000 AS Decimal(18, 0)))
INSERT [dbo].[tblSoccerBetSetting] ([ID], [AccID], [Minbet], [Maxbet], [MaxPerMatch]) VALUES (66, 88, CAST(5 AS Decimal(18, 0)), CAST(35000 AS Decimal(18, 0)), CAST(200000 AS Decimal(18, 0)))
INSERT [dbo].[tblSoccerBetSetting] ([ID], [AccID], [Minbet], [Maxbet], [MaxPerMatch]) VALUES (67, 89, CAST(5 AS Decimal(18, 0)), CAST(35000 AS Decimal(18, 0)), CAST(200000 AS Decimal(18, 0)))
INSERT [dbo].[tblSoccerBetSetting] ([ID], [AccID], [Minbet], [Maxbet], [MaxPerMatch]) VALUES (68, 89, CAST(5 AS Decimal(18, 0)), CAST(35000 AS Decimal(18, 0)), CAST(200000 AS Decimal(18, 0)))
INSERT [dbo].[tblSoccerBetSetting] ([ID], [AccID], [Minbet], [Maxbet], [MaxPerMatch]) VALUES (69, 90, CAST(5 AS Decimal(18, 0)), CAST(35000 AS Decimal(18, 0)), CAST(200000 AS Decimal(18, 0)))
INSERT [dbo].[tblSoccerBetSetting] ([ID], [AccID], [Minbet], [Maxbet], [MaxPerMatch]) VALUES (70, 90, CAST(5 AS Decimal(18, 0)), CAST(35000 AS Decimal(18, 0)), CAST(200000 AS Decimal(18, 0)))
INSERT [dbo].[tblSoccerBetSetting] ([ID], [AccID], [Minbet], [Maxbet], [MaxPerMatch]) VALUES (71, 91, CAST(5 AS Decimal(18, 0)), CAST(35000 AS Decimal(18, 0)), CAST(200000 AS Decimal(18, 0)))
INSERT [dbo].[tblSoccerBetSetting] ([ID], [AccID], [Minbet], [Maxbet], [MaxPerMatch]) VALUES (72, 91, CAST(5 AS Decimal(18, 0)), CAST(35000 AS Decimal(18, 0)), CAST(200000 AS Decimal(18, 0)))
SET IDENTITY_INSERT [dbo].[tblSoccerBetSetting] OFF
/****** Object:  Table [dbo].[tblRpWinLostDetail]    Script Date: 12/31/2010 17:36:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblRpWinLostDetail](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[ParentID] [bigint] NULL,
	[AccID] [bigint] NULL,
	[StrAccID] [nvarchar](50) NULL,
	[Turnover] [decimal](18, 2) NULL,
	[GrossComm] [decimal](18, 2) NULL,
	[MeWinLoss] [decimal](18, 2) NULL,
	[MeComm] [decimal](18, 2) NULL,
	[MeTotal] [decimal](18, 2) NULL,
	[AgWinLoss] [decimal](18, 2) NULL,
	[AgComm] [decimal](18, 2) NULL,
	[AgTotal] [decimal](18, 2) NULL,
	[MaWinLoss] [decimal](18, 2) NULL,
	[MaComm] [decimal](18, 2) NULL,
	[MaTotal] [decimal](18, 2) NULL,
	[GmWinLoss] [decimal](18, 2) NULL,
	[GmComm] [decimal](18, 2) NULL,
	[GmTotal] [decimal](18, 2) NULL,
	[SuWinLoss] [decimal](18, 2) NULL,
	[SuComm] [decimal](18, 2) NULL,
	[SuTotal] [decimal](18, 2) NULL,
	[Company] [decimal](18, 2) NULL,
	[UpdateTime] [datetime] NULL,
 CONSTRAINT [PK_tblrWinLostDetail] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[tblRpWinLostDetail] ON
INSERT [dbo].[tblRpWinLostDetail] ([ID], [ParentID], [AccID], [StrAccID], [Turnover], [GrossComm], [MeWinLoss], [MeComm], [MeTotal], [AgWinLoss], [AgComm], [AgTotal], [MaWinLoss], [MaComm], [MaTotal], [GmWinLoss], [GmComm], [GmTotal], [SuWinLoss], [SuComm], [SuTotal], [Company], [UpdateTime]) VALUES (1, 15, 16, N'SKCE909001', CAST(2000.00 AS Decimal(18, 2)), CAST(3.40 AS Decimal(18, 2)), CAST(-786.40 AS Decimal(18, 2)), CAST(3.40 AS Decimal(18, 2)), CAST(-783.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(783.00 AS Decimal(18, 2)), CAST(0x00009DB900000000 AS DateTime))
INSERT [dbo].[tblRpWinLostDetail] ([ID], [ParentID], [AccID], [StrAccID], [Turnover], [GrossComm], [MeWinLoss], [MeComm], [MeTotal], [AgWinLoss], [AgComm], [AgTotal], [MaWinLoss], [MaComm], [MaTotal], [GmWinLoss], [GmComm], [GmTotal], [SuWinLoss], [SuComm], [SuTotal], [Company], [UpdateTime]) VALUES (2, 15, 18, N'SKCE9090D1', CAST(3450.00 AS Decimal(18, 2)), CAST(7.53 AS Decimal(18, 2)), CAST(-1604.10 AS Decimal(18, 2)), CAST(7.53 AS Decimal(18, 2)), CAST(-1596.58 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(1596.58 AS Decimal(18, 2)), CAST(0x00009DB900000000 AS DateTime))
INSERT [dbo].[tblRpWinLostDetail] ([ID], [ParentID], [AccID], [StrAccID], [Turnover], [GrossComm], [MeWinLoss], [MeComm], [MeTotal], [AgWinLoss], [AgComm], [AgTotal], [MaWinLoss], [MaComm], [MaTotal], [GmWinLoss], [GmComm], [GmTotal], [SuWinLoss], [SuComm], [SuTotal], [Company], [UpdateTime]) VALUES (3, 15, 17, N'SKCE909002', CAST(800.00 AS Decimal(18, 2)), CAST(1.50 AS Decimal(18, 2)), CAST(-593.00 AS Decimal(18, 2)), CAST(1.50 AS Decimal(18, 2)), CAST(-591.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(591.50 AS Decimal(18, 2)), CAST(0x00009DB900000000 AS DateTime))
INSERT [dbo].[tblRpWinLostDetail] ([ID], [ParentID], [AccID], [StrAccID], [Turnover], [GrossComm], [MeWinLoss], [MeComm], [MeTotal], [AgWinLoss], [AgComm], [AgTotal], [MaWinLoss], [MaComm], [MaTotal], [GmWinLoss], [GmComm], [GmTotal], [SuWinLoss], [SuComm], [SuTotal], [Company], [UpdateTime]) VALUES (4, 10, 15, N'SKCE909', CAST(6250.00 AS Decimal(18, 2)), CAST(12.43 AS Decimal(18, 2)), CAST(-2983.50 AS Decimal(18, 2)), CAST(12.43 AS Decimal(18, 2)), CAST(-2971.08 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(1998.95 AS Decimal(18, 2)), CAST(-8.32 AS Decimal(18, 2)), CAST(1990.62 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(980.45 AS Decimal(18, 2)), CAST(0x00009DB900000000 AS DateTime))
INSERT [dbo].[tblRpWinLostDetail] ([ID], [ParentID], [AccID], [StrAccID], [Turnover], [GrossComm], [MeWinLoss], [MeComm], [MeTotal], [AgWinLoss], [AgComm], [AgTotal], [MaWinLoss], [MaComm], [MaTotal], [GmWinLoss], [GmComm], [GmTotal], [SuWinLoss], [SuComm], [SuTotal], [Company], [UpdateTime]) VALUES (6, 7, 10, N'SKCE9', CAST(6250.00 AS Decimal(18, 2)), CAST(12.43 AS Decimal(18, 2)), CAST(-2983.50 AS Decimal(18, 2)), CAST(12.43 AS Decimal(18, 2)), CAST(-2971.08 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(1998.95 AS Decimal(18, 2)), CAST(-8.32 AS Decimal(18, 2)), CAST(1990.62 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(980.45 AS Decimal(18, 2)), CAST(0x00009DB900000000 AS DateTime))
INSERT [dbo].[tblRpWinLostDetail] ([ID], [ParentID], [AccID], [StrAccID], [Turnover], [GrossComm], [MeWinLoss], [MeComm], [MeTotal], [AgWinLoss], [AgComm], [AgTotal], [MaWinLoss], [MaComm], [MaTotal], [GmWinLoss], [GmComm], [GmTotal], [SuWinLoss], [SuComm], [SuTotal], [Company], [UpdateTime]) VALUES (7, 4, 7, N'SKC', CAST(6250.00 AS Decimal(18, 2)), CAST(12.43 AS Decimal(18, 2)), CAST(-2983.50 AS Decimal(18, 2)), CAST(12.43 AS Decimal(18, 2)), CAST(-2971.08 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(1998.95 AS Decimal(18, 2)), CAST(-8.32 AS Decimal(18, 2)), CAST(1990.62 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(980.45 AS Decimal(18, 2)), CAST(0x00009DB900000000 AS DateTime))
INSERT [dbo].[tblRpWinLostDetail] ([ID], [ParentID], [AccID], [StrAccID], [Turnover], [GrossComm], [MeWinLoss], [MeComm], [MeTotal], [AgWinLoss], [AgComm], [AgTotal], [MaWinLoss], [MaComm], [MaTotal], [GmWinLoss], [GmComm], [GmTotal], [SuWinLoss], [SuComm], [SuTotal], [Company], [UpdateTime]) VALUES (8, 0, 4, N'SKZ', CAST(6250.00 AS Decimal(18, 2)), CAST(12.43 AS Decimal(18, 2)), CAST(-2983.50 AS Decimal(18, 2)), CAST(12.43 AS Decimal(18, 2)), CAST(-2971.08 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(1998.95 AS Decimal(18, 2)), CAST(-8.32 AS Decimal(18, 2)), CAST(1990.62 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(980.45 AS Decimal(18, 2)), CAST(0x00009DB900000000 AS DateTime))
SET IDENTITY_INSERT [dbo].[tblRpWinLostDetail] OFF
/****** Object:  Table [dbo].[tblRpWinLostByBetType]    Script Date: 12/31/2010 17:36:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblRpWinLostByBetType](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[AccID] [bigint] NULL,
	[BetTypeID] [int] NULL,
	[BetTypeName] [nvarchar](250) NULL,
	[Turnover] [decimal](18, 2) NULL,
	[GrossComm] [decimal](18, 2) NULL,
	[MeWinLoss] [decimal](18, 2) NULL,
	[MeComm] [decimal](18, 2) NULL,
	[MeTotal] [decimal](18, 2) NULL,
	[AgWinLoss] [decimal](18, 2) NULL,
	[AgComm] [decimal](18, 2) NULL,
	[AgTotal] [decimal](18, 2) NULL,
	[MaWinLoss] [decimal](18, 2) NULL,
	[MaComm] [decimal](18, 2) NULL,
	[MaTotal] [decimal](18, 2) NULL,
	[GmWinLoss] [decimal](18, 2) NULL,
	[GmComm] [decimal](18, 2) NULL,
	[GmTotal] [decimal](18, 2) NULL,
	[SuWinLoss] [decimal](18, 2) NULL,
	[SuComm] [decimal](18, 2) NULL,
	[SuTotal] [decimal](18, 2) NULL,
	[Company] [decimal](18, 2) NULL,
	[ReportDate] [datetime] NULL,
 CONSTRAINT [PK_tblRpWinLostByBetType] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[tblRpWinLostByBetType] ON
INSERT [dbo].[tblRpWinLostByBetType] ([ID], [AccID], [BetTypeID], [BetTypeName], [Turnover], [GrossComm], [MeWinLoss], [MeComm], [MeTotal], [AgWinLoss], [AgComm], [AgTotal], [MaWinLoss], [MaComm], [MaTotal], [GmWinLoss], [GmComm], [GmTotal], [SuWinLoss], [SuComm], [SuTotal], [Company], [ReportDate]) VALUES (1, 15, 1, N'Handicap', CAST(60.00 AS Decimal(18, 2)), CAST(0.14 AS Decimal(18, 2)), CAST(15.95 AS Decimal(18, 2)), CAST(0.14 AS Decimal(18, 2)), CAST(16.09 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(-16.09 AS Decimal(18, 2)), CAST(0x00009DBA00000000 AS DateTime))
INSERT [dbo].[tblRpWinLostByBetType] ([ID], [AccID], [BetTypeID], [BetTypeName], [Turnover], [GrossComm], [MeWinLoss], [MeComm], [MeTotal], [AgWinLoss], [AgComm], [AgTotal], [MaWinLoss], [MaComm], [MaTotal], [GmWinLoss], [GmComm], [GmTotal], [SuWinLoss], [SuComm], [SuTotal], [Company], [ReportDate]) VALUES (2, 15, 2, N'Over/Under', CAST(20.00 AS Decimal(18, 2)), CAST(0.05 AS Decimal(18, 2)), CAST(18.60 AS Decimal(18, 2)), CAST(0.05 AS Decimal(18, 2)), CAST(18.65 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(-18.65 AS Decimal(18, 2)), CAST(0x00009DBA00000000 AS DateTime))
INSERT [dbo].[tblRpWinLostByBetType] ([ID], [AccID], [BetTypeID], [BetTypeName], [Turnover], [GrossComm], [MeWinLoss], [MeComm], [MeTotal], [AgWinLoss], [AgComm], [AgTotal], [MaWinLoss], [MaComm], [MaTotal], [GmWinLoss], [GmComm], [GmTotal], [SuWinLoss], [SuComm], [SuTotal], [Company], [ReportDate]) VALUES (3, 15, 3, N'1st 1X2', CAST(3.00 AS Decimal(18, 2)), CAST(0.01 AS Decimal(18, 2)), CAST(-3.00 AS Decimal(18, 2)), CAST(0.01 AS Decimal(18, 2)), CAST(-2.99 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(2.99 AS Decimal(18, 2)), CAST(0x00009DBA00000000 AS DateTime))
INSERT [dbo].[tblRpWinLostByBetType] ([ID], [AccID], [BetTypeID], [BetTypeName], [Turnover], [GrossComm], [MeWinLoss], [MeComm], [MeTotal], [AgWinLoss], [AgComm], [AgTotal], [MaWinLoss], [MaComm], [MaTotal], [GmWinLoss], [GmComm], [GmTotal], [SuWinLoss], [SuComm], [SuTotal], [Company], [ReportDate]) VALUES (4, 4, 1, N'Handicap', CAST(60.00 AS Decimal(18, 2)), CAST(0.14 AS Decimal(18, 2)), CAST(15.95 AS Decimal(18, 2)), CAST(0.14 AS Decimal(18, 2)), CAST(16.09 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(-16.09 AS Decimal(18, 2)), CAST(0x00009DBA00000000 AS DateTime))
INSERT [dbo].[tblRpWinLostByBetType] ([ID], [AccID], [BetTypeID], [BetTypeName], [Turnover], [GrossComm], [MeWinLoss], [MeComm], [MeTotal], [AgWinLoss], [AgComm], [AgTotal], [MaWinLoss], [MaComm], [MaTotal], [GmWinLoss], [GmComm], [GmTotal], [SuWinLoss], [SuComm], [SuTotal], [Company], [ReportDate]) VALUES (5, 4, 2, N'Over/Under', CAST(20.00 AS Decimal(18, 2)), CAST(0.05 AS Decimal(18, 2)), CAST(18.60 AS Decimal(18, 2)), CAST(0.05 AS Decimal(18, 2)), CAST(18.65 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(-18.65 AS Decimal(18, 2)), CAST(0x00009DBA00000000 AS DateTime))
INSERT [dbo].[tblRpWinLostByBetType] ([ID], [AccID], [BetTypeID], [BetTypeName], [Turnover], [GrossComm], [MeWinLoss], [MeComm], [MeTotal], [AgWinLoss], [AgComm], [AgTotal], [MaWinLoss], [MaComm], [MaTotal], [GmWinLoss], [GmComm], [GmTotal], [SuWinLoss], [SuComm], [SuTotal], [Company], [ReportDate]) VALUES (6, 4, 3, N'1st 1X2', CAST(3.00 AS Decimal(18, 2)), CAST(0.01 AS Decimal(18, 2)), CAST(-3.00 AS Decimal(18, 2)), CAST(0.01 AS Decimal(18, 2)), CAST(-2.99 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(2.99 AS Decimal(18, 2)), CAST(0x00009DBA00000000 AS DateTime))
INSERT [dbo].[tblRpWinLostByBetType] ([ID], [AccID], [BetTypeID], [BetTypeName], [Turnover], [GrossComm], [MeWinLoss], [MeComm], [MeTotal], [AgWinLoss], [AgComm], [AgTotal], [MaWinLoss], [MaComm], [MaTotal], [GmWinLoss], [GmComm], [GmTotal], [SuWinLoss], [SuComm], [SuTotal], [Company], [ReportDate]) VALUES (7, 7, 1, N'Handicap', CAST(60.00 AS Decimal(18, 2)), CAST(0.14 AS Decimal(18, 2)), CAST(15.95 AS Decimal(18, 2)), CAST(0.14 AS Decimal(18, 2)), CAST(16.09 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(-16.09 AS Decimal(18, 2)), CAST(0x00009DBA00000000 AS DateTime))
INSERT [dbo].[tblRpWinLostByBetType] ([ID], [AccID], [BetTypeID], [BetTypeName], [Turnover], [GrossComm], [MeWinLoss], [MeComm], [MeTotal], [AgWinLoss], [AgComm], [AgTotal], [MaWinLoss], [MaComm], [MaTotal], [GmWinLoss], [GmComm], [GmTotal], [SuWinLoss], [SuComm], [SuTotal], [Company], [ReportDate]) VALUES (8, 7, 2, N'Over/Under', CAST(20.00 AS Decimal(18, 2)), CAST(0.05 AS Decimal(18, 2)), CAST(18.60 AS Decimal(18, 2)), CAST(0.05 AS Decimal(18, 2)), CAST(18.65 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(-18.65 AS Decimal(18, 2)), CAST(0x00009DBA00000000 AS DateTime))
INSERT [dbo].[tblRpWinLostByBetType] ([ID], [AccID], [BetTypeID], [BetTypeName], [Turnover], [GrossComm], [MeWinLoss], [MeComm], [MeTotal], [AgWinLoss], [AgComm], [AgTotal], [MaWinLoss], [MaComm], [MaTotal], [GmWinLoss], [GmComm], [GmTotal], [SuWinLoss], [SuComm], [SuTotal], [Company], [ReportDate]) VALUES (9, 7, 3, N'1st 1X2', CAST(3.00 AS Decimal(18, 2)), CAST(0.01 AS Decimal(18, 2)), CAST(-3.00 AS Decimal(18, 2)), CAST(0.01 AS Decimal(18, 2)), CAST(-2.99 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(2.99 AS Decimal(18, 2)), CAST(0x00009DBA00000000 AS DateTime))
INSERT [dbo].[tblRpWinLostByBetType] ([ID], [AccID], [BetTypeID], [BetTypeName], [Turnover], [GrossComm], [MeWinLoss], [MeComm], [MeTotal], [AgWinLoss], [AgComm], [AgTotal], [MaWinLoss], [MaComm], [MaTotal], [GmWinLoss], [GmComm], [GmTotal], [SuWinLoss], [SuComm], [SuTotal], [Company], [ReportDate]) VALUES (10, 10, 1, N'Handicap', CAST(60.00 AS Decimal(18, 2)), CAST(0.14 AS Decimal(18, 2)), CAST(15.95 AS Decimal(18, 2)), CAST(0.14 AS Decimal(18, 2)), CAST(16.09 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(-16.09 AS Decimal(18, 2)), CAST(0x00009DBA00000000 AS DateTime))
INSERT [dbo].[tblRpWinLostByBetType] ([ID], [AccID], [BetTypeID], [BetTypeName], [Turnover], [GrossComm], [MeWinLoss], [MeComm], [MeTotal], [AgWinLoss], [AgComm], [AgTotal], [MaWinLoss], [MaComm], [MaTotal], [GmWinLoss], [GmComm], [GmTotal], [SuWinLoss], [SuComm], [SuTotal], [Company], [ReportDate]) VALUES (11, 10, 2, N'Over/Under', CAST(20.00 AS Decimal(18, 2)), CAST(0.05 AS Decimal(18, 2)), CAST(18.60 AS Decimal(18, 2)), CAST(0.05 AS Decimal(18, 2)), CAST(18.65 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(-18.65 AS Decimal(18, 2)), CAST(0x00009DBA00000000 AS DateTime))
INSERT [dbo].[tblRpWinLostByBetType] ([ID], [AccID], [BetTypeID], [BetTypeName], [Turnover], [GrossComm], [MeWinLoss], [MeComm], [MeTotal], [AgWinLoss], [AgComm], [AgTotal], [MaWinLoss], [MaComm], [MaTotal], [GmWinLoss], [GmComm], [GmTotal], [SuWinLoss], [SuComm], [SuTotal], [Company], [ReportDate]) VALUES (12, 10, 3, N'1st 1X2', CAST(3.00 AS Decimal(18, 2)), CAST(0.01 AS Decimal(18, 2)), CAST(-3.00 AS Decimal(18, 2)), CAST(0.01 AS Decimal(18, 2)), CAST(-2.99 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(2.99 AS Decimal(18, 2)), CAST(0x00009DBA00000000 AS DateTime))
SET IDENTITY_INSERT [dbo].[tblRpWinLostByBetType] OFF
/****** Object:  Table [dbo].[tblRpStatement]    Script Date: 12/31/2010 17:36:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblRpStatement](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[AccID] [bigint] NULL,
	[Date] [datetime] NULL,
	[Type] [nvarchar](50) NULL,
	[Remark] [nvarchar](250) NULL,
	[TotalAmt] [float] NULL,
	[Total] [float] NULL,
	[ReportDate] [datetime] NULL,
 CONSTRAINT [PK_tblRpStatement] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[tblRpStatement] ON
INSERT [dbo].[tblRpStatement] ([ID], [AccID], [Date], [Type], [Remark], [TotalAmt], [Total], [ReportDate]) VALUES (1, 15, CAST(0x00009DBA00000000 AS DateTime), N'Trac', N' To Customer::SKCE8', 125, -6.2, CAST(0x00009DBA00000000 AS DateTime))
INSERT [dbo].[tblRpStatement] ([ID], [AccID], [Date], [Type], [Remark], [TotalAmt], [Total], [ReportDate]) VALUES (2, 15, CAST(0x00009DBB00000000 AS DateTime), N'Traa', N'  From Customer::SKCE808001', 56, 7.75, CAST(0x00009DBB00000000 AS DateTime))
INSERT [dbo].[tblRpStatement] ([ID], [AccID], [Date], [Type], [Remark], [TotalAmt], [Total], [ReportDate]) VALUES (3, 10, CAST(0x00009DBA00000000 AS DateTime), N'Trac', N' To Customer::SKCE8', 125, -6.2, CAST(0x00009DBA00000000 AS DateTime))
INSERT [dbo].[tblRpStatement] ([ID], [AccID], [Date], [Type], [Remark], [TotalAmt], [Total], [ReportDate]) VALUES (4, 10, CAST(0x00009DBB00000000 AS DateTime), N'Traa', N'  From Customer::SKCE808001', 56, 7.75, CAST(0x00009DBB00000000 AS DateTime))
INSERT [dbo].[tblRpStatement] ([ID], [AccID], [Date], [Type], [Remark], [TotalAmt], [Total], [ReportDate]) VALUES (5, 7, CAST(0x00009DBA00000000 AS DateTime), N'Trac', N' To Customer::SKCE8', 125, -6.2, CAST(0x00009DBA00000000 AS DateTime))
INSERT [dbo].[tblRpStatement] ([ID], [AccID], [Date], [Type], [Remark], [TotalAmt], [Total], [ReportDate]) VALUES (6, 7, CAST(0x00009DBB00000000 AS DateTime), N'Traa', N'  From Customer::SKCE808001', 56, 7.75, CAST(0x00009DBB00000000 AS DateTime))
INSERT [dbo].[tblRpStatement] ([ID], [AccID], [Date], [Type], [Remark], [TotalAmt], [Total], [ReportDate]) VALUES (7, 4, CAST(0x00009DBA00000000 AS DateTime), N'Trac', N' To Customer::SKCE8', 125, -6.2, CAST(0x00009DBA00000000 AS DateTime))
INSERT [dbo].[tblRpStatement] ([ID], [AccID], [Date], [Type], [Remark], [TotalAmt], [Total], [ReportDate]) VALUES (8, 4, CAST(0x00009DBB00000000 AS DateTime), N'Traa', N'  From Customer::SKCE808001', 56, 7.75, CAST(0x00009DBB00000000 AS DateTime))
SET IDENTITY_INSERT [dbo].[tblRpStatement] OFF
/****** Object:  Table [dbo].[tblRpOutstandings]    Script Date: 12/31/2010 17:36:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblRpOutstandings](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[AccID] [bigint] NULL,
	[StrAcc] [nvarchar](50) NULL,
	[SBOutstanding] [float] NULL,
	[SBPosition] [float] NULL,
	[CasinoTransfer] [float] NULL,
	[CasinoOutstanding] [float] NULL,
	[ReportDate] [datetime] NULL,
 CONSTRAINT [PK_tblRpOutstandings] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[tblRpOutstandings] ON
INSERT [dbo].[tblRpOutstandings] ([ID], [AccID], [StrAcc], [SBOutstanding], [SBPosition], [CasinoTransfer], [CasinoOutstanding], [ReportDate]) VALUES (1, 16, N'SKCE909001', 10, 0, 0, 0, CAST(0x00009D9300000000 AS DateTime))
INSERT [dbo].[tblRpOutstandings] ([ID], [AccID], [StrAcc], [SBOutstanding], [SBPosition], [CasinoTransfer], [CasinoOutstanding], [ReportDate]) VALUES (2, 18, N'SKCE9090D1', 20, 0, 0, 0, CAST(0x00009D9300000000 AS DateTime))
SET IDENTITY_INSERT [dbo].[tblRpOutstandings] OFF
/****** Object:  Table [dbo].[tblRpMatchWinLossDetail]    Script Date: 12/31/2010 17:36:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblRpMatchWinLossDetail](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[AccID] [bigint] NULL,
	[LeaguaID] [int] NULL,
	[MatchID] [bigint] NULL,
	[BetTypeID] [int] NULL,
	[LeaguaName] [nvarchar](500) NULL,
	[MatchName] [nvarchar](250) NULL,
	[BetTypeName] [nvarchar](50) NULL,
	[Turnover] [decimal](18, 2) NULL,
	[GrossComm] [decimal](18, 2) NULL,
	[MeWinLoss] [decimal](18, 2) NULL,
	[MeComm] [decimal](18, 2) NULL,
	[MeTotal] [decimal](18, 2) NULL,
	[AgWinLoss] [decimal](18, 2) NULL,
	[AgComm] [decimal](18, 2) NULL,
	[AgTotal] [decimal](18, 2) NULL,
	[MaWinLoss] [decimal](18, 2) NULL,
	[MaComm] [decimal](18, 2) NULL,
	[Matotal] [decimal](18, 2) NULL,
	[GmWinLoss] [decimal](18, 2) NULL,
	[GmComm] [decimal](18, 2) NULL,
	[GmTotal] [decimal](18, 2) NULL,
	[SuWinLoss] [decimal](18, 2) NULL,
	[SuComm] [decimal](18, 2) NULL,
	[SuTotal] [decimal](18, 2) NULL,
	[CompanyComm] [decimal](18, 2) NULL,
	[CompanyTotal] [decimal](18, 2) NULL,
	[ReportDate] [datetime] NULL,
 CONSTRAINT [PK_tblRpMatchWinLossDetail] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[tblRpMatchWinLossDetail] ON
INSERT [dbo].[tblRpMatchWinLossDetail] ([ID], [AccID], [LeaguaID], [MatchID], [BetTypeID], [LeaguaName], [MatchName], [BetTypeName], [Turnover], [GrossComm], [MeWinLoss], [MeComm], [MeTotal], [AgWinLoss], [AgComm], [AgTotal], [MaWinLoss], [MaComm], [Matotal], [GmWinLoss], [GmComm], [GmTotal], [SuWinLoss], [SuComm], [SuTotal], [CompanyComm], [CompanyTotal], [ReportDate]) VALUES (1, 16, 1, 123, 1, N'2010 FIFA World Cup South Africa', N'France (N)-vs-Uruguay', N'Handicap', CAST(20.00 AS Decimal(18, 2)), CAST(0.03 AS Decimal(18, 2)), CAST(-10.00 AS Decimal(18, 2)), CAST(0.03 AS Decimal(18, 2)), CAST(-9.98 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.03 AS Decimal(18, 2)), CAST(9.98 AS Decimal(18, 2)), CAST(0x00009D9500000000 AS DateTime))
INSERT [dbo].[tblRpMatchWinLossDetail] ([ID], [AccID], [LeaguaID], [MatchID], [BetTypeID], [LeaguaName], [MatchName], [BetTypeName], [Turnover], [GrossComm], [MeWinLoss], [MeComm], [MeTotal], [AgWinLoss], [AgComm], [AgTotal], [MaWinLoss], [MaComm], [Matotal], [GmWinLoss], [GmComm], [GmTotal], [SuWinLoss], [SuComm], [SuTotal], [CompanyComm], [CompanyTotal], [ReportDate]) VALUES (2, 16, 1, 123, 2, N'2010 FIFA World Cup South Africa', N'France (N)-vs-Uruguay', N'Over/Under', CAST(20.00 AS Decimal(18, 2)), CAST(0.03 AS Decimal(18, 2)), CAST(-10.00 AS Decimal(18, 2)), CAST(0.03 AS Decimal(18, 2)), CAST(-9.98 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.03 AS Decimal(18, 2)), CAST(9.98 AS Decimal(18, 2)), CAST(0x00009D9500000000 AS DateTime))
INSERT [dbo].[tblRpMatchWinLossDetail] ([ID], [AccID], [LeaguaID], [MatchID], [BetTypeID], [LeaguaName], [MatchName], [BetTypeName], [Turnover], [GrossComm], [MeWinLoss], [MeComm], [MeTotal], [AgWinLoss], [AgComm], [AgTotal], [MaWinLoss], [MaComm], [Matotal], [GmWinLoss], [GmComm], [GmTotal], [SuWinLoss], [SuComm], [SuTotal], [CompanyComm], [CompanyTotal], [ReportDate]) VALUES (3, 16, 1, 124, 1, N'2010 FIFA World Cup South Africa', N'USA (N)-vs- UK', N'Handicap', CAST(31.00 AS Decimal(18, 2)), CAST(0.09 AS Decimal(18, 2)), CAST(-20.00 AS Decimal(18, 2)), CAST(0.09 AS Decimal(18, 2)), CAST(-10.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.09 AS Decimal(18, 2)), CAST(10.00 AS Decimal(18, 2)), CAST(0x00009D9500000000 AS DateTime))
SET IDENTITY_INSERT [dbo].[tblRpMatchWinLossDetail] OFF
/****** Object:  Table [dbo].[tblRpMatchWinLoss]    Script Date: 12/31/2010 17:36:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblRpMatchWinLoss](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[AccID] [bigint] NULL,
	[MatchID] [int] NULL,
	[MatchName] [nvarchar](250) NULL,
	[BetType] [nvarchar](50) NULL,
	[GrossComm] [decimal](18, 2) NULL,
	[Comm] [decimal](18, 2) NULL,
	[PositionTaking] [decimal](18, 2) NULL,
	[Total] [decimal](18, 2) NULL,
	[ReportDate] [datetime] NULL,
 CONSTRAINT [PK_tblRpMatchWinLoss] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[tblRpMatchWinLoss] ON
INSERT [dbo].[tblRpMatchWinLoss] ([ID], [AccID], [MatchID], [MatchName], [BetType], [GrossComm], [Comm], [PositionTaking], [Total], [ReportDate]) VALUES (1, 15, 639422, N'France (N) -vs- Uruguay', N'Handicap', CAST(0.03 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.03 AS Decimal(18, 2)), CAST(0x00009D9300000000 AS DateTime))
INSERT [dbo].[tblRpMatchWinLoss] ([ID], [AccID], [MatchID], [MatchName], [BetType], [GrossComm], [Comm], [PositionTaking], [Total], [ReportDate]) VALUES (2, 15, 639421, N'Bentleigh Greens -vs- South Melbourne', N'Handicap', CAST(0.05 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.05 AS Decimal(18, 2)), CAST(0x00009D9300000000 AS DateTime))
INSERT [dbo].[tblRpMatchWinLoss] ([ID], [AccID], [MatchID], [MatchName], [BetType], [GrossComm], [Comm], [PositionTaking], [Total], [ReportDate]) VALUES (3, 15, 623452, N'Bentleigh Greens -vs- South Melbourne', N'1st Over/Under', CAST(0.05 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.05 AS Decimal(18, 2)), CAST(0x00009D9300000000 AS DateTime))
SET IDENTITY_INSERT [dbo].[tblRpMatchWinLoss] OFF
/****** Object:  Table [dbo].[tblRpMatchLoss]    Script Date: 12/31/2010 17:36:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblRpMatchLoss](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Results] [nvarchar](50) NULL,
	[YEntered] [nvarchar](50) NULL,
	[YNonEntered] [nvarchar](50) NULL,
	[Entered] [nvarchar](50) NULL,
	[NonEntered] [nvarchar](50) NULL,
	[UpdateTime] [datetime] NULL,
 CONSTRAINT [PK_tblRpMatchLoss] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[tblRpMatchLoss] ON
INSERT [dbo].[tblRpMatchLoss] ([ID], [Results], [YEntered], [YNonEntered], [Entered], [NonEntered], [UpdateTime]) VALUES (1, N'Soccer', N'131', N'0', N'23', N'45', CAST(0x00009DB9001FCF5C AS DateTime))
INSERT [dbo].[tblRpMatchLoss] ([ID], [Results], [YEntered], [YNonEntered], [Entered], [NonEntered], [UpdateTime]) VALUES (2, N'Basketball', N'56', N'0', N'2', N'5', CAST(0x00009DB9001FCF5C AS DateTime))
INSERT [dbo].[tblRpMatchLoss] ([ID], [Results], [YEntered], [YNonEntered], [Entered], [NonEntered], [UpdateTime]) VALUES (3, N'Ice Hockey', N'3', N'0', N'3', N'2', CAST(0x00009DB9001FCF5C AS DateTime))
INSERT [dbo].[tblRpMatchLoss] ([ID], [Results], [YEntered], [YNonEntered], [Entered], [NonEntered], [UpdateTime]) VALUES (4, N'Tennis', N'1', N'0', N'4', N'6', CAST(0x00009DB9001FCF5C AS DateTime))
INSERT [dbo].[tblRpMatchLoss] ([ID], [Results], [YEntered], [YNonEntered], [Entered], [NonEntered], [UpdateTime]) VALUES (5, N'Volleyball', N'4', N'0', N'8', N'0', CAST(0x00009DB9001FCF5C AS DateTime))
INSERT [dbo].[tblRpMatchLoss] ([ID], [Results], [YEntered], [YNonEntered], [Entered], [NonEntered], [UpdateTime]) VALUES (6, N'Baseball', N'0', N'0', N'5', N'8', CAST(0x00009DB9001FCF5C AS DateTime))
INSERT [dbo].[tblRpMatchLoss] ([ID], [Results], [YEntered], [YNonEntered], [Entered], [NonEntered], [UpdateTime]) VALUES (7, N'Golf', N'5', N'0', N'3', N'4', CAST(0x00009DB9001FCF5C AS DateTime))
INSERT [dbo].[tblRpMatchLoss] ([ID], [Results], [YEntered], [YNonEntered], [Entered], [NonEntered], [UpdateTime]) VALUES (8, N'Cricket', N'8', N'0', N'2', N'3', CAST(0x00009DB9001FCF5C AS DateTime))
INSERT [dbo].[tblRpMatchLoss] ([ID], [Results], [YEntered], [YNonEntered], [Entered], [NonEntered], [UpdateTime]) VALUES (9, N'Entertainment', N'0', N'0', N'0', N'7', CAST(0x00009DB9001FCF5C AS DateTime))
SET IDENTITY_INSERT [dbo].[tblRpMatchLoss] OFF
/****** Object:  Table [dbo].[tblRpHorseRacingComm]    Script Date: 12/31/2010 17:36:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblRpHorseRacingComm](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[AccID] [bigint] NULL,
	[StrAccID] [nvarchar](50) NULL,
	[Win] [float] NULL,
	[Place] [float] NULL,
	[WinPlace] [float] NULL,
	[Total] [float] NULL,
	[ReportDate] [datetime] NULL,
 CONSTRAINT [PK_tblRpHorseRacingComm] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblRpFinanceCommission]    Script Date: 12/31/2010 17:36:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblRpFinanceCommission](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[AccID] [bigint] NULL,
	[StrAccID] [nvarchar](50) NULL,
	[OU5Min] [float] NULL,
	[OU15Min] [float] NULL,
	[OU30Min] [float] NULL,
	[OU45Min] [float] NULL,
	[OU60Min] [float] NULL,
	[OUEndOfDay] [float] NULL,
	[OUTotal] [float] NULL,
	[OE5Min] [float] NULL,
	[OE15Min] [float] NULL,
	[OE30Min] [float] NULL,
	[OE45Min] [float] NULL,
	[OE60Min] [float] NULL,
	[OEEndOfDay] [float] NULL,
	[OETotal] [float] NULL,
	[ReportDate] [datetime] NULL,
 CONSTRAINT [PK_tblRpFinanceCommission] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblRpCommByBetType]    Script Date: 12/31/2010 17:36:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblRpCommByBetType](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[ParentID] [bigint] NULL,
	[AccID] [bigint] NULL,
	[StrAccID] [nvarchar](50) NULL,
	[Hdp] [decimal](18, 2) NULL,
	[OU] [decimal](18, 2) NULL,
	[OneHdp] [decimal](18, 2) NULL,
	[OneOU] [decimal](18, 2) NULL,
	[OE] [decimal](18, 2) NULL,
	[NG] [decimal](18, 2) NULL,
	[Total1] [decimal](18, 2) NULL,
	[OneXTwo] [decimal](18, 2) NULL,
	[CorrectScore] [decimal](18, 2) NULL,
	[TG] [decimal](18, 2) NULL,
	[MP] [decimal](18, 2) NULL,
	[Outright] [decimal](18, 2) NULL,
	[FGLG] [decimal](18, 2) NULL,
	[HTFT] [decimal](18, 2) NULL,
	[MoneyLine] [decimal](18, 2) NULL,
	[Total2] [decimal](18, 2) NULL,
	[ReportDate] [datetime] NULL,
 CONSTRAINT [PK_tblRpCommByBetType] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[tblRpCommByBetType] ON
INSERT [dbo].[tblRpCommByBetType] ([ID], [ParentID], [AccID], [StrAccID], [Hdp], [OU], [OneHdp], [OneOU], [OE], [NG], [Total1], [OneXTwo], [CorrectScore], [TG], [MP], [Outright], [FGLG], [HTFT], [MoneyLine], [Total2], [ReportDate]) VALUES (1, 15, 16, N'SKCE909001', CAST(0.30 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.30 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0x00009DBA00000000 AS DateTime))
INSERT [dbo].[tblRpCommByBetType] ([ID], [ParentID], [AccID], [StrAccID], [Hdp], [OU], [OneHdp], [OneOU], [OE], [NG], [Total1], [OneXTwo], [CorrectScore], [TG], [MP], [Outright], [FGLG], [HTFT], [MoneyLine], [Total2], [ReportDate]) VALUES (2, 15, 17, N'SKCE909002', CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0x00009DBA00000000 AS DateTime))
INSERT [dbo].[tblRpCommByBetType] ([ID], [ParentID], [AccID], [StrAccID], [Hdp], [OU], [OneHdp], [OneOU], [OE], [NG], [Total1], [OneXTwo], [CorrectScore], [TG], [MP], [Outright], [FGLG], [HTFT], [MoneyLine], [Total2], [ReportDate]) VALUES (3, 15, 18, N'SKCE9090D1', CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0x00009DBA00000000 AS DateTime))
INSERT [dbo].[tblRpCommByBetType] ([ID], [ParentID], [AccID], [StrAccID], [Hdp], [OU], [OneHdp], [OneOU], [OE], [NG], [Total1], [OneXTwo], [CorrectScore], [TG], [MP], [Outright], [FGLG], [HTFT], [MoneyLine], [Total2], [ReportDate]) VALUES (4, 10, 15, N'SKCE9', CAST(0.30 AS Decimal(18, 2)), CAST(1.00 AS Decimal(18, 2)), CAST(24.00 AS Decimal(18, 2)), CAST(1.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.30 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0x00009DBA00000000 AS DateTime))
INSERT [dbo].[tblRpCommByBetType] ([ID], [ParentID], [AccID], [StrAccID], [Hdp], [OU], [OneHdp], [OneOU], [OE], [NG], [Total1], [OneXTwo], [CorrectScore], [TG], [MP], [Outright], [FGLG], [HTFT], [MoneyLine], [Total2], [ReportDate]) VALUES (5, 7, 10, N'SKCE909', CAST(5.20 AS Decimal(18, 2)), CAST(6.00 AS Decimal(18, 2)), CAST(60.00 AS Decimal(18, 2)), CAST(23.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0x00009DBA00000000 AS DateTime))
INSERT [dbo].[tblRpCommByBetType] ([ID], [ParentID], [AccID], [StrAccID], [Hdp], [OU], [OneHdp], [OneOU], [OE], [NG], [Total1], [OneXTwo], [CorrectScore], [TG], [MP], [Outright], [FGLG], [HTFT], [MoneyLine], [Total2], [ReportDate]) VALUES (6, 4, 7, N'SKC', CAST(8.00 AS Decimal(18, 2)), CAST(6.00 AS Decimal(18, 2)), CAST(23.00 AS Decimal(18, 2)), CAST(1.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0x00009DBA00000000 AS DateTime))
SET IDENTITY_INSERT [dbo].[tblRpCommByBetType] OFF
/****** Object:  Table [dbo].[tblRoleModules]    Script Date: 12/31/2010 17:36:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblRoleModules](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[RoleID] [int] NULL,
	[ModuleID] [int] NULL,
	[RoleName] [nvarchar](150) NULL,
	[RoleDescriptions] [nvarchar](250) NULL,
 CONSTRAINT [PK_tblRole] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[tblRoleModules] ON
INSERT [dbo].[tblRoleModules] ([ID], [RoleID], [ModuleID], [RoleName], [RoleDescriptions]) VALUES (1, 1, 1, N'SGM', NULL)
INSERT [dbo].[tblRoleModules] ([ID], [RoleID], [ModuleID], [RoleName], [RoleDescriptions]) VALUES (2, 2, 1, N'GM', NULL)
INSERT [dbo].[tblRoleModules] ([ID], [RoleID], [ModuleID], [RoleName], [RoleDescriptions]) VALUES (3, 3, 1, N'Mater', NULL)
INSERT [dbo].[tblRoleModules] ([ID], [RoleID], [ModuleID], [RoleName], [RoleDescriptions]) VALUES (4, 4, 1, N'Agent', NULL)
INSERT [dbo].[tblRoleModules] ([ID], [RoleID], [ModuleID], [RoleName], [RoleDescriptions]) VALUES (5, 5, NULL, N'Member', NULL)
INSERT [dbo].[tblRoleModules] ([ID], [RoleID], [ModuleID], [RoleName], [RoleDescriptions]) VALUES (6, 1, 2, N'SGM', NULL)
INSERT [dbo].[tblRoleModules] ([ID], [RoleID], [ModuleID], [RoleName], [RoleDescriptions]) VALUES (7, 2, 2, N'GM', NULL)
INSERT [dbo].[tblRoleModules] ([ID], [RoleID], [ModuleID], [RoleName], [RoleDescriptions]) VALUES (8, 3, 2, N'Mater', NULL)
INSERT [dbo].[tblRoleModules] ([ID], [RoleID], [ModuleID], [RoleName], [RoleDescriptions]) VALUES (9, 4, 2, N'Agent', NULL)
INSERT [dbo].[tblRoleModules] ([ID], [RoleID], [ModuleID], [RoleName], [RoleDescriptions]) VALUES (10, 1, 3, N'SGM', NULL)
INSERT [dbo].[tblRoleModules] ([ID], [RoleID], [ModuleID], [RoleName], [RoleDescriptions]) VALUES (11, 2, 3, N'GM', NULL)
INSERT [dbo].[tblRoleModules] ([ID], [RoleID], [ModuleID], [RoleName], [RoleDescriptions]) VALUES (12, 3, 3, N'Mater', NULL)
INSERT [dbo].[tblRoleModules] ([ID], [RoleID], [ModuleID], [RoleName], [RoleDescriptions]) VALUES (13, 4, 3, N'Agent', NULL)
INSERT [dbo].[tblRoleModules] ([ID], [RoleID], [ModuleID], [RoleName], [RoleDescriptions]) VALUES (14, 1, 4, N'SGM', NULL)
INSERT [dbo].[tblRoleModules] ([ID], [RoleID], [ModuleID], [RoleName], [RoleDescriptions]) VALUES (15, 2, 4, N'GM', NULL)
INSERT [dbo].[tblRoleModules] ([ID], [RoleID], [ModuleID], [RoleName], [RoleDescriptions]) VALUES (16, 3, 4, N'Mater', NULL)
INSERT [dbo].[tblRoleModules] ([ID], [RoleID], [ModuleID], [RoleName], [RoleDescriptions]) VALUES (17, 4, 4, N'Agent', NULL)
SET IDENTITY_INSERT [dbo].[tblRoleModules] OFF
/****** Object:  Table [dbo].[tblRoleFunctionMapping]    Script Date: 12/31/2010 17:36:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblRoleFunctionMapping](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[RoleTitle] [nvarchar](100) NULL,
	[intFunctionID] [int] NULL,
	[GradeID] [int] NULL,
 CONSTRAINT [PK_tblRoleFunctionMapping] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'1:SGM;2:GM;3:Master;4:Agent;5:Member;6:Group' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tblRoleFunctionMapping', @level2type=N'COLUMN',@level2name=N'ID'
GO
SET IDENTITY_INSERT [dbo].[tblRoleFunctionMapping] ON
INSERT [dbo].[tblRoleFunctionMapping] ([ID], [RoleTitle], [intFunctionID], [GradeID]) VALUES (1, N'Total Bets', 4, 3)
INSERT [dbo].[tblRoleFunctionMapping] ([ID], [RoleTitle], [intFunctionID], [GradeID]) VALUES (2, N'Total Bets', 5, 3)
INSERT [dbo].[tblRoleFunctionMapping] ([ID], [RoleTitle], [intFunctionID], [GradeID]) VALUES (3, N'Total Bets', 6, 3)
INSERT [dbo].[tblRoleFunctionMapping] ([ID], [RoleTitle], [intFunctionID], [GradeID]) VALUES (4, N'Total Bets', 7, 3)
INSERT [dbo].[tblRoleFunctionMapping] ([ID], [RoleTitle], [intFunctionID], [GradeID]) VALUES (5, N'Total Bets', 8, 3)
INSERT [dbo].[tblRoleFunctionMapping] ([ID], [RoleTitle], [intFunctionID], [GradeID]) VALUES (6, N'Total Bets', 9, 3)
INSERT [dbo].[tblRoleFunctionMapping] ([ID], [RoleTitle], [intFunctionID], [GradeID]) VALUES (7, N'Total Bets', 10, 3)
INSERT [dbo].[tblRoleFunctionMapping] ([ID], [RoleTitle], [intFunctionID], [GradeID]) VALUES (8, N'Total Bets', 11, 3)
INSERT [dbo].[tblRoleFunctionMapping] ([ID], [RoleTitle], [intFunctionID], [GradeID]) VALUES (9, N'Total Bets', 12, 3)
INSERT [dbo].[tblRoleFunctionMapping] ([ID], [RoleTitle], [intFunctionID], [GradeID]) VALUES (10, N'Total Bets', 13, 3)
INSERT [dbo].[tblRoleFunctionMapping] ([ID], [RoleTitle], [intFunctionID], [GradeID]) VALUES (11, N'Reports', 51, 3)
INSERT [dbo].[tblRoleFunctionMapping] ([ID], [RoleTitle], [intFunctionID], [GradeID]) VALUES (12, N'Reports', 52, 3)
INSERT [dbo].[tblRoleFunctionMapping] ([ID], [RoleTitle], [intFunctionID], [GradeID]) VALUES (13, N'Reports', 53, 3)
INSERT [dbo].[tblRoleFunctionMapping] ([ID], [RoleTitle], [intFunctionID], [GradeID]) VALUES (14, N'Reports', 23, 3)
INSERT [dbo].[tblRoleFunctionMapping] ([ID], [RoleTitle], [intFunctionID], [GradeID]) VALUES (15, N'Reports', 24, 3)
INSERT [dbo].[tblRoleFunctionMapping] ([ID], [RoleTitle], [intFunctionID], [GradeID]) VALUES (16, N'Reports', 25, 3)
INSERT [dbo].[tblRoleFunctionMapping] ([ID], [RoleTitle], [intFunctionID], [GradeID]) VALUES (17, N'Reports', 26, 3)
INSERT [dbo].[tblRoleFunctionMapping] ([ID], [RoleTitle], [intFunctionID], [GradeID]) VALUES (18, N'Reports', 27, 3)
INSERT [dbo].[tblRoleFunctionMapping] ([ID], [RoleTitle], [intFunctionID], [GradeID]) VALUES (19, N'Reports', 28, 3)
INSERT [dbo].[tblRoleFunctionMapping] ([ID], [RoleTitle], [intFunctionID], [GradeID]) VALUES (20, N'Reports', 29, 3)
INSERT [dbo].[tblRoleFunctionMapping] ([ID], [RoleTitle], [intFunctionID], [GradeID]) VALUES (21, N'Reports', 30, 3)
INSERT [dbo].[tblRoleFunctionMapping] ([ID], [RoleTitle], [intFunctionID], [GradeID]) VALUES (22, N'Create Account', 31, 3)
INSERT [dbo].[tblRoleFunctionMapping] ([ID], [RoleTitle], [intFunctionID], [GradeID]) VALUES (23, N'Update Account', 32, 3)
INSERT [dbo].[tblRoleFunctionMapping] ([ID], [RoleTitle], [intFunctionID], [GradeID]) VALUES (24, N'Transfer', 18, 3)
INSERT [dbo].[tblRoleFunctionMapping] ([ID], [RoleTitle], [intFunctionID], [GradeID]) VALUES (25, N'Total Bets', 14, 3)
INSERT [dbo].[tblRoleFunctionMapping] ([ID], [RoleTitle], [intFunctionID], [GradeID]) VALUES (26, N'Total Bets', 15, 3)
INSERT [dbo].[tblRoleFunctionMapping] ([ID], [RoleTitle], [intFunctionID], [GradeID]) VALUES (27, N'Create Account', 35, 3)
INSERT [dbo].[tblRoleFunctionMapping] ([ID], [RoleTitle], [intFunctionID], [GradeID]) VALUES (28, N'Create Account', 36, 3)
INSERT [dbo].[tblRoleFunctionMapping] ([ID], [RoleTitle], [intFunctionID], [GradeID]) VALUES (29, N'Create Account', 37, 3)
INSERT [dbo].[tblRoleFunctionMapping] ([ID], [RoleTitle], [intFunctionID], [GradeID]) VALUES (30, N'Create Account', 38, 3)
INSERT [dbo].[tblRoleFunctionMapping] ([ID], [RoleTitle], [intFunctionID], [GradeID]) VALUES (31, N'Update Account', 35, 3)
INSERT [dbo].[tblRoleFunctionMapping] ([ID], [RoleTitle], [intFunctionID], [GradeID]) VALUES (32, N'Update Account', 36, 3)
INSERT [dbo].[tblRoleFunctionMapping] ([ID], [RoleTitle], [intFunctionID], [GradeID]) VALUES (33, N'Update Account', 37, 3)
INSERT [dbo].[tblRoleFunctionMapping] ([ID], [RoleTitle], [intFunctionID], [GradeID]) VALUES (34, N'Update Account', 38, 3)
INSERT [dbo].[tblRoleFunctionMapping] ([ID], [RoleTitle], [intFunctionID], [GradeID]) VALUES (35, N'Total Bets', 4, 4)
INSERT [dbo].[tblRoleFunctionMapping] ([ID], [RoleTitle], [intFunctionID], [GradeID]) VALUES (36, N'Total Bets', 5, 4)
INSERT [dbo].[tblRoleFunctionMapping] ([ID], [RoleTitle], [intFunctionID], [GradeID]) VALUES (37, N'Total Bets', 6, 4)
INSERT [dbo].[tblRoleFunctionMapping] ([ID], [RoleTitle], [intFunctionID], [GradeID]) VALUES (38, N'Total Bets', 7, 4)
INSERT [dbo].[tblRoleFunctionMapping] ([ID], [RoleTitle], [intFunctionID], [GradeID]) VALUES (39, N'Total Bets', 8, 4)
INSERT [dbo].[tblRoleFunctionMapping] ([ID], [RoleTitle], [intFunctionID], [GradeID]) VALUES (40, N'Total Bets', 9, 4)
INSERT [dbo].[tblRoleFunctionMapping] ([ID], [RoleTitle], [intFunctionID], [GradeID]) VALUES (41, N'Total Bets', 10, 4)
INSERT [dbo].[tblRoleFunctionMapping] ([ID], [RoleTitle], [intFunctionID], [GradeID]) VALUES (42, N'Total Bets', 11, 4)
INSERT [dbo].[tblRoleFunctionMapping] ([ID], [RoleTitle], [intFunctionID], [GradeID]) VALUES (43, N'Total Bets', 12, 4)
INSERT [dbo].[tblRoleFunctionMapping] ([ID], [RoleTitle], [intFunctionID], [GradeID]) VALUES (44, N'Total Bets', 13, 4)
INSERT [dbo].[tblRoleFunctionMapping] ([ID], [RoleTitle], [intFunctionID], [GradeID]) VALUES (45, N'Total Bets', 14, 4)
INSERT [dbo].[tblRoleFunctionMapping] ([ID], [RoleTitle], [intFunctionID], [GradeID]) VALUES (46, N'Total Bets', 15, 4)
INSERT [dbo].[tblRoleFunctionMapping] ([ID], [RoleTitle], [intFunctionID], [GradeID]) VALUES (47, N'Transfer', 18, 4)
INSERT [dbo].[tblRoleFunctionMapping] ([ID], [RoleTitle], [intFunctionID], [GradeID]) VALUES (48, N'Reports', 16, 4)
INSERT [dbo].[tblRoleFunctionMapping] ([ID], [RoleTitle], [intFunctionID], [GradeID]) VALUES (49, N'Reports', 21, 4)
INSERT [dbo].[tblRoleFunctionMapping] ([ID], [RoleTitle], [intFunctionID], [GradeID]) VALUES (50, N'Reports', 22, 4)
INSERT [dbo].[tblRoleFunctionMapping] ([ID], [RoleTitle], [intFunctionID], [GradeID]) VALUES (51, N'Reports', 23, 4)
INSERT [dbo].[tblRoleFunctionMapping] ([ID], [RoleTitle], [intFunctionID], [GradeID]) VALUES (52, N'Reports', 24, 4)
INSERT [dbo].[tblRoleFunctionMapping] ([ID], [RoleTitle], [intFunctionID], [GradeID]) VALUES (53, N'Reports', 25, 4)
INSERT [dbo].[tblRoleFunctionMapping] ([ID], [RoleTitle], [intFunctionID], [GradeID]) VALUES (54, N'Reports', 26, 4)
INSERT [dbo].[tblRoleFunctionMapping] ([ID], [RoleTitle], [intFunctionID], [GradeID]) VALUES (56, N'Reports', 28, 4)
INSERT [dbo].[tblRoleFunctionMapping] ([ID], [RoleTitle], [intFunctionID], [GradeID]) VALUES (57, N'Reports', 29, 4)
INSERT [dbo].[tblRoleFunctionMapping] ([ID], [RoleTitle], [intFunctionID], [GradeID]) VALUES (58, N'Reports', 30, 4)
INSERT [dbo].[tblRoleFunctionMapping] ([ID], [RoleTitle], [intFunctionID], [GradeID]) VALUES (59, N'Create Account', 31, 4)
INSERT [dbo].[tblRoleFunctionMapping] ([ID], [RoleTitle], [intFunctionID], [GradeID]) VALUES (60, N'Update Account', 32, 4)
INSERT [dbo].[tblRoleFunctionMapping] ([ID], [RoleTitle], [intFunctionID], [GradeID]) VALUES (61, N'Create Account', 35, 4)
INSERT [dbo].[tblRoleFunctionMapping] ([ID], [RoleTitle], [intFunctionID], [GradeID]) VALUES (62, N'Create Account', 36, 4)
INSERT [dbo].[tblRoleFunctionMapping] ([ID], [RoleTitle], [intFunctionID], [GradeID]) VALUES (63, N'Create Account', 37, 4)
INSERT [dbo].[tblRoleFunctionMapping] ([ID], [RoleTitle], [intFunctionID], [GradeID]) VALUES (64, N'Create Account', 38, 4)
INSERT [dbo].[tblRoleFunctionMapping] ([ID], [RoleTitle], [intFunctionID], [GradeID]) VALUES (65, N'Total Bets', 4, 2)
INSERT [dbo].[tblRoleFunctionMapping] ([ID], [RoleTitle], [intFunctionID], [GradeID]) VALUES (66, N'Total Bets', 5, 2)
INSERT [dbo].[tblRoleFunctionMapping] ([ID], [RoleTitle], [intFunctionID], [GradeID]) VALUES (67, N'Total Bets', 6, 2)
INSERT [dbo].[tblRoleFunctionMapping] ([ID], [RoleTitle], [intFunctionID], [GradeID]) VALUES (68, N'Total Bets', 7, 2)
INSERT [dbo].[tblRoleFunctionMapping] ([ID], [RoleTitle], [intFunctionID], [GradeID]) VALUES (69, N'Total Bets', 8, 2)
INSERT [dbo].[tblRoleFunctionMapping] ([ID], [RoleTitle], [intFunctionID], [GradeID]) VALUES (70, N'Total Bets', 9, 2)
INSERT [dbo].[tblRoleFunctionMapping] ([ID], [RoleTitle], [intFunctionID], [GradeID]) VALUES (71, N'Total Bets', 10, 2)
INSERT [dbo].[tblRoleFunctionMapping] ([ID], [RoleTitle], [intFunctionID], [GradeID]) VALUES (72, N'Total Bets', 11, 2)
INSERT [dbo].[tblRoleFunctionMapping] ([ID], [RoleTitle], [intFunctionID], [GradeID]) VALUES (73, N'Total Bets', 12, 2)
INSERT [dbo].[tblRoleFunctionMapping] ([ID], [RoleTitle], [intFunctionID], [GradeID]) VALUES (74, N'Total Bets', 13, 2)
INSERT [dbo].[tblRoleFunctionMapping] ([ID], [RoleTitle], [intFunctionID], [GradeID]) VALUES (75, N'Total Bets', 14, 2)
INSERT [dbo].[tblRoleFunctionMapping] ([ID], [RoleTitle], [intFunctionID], [GradeID]) VALUES (76, N'Total Bets', 15, 2)
INSERT [dbo].[tblRoleFunctionMapping] ([ID], [RoleTitle], [intFunctionID], [GradeID]) VALUES (77, N'Transfer', 18, 2)
INSERT [dbo].[tblRoleFunctionMapping] ([ID], [RoleTitle], [intFunctionID], [GradeID]) VALUES (78, N'Reports', 16, 2)
INSERT [dbo].[tblRoleFunctionMapping] ([ID], [RoleTitle], [intFunctionID], [GradeID]) VALUES (79, N'Reports', 45, 2)
INSERT [dbo].[tblRoleFunctionMapping] ([ID], [RoleTitle], [intFunctionID], [GradeID]) VALUES (80, N'Reports', 46, 2)
INSERT [dbo].[tblRoleFunctionMapping] ([ID], [RoleTitle], [intFunctionID], [GradeID]) VALUES (81, N'Reports', 47, 2)
INSERT [dbo].[tblRoleFunctionMapping] ([ID], [RoleTitle], [intFunctionID], [GradeID]) VALUES (82, N'Reports', 24, 2)
INSERT [dbo].[tblRoleFunctionMapping] ([ID], [RoleTitle], [intFunctionID], [GradeID]) VALUES (83, N'Reports', 25, 2)
INSERT [dbo].[tblRoleFunctionMapping] ([ID], [RoleTitle], [intFunctionID], [GradeID]) VALUES (84, N'Reports', 26, 2)
INSERT [dbo].[tblRoleFunctionMapping] ([ID], [RoleTitle], [intFunctionID], [GradeID]) VALUES (85, N'Reports', 28, 2)
INSERT [dbo].[tblRoleFunctionMapping] ([ID], [RoleTitle], [intFunctionID], [GradeID]) VALUES (86, N'Reports', 29, 2)
INSERT [dbo].[tblRoleFunctionMapping] ([ID], [RoleTitle], [intFunctionID], [GradeID]) VALUES (87, N'Reports', 30, 2)
INSERT [dbo].[tblRoleFunctionMapping] ([ID], [RoleTitle], [intFunctionID], [GradeID]) VALUES (88, N'Create Account', 40, 2)
INSERT [dbo].[tblRoleFunctionMapping] ([ID], [RoleTitle], [intFunctionID], [GradeID]) VALUES (89, N'Update Account', 32, 2)
INSERT [dbo].[tblRoleFunctionMapping] ([ID], [RoleTitle], [intFunctionID], [GradeID]) VALUES (90, N'Create Account', 43, 2)
INSERT [dbo].[tblRoleFunctionMapping] ([ID], [RoleTitle], [intFunctionID], [GradeID]) VALUES (91, N'Create Account', 36, 2)
INSERT [dbo].[tblRoleFunctionMapping] ([ID], [RoleTitle], [intFunctionID], [GradeID]) VALUES (92, N'Create Account', 37, 2)
INSERT [dbo].[tblRoleFunctionMapping] ([ID], [RoleTitle], [intFunctionID], [GradeID]) VALUES (93, N'Create Account', 56, 2)
SET IDENTITY_INSERT [dbo].[tblRoleFunctionMapping] OFF
/****** Object:  Table [dbo].[tblResult_Log]    Script Date: 12/31/2010 17:36:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblResult_Log](
	[ResultId] [bigint] NOT NULL,
	[KickoffTime] [varchar](50) NULL,
	[LeagueId] [bigint] NULL,
	[LeagueName] [varchar](450) NULL,
	[MatchId] [bigint] NULL,
	[HomeName] [varchar](200) NULL,
	[AwayName] [varchar](200) NULL,
	[FirstHalf] [varchar](50) NULL,
	[Final] [varchar](50) NULL,
	[Status] [varchar](50) NULL,
 CONSTRAINT [PK_tblResult_Log] PRIMARY KEY CLUSTERED 
(
	[ResultId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblResult]    Script Date: 12/31/2010 17:36:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblResult](
	[ResultId] [bigint] IDENTITY(1,1) NOT NULL,
	[KickoffTime] [datetime] NULL,
	[LeagueId] [bigint] NULL,
	[LeagueName] [nvarchar](450) NULL,
	[MatchId] [bigint] NULL,
	[EventID] [int] NULL,
	[EventName] [nvarchar](255) NULL,
	[HomeName] [nvarchar](250) NULL,
	[AwayName] [nvarchar](250) NULL,
	[FirstHaflHome] [varchar](50) NULL,
	[FirstHaflAway] [varchar](50) NULL,
	[FinalHome] [varchar](50) NULL,
	[FinalAway] [varchar](50) NULL,
	[Status] [varchar](50) NULL,
	[CreateDate] [datetime] NULL,
 CONSTRAINT [PK_tblResult] PRIMARY KEY CLUSTERED 
(
	[ResultId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[tblResult] ON
INSERT [dbo].[tblResult] ([ResultId], [KickoffTime], [LeagueId], [LeagueName], [MatchId], [EventID], [EventName], [HomeName], [AwayName], [FirstHaflHome], [FirstHaflAway], [FinalHome], [FinalAway], [Status], [CreateDate]) VALUES (1, CAST(0x00009DBC0060F450 AS DateTime), 4, N'CLUB FRIENDLY', 23, 1, N'Soccer', N'Jagiellonia Bialystok', N'FBK Kaunas', N'3', N'2', N'4', N'2', N'Completed', CAST(0x00009DBB00000000 AS DateTime))
INSERT [dbo].[tblResult] ([ResultId], [KickoffTime], [LeagueId], [LeagueName], [MatchId], [EventID], [EventName], [HomeName], [AwayName], [FirstHaflHome], [FirstHaflAway], [FinalHome], [FinalAway], [Status], [CreateDate]) VALUES (2, CAST(0x00009DBC00B6A5D0 AS DateTime), 4, N'CLUB FRIENDLY', 24, 1, N'Soccer', N'Slavia Sofia', N'Maccabi Haifa', N'0', N'1', N'', N'', N'Running', CAST(0x00009DBB00000000 AS DateTime))
INSERT [dbo].[tblResult] ([ResultId], [KickoffTime], [LeagueId], [LeagueName], [MatchId], [EventID], [EventName], [HomeName], [AwayName], [FirstHaflHome], [FirstHaflAway], [FinalHome], [FinalAway], [Status], [CreateDate]) VALUES (3, CAST(0x00009DBC0020F580 AS DateTime), 5, N'TESTING (Betting Prohibited Area!!) - SOCCER', 26, 1, N'Soccer', N'Test 1', N'Test 2', NULL, NULL, NULL, NULL, N'Refund', CAST(0x00009DBB00000000 AS DateTime))
SET IDENTITY_INSERT [dbo].[tblResult] OFF
/****** Object:  Table [dbo].[tblRangeForecast]    Script Date: 12/31/2010 17:36:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblRangeForecast](
	[FCScore] [int] NOT NULL,
	[MatchID] [int] NULL
) ON [PRIMARY]
GO
INSERT [dbo].[tblRangeForecast] ([FCScore], [MatchID]) VALUES (-4, -2)
INSERT [dbo].[tblRangeForecast] ([FCScore], [MatchID]) VALUES (-3, -2)
INSERT [dbo].[tblRangeForecast] ([FCScore], [MatchID]) VALUES (-2, 18)
INSERT [dbo].[tblRangeForecast] ([FCScore], [MatchID]) VALUES (-1, 18)
INSERT [dbo].[tblRangeForecast] ([FCScore], [MatchID]) VALUES (0, 18)
INSERT [dbo].[tblRangeForecast] ([FCScore], [MatchID]) VALUES (1, 18)
INSERT [dbo].[tblRangeForecast] ([FCScore], [MatchID]) VALUES (2, 18)
INSERT [dbo].[tblRangeForecast] ([FCScore], [MatchID]) VALUES (3, -2)
INSERT [dbo].[tblRangeForecast] ([FCScore], [MatchID]) VALUES (4, -2)
INSERT [dbo].[tblRangeForecast] ([FCScore], [MatchID]) VALUES (-5, -2)
INSERT [dbo].[tblRangeForecast] ([FCScore], [MatchID]) VALUES (-6, -2)
INSERT [dbo].[tblRangeForecast] ([FCScore], [MatchID]) VALUES (-7, -2)
INSERT [dbo].[tblRangeForecast] ([FCScore], [MatchID]) VALUES (-8, -2)
INSERT [dbo].[tblRangeForecast] ([FCScore], [MatchID]) VALUES (-9, -2)
INSERT [dbo].[tblRangeForecast] ([FCScore], [MatchID]) VALUES (-10, -2)
INSERT [dbo].[tblRangeForecast] ([FCScore], [MatchID]) VALUES (5, -2)
INSERT [dbo].[tblRangeForecast] ([FCScore], [MatchID]) VALUES (6, -2)
INSERT [dbo].[tblRangeForecast] ([FCScore], [MatchID]) VALUES (7, -2)
INSERT [dbo].[tblRangeForecast] ([FCScore], [MatchID]) VALUES (8, -2)
INSERT [dbo].[tblRangeForecast] ([FCScore], [MatchID]) VALUES (9, -2)
INSERT [dbo].[tblRangeForecast] ([FCScore], [MatchID]) VALUES (-20, -2)
INSERT [dbo].[tblRangeForecast] ([FCScore], [MatchID]) VALUES (-19, -2)
INSERT [dbo].[tblRangeForecast] ([FCScore], [MatchID]) VALUES (21, -2)
INSERT [dbo].[tblRangeForecast] ([FCScore], [MatchID]) VALUES (22, -2)
INSERT [dbo].[tblRangeForecast] ([FCScore], [MatchID]) VALUES (23, -2)
INSERT [dbo].[tblRangeForecast] ([FCScore], [MatchID]) VALUES (24, -2)
INSERT [dbo].[tblRangeForecast] ([FCScore], [MatchID]) VALUES (25, -2)
INSERT [dbo].[tblRangeForecast] ([FCScore], [MatchID]) VALUES (26, -2)
INSERT [dbo].[tblRangeForecast] ([FCScore], [MatchID]) VALUES (27, -2)
INSERT [dbo].[tblRangeForecast] ([FCScore], [MatchID]) VALUES (28, -2)
INSERT [dbo].[tblRangeForecast] ([FCScore], [MatchID]) VALUES (29, -2)
INSERT [dbo].[tblRangeForecast] ([FCScore], [MatchID]) VALUES (30, -2)
INSERT [dbo].[tblRangeForecast] ([FCScore], [MatchID]) VALUES (-18, -2)
INSERT [dbo].[tblRangeForecast] ([FCScore], [MatchID]) VALUES (-17, -2)
INSERT [dbo].[tblRangeForecast] ([FCScore], [MatchID]) VALUES (-16, -2)
INSERT [dbo].[tblRangeForecast] ([FCScore], [MatchID]) VALUES (-15, -2)
INSERT [dbo].[tblRangeForecast] ([FCScore], [MatchID]) VALUES (-14, -2)
INSERT [dbo].[tblRangeForecast] ([FCScore], [MatchID]) VALUES (-13, -2)
INSERT [dbo].[tblRangeForecast] ([FCScore], [MatchID]) VALUES (-12, -2)
INSERT [dbo].[tblRangeForecast] ([FCScore], [MatchID]) VALUES (-11, -2)
INSERT [dbo].[tblRangeForecast] ([FCScore], [MatchID]) VALUES (10, -2)
INSERT [dbo].[tblRangeForecast] ([FCScore], [MatchID]) VALUES (11, -2)
INSERT [dbo].[tblRangeForecast] ([FCScore], [MatchID]) VALUES (12, -2)
INSERT [dbo].[tblRangeForecast] ([FCScore], [MatchID]) VALUES (13, -2)
INSERT [dbo].[tblRangeForecast] ([FCScore], [MatchID]) VALUES (14, -2)
INSERT [dbo].[tblRangeForecast] ([FCScore], [MatchID]) VALUES (15, -2)
INSERT [dbo].[tblRangeForecast] ([FCScore], [MatchID]) VALUES (16, -2)
INSERT [dbo].[tblRangeForecast] ([FCScore], [MatchID]) VALUES (17, -2)
INSERT [dbo].[tblRangeForecast] ([FCScore], [MatchID]) VALUES (18, -2)
INSERT [dbo].[tblRangeForecast] ([FCScore], [MatchID]) VALUES (19, -2)
INSERT [dbo].[tblRangeForecast] ([FCScore], [MatchID]) VALUES (20, -2)
INSERT [dbo].[tblRangeForecast] ([FCScore], [MatchID]) VALUES (-22, -2)
INSERT [dbo].[tblRangeForecast] ([FCScore], [MatchID]) VALUES (-21, -2)
INSERT [dbo].[tblRangeForecast] ([FCScore], [MatchID]) VALUES (-27, -2)
INSERT [dbo].[tblRangeForecast] ([FCScore], [MatchID]) VALUES (-26, -2)
INSERT [dbo].[tblRangeForecast] ([FCScore], [MatchID]) VALUES (-25, -2)
INSERT [dbo].[tblRangeForecast] ([FCScore], [MatchID]) VALUES (-24, -2)
INSERT [dbo].[tblRangeForecast] ([FCScore], [MatchID]) VALUES (-23, -2)
INSERT [dbo].[tblRangeForecast] ([FCScore], [MatchID]) VALUES (-32, -2)
INSERT [dbo].[tblRangeForecast] ([FCScore], [MatchID]) VALUES (-31, -2)
INSERT [dbo].[tblRangeForecast] ([FCScore], [MatchID]) VALUES (-30, -2)
INSERT [dbo].[tblRangeForecast] ([FCScore], [MatchID]) VALUES (-29, -2)
INSERT [dbo].[tblRangeForecast] ([FCScore], [MatchID]) VALUES (-28, -2)
INSERT [dbo].[tblRangeForecast] ([FCScore], [MatchID]) VALUES (-37, -2)
INSERT [dbo].[tblRangeForecast] ([FCScore], [MatchID]) VALUES (-36, -2)
INSERT [dbo].[tblRangeForecast] ([FCScore], [MatchID]) VALUES (-35, -2)
INSERT [dbo].[tblRangeForecast] ([FCScore], [MatchID]) VALUES (-34, -2)
INSERT [dbo].[tblRangeForecast] ([FCScore], [MatchID]) VALUES (-33, -2)
INSERT [dbo].[tblRangeForecast] ([FCScore], [MatchID]) VALUES (-42, -2)
INSERT [dbo].[tblRangeForecast] ([FCScore], [MatchID]) VALUES (-41, -2)
INSERT [dbo].[tblRangeForecast] ([FCScore], [MatchID]) VALUES (-40, -2)
INSERT [dbo].[tblRangeForecast] ([FCScore], [MatchID]) VALUES (-39, -2)
INSERT [dbo].[tblRangeForecast] ([FCScore], [MatchID]) VALUES (-38, -2)
INSERT [dbo].[tblRangeForecast] ([FCScore], [MatchID]) VALUES (-47, -2)
INSERT [dbo].[tblRangeForecast] ([FCScore], [MatchID]) VALUES (-46, -2)
INSERT [dbo].[tblRangeForecast] ([FCScore], [MatchID]) VALUES (-45, -2)
INSERT [dbo].[tblRangeForecast] ([FCScore], [MatchID]) VALUES (-44, -2)
INSERT [dbo].[tblRangeForecast] ([FCScore], [MatchID]) VALUES (-43, -2)
INSERT [dbo].[tblRangeForecast] ([FCScore], [MatchID]) VALUES (-52, -2)
INSERT [dbo].[tblRangeForecast] ([FCScore], [MatchID]) VALUES (-51, -2)
INSERT [dbo].[tblRangeForecast] ([FCScore], [MatchID]) VALUES (-50, -2)
INSERT [dbo].[tblRangeForecast] ([FCScore], [MatchID]) VALUES (-49, -2)
INSERT [dbo].[tblRangeForecast] ([FCScore], [MatchID]) VALUES (-48, -2)
INSERT [dbo].[tblRangeForecast] ([FCScore], [MatchID]) VALUES (-57, -2)
INSERT [dbo].[tblRangeForecast] ([FCScore], [MatchID]) VALUES (-56, -2)
INSERT [dbo].[tblRangeForecast] ([FCScore], [MatchID]) VALUES (-55, -2)
INSERT [dbo].[tblRangeForecast] ([FCScore], [MatchID]) VALUES (-54, -2)
INSERT [dbo].[tblRangeForecast] ([FCScore], [MatchID]) VALUES (-53, -2)
INSERT [dbo].[tblRangeForecast] ([FCScore], [MatchID]) VALUES (-62, -2)
INSERT [dbo].[tblRangeForecast] ([FCScore], [MatchID]) VALUES (-61, -2)
INSERT [dbo].[tblRangeForecast] ([FCScore], [MatchID]) VALUES (-60, -2)
INSERT [dbo].[tblRangeForecast] ([FCScore], [MatchID]) VALUES (-59, -2)
INSERT [dbo].[tblRangeForecast] ([FCScore], [MatchID]) VALUES (-58, -2)
/****** Object:  Table [dbo].[tblOutright_Log]    Script Date: 12/31/2010 17:36:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblOutright_Log](
	[IDTMPO] [bigint] IDENTITY(1,1) NOT NULL,
	[MatchId] [bigint] NULL,
	[MatchCode] [nvarchar](50) NULL,
	[ShowTime] [varchar](50) NULL,
	[LeagueId] [bigint] NULL,
	[LeagueName] [varchar](50) NULL,
	[TeamName] [varchar](50) NULL,
	[Changed] [nchar](10) NULL,
	[Odds] [varchar](50) NULL,
 CONSTRAINT [PK_tblOutright_Log] PRIMARY KEY CLUSTERED 
(
	[IDTMPO] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblOutright]    Script Date: 12/31/2010 17:36:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblOutright](
	[IDTMPO] [bigint] IDENTITY(1,1) NOT NULL,
	[MatchId] [bigint] NULL,
	[MatchCode] [nvarchar](50) NULL,
	[ShowTime] [varchar](50) NULL,
	[LeagueId] [bigint] NULL,
	[LeagueName] [varchar](50) NULL,
	[TeamName] [varchar](50) NULL,
	[Changed] [nchar](10) NULL,
	[Odds] [varchar](50) NULL,
 CONSTRAINT [PK_tblTempOutright] PRIMARY KEY CLUSTERED 
(
	[IDTMPO] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblOnlineMembers]    Script Date: 12/31/2010 17:36:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblOnlineMembers](
	[AccountID] [bigint] IDENTITY(1,1) NOT NULL,
	[strToken] [nvarchar](50) NULL,
	[IpAddress] [nvarchar](50) NULL,
	[LogedInTime] [datetime] NULL,
 CONSTRAINT [PK_tblOnlineMembers] PRIMARY KEY CLUSTERED 
(
	[AccountID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblOdds_8]    Script Date: 12/31/2010 17:36:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblOdds_8](
	[OddsId_8] [bigint] NOT NULL,
	[Goal_8] [nvarchar](50) NULL,
	[Odds_8_O] [nvarchar](50) NULL,
	[Odds_8_U] [nvarchar](50) NULL,
 CONSTRAINT [PK_tblOddsId_8] PRIMARY KEY CLUSTERED 
(
	[OddsId_8] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblOdds_7]    Script Date: 12/31/2010 17:36:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblOdds_7](
	[OddsId_7] [bigint] NOT NULL,
	[Value_7] [nvarchar](50) NULL,
	[Odds_7_H] [nvarchar](50) NULL,
	[Odds_7_A] [nvarchar](50) NULL,
	[FavorH1] [nvarchar](50) NULL,
 CONSTRAINT [PK_tblOdds_7] PRIMARY KEY CLUSTERED 
(
	[OddsId_7] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblOdds_6]    Script Date: 12/31/2010 17:36:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblOdds_6](
	[OddsId_6] [bigint] NOT NULL,
	[Odds_6_01] [nvarchar](50) NULL,
	[Odds_6_23] [nvarchar](50) NULL,
	[Odds_6_46] [nvarchar](50) NULL,
	[Odds_6_7] [nvarchar](50) NULL,
 CONSTRAINT [PK_tblOdds_6] PRIMARY KEY CLUSTERED 
(
	[OddsId_6] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblOdds_5]    Script Date: 12/31/2010 17:36:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblOdds_5](
	[OddsId_5] [bigint] NOT NULL,
	[Odds_5_1] [nvarchar](50) NULL,
	[Odds_5_X] [nvarchar](50) NULL,
	[Odds_5_2] [nvarchar](50) NULL,
 CONSTRAINT [PK_tblOdds_5] PRIMARY KEY CLUSTERED 
(
	[OddsId_5] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblOdds_4]    Script Date: 12/31/2010 17:36:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblOdds_4](
	[OddsId_4] [bigint] NOT NULL,
	[Odds_4_00] [nvarchar](50) NULL,
	[Odds_4_01] [nvarchar](50) NULL,
	[Odds_4_02] [nvarchar](50) NULL,
	[Odds_4_03] [nvarchar](50) NULL,
	[Odds_4_04] [nvarchar](50) NULL,
	[Odds_4_05] [nvarchar](50) NULL,
	[Odds_4_10] [nvarchar](50) NULL,
	[Odds_4_11] [nvarchar](50) NULL,
	[Odds_4_12] [nvarchar](50) NULL,
	[Odds_4_13] [nvarchar](50) NULL,
	[Odds_4_14] [nvarchar](50) NULL,
	[Odds_4_20] [nvarchar](50) NULL,
	[Odds_4_21] [nvarchar](50) NULL,
	[Odds_4_22] [nvarchar](50) NULL,
	[Odds_4_23] [nvarchar](50) NULL,
	[Odds_4_24] [nvarchar](50) NULL,
	[Odds_4_30] [nvarchar](50) NULL,
	[Odds_4_31] [nvarchar](50) NULL,
	[Odds_4_32] [nvarchar](50) NULL,
	[Odds_4_33] [nvarchar](50) NULL,
	[Odds_4_34] [nvarchar](50) NULL,
	[Odds_4_40] [nvarchar](50) NULL,
	[Odds_4_41] [nvarchar](50) NULL,
	[Odds_4_42] [nvarchar](50) NULL,
	[Odds_4_43] [nvarchar](50) NULL,
	[Odds_4_44] [nvarchar](50) NULL,
	[Odds_4_50] [nvarchar](50) NULL,
 CONSTRAINT [PK_tblOdds_4] PRIMARY KEY CLUSTERED 
(
	[OddsId_4] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblOdds_3]    Script Date: 12/31/2010 17:36:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblOdds_3](
	[OddsId_3] [bigint] NOT NULL,
	[Goal_3] [nvarchar](50) NULL,
	[Odds_3_O] [nvarchar](50) NULL,
	[Odds_3_U] [nvarchar](50) NULL,
 CONSTRAINT [PK_tblOdds_3] PRIMARY KEY CLUSTERED 
(
	[OddsId_3] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblOdds_2]    Script Date: 12/31/2010 17:36:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblOdds_2](
	[OddsId_2] [bigint] NOT NULL,
	[Odds_2_O] [nvarchar](50) NULL,
	[Odds_2_E] [nvarchar](50) NULL,
 CONSTRAINT [PK_tblOdds_2] PRIMARY KEY CLUSTERED 
(
	[OddsId_2] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblOdds_16]    Script Date: 12/31/2010 17:36:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblOdds_16](
	[OddsId_16] [bigint] NOT NULL,
	[Odds_16_HH] [nvarchar](50) NULL,
	[Odds_16_HD] [nvarchar](50) NULL,
	[Odds_16_HA] [nvarchar](50) NULL,
	[Odds_16_DH] [nvarchar](50) NULL,
	[Odds_16_DD] [nvarchar](50) NULL,
	[Odds_16_DA] [nvarchar](50) NULL,
	[Odds_16_AH] [nvarchar](50) NULL,
	[Odds_16_AD] [nvarchar](50) NULL,
	[Odds_16_AA] [nvarchar](50) NULL,
 CONSTRAINT [PK_tblOddsId_16] PRIMARY KEY CLUSTERED 
(
	[OddsId_16] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblOdds_15]    Script Date: 12/31/2010 17:36:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblOdds_15](
	[OddsId_15] [bigint] NOT NULL,
	[Odds_15_1] [nvarchar](50) NULL,
	[Odds_15_X] [nvarchar](50) NULL,
	[Odds_15_2] [nvarchar](50) NULL,
 CONSTRAINT [PK_tblOdds_15] PRIMARY KEY CLUSTERED 
(
	[OddsId_15] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblOdds_14]    Script Date: 12/31/2010 17:36:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblOdds_14](
	[OddsId_14] [bigint] NOT NULL,
	[Odds_14_NO] [nvarchar](50) NULL,
	[Odds_14_HF] [nvarchar](50) NULL,
	[Odds_14_HL] [nvarchar](50) NULL,
	[Odds_14_AF] [nvarchar](50) NULL,
	[Odds_14_AL] [nvarchar](50) NULL,
 CONSTRAINT [PK_tblOddsId_14] PRIMARY KEY CLUSTERED 
(
	[OddsId_14] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblOdds_12]    Script Date: 12/31/2010 17:36:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblOdds_12](
	[OddsId_12] [bigint] NOT NULL,
	[Odds_12_O] [nvarchar](50) NULL,
	[Odds_12_E] [nvarchar](50) NULL,
 CONSTRAINT [PK_tblOdds_12] PRIMARY KEY CLUSTERED 
(
	[OddsId_12] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblOdds_1]    Script Date: 12/31/2010 17:36:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblOdds_1](
	[OddsId_1] [bigint] NOT NULL,
	[Value_1] [nvarchar](50) NULL,
	[Odds_1_H] [nvarchar](50) NULL,
	[Odds_1_A] [nvarchar](50) NULL,
	[FavorF] [nvarchar](50) NULL,
 CONSTRAINT [PK_tblOdds_1] PRIMARY KEY CLUSTERED 
(
	[OddsId_1] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblOdds]    Script Date: 12/31/2010 17:36:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblOdds](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[MatchID] [int] NULL,
	[OddID] [bigint] NULL,
	[OddTypeID] [int] NULL,
	[MatchName] [nvarchar](500) NULL,
	[OddType] [nvarchar](50) NULL,
	[MinValue] [decimal](18, 2) NULL,
	[MaxValue] [decimal](18, 2) NULL,
	[intVisibleState] [bit] NULL,
	[CurrentState] [nvarchar](50) NULL,
 CONSTRAINT [PK_tblOdds] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Default=1; Off=2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tblOdds', @level2type=N'COLUMN',@level2name=N'intVisibleState'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ALLOW/NOTALLOW/CLOSED' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tblOdds', @level2type=N'COLUMN',@level2name=N'CurrentState'
GO
SET IDENTITY_INSERT [dbo].[tblOdds] ON
INSERT [dbo].[tblOdds] ([ID], [MatchID], [OddID], [OddTypeID], [MatchName], [OddType], [MinValue], [MaxValue], [intVisibleState], [CurrentState]) VALUES (1, 21, 123, 1, N'Manchester United (N) -vs- Chelsea FC', N'Handicap', CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 1, N'ALLOW')
INSERT [dbo].[tblOdds] ([ID], [MatchID], [OddID], [OddTypeID], [MatchName], [OddType], [MinValue], [MaxValue], [intVisibleState], [CurrentState]) VALUES (2, 21, 124, 2, N'Manchester United (N) -vs- Chelsea FC', N'Odd/Even', CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 1, N'ALLOW')
INSERT [dbo].[tblOdds] ([ID], [MatchID], [OddID], [OddTypeID], [MatchName], [OddType], [MinValue], [MaxValue], [intVisibleState], [CurrentState]) VALUES (3, 21, 125, 3, N'Manchester United (N) -vs- Chelsea FC', N'Over/Under', CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 1, N'ALLOW')
INSERT [dbo].[tblOdds] ([ID], [MatchID], [OddID], [OddTypeID], [MatchName], [OddType], [MinValue], [MaxValue], [intVisibleState], [CurrentState]) VALUES (4, 21, 126, 4, N'Manchester United (N) -vs- Chelsea FC', N'Correct Score', CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 1, N'ALLOW')
INSERT [dbo].[tblOdds] ([ID], [MatchID], [OddID], [OddTypeID], [MatchName], [OddType], [MinValue], [MaxValue], [intVisibleState], [CurrentState]) VALUES (5, 21, 127, 5, N'Manchester United (N) -vs- Chelsea FC', N'FT.1 X 2', CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 1, N'ALLOW')
INSERT [dbo].[tblOdds] ([ID], [MatchID], [OddID], [OddTypeID], [MatchName], [OddType], [MinValue], [MaxValue], [intVisibleState], [CurrentState]) VALUES (6, 21, 128, 7, N'Manchester United (N) -vs- Chelsea FC', N'Handicap', CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 1, N'ALLOW')
INSERT [dbo].[tblOdds] ([ID], [MatchID], [OddID], [OddTypeID], [MatchName], [OddType], [MinValue], [MaxValue], [intVisibleState], [CurrentState]) VALUES (7, 21, 129, 8, N'Manchester United (N) -vs- Chelsea FC', N'Over/Under', CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 1, N'ALLOW')
SET IDENTITY_INSERT [dbo].[tblOdds] OFF
/****** Object:  Table [dbo].[tblModules]    Script Date: 12/31/2010 17:36:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblModules](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ModuleName] [nvarchar](255) NULL,
	[ModuleTitle] [nvarchar](50) NULL,
	[ModuleDescription] [nvarchar](200) NULL,
	[ModuleURL] [nvarchar](255) NULL,
	[IsVisible] [bit] NULL,
	[Priority] [int] NULL,
	[Identifier] [nvarchar](50) NULL,
 CONSTRAINT [PK_tblModules] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[tblModules] ON
INSERT [dbo].[tblModules] ([ID], [ModuleName], [ModuleTitle], [ModuleDescription], [ModuleURL], [IsVisible], [Priority], [Identifier]) VALUES (1, N'TotalBets', N'TOTAL BETS', N'TOTAL BETS', N'~/TotalBets', 1, 1, N'Vertical.Left.Menu')
INSERT [dbo].[tblModules] ([ID], [ModuleName], [ModuleTitle], [ModuleDescription], [ModuleURL], [IsVisible], [Priority], [Identifier]) VALUES (2, N'ForeCast', N'FORECAST', N'FORECAST', N'~/Forecast', 1, 2, N'Vertical.Left.Menu')
INSERT [dbo].[tblModules] ([ID], [ModuleName], [ModuleTitle], [ModuleDescription], [ModuleURL], [IsVisible], [Priority], [Identifier]) VALUES (3, N'Reports', N'REPORTS', N'REPORTS', N'~/Report', 1, 3, N'Vertical.Left.Menu')
INSERT [dbo].[tblModules] ([ID], [ModuleName], [ModuleTitle], [ModuleDescription], [ModuleURL], [IsVisible], [Priority], [Identifier]) VALUES (4, N'MemberInformation', N'MEMBER INFORMATION', N'MEMBER INFORMATION', N'~/MemberInfo', 1, 4, N'Vertical.Left.Menu')
INSERT [dbo].[tblModules] ([ID], [ModuleName], [ModuleTitle], [ModuleDescription], [ModuleURL], [IsVisible], [Priority], [Identifier]) VALUES (5, N'SystemSettings', N'SYSTEM SETTINGS', N'SYSTEM SETTINGS', N'~/SystemSettings', 1, 5, N'Vertical.Left.Menu')
INSERT [dbo].[tblModules] ([ID], [ModuleName], [ModuleTitle], [ModuleDescription], [ModuleURL], [IsVisible], [Priority], [Identifier]) VALUES (7, N'TopMenu', N'TopMenu', N'TopMenu', N'~/', 1, 1, N'Horizontal.Top.Menu')
INSERT [dbo].[tblModules] ([ID], [ModuleName], [ModuleTitle], [ModuleDescription], [ModuleURL], [IsVisible], [Priority], [Identifier]) VALUES (8, N'Header', N'Header', N'Header', N'~/', 1, 1, N'Horizontal.Header')
INSERT [dbo].[tblModules] ([ID], [ModuleName], [ModuleTitle], [ModuleDescription], [ModuleURL], [IsVisible], [Priority], [Identifier]) VALUES (9, N'NotifyArea', N'NotifyArea', N'NotifyArea', N'~/', 1, 1, N'Horizontal.Notify')
INSERT [dbo].[tblModules] ([ID], [ModuleName], [ModuleTitle], [ModuleDescription], [ModuleURL], [IsVisible], [Priority], [Identifier]) VALUES (10, N'Footer', N'Footer', N'Footer', N'~/', 1, 1, N'Horizontal.Footer')
SET IDENTITY_INSERT [dbo].[tblModules] OFF
/****** Object:  Table [dbo].[tblMessageType]    Script Date: 12/31/2010 17:36:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblMessageType](
	[MessageTypeId] [bigint] NOT NULL,
	[MessageTypeName] [nvarchar](255) NULL,
	[MessageTypeDescription] [nvarchar](255) NULL,
 CONSTRAINT [PK_tblMessageType] PRIMARY KEY CLUSTERED 
(
	[MessageTypeId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblMessage]    Script Date: 12/31/2010 17:36:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblMessage](
	[MessageID] [int] IDENTITY(1,1) NOT NULL,
	[LanguegerSystemID] [int] NULL,
	[Message] [ntext] NULL,
	[PostDate] [datetime] NULL,
	[Status] [nvarchar](50) NULL,
	[AdminName] [nvarchar](255) NULL,
	[AccID] [bigint] NULL,
 CONSTRAINT [PK_Message] PRIMARY KEY CLUSTERED 
(
	[MessageID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblMemberGroup]    Script Date: 12/31/2010 17:36:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblMemberGroup](
	[MemberGroupId] [bigint] IDENTITY(1,1) NOT NULL,
	[MemberType] [varchar](50) NULL,
	[MemberValue] [numeric](18, 2) NULL,
	[MemberStatus] [bit] NULL,
 CONSTRAINT [PK_tblMemberGroup] PRIMARY KEY CLUSTERED 
(
	[MemberGroupId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[tblMemberGroup] ON
INSERT [dbo].[tblMemberGroup] ([MemberGroupId], [MemberType], [MemberValue], [MemberStatus]) VALUES (1, N'A', CAST(0.00 AS Numeric(18, 2)), 1)
INSERT [dbo].[tblMemberGroup] ([MemberGroupId], [MemberType], [MemberValue], [MemberStatus]) VALUES (2, N'B', CAST(0.00 AS Numeric(18, 2)), 1)
INSERT [dbo].[tblMemberGroup] ([MemberGroupId], [MemberType], [MemberValue], [MemberStatus]) VALUES (3, N'C', CAST(0.00 AS Numeric(18, 2)), 1)
INSERT [dbo].[tblMemberGroup] ([MemberGroupId], [MemberType], [MemberValue], [MemberStatus]) VALUES (4, N'D', CAST(0.00 AS Numeric(18, 2)), 1)
SET IDENTITY_INSERT [dbo].[tblMemberGroup] OFF
/****** Object:  Table [dbo].[tblMember]    Script Date: 12/31/2010 17:36:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblMember](
	[MemberId] [bigint] NOT NULL,
	[UserNamePrefix] [nvarchar](15) NULL,
	[Username] [nvarchar](20) NULL,
	[Pass] [nvarchar](50) NULL,
	[FName] [nvarchar](20) NULL,
	[LName] [nvarchar](20) NULL,
	[Phone] [nvarchar](20) NULL,
	[MobilePhone] [nvarchar](20) NULL,
	[Fax] [nvarchar](20) NULL,
	[MemberGroupId] [bigint] NULL,
	[Status] [nvarchar](20) NULL,
	[MinBet] [numeric](18, 0) NULL,
	[MaxBet] [numeric](18, 0) NULL,
	[MaxPerMatch] [numeric](18, 0) NULL,
	[LastLogin] [datetime] NULL,
	[LoginIp] [nvarchar](50) NULL,
	[CreateDate] [datetime] NULL,
	[ModifyDate] [datetime] NULL,
	[SessionLogin] [varchar](200) NULL,
	[Online] [bit] NULL,
	[PasswordExpiryDate] [datetime] NULL,
	[CashBalance] [numeric](18, 2) NULL,
	[Outstanding] [numeric](18, 2) NULL,
	[BetCredit] [numeric](18, 2) NULL,
	[GivenCredit] [numeric](18, 2) NULL,
	[TimeInsert] [datetime] NULL,
	[CommissionHDPOU] [nchar](10) NULL,
	[Commission1X2] [nchar](10) NULL,
	[CommissionOther] [nchar](10) NULL,
 CONSTRAINT [PK_tblMember] PRIMARY KEY CLUSTERED 
(
	[MemberId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[tblMember] ([MemberId], [UserNamePrefix], [Username], [Pass], [FName], [LName], [Phone], [MobilePhone], [Fax], [MemberGroupId], [Status], [MinBet], [MaxBet], [MaxPerMatch], [LastLogin], [LoginIp], [CreateDate], [ModifyDate], [SessionLogin], [Online], [PasswordExpiryDate], [CashBalance], [Outstanding], [BetCredit], [GivenCredit], [TimeInsert], [CommissionHDPOU], [Commission1X2], [CommissionOther]) VALUES (1, N'admin', N'admin', N'21232f297a57a5a743894a0e4a801fc3', N'rger', N'retret', N'234234', N'5451', N'34515', 1, N'Open', CAST(5 AS Numeric(18, 0)), CAST(3000 AS Numeric(18, 0)), CAST(2300 AS Numeric(18, 0)), CAST(0x00009C8E0119EE9C AS DateTime), N'127.0.0.1', CAST(0x00009C8E0119EE9C AS DateTime), CAST(0x00009C8E0119EE9C AS DateTime), NULL, 0, CAST(0x00009F680119EE9C AS DateTime), CAST(0.00 AS Numeric(18, 2)), CAST(90.00 AS Numeric(18, 2)), CAST(10.00 AS Numeric(18, 2)), CAST(100.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL)
INSERT [dbo].[tblMember] ([MemberId], [UserNamePrefix], [Username], [Pass], [FName], [LName], [Phone], [MobilePhone], [Fax], [MemberGroupId], [Status], [MinBet], [MaxBet], [MaxPerMatch], [LastLogin], [LoginIp], [CreateDate], [ModifyDate], [SessionLogin], [Online], [PasswordExpiryDate], [CashBalance], [Outstanding], [BetCredit], [GivenCredit], [TimeInsert], [CommissionHDPOU], [Commission1X2], [CommissionOther]) VALUES (2, N'admin', N'user1', N'0d9a22ec0d9359cdc6293dd2f099278e', N'435435', N'5345434', N'43534', N'3534', N'5345', 1, N'Open', CAST(5 AS Numeric(18, 0)), CAST(3000 AS Numeric(18, 0)), CAST(2300 AS Numeric(18, 0)), CAST(0x00009C8E01205AC0 AS DateTime), N'127.0.0.1', CAST(0x00009C8E01205AC0 AS DateTime), CAST(0x00009C8E01205AC0 AS DateTime), NULL, 0, CAST(0x00009DFB0119EE9C AS DateTime), NULL, NULL, CAST(100.00 AS Numeric(18, 2)), CAST(100.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL)
INSERT [dbo].[tblMember] ([MemberId], [UserNamePrefix], [Username], [Pass], [FName], [LName], [Phone], [MobilePhone], [Fax], [MemberGroupId], [Status], [MinBet], [MaxBet], [MaxPerMatch], [LastLogin], [LoginIp], [CreateDate], [ModifyDate], [SessionLogin], [Online], [PasswordExpiryDate], [CashBalance], [Outstanding], [BetCredit], [GivenCredit], [TimeInsert], [CommissionHDPOU], [Commission1X2], [CommissionOther]) VALUES (3, N'admin', N'user2', N'0d9a22ec0d9359cdc6293dd2f099278e', N'rtrewtyrewy', N'yery', N'46546', N'54747', N'', 1, N'Open', CAST(5 AS Numeric(18, 0)), CAST(3000 AS Numeric(18, 0)), CAST(2300 AS Numeric(18, 0)), CAST(0x00009C8E0121C608 AS DateTime), N'127.0.0.1', CAST(0x00009C8E0121C608 AS DateTime), CAST(0x00009C8E0121C608 AS DateTime), NULL, 0, CAST(0x00009DFB0119EE9C AS DateTime), NULL, NULL, CAST(100.00 AS Numeric(18, 2)), CAST(100.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL)
INSERT [dbo].[tblMember] ([MemberId], [UserNamePrefix], [Username], [Pass], [FName], [LName], [Phone], [MobilePhone], [Fax], [MemberGroupId], [Status], [MinBet], [MaxBet], [MaxPerMatch], [LastLogin], [LoginIp], [CreateDate], [ModifyDate], [SessionLogin], [Online], [PasswordExpiryDate], [CashBalance], [Outstanding], [BetCredit], [GivenCredit], [TimeInsert], [CommissionHDPOU], [Commission1X2], [CommissionOther]) VALUES (4, N'admin', N'user3', N'0d9a22ec0d9359cdc6293dd2f099278e', N'456465', N'', N'', N'', N'', 2, N'Open', CAST(5 AS Numeric(18, 0)), CAST(3000 AS Numeric(18, 0)), CAST(2300 AS Numeric(18, 0)), CAST(0x00009C8E01225C08 AS DateTime), N'127.0.0.1', CAST(0x00009C8E01225C08 AS DateTime), CAST(0x00009C8E01225C08 AS DateTime), NULL, 0, CAST(0x00009DFB0119EE9C AS DateTime), NULL, NULL, CAST(100.00 AS Numeric(18, 2)), CAST(100.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL)
INSERT [dbo].[tblMember] ([MemberId], [UserNamePrefix], [Username], [Pass], [FName], [LName], [Phone], [MobilePhone], [Fax], [MemberGroupId], [Status], [MinBet], [MaxBet], [MaxPerMatch], [LastLogin], [LoginIp], [CreateDate], [ModifyDate], [SessionLogin], [Online], [PasswordExpiryDate], [CashBalance], [Outstanding], [BetCredit], [GivenCredit], [TimeInsert], [CommissionHDPOU], [Commission1X2], [CommissionOther]) VALUES (5, N'admin', N'user4', N'0d9a22ec0d9359cdc6293dd2f099278e', N'qew', N'we', N'we', N'', N'', 3, N'Open', CAST(5 AS Numeric(18, 0)), CAST(3000 AS Numeric(18, 0)), CAST(2300 AS Numeric(18, 0)), CAST(0x00009C9000432E70 AS DateTime), N'127.0.0.1', CAST(0x00009C9000432E70 AS DateTime), CAST(0x00009C9000432E70 AS DateTime), NULL, 0, CAST(0x00009DFB0119EE9C AS DateTime), NULL, NULL, CAST(100.00 AS Numeric(18, 2)), CAST(100.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL)
INSERT [dbo].[tblMember] ([MemberId], [UserNamePrefix], [Username], [Pass], [FName], [LName], [Phone], [MobilePhone], [Fax], [MemberGroupId], [Status], [MinBet], [MaxBet], [MaxPerMatch], [LastLogin], [LoginIp], [CreateDate], [ModifyDate], [SessionLogin], [Online], [PasswordExpiryDate], [CashBalance], [Outstanding], [BetCredit], [GivenCredit], [TimeInsert], [CommissionHDPOU], [Commission1X2], [CommissionOther]) VALUES (6, N'admin', N'user5', N'0d9a22ec0d9359cdc6293dd2f099278e', N'', N'', N'', N'', N'', 3, N'Open', CAST(5 AS Numeric(18, 0)), CAST(3000 AS Numeric(18, 0)), CAST(2300 AS Numeric(18, 0)), CAST(0x00009C9201738EC0 AS DateTime), N'116.99.0.106', CAST(0x00009C9201738EC0 AS DateTime), CAST(0x00009C9201738EC0 AS DateTime), NULL, 0, CAST(0x00009DFB0119EE9C AS DateTime), NULL, NULL, CAST(100.00 AS Numeric(18, 2)), CAST(100.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL)
INSERT [dbo].[tblMember] ([MemberId], [UserNamePrefix], [Username], [Pass], [FName], [LName], [Phone], [MobilePhone], [Fax], [MemberGroupId], [Status], [MinBet], [MaxBet], [MaxPerMatch], [LastLogin], [LoginIp], [CreateDate], [ModifyDate], [SessionLogin], [Online], [PasswordExpiryDate], [CashBalance], [Outstanding], [BetCredit], [GivenCredit], [TimeInsert], [CommissionHDPOU], [Commission1X2], [CommissionOther]) VALUES (7, N'admin', N'user5', N'0d9a22ec0d9359cdc6293dd2f099278e', N'', N'', N'', N'', N'', 3, N'Open', CAST(5 AS Numeric(18, 0)), CAST(3000 AS Numeric(18, 0)), CAST(2300 AS Numeric(18, 0)), CAST(0x00009C9C0025F404 AS DateTime), N'116.99.0.106', CAST(0x00009C9C0025F404 AS DateTime), CAST(0x00009C9C0025F404 AS DateTime), NULL, 0, CAST(0x00009DFB0119EE9C AS DateTime), NULL, NULL, CAST(100.00 AS Numeric(18, 2)), CAST(100.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL)
INSERT [dbo].[tblMember] ([MemberId], [UserNamePrefix], [Username], [Pass], [FName], [LName], [Phone], [MobilePhone], [Fax], [MemberGroupId], [Status], [MinBet], [MaxBet], [MaxPerMatch], [LastLogin], [LoginIp], [CreateDate], [ModifyDate], [SessionLogin], [Online], [PasswordExpiryDate], [CashBalance], [Outstanding], [BetCredit], [GivenCredit], [TimeInsert], [CommissionHDPOU], [Commission1X2], [CommissionOther]) VALUES (57, N'', N'SKCE909ABC', N'E462CD71F86062F24BE622EA02B7C98B', N'', N'', N'', N'', N'', 30, N'Open', CAST(5 AS Numeric(18, 0)), CAST(3000 AS Numeric(18, 0)), CAST(20000 AS Numeric(18, 0)), CAST(0x00009DC3000FBA40 AS DateTime), N'', CAST(0x00009DC3000FBA40 AS DateTime), CAST(0x00009DC3000FBA40 AS DateTime), N'', 0, CAST(0x00009DE100000000 AS DateTime), CAST(0.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), CAST(500.00 AS Numeric(18, 2)), CAST(500.00 AS Numeric(18, 2)), CAST(0x00009DC3000FBA40 AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[tblMember] ([MemberId], [UserNamePrefix], [Username], [Pass], [FName], [LName], [Phone], [MobilePhone], [Fax], [MemberGroupId], [Status], [MinBet], [MaxBet], [MaxPerMatch], [LastLogin], [LoginIp], [CreateDate], [ModifyDate], [SessionLogin], [Online], [PasswordExpiryDate], [CashBalance], [Outstanding], [BetCredit], [GivenCredit], [TimeInsert], [CommissionHDPOU], [Commission1X2], [CommissionOther]) VALUES (58, N'', N'SKCE909ABB', N'E462CD71F86062F24BE622EA02B7C98B', N'', N'', N'', N'', N'', 31, N'Open', CAST(5 AS Numeric(18, 0)), CAST(3000 AS Numeric(18, 0)), CAST(20000 AS Numeric(18, 0)), CAST(0x00009DC30011FD86 AS DateTime), N'', CAST(0x00009DC30011FD86 AS DateTime), CAST(0x00009DC30011FD86 AS DateTime), N'', 0, CAST(0x00009DE100000000 AS DateTime), CAST(0.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), CAST(0x00009DC30011FD86 AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[tblMember] ([MemberId], [UserNamePrefix], [Username], [Pass], [FName], [LName], [Phone], [MobilePhone], [Fax], [MemberGroupId], [Status], [MinBet], [MaxBet], [MaxPerMatch], [LastLogin], [LoginIp], [CreateDate], [ModifyDate], [SessionLogin], [Online], [PasswordExpiryDate], [CashBalance], [Outstanding], [BetCredit], [GivenCredit], [TimeInsert], [CommissionHDPOU], [Commission1X2], [CommissionOther]) VALUES (59, N'', N'SKCE909ABD', N'E462CD71F86062F24BE622EA02B7C98B', N'User face 3', N'Nguyen', N'', N'0987643422', N'', 32, N'Open', CAST(5 AS Numeric(18, 0)), CAST(3000 AS Numeric(18, 0)), CAST(20000 AS Numeric(18, 0)), CAST(0x00009DC3001258BB AS DateTime), N'', CAST(0x00009DC3001258BB AS DateTime), CAST(0x00009DC3001258BB AS DateTime), N'', 0, CAST(0x00009DE100000000 AS DateTime), CAST(0.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), CAST(200.00 AS Numeric(18, 2)), CAST(200.00 AS Numeric(18, 2)), CAST(0x00009DC3001258BB AS DateTime), NULL, NULL, NULL)
/****** Object:  Table [dbo].[tblMatchs]    Script Date: 12/31/2010 17:36:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblMatchs](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[MatchId] [int] NOT NULL,
	[LeaguaID] [int] NULL,
	[HomeName] [nvarchar](250) NULL,
	[AwayName] [nvarchar](250) NULL,
	[KickoffTime] [nvarchar](50) NULL,
	[ShowTime] [nvarchar](50) NULL,
	[ShowDate] [datetime] NULL,
	[ScoreH] [int] NULL,
	[ScoreA] [int] NULL,
	[LiveTime] [nvarchar](50) NULL,
	[Status] [int] NULL,
	[ShowFace] [bit] NULL,
	[Live] [bit] NULL,
	[CreateDate] [datetime] NULL,
	[CreateBy] [nvarchar](255) NULL,
	[ModifyDate] [datetime] NULL,
	[ModifyName] [nvarchar](255) NULL,
 CONSTRAINT [PK_tblMatchs] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[tblMatchs] ON
INSERT [dbo].[tblMatchs] ([ID], [MatchId], [LeaguaID], [HomeName], [AwayName], [KickoffTime], [ShowTime], [ShowDate], [ScoreH], [ScoreA], [LiveTime], [Status], [ShowFace], [Live], [CreateDate], [CreateBy], [ModifyDate], [ModifyName]) VALUES (1, 1, 1, N'Italy', N'Paraguay', NULL, N'LIVE@M811 02:30AM', CAST(0x00009D9200000000 AS DateTime), 2, 0, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblMatchs] ([ID], [MatchId], [LeaguaID], [HomeName], [AwayName], [KickoffTime], [ShowTime], [ShowDate], [ScoreH], [ScoreA], [LiveTime], [Status], [ShowFace], [Live], [CreateDate], [CreateBy], [ModifyDate], [ModifyName]) VALUES (2, 3, 1, N'Argentina', N'Korea Republic', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblMatchs] ([ID], [MatchId], [LeaguaID], [HomeName], [AwayName], [KickoffTime], [ShowTime], [ShowDate], [ScoreH], [ScoreA], [LiveTime], [Status], [ShowFace], [Live], [CreateDate], [CreateBy], [ModifyDate], [ModifyName]) VALUES (3, 4, 1, N'France', N'Mexico', NULL, N'LIVE@M811 02:30AM', CAST(0x00009D9200000000 AS DateTime), 0, 0, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblMatchs] ([ID], [MatchId], [LeaguaID], [HomeName], [AwayName], [KickoffTime], [ShowTime], [ShowDate], [ScoreH], [ScoreA], [LiveTime], [Status], [ShowFace], [Live], [CreateDate], [CreateBy], [ModifyDate], [ModifyName]) VALUES (4, 5, 1, N'Germany', N'Serbia', NULL, N'LIVE@M811 02:30AM', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblMatchs] ([ID], [MatchId], [LeaguaID], [HomeName], [AwayName], [KickoffTime], [ShowTime], [ShowDate], [ScoreH], [ScoreA], [LiveTime], [Status], [ShowFace], [Live], [CreateDate], [CreateBy], [ModifyDate], [ModifyName]) VALUES (5, 10, 2, N'Nam Dinh', N'Thanh Hoa', NULL, N'LIVE@M811 02:30AM', CAST(0x00009D9200000000 AS DateTime), 10, 0, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblMatchs] ([ID], [MatchId], [LeaguaID], [HomeName], [AwayName], [KickoffTime], [ShowTime], [ShowDate], [ScoreH], [ScoreA], [LiveTime], [Status], [ShowFace], [Live], [CreateDate], [CreateBy], [ModifyDate], [ModifyName]) VALUES (6, 11, 2, N'T&T', N'Binh Duong', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblMatchs] ([ID], [MatchId], [LeaguaID], [HomeName], [AwayName], [KickoffTime], [ShowTime], [ShowDate], [ScoreH], [ScoreA], [LiveTime], [Status], [ShowFace], [Live], [CreateDate], [CreateBy], [ModifyDate], [ModifyName]) VALUES (7, 12, 2, N'Song Lam Nghe An', N'SHB Da Nang', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblMatchs] ([ID], [MatchId], [LeaguaID], [HomeName], [AwayName], [KickoffTime], [ShowTime], [ShowDate], [ScoreH], [ScoreA], [LiveTime], [Status], [ShowFace], [Live], [CreateDate], [CreateBy], [ModifyDate], [ModifyName]) VALUES (8, 20, 3, N'Inter Milan', N'Bayern Munich', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblMatchs] ([ID], [MatchId], [LeaguaID], [HomeName], [AwayName], [KickoffTime], [ShowTime], [ShowDate], [ScoreH], [ScoreA], [LiveTime], [Status], [ShowFace], [Live], [CreateDate], [CreateBy], [ModifyDate], [ModifyName]) VALUES (9, 21, 3, N'Manchester United', N'Chelsea FC', N'08/17 03:00AM', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[tblMatchs] OFF
/****** Object:  StoredProcedure [dbo].[iBet_tblMu_Update]    Script Date: 12/31/2010 17:36:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[iBet_tblMu_Update] 


	@MuId_KeyValues int,


	@MuId int,
	@MuName nvarchar(50)

AS
UPDATE [dbo].[tblMu]
Set
	 [dbo].[tblMu].[MuName]=@MuName
WHERE ((([dbo].[tblMu].[MuId])=@MuId_KeyValues))
GO
/****** Object:  StoredProcedure [dbo].[iBet_tblMu_Insert]    Script Date: 12/31/2010 17:36:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[iBet_tblMu_Insert] 

	@MuId int,
	@MuName nvarchar(50)

AS
INSERT INTO [dbo].[tblMu]
		(
			 [MuId],
			 [MuName]
		)
Values
		(
			@MuId,
			@MuName
		)
GO
/****** Object:  StoredProcedure [dbo].[iBet_tblMu_Gets]    Script Date: 12/31/2010 17:36:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[iBet_tblMu_Gets] 

AS
SELECT 
	[tblMu].MuId,
	[tblMu].MuName
FROM [dbo].[tblMu]
GO
/****** Object:  StoredProcedure [dbo].[iBet_tblMu_Get]    Script Date: 12/31/2010 17:36:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[iBet_tblMu_Get] 

	@MuId int
AS
SELECT 
	MuId,
	MuName
FROM [dbo].[tblMu]
WHERE ((([dbo].[tblMu].[MuId])=@MuId))
GO
/****** Object:  StoredProcedure [dbo].[iBet_tblMu_Delete]    Script Date: 12/31/2010 17:36:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[iBet_tblMu_Delete]

	@MuId int

AS
DELETE
From [dbo].[tblMu]
 WHERE ((([dbo].[tblMu].[MuId])=@MuId))
GO
/****** Object:  StoredProcedure [dbo].[iBet_tblRights_Update]    Script Date: 12/31/2010 17:36:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[iBet_tblRights_Update] 


	@ID_KeyValues int,


	@ID int,
	@ModuleID int,
	@FunctionID int,
	@RightName nvarchar(150),
	@RightDescriptions nvarchar(255)

AS
UPDATE [dbo].[tblRights]
Set
	 [dbo].[tblRights].[ModuleID]=@ModuleID,
	 [dbo].[tblRights].[FunctionID]=@FunctionID,
	 [dbo].[tblRights].[RightName]=@RightName,
	 [dbo].[tblRights].[RightDescriptions]=@RightDescriptions
WHERE ((([dbo].[tblRights].[ID])=@ID_KeyValues))
GO
/****** Object:  StoredProcedure [dbo].[iBet_tblRights_Insert]    Script Date: 12/31/2010 17:36:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[iBet_tblRights_Insert] 

	@ID int output,
	@ModuleID int,
	@FunctionID int,
	@RightName nvarchar(150),
	@RightDescriptions nvarchar(255)

AS
INSERT INTO [dbo].[tblRights]
		(
			 [ModuleID],
			 [FunctionID],
			 [RightName],
			 [RightDescriptions]
		)
Values
		(
			@ModuleID,
			@FunctionID,
			@RightName,
			@RightDescriptions
		)
set @ID=@@IDENTITY
GO
/****** Object:  StoredProcedure [dbo].[iBet_tblRights_Gets]    Script Date: 12/31/2010 17:36:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[iBet_tblRights_Gets] 

AS
SELECT 
	[tblRights].ID,
	[tblRights].ModuleID,
	[tblRights].FunctionID,
	[tblRights].RightName,
	[tblRights].RightDescriptions
FROM [dbo].[tblRights]
GO
/****** Object:  StoredProcedure [dbo].[iBet_tblRights_Get]    Script Date: 12/31/2010 17:36:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[iBet_tblRights_Get] 

	@ID int
AS
SELECT 
	ID,
	ModuleID,
	FunctionID,
	RightName,
	RightDescriptions
FROM [dbo].[tblRights]
WHERE ((([dbo].[tblRights].[ID])=@ID))
GO
/****** Object:  StoredProcedure [dbo].[iBet_tblRights_Delete]    Script Date: 12/31/2010 17:36:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[iBet_tblRights_Delete]

	@ID int

AS
DELETE
From [dbo].[tblRights]
 WHERE ((([dbo].[tblRights].[ID])=@ID))
GO
/****** Object:  StoredProcedure [dbo].[iBet_tblRoles_Update]    Script Date: 12/31/2010 17:36:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[iBet_tblRoles_Update] 


	@ID_KeyValues int,


	@ID int,
	@RoleName nvarchar(150),
	@RoleDescriptions nvarchar(250)

AS
UPDATE [dbo].[tblRoles]
Set
	 [dbo].[tblRoles].[RoleName]=@RoleName,
	 [dbo].[tblRoles].[RoleDescriptions]=@RoleDescriptions
WHERE ((([dbo].[tblRoles].[ID])=@ID_KeyValues))
GO
/****** Object:  StoredProcedure [dbo].[iBet_tblRoles_Insert]    Script Date: 12/31/2010 17:36:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[iBet_tblRoles_Insert] 

	@ID int output,
	@RoleName nvarchar(150),
	@RoleDescriptions nvarchar(250)

AS
INSERT INTO [dbo].[tblRoles]
		(
			 [RoleName],
			 [RoleDescriptions]
		)
Values
		(
			@RoleName,
			@RoleDescriptions
		)
set @ID=@@IDENTITY
GO
/****** Object:  StoredProcedure [dbo].[iBet_tblRoles_Gets]    Script Date: 12/31/2010 17:36:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[iBet_tblRoles_Gets] 

AS
SELECT 
	[tblRoles].ID,
	[tblRoles].RoleName,
	[tblRoles].RoleDescriptions
FROM [dbo].[tblRoles]
GO
/****** Object:  StoredProcedure [dbo].[iBet_tblRoles_Get]    Script Date: 12/31/2010 17:36:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[iBet_tblRoles_Get] 

	@ID int
AS
SELECT 
	ID,
	RoleName,
	RoleDescriptions
FROM [dbo].[tblRoles]
WHERE ((([dbo].[tblRoles].[ID])=@ID))
GO
/****** Object:  StoredProcedure [dbo].[iBet_tblRoles_Delete]    Script Date: 12/31/2010 17:36:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[iBet_tblRoles_Delete]

	@ID int

AS
DELETE
From [dbo].[tblRoles]
 WHERE ((([dbo].[tblRoles].[ID])=@ID))
GO
/****** Object:  StoredProcedure [dbo].[iBet_tblRoleRights_Insert]    Script Date: 12/31/2010 17:36:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[iBet_tblRoleRights_Insert] 

	@RoleID int,
	@RightID int

AS
INSERT INTO [dbo].[tblRoleRights]
		(
			 [RoleID],
			 [RightID]
		)
Values
		(
			@RoleID,
			@RightID
		)
GO
/****** Object:  StoredProcedure [dbo].[iBet_tblRoleRights_Gets]    Script Date: 12/31/2010 17:36:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[iBet_tblRoleRights_Gets] 

AS
SELECT 
	[tblRoleRights].RoleID,
	[tblRoleRights].RightID
FROM [dbo].[tblRoleRights]
GO
/****** Object:  StoredProcedure [dbo].[iBet_tblRoleRights_Get]    Script Date: 12/31/2010 17:36:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[iBet_tblRoleRights_Get] 

	@RoleID int,
	@RightID int
AS
SELECT 
	RoleID,
	RightID
FROM [dbo].[tblRoleRights]
WHERE ((([dbo].[tblRoleRights].[RoleID])=@RoleID))
AND ((([dbo].[tblRoleRights].[RightID])=@RightID))
GO
/****** Object:  StoredProcedure [dbo].[iBet_tblRoleRights_Delete]    Script Date: 12/31/2010 17:36:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[iBet_tblRoleRights_Delete]

	@RoleID int,
	@RightID int

AS
DELETE
From [dbo].[tblRoleRights]
 WHERE ((([dbo].[tblRoleRights].[RoleID])=@RoleID))
 AND ((([dbo].[tblRoleRights].[RightID])=@RightID))
GO
/****** Object:  StoredProcedure [dbo].[iBet_tblAdmins_Update]    Script Date: 12/31/2010 17:36:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[iBet_tblAdmins_Update] 


	@AdminId_KeyValues int,


	@AdminId int,
	@AdminName nvarchar(50),
	@AdminPass nvarchar(50),
	@LastLoginTime datetime,
	@LastLoginIp nvarchar(50),
	@CreateTime datetime

AS
UPDATE [dbo].[tblAdmins]
Set
	 [dbo].[tblAdmins].[AdminName]=@AdminName,
	 [dbo].[tblAdmins].[AdminPass]=@AdminPass,
	 [dbo].[tblAdmins].[LastLoginTime]=@LastLoginTime,
	 [dbo].[tblAdmins].[LastLoginIp]=@LastLoginIp,
	 [dbo].[tblAdmins].[CreateTime]=@CreateTime
WHERE ((([dbo].[tblAdmins].[AdminId])=@AdminId_KeyValues))
GO
/****** Object:  StoredProcedure [dbo].[iBet_tblAdmins_Insert]    Script Date: 12/31/2010 17:36:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[iBet_tblAdmins_Insert] 

	@AdminId int,
	@AdminName nvarchar(50),
	@AdminPass nvarchar(50),
	@LastLoginTime datetime,
	@LastLoginIp nvarchar(50),
	@CreateTime datetime

AS
INSERT INTO [dbo].[tblAdmins]
		(
			 [AdminName],
			 [AdminPass],
			 [LastLoginTime],
			 [LastLoginIp],
			 [CreateTime]
		)
Values
		(
			@AdminName,
			@AdminPass,
			@LastLoginTime,
			@LastLoginIp,
			@CreateTime
		)
GO
/****** Object:  StoredProcedure [dbo].[iBet_tblAdmins_Gets]    Script Date: 12/31/2010 17:36:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[iBet_tblAdmins_Gets] 

AS
SELECT 
	[tblAdmins].AdminId,
	[tblAdmins].AdminName,
	[tblAdmins].AdminPass,
	[tblAdmins].LastLoginTime,
	[tblAdmins].LastLoginIp,
	[tblAdmins].CreateTime
FROM [dbo].[tblAdmins]
GO
/****** Object:  StoredProcedure [dbo].[iBet_tblAdmins_Get]    Script Date: 12/31/2010 17:36:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[iBet_tblAdmins_Get] 

	@AdminId int
AS
SELECT 
	AdminId,
	AdminName,
	AdminPass,
	LastLoginTime,
	LastLoginIp,
	CreateTime
FROM [dbo].[tblAdmins]
WHERE ((([dbo].[tblAdmins].[AdminId])=@AdminId))
GO
/****** Object:  StoredProcedure [dbo].[iBet_tblAdmins_Delete]    Script Date: 12/31/2010 17:36:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[iBet_tblAdmins_Delete]

	@AdminId int

AS
DELETE
From [dbo].[tblAdmins]
 WHERE ((([dbo].[tblAdmins].[AdminId])=@AdminId))
GO
/****** Object:  Table [dbo].[tbldTransferCondition]    Script Date: 12/31/2010 17:36:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbldTransferCondition](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[AccID] [bigint] NULL,
	[OnDay] [nvarchar](50) NULL,
 CONSTRAINT [PK_tbldTransferCondition] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[tbldTransferCondition] ON
INSERT [dbo].[tbldTransferCondition] ([ID], [AccID], [OnDay]) VALUES (1, 4, N'All')
INSERT [dbo].[tbldTransferCondition] ([ID], [AccID], [OnDay]) VALUES (15, 7, N'All')
INSERT [dbo].[tbldTransferCondition] ([ID], [AccID], [OnDay]) VALUES (17, 15, N'All')
INSERT [dbo].[tbldTransferCondition] ([ID], [AccID], [OnDay]) VALUES (18, 35, N'All')
INSERT [dbo].[tbldTransferCondition] ([ID], [AccID], [OnDay]) VALUES (19, 38, N'All')
INSERT [dbo].[tbldTransferCondition] ([ID], [AccID], [OnDay]) VALUES (20, 40, N'All')
INSERT [dbo].[tbldTransferCondition] ([ID], [AccID], [OnDay]) VALUES (21, 47, N'All')
INSERT [dbo].[tbldTransferCondition] ([ID], [AccID], [OnDay]) VALUES (25, 10, N'All')
SET IDENTITY_INSERT [dbo].[tbldTransferCondition] OFF
/****** Object:  StoredProcedure [dbo].[iBet_tblCommission_Update]    Script Date: 12/31/2010 17:36:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[iBet_tblCommission_Update] 


	@ID_KeyValues int,


	@ID int,
	@AccID bigint,
	@NameGroup nvarchar(50),
	@Value float,
	@IsView bit

AS
UPDATE [dbo].[tblCommission]
Set
	 [dbo].[tblCommission].[AccID]=@AccID,
	 [dbo].[tblCommission].[NameGroup]=@NameGroup,
	 [dbo].[tblCommission].[Value]=@Value,
	 [dbo].[tblCommission].[IsView]=@IsView
WHERE ((([dbo].[tblCommission].[ID])=@ID_KeyValues))
GO
/****** Object:  StoredProcedure [dbo].[iBet_tblCommission_Insert]    Script Date: 12/31/2010 17:36:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[iBet_tblCommission_Insert] 

	@ID int output,
	@AccID bigint,
	@NameGroup nvarchar(50),
	@Value float,
	@IsView bit

AS
INSERT INTO [dbo].[tblCommission]
		(
			 [AccID],
			 [NameGroup],
			 [Value],
			 [IsView]
		)
Values
		(
			@AccID,
			@NameGroup,
			@Value,
			@IsView
		)
set @ID=@@IDENTITY
GO
/****** Object:  StoredProcedure [dbo].[iBet_tblCommission_Gets]    Script Date: 12/31/2010 17:36:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[iBet_tblCommission_Gets] 

AS
SELECT 
	[tblCommission].ID,
	[tblCommission].AccID,
	[tblCommission].NameGroup,
	[tblCommission].Value,
	[tblCommission].IsView
FROM [dbo].[tblCommission]
GO
/****** Object:  StoredProcedure [dbo].[iBet_tblCommission_Get]    Script Date: 12/31/2010 17:36:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[iBet_tblCommission_Get] 

	@ID int
AS
SELECT 
	ID,
	AccID,
	NameGroup,
	Value,
	IsView
FROM [dbo].[tblCommission]
WHERE ((([dbo].[tblCommission].[ID])=@ID))
GO
/****** Object:  StoredProcedure [dbo].[iBet_tblCommission_Delete]    Script Date: 12/31/2010 17:36:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[iBet_tblCommission_Delete]

	@ID int

AS
DELETE
From [dbo].[tblCommission]
 WHERE ((([dbo].[tblCommission].[ID])=@ID))
GO
/****** Object:  StoredProcedure [dbo].[iBet_tblBlance_Update]    Script Date: 12/31/2010 17:36:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[iBet_tblBlance_Update] 


	@ID_KeyValues bigint,


	@ID bigint,
	@AccID bigint,
	@CashBalance decimal(18, 2),
	@YesCashBlance decimal(18, 2),
	@TotalBlance decimal(18, 2),
	@YesTotalBlance decimal(18, 2),
	@Outstanding decimal(18, 2),
	@Credit decimal(18, 2),
	@BetCredit decimal(18, 2),
	@CreateDate datetime,
	@modifyDate datetime

AS
UPDATE [dbo].[tblBlance]
Set
	 [dbo].[tblBlance].[AccID]=@AccID,
	 [dbo].[tblBlance].[CashBalance]=@CashBalance,
	 [dbo].[tblBlance].[YesCashBlance]=@YesCashBlance,
	 [dbo].[tblBlance].[TotalBlance]=@TotalBlance,
	 [dbo].[tblBlance].[YesTotalBlance]=@YesTotalBlance,
	 [dbo].[tblBlance].[Outstanding]=@Outstanding,
	 [dbo].[tblBlance].[Credit]=@Credit,
	 [dbo].[tblBlance].[BetCredit]=@BetCredit,
	 [dbo].[tblBlance].[CreateDate]=@CreateDate,
	 [dbo].[tblBlance].[modifyDate]=@modifyDate
WHERE ((([dbo].[tblBlance].[ID])=@ID_KeyValues))
GO
/****** Object:  StoredProcedure [dbo].[iBet_tblBlance_Insert]    Script Date: 12/31/2010 17:36:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[iBet_tblBlance_Insert] 

	@ID bigint output,
	@AccID bigint,
	@CashBalance decimal(18, 2),
	@YesCashBlance decimal(18, 2),
	@TotalBlance decimal(18, 2),
	@YesTotalBlance decimal(18, 2),
	@Outstanding decimal(18, 2),
	@Credit decimal(18, 2),
	@BetCredit decimal(18, 2),
	@CreateDate datetime,
	@modifyDate datetime

AS
INSERT INTO [dbo].[tblBlance]
		(
			 [AccID],
			 [CashBalance],
			 [YesCashBlance],
			 [TotalBlance],
			 [YesTotalBlance],
			 [Outstanding],
			 [Credit],
			 [BetCredit],
			 [CreateDate],
			 [modifyDate]
		)
Values
		(
			@AccID,
			@CashBalance,
			@YesCashBlance,
			@TotalBlance,
			@YesTotalBlance,
			@Outstanding,
			@Credit,
			@BetCredit,
			@CreateDate,
			@modifyDate
		)
set @ID=@@IDENTITY
GO
/****** Object:  StoredProcedure [dbo].[iBet_tblBlance_Gets]    Script Date: 12/31/2010 17:36:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[iBet_tblBlance_Gets] 

AS
SELECT 
	[tblBlance].ID,
	[tblBlance].AccID,
	[tblBlance].CashBalance,
	[tblBlance].YesCashBlance,
	[tblBlance].TotalBlance,
	[tblBlance].YesTotalBlance,
	[tblBlance].Outstanding,
	[tblBlance].Credit,
	[tblBlance].BetCredit,
	[tblBlance].CreateDate,
	[tblBlance].modifyDate
FROM [dbo].[tblBlance]
GO
/****** Object:  StoredProcedure [dbo].[iBet_tblBlance_Get]    Script Date: 12/31/2010 17:36:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[iBet_tblBlance_Get] 

	@ID bigint
AS
SELECT 
	ID,
	AccID,
	CashBalance,
	YesCashBlance,
	TotalBlance,
	YesTotalBlance,
	Outstanding,
	Credit,
	BetCredit,
	CreateDate,
	modifyDate
FROM [dbo].[tblBlance]
WHERE ((([dbo].[tblBlance].[ID])=@ID))
GO
/****** Object:  StoredProcedure [dbo].[iBet_tblBlance_Delete]    Script Date: 12/31/2010 17:36:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[iBet_tblBlance_Delete]

	@ID bigint

AS
DELETE
From [dbo].[tblBlance]
 WHERE ((([dbo].[tblBlance].[ID])=@ID))
GO
/****** Object:  Table [dbo].[tblBetType]    Script Date: 12/31/2010 17:36:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblBetType](
	[ID] [int] NOT NULL,
	[NameType] [nvarchar](255) NULL,
	[Description] [nvarchar](255) NULL,
 CONSTRAINT [PK_tblBetType] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[tblBetType] ([ID], [NameType], [Description]) VALUES (1, N'Handicap', N'Full Time Handicap')
INSERT [dbo].[tblBetType] ([ID], [NameType], [Description]) VALUES (2, N'Odd/Even', N'Full Time Odd/Even')
INSERT [dbo].[tblBetType] ([ID], [NameType], [Description]) VALUES (3, N'Over/Under', N'Full Time Over/Under')
INSERT [dbo].[tblBetType] ([ID], [NameType], [Description]) VALUES (4, N'Correct Score', N'Correct Score')
INSERT [dbo].[tblBetType] ([ID], [NameType], [Description]) VALUES (5, N'FT.1 X 2', N'Full Time 1X2')
INSERT [dbo].[tblBetType] ([ID], [NameType], [Description]) VALUES (6, N'Total Goal', N'Total Goal')
INSERT [dbo].[tblBetType] ([ID], [NameType], [Description]) VALUES (7, N'Handicap', N'1st Half Handicap')
INSERT [dbo].[tblBetType] ([ID], [NameType], [Description]) VALUES (8, N'Over/Under', N'1st Half Over/Under')
INSERT [dbo].[tblBetType] ([ID], [NameType], [Description]) VALUES (10, N'Outright', N'Outright')
INSERT [dbo].[tblBetType] ([ID], [NameType], [Description]) VALUES (12, N'Odd/Even', N'1st Half Odd/Even')
INSERT [dbo].[tblBetType] ([ID], [NameType], [Description]) VALUES (14, N'FG/LG ', N'Firt Goal / Last Goal')
INSERT [dbo].[tblBetType] ([ID], [NameType], [Description]) VALUES (15, N'HT.1 X 2', N'1st Half 1X2')
INSERT [dbo].[tblBetType] ([ID], [NameType], [Description]) VALUES (16, N'HT/FT', N'Haft Time/Full Time')
INSERT [dbo].[tblBetType] ([ID], [NameType], [Description]) VALUES (20, N'Money Line', N'Money Line')
/****** Object:  StoredProcedure [dbo].[iBet_tblBets_Test]    Script Date: 12/31/2010 17:36:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		SonVT
-- Create date: 18/06/10
-- Description:	Test
-- =============================================
CREATE PROCEDURE [dbo].[iBet_tblBets_Test] 
	-- Add the parameters for the stored procedure here
	@BetID int = 0
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT *
	FROM [ibet].[dbo].[tblBets]
END
GO
/****** Object:  Table [dbo].[tblBets]    Script Date: 12/31/2010 17:36:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblBets](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[AccID] [bigint] NULL,
	[MatchID] [bigint] NULL,
	[BetTypeID] [int] NULL,
	[ParentID] [bigint] NULL,
	[SGMId] [bigint] NULL,
	[GMId] [bigint] NULL,
	[MasterId] [bigint] NULL,
	[AgentId] [bigint] NULL,
	[StrAcc] [nvarchar](50) NULL,
	[BetType] [nvarchar](255) NULL,
	[LeaguaName] [nvarchar](255) NULL,
	[Home] [nvarchar](255) NULL,
	[Away] [nvarchar](255) NULL,
	[Time] [nvarchar](255) NULL,
	[TransTime] [datetime] NULL,
	[Code] [nvarchar](50) NULL,
	[Choice] [nvarchar](50) NULL,
	[Hdp] [float] NULL,
	[Odds] [float] NULL,
	[Stake] [decimal](18, 2) NULL,
	[Status] [nvarchar](50) NULL,
	[IPBet] [nvarchar](50) NULL,
	[PotentialWin] [float] NULL,
	[Win] [float] NULL,
	[IsLiveBet] [bit] NULL,
	[ResultLiveBet] [nvarchar](50) NULL,
	[ResultTime] [datetime] NULL,
	[FinalScore] [nvarchar](50) NULL,
	[PTSGM] [float] NULL,
	[PTGM] [float] NULL,
	[PTMaster] [float] NULL,
	[PTAgent] [float] NULL,
	[CommSGM] [float] NULL,
	[CommGM] [float] NULL,
	[CommMaster] [float] NULL,
	[CommAgent] [float] NULL,
	[CommMember] [float] NULL,
	[OTValue] [nchar](10) NULL,
	[NameEvent] [nvarchar](150) NULL,
	[ReportDate] [datetime] NULL,
 CONSTRAINT [PK_tblBets] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Time live' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tblBets', @level2type=N'COLUMN',@level2name=N'Time'
GO
SET IDENTITY_INSERT [dbo].[tblBets] ON
INSERT [dbo].[tblBets] ([ID], [AccID], [MatchID], [BetTypeID], [ParentID], [SGMId], [GMId], [MasterId], [AgentId], [StrAcc], [BetType], [LeaguaName], [Home], [Away], [Time], [TransTime], [Code], [Choice], [Hdp], [Odds], [Stake], [Status], [IPBet], [PotentialWin], [Win], [IsLiveBet], [ResultLiveBet], [ResultTime], [FinalScore], [PTSGM], [PTGM], [PTMaster], [PTAgent], [CommSGM], [CommGM], [CommMaster], [CommAgent], [CommMember], [OTValue], [NameEvent], [ReportDate]) VALUES (26, 16, 3, 4, 15, 4, 7, 10, 15, N'SCKE909001', N'Correct Score', N'2010 FIFA World Cup South Africa', N'Argentina', N'Korea Republic', N'LIVE 07:30PM', CAST(0x00009D9700000000 AS DateTime), N'0367', N'1-0', 0, 5.51, CAST(3.00 AS Decimal(18, 2)), N'Running', N'117.4.201.205', 16.53, -3, 0, N'0 - 0', CAST(0x00009D97017BF650 AS DateTime), N'-', 30, 5, 65, 0, 1, 1, 1, 1, 1, N'MY        ', N'Soccer', CAST(0x00009DB900000000 AS DateTime))
INSERT [dbo].[tblBets] ([ID], [AccID], [MatchID], [BetTypeID], [ParentID], [SGMId], [GMId], [MasterId], [AgentId], [StrAcc], [BetType], [LeaguaName], [Home], [Away], [Time], [TransTime], [Code], [Choice], [Hdp], [Odds], [Stake], [Status], [IPBet], [PotentialWin], [Win], [IsLiveBet], [ResultLiveBet], [ResultTime], [FinalScore], [PTSGM], [PTGM], [PTMaster], [PTAgent], [CommSGM], [CommGM], [CommMaster], [CommAgent], [CommMember], [OTValue], [NameEvent], [ReportDate]) VALUES (27, 17, 7, 1, 15, 4, 7, 10, 15, N'SKCE909002', N'Handicap', N'Japan U20', N'Jubilo Iwata', N'Tokyo Verdy', N'LIVE 02:30AM', CAST(0x00009D950040CE3C AS DateTime), N'3333', N'Japan U20', 0, 0.81, CAST(5.00 AS Decimal(18, 2)), N'Lose', N'117.4.201.205', 4.05, -5, 0, N'0 - 0', CAST(0x00009D9500C56B74 AS DateTime), N'0-1', 30, 5, 65, 0, 0.25, 0.25, 0.25, 0.25, 0.25, N'MY        ', N'Soccer', CAST(0x00009DB900000000 AS DateTime))
INSERT [dbo].[tblBets] ([ID], [AccID], [MatchID], [BetTypeID], [ParentID], [SGMId], [GMId], [MasterId], [AgentId], [StrAcc], [BetType], [LeaguaName], [Home], [Away], [Time], [TransTime], [Code], [Choice], [Hdp], [Odds], [Stake], [Status], [IPBet], [PotentialWin], [Win], [IsLiveBet], [ResultLiveBet], [ResultTime], [FinalScore], [PTSGM], [PTGM], [PTMaster], [PTAgent], [CommSGM], [CommGM], [CommMaster], [CommAgent], [CommMember], [OTValue], [NameEvent], [ReportDate]) VALUES (28, 16, 1, 1, 15, 4, 7, 10, 15, N'SCKE909001', N'Over/Under', N'2010 FIFA World Cup South Africa', N'Italy', N'Paraguay', N'LIVE 02:30AM', CAST(0x00009D950040CE3C AS DateTime), N'0360', N'Italy', 2, 0.83, CAST(5.00 AS Decimal(18, 2)), N'Won', N'117.4.219.36', 4.15, 4.15, 1, N'0 - 0', CAST(0x00009D9500C56B74 AS DateTime), N'2-2', 30, 5, 65, 0, 0.25, 0.25, 0.25, 0.25, 0.25, N'MY        ', N'Soccer', CAST(0x00009DB900000000 AS DateTime))
INSERT [dbo].[tblBets] ([ID], [AccID], [MatchID], [BetTypeID], [ParentID], [SGMId], [GMId], [MasterId], [AgentId], [StrAcc], [BetType], [LeaguaName], [Home], [Away], [Time], [TransTime], [Code], [Choice], [Hdp], [Odds], [Stake], [Status], [IPBet], [PotentialWin], [Win], [IsLiveBet], [ResultLiveBet], [ResultTime], [FinalScore], [PTSGM], [PTGM], [PTMaster], [PTAgent], [CommSGM], [CommGM], [CommMaster], [CommAgent], [CommMember], [OTValue], [NameEvent], [ReportDate]) VALUES (29, 18, 1, 3, 15, 4, 7, 10, 15, N'SCKE9090D1', N'Handicap', N'2010 FIFA World Cup South Africa', N'Italy', N'Paraguay', N'LIVE 02:30AM', CAST(0x00009D950040CE3C AS DateTime), N'0389', N'Over', 0.5, 0.83, CAST(5.00 AS Decimal(18, 2)), N'Draw', N'117.4.219.36', 4.15, 0, 1, N'0 - 0', CAST(0x00009D9500C56B74 AS DateTime), N'2-1', 30, 5, 65, 0, 0.25, 0.25, 0.25, 0.25, 0.25, N'MY        ', N'Soccer', CAST(0x00009DB900000000 AS DateTime))
INSERT [dbo].[tblBets] ([ID], [AccID], [MatchID], [BetTypeID], [ParentID], [SGMId], [GMId], [MasterId], [AgentId], [StrAcc], [BetType], [LeaguaName], [Home], [Away], [Time], [TransTime], [Code], [Choice], [Hdp], [Odds], [Stake], [Status], [IPBet], [PotentialWin], [Win], [IsLiveBet], [ResultLiveBet], [ResultTime], [FinalScore], [PTSGM], [PTGM], [PTMaster], [PTAgent], [CommSGM], [CommGM], [CommMaster], [CommAgent], [CommMember], [OTValue], [NameEvent], [ReportDate]) VALUES (30, 16, 5, 5, 15, 4, 7, 10, 15, N'SCKE909001', N'FG/LG', N'2010 FIFA World Cup South Africa', N'Germany', N'Serbia', N'LIVE 07:30PM', CAST(0x00009D98017CD3CC AS DateTime), N'0263', N'ft.2', 0, 1.55, CAST(3.00 AS Decimal(18, 2)), N'Reject', N'117.4.220.198', 4.65, -3, 0, N'0 - 0', CAST(0x00009D9801848B94 AS DateTime), N'2-2', 30, 10, 60, 0, 1, 1, 1, 1, 1, N'MY        ', N'Soccer', CAST(0x00009DB900000000 AS DateTime))
INSERT [dbo].[tblBets] ([ID], [AccID], [MatchID], [BetTypeID], [ParentID], [SGMId], [GMId], [MasterId], [AgentId], [StrAcc], [BetType], [LeaguaName], [Home], [Away], [Time], [TransTime], [Code], [Choice], [Hdp], [Odds], [Stake], [Status], [IPBet], [PotentialWin], [Win], [IsLiveBet], [ResultLiveBet], [ResultTime], [FinalScore], [PTSGM], [PTGM], [PTMaster], [PTAgent], [CommSGM], [CommGM], [CommMaster], [CommAgent], [CommMember], [OTValue], [NameEvent], [ReportDate]) VALUES (31, 18, 6, 12, 15, 4, 7, 10, 15, N'SCKE9090D1', N'1X2', N'2010 FIFA World Cup South Africa', N'Ghana', N'Australia', N'06/18/2010 03:19:49 PM', CAST(0x00009D9900FCA29C AS DateTime), N'0267', N'Odd', 0, 2.06, CAST(3.00 AS Decimal(18, 2)), N'Reject', N'117.4.220.198', 6.18, -3, 0, N'0 - 0', CAST(0x00009D9901086078 AS DateTime), N'2-1', 30, 5, 65, 0, 1, 1, 1, 1, 1, N'MY        ', N'Soccer', CAST(0x00009DB900000000 AS DateTime))
INSERT [dbo].[tblBets] ([ID], [AccID], [MatchID], [BetTypeID], [ParentID], [SGMId], [GMId], [MasterId], [AgentId], [StrAcc], [BetType], [LeaguaName], [Home], [Away], [Time], [TransTime], [Code], [Choice], [Hdp], [Odds], [Stake], [Status], [IPBet], [PotentialWin], [Win], [IsLiveBet], [ResultLiveBet], [ResultTime], [FinalScore], [PTSGM], [PTGM], [PTMaster], [PTAgent], [CommSGM], [CommGM], [CommMaster], [CommAgent], [CommMember], [OTValue], [NameEvent], [ReportDate]) VALUES (32, 18, 8, 1, 15, 4, 7, 10, 15, N'SCKE9090D1', N'Handicap', N'2010 FIFA World Cup South Africa', N'Paraguay', N'Japan', N'LIVE 07:30PM', CAST(0x00009DA300000000 AS DateTime), N'0330', N'Paraguay ', -0.25, 0.75, CAST(5.00 AS Decimal(18, 2)), N'Lose', N'117.4.200.225', 3.75, -2.5, 0, N'0 - 0', CAST(0x00009DA4015E3E80 AS DateTime), N'0 - 0', 30, 5, 65, 0, 1, 0.6, 0.4, 0.25, 0.25, N'MY        ', N'Soccer', CAST(0x00009DB900000000 AS DateTime))
INSERT [dbo].[tblBets] ([ID], [AccID], [MatchID], [BetTypeID], [ParentID], [SGMId], [GMId], [MasterId], [AgentId], [StrAcc], [BetType], [LeaguaName], [Home], [Away], [Time], [TransTime], [Code], [Choice], [Hdp], [Odds], [Stake], [Status], [IPBet], [PotentialWin], [Win], [IsLiveBet], [ResultLiveBet], [ResultTime], [FinalScore], [PTSGM], [PTGM], [PTMaster], [PTAgent], [CommSGM], [CommGM], [CommMaster], [CommAgent], [CommMember], [OTValue], [NameEvent], [ReportDate]) VALUES (33, 16, 9, 1, 15, 4, 7, 10, 15, N'SCKE909001', N'Handicap', N'CLUB FRIENDLY', N'Sparta Praha', N'Gloria Bistrita', N'LIVE 07:30PM', CAST(0x00009DA400565DC4 AS DateTime), N'3326', N'Sparta Praha', -0.5, 0.99, CAST(5.00 AS Decimal(18, 2)), N'Lose', N'117.4.200.225', 4.95, -5, 1, N'0 - 0', CAST(0x00009DA401620C54 AS DateTime), N'1 - 1', 30, 5, 65, 0, 1, 0.6, 0.4, 0.25, 0.25, N'MY        ', N'Soccer', CAST(0x00009DB900000000 AS DateTime))
INSERT [dbo].[tblBets] ([ID], [AccID], [MatchID], [BetTypeID], [ParentID], [SGMId], [GMId], [MasterId], [AgentId], [StrAcc], [BetType], [LeaguaName], [Home], [Away], [Time], [TransTime], [Code], [Choice], [Hdp], [Odds], [Stake], [Status], [IPBet], [PotentialWin], [Win], [IsLiveBet], [ResultLiveBet], [ResultTime], [FinalScore], [PTSGM], [PTGM], [PTMaster], [PTAgent], [CommSGM], [CommGM], [CommMaster], [CommAgent], [CommMember], [OTValue], [NameEvent], [ReportDate]) VALUES (34, 18, 9, 1, 15, 4, 7, 10, 15, N'SCKE9090D1', N'Handicap', N'CLUB FRIENDLY', N'Sparta Praha', N'Gloria Bistrita', N'LIVE 07:30PM', CAST(0x00009DA400565DC4 AS DateTime), N'3326', N'Sparta Praha', -0.5, -0.95, CAST(5.00 AS Decimal(18, 2)), N'Lose', N'117.4.200.225', 5, -4.75, 1, N'0 - 0', CAST(0x00009DA40162F45C AS DateTime), N'1 - 1', 30, 5, 65, 0, 1, 0.6, 0.4, 0.25, 0.25, N'MY        ', N'Soccer', CAST(0x00009DB900000000 AS DateTime))
INSERT [dbo].[tblBets] ([ID], [AccID], [MatchID], [BetTypeID], [ParentID], [SGMId], [GMId], [MasterId], [AgentId], [StrAcc], [BetType], [LeaguaName], [Home], [Away], [Time], [TransTime], [Code], [Choice], [Hdp], [Odds], [Stake], [Status], [IPBet], [PotentialWin], [Win], [IsLiveBet], [ResultLiveBet], [ResultTime], [FinalScore], [PTSGM], [PTGM], [PTMaster], [PTAgent], [CommSGM], [CommGM], [CommMaster], [CommAgent], [CommMember], [OTValue], [NameEvent], [ReportDate]) VALUES (35, 16, 9, 1, 15, 4, 7, 10, 15, N'SCKE909001', N'Handicap', N'CLUB FRIENDLY', N'Sparta Praha', N'Gloria Bistrita', N'LIVE 07:30PM', CAST(0x00009DA400565DC4 AS DateTime), N'3326', N'Sparta Praha', -0.5, 0.99, CAST(5.00 AS Decimal(18, 2)), N'Running', N'117.4.200.225', 4.95, -5, 1, N'0 - 0', CAST(0x00009DA401620C54 AS DateTime), N'1 - 1', 30, 5, 65, 0, 1, 0.6, 0.4, 0.25, 0.25, N'MY        ', N'Soccer', CAST(0x00009DB900000000 AS DateTime))
INSERT [dbo].[tblBets] ([ID], [AccID], [MatchID], [BetTypeID], [ParentID], [SGMId], [GMId], [MasterId], [AgentId], [StrAcc], [BetType], [LeaguaName], [Home], [Away], [Time], [TransTime], [Code], [Choice], [Hdp], [Odds], [Stake], [Status], [IPBet], [PotentialWin], [Win], [IsLiveBet], [ResultLiveBet], [ResultTime], [FinalScore], [PTSGM], [PTGM], [PTMaster], [PTAgent], [CommSGM], [CommGM], [CommMaster], [CommAgent], [CommMember], [OTValue], [NameEvent], [ReportDate]) VALUES (36, 18, 9, 1, 15, 4, 7, 10, 15, N'SCKE9090D1', N'Handicap', N'CLUB FRIENDLY', N'Sparta Praha', N'Gloria Bistrita', N'LIVE 07:30PM', CAST(0x00009DA400565DC4 AS DateTime), N'3326', N'Sparta Praha', -0.5, -0.95, CAST(5.00 AS Decimal(18, 2)), N'Running', N'117.4.200.225', 5, -4.75, 1, N'0 - 0', CAST(0x00009DA40162F45C AS DateTime), N'1 - 1', 30, 5, 65, 0, 1, 0.6, 0.4, 0.25, 0.25, N'MY        ', N'Soccer', CAST(0x00009DB900000000 AS DateTime))
INSERT [dbo].[tblBets] ([ID], [AccID], [MatchID], [BetTypeID], [ParentID], [SGMId], [GMId], [MasterId], [AgentId], [StrAcc], [BetType], [LeaguaName], [Home], [Away], [Time], [TransTime], [Code], [Choice], [Hdp], [Odds], [Stake], [Status], [IPBet], [PotentialWin], [Win], [IsLiveBet], [ResultLiveBet], [ResultTime], [FinalScore], [PTSGM], [PTGM], [PTMaster], [PTAgent], [CommSGM], [CommGM], [CommMaster], [CommAgent], [CommMember], [OTValue], [NameEvent], [ReportDate]) VALUES (37, 16, 16, 3, 15, 4, 7, 10, 15, N'SCKE909001', N'Over/Under', N'2010 FIFA World Cup South Africa', N'Brazil', N'Netherlands', N'LIVE 10:00PM', CAST(0x00009DA60180A524 AS DateTime), N'0332', N'Over', 2.25, -0.955, CAST(5.00 AS Decimal(18, 2)), N'Running', N'117.4.199.137', 5, -4.78, 0, N'0 - 0', CAST(0x00009DA60182FD24 AS DateTime), N'-', 30, 5, 65, 0, 1, 0.6, 0.4, 0.25, 0.25, N'MY        ', N'Soccer', CAST(0x00009DB900000000 AS DateTime))
INSERT [dbo].[tblBets] ([ID], [AccID], [MatchID], [BetTypeID], [ParentID], [SGMId], [GMId], [MasterId], [AgentId], [StrAcc], [BetType], [LeaguaName], [Home], [Away], [Time], [TransTime], [Code], [Choice], [Hdp], [Odds], [Stake], [Status], [IPBet], [PotentialWin], [Win], [IsLiveBet], [ResultLiveBet], [ResultTime], [FinalScore], [PTSGM], [PTGM], [PTMaster], [PTAgent], [CommSGM], [CommGM], [CommMaster], [CommAgent], [CommMember], [OTValue], [NameEvent], [ReportDate]) VALUES (38, 16, 18, 3, 15, 4, 7, 10, 15, N'SCKE909001', N'Over/Under', N'2010 FIFA World Cup South Africa - SPECIALS', N'Brazil No.of Corners', N'Netherlands No.of Corners', N'LIVE 10:00PM', CAST(0x00009DA60180A524 AS DateTime), N'0602', N'Over', 10, -0.88, CAST(10.00 AS Decimal(18, 2)), N'Running', N'117.4.199.137', 10, -8.8, 0, N'0 - 0', CAST(0x00009DA601851708 AS DateTime), N'-', 30, 5, 65, 0, 1, 0.6, 0.4, 0.25, 0.25, N'MY        ', N'Soccer', CAST(0x00009DB900000000 AS DateTime))
INSERT [dbo].[tblBets] ([ID], [AccID], [MatchID], [BetTypeID], [ParentID], [SGMId], [GMId], [MasterId], [AgentId], [StrAcc], [BetType], [LeaguaName], [Home], [Away], [Time], [TransTime], [Code], [Choice], [Hdp], [Odds], [Stake], [Status], [IPBet], [PotentialWin], [Win], [IsLiveBet], [ResultLiveBet], [ResultTime], [FinalScore], [PTSGM], [PTGM], [PTMaster], [PTAgent], [CommSGM], [CommGM], [CommMaster], [CommAgent], [CommMember], [OTValue], [NameEvent], [ReportDate]) VALUES (39, 16, 16, 2, 15, 4, 7, 10, 15, N'SCKE909001', N'Odd/Even', N'2010 FIFA World Cup South Africa', N'Brazil', N'Netherlands', N'LIVE 10:00PM', CAST(0x00009DA60180A524 AS DateTime), N'0332', N'ODD', 0, 0.995, CAST(3.00 AS Decimal(18, 2)), N'Running', N'117.4.199.137', 2.99, -3, 0, N'0 - 0', CAST(0x00009DA601851708 AS DateTime), N'-', 30, 5, 65, 0, 1, 0.6, 0.4, 0.25, 0.25, N'MY        ', N'Soccer', CAST(0x00009DB900000000 AS DateTime))
INSERT [dbo].[tblBets] ([ID], [AccID], [MatchID], [BetTypeID], [ParentID], [SGMId], [GMId], [MasterId], [AgentId], [StrAcc], [BetType], [LeaguaName], [Home], [Away], [Time], [TransTime], [Code], [Choice], [Hdp], [Odds], [Stake], [Status], [IPBet], [PotentialWin], [Win], [IsLiveBet], [ResultLiveBet], [ResultTime], [FinalScore], [PTSGM], [PTGM], [PTMaster], [PTAgent], [CommSGM], [CommGM], [CommMaster], [CommAgent], [CommMember], [OTValue], [NameEvent], [ReportDate]) VALUES (40, 16, 16, 5, 15, 4, 7, 10, 15, N'SCKE909001', N'FT.1 X 2', N'2010 FIFA World Cup South Africa', N'Brazil', N'Netherlands', N'LIVE 10:00PM', CAST(0x00009DA60180A524 AS DateTime), N'0332', N'1', 0, 1.97, CAST(3.00 AS Decimal(18, 2)), N'Running', N'117.4.199.137', 5.91, -3, 0, N'0 - 0', CAST(0x00009DA601851708 AS DateTime), N'-', 30, 5, 65, 0, 1, 0.6, 0.4, 0.25, 0.25, N'MY        ', N'Soccer', CAST(0x00009DB900000000 AS DateTime))
INSERT [dbo].[tblBets] ([ID], [AccID], [MatchID], [BetTypeID], [ParentID], [SGMId], [GMId], [MasterId], [AgentId], [StrAcc], [BetType], [LeaguaName], [Home], [Away], [Time], [TransTime], [Code], [Choice], [Hdp], [Odds], [Stake], [Status], [IPBet], [PotentialWin], [Win], [IsLiveBet], [ResultLiveBet], [ResultTime], [FinalScore], [PTSGM], [PTGM], [PTMaster], [PTAgent], [CommSGM], [CommGM], [CommMaster], [CommAgent], [CommMember], [OTValue], [NameEvent], [ReportDate]) VALUES (41, 16, 16, 4, 15, 4, 7, 10, 15, N'SCKE909001', N'Correct Score', N'2010 FIFA World Cup South Africa', N'Brazil', N'Netherlands', N'LIVE 10:00PM', CAST(0x00009DA60180A524 AS DateTime), N'0332', N'2:1', 0, 8, CAST(3.00 AS Decimal(18, 2)), N'Running', N'117.4.199.137', 24, -3, 0, N'0 - 0', CAST(0x00009DA601851708 AS DateTime), N'-', 30, 5, 65, 0, 1, 0.6, 0.4, 0.25, 0.25, N'MY        ', N'Soccer', CAST(0x00009DB900000000 AS DateTime))
INSERT [dbo].[tblBets] ([ID], [AccID], [MatchID], [BetTypeID], [ParentID], [SGMId], [GMId], [MasterId], [AgentId], [StrAcc], [BetType], [LeaguaName], [Home], [Away], [Time], [TransTime], [Code], [Choice], [Hdp], [Odds], [Stake], [Status], [IPBet], [PotentialWin], [Win], [IsLiveBet], [ResultLiveBet], [ResultTime], [FinalScore], [PTSGM], [PTGM], [PTMaster], [PTAgent], [CommSGM], [CommGM], [CommMaster], [CommAgent], [CommMember], [OTValue], [NameEvent], [ReportDate]) VALUES (42, 16, 16, 16, 15, 4, 7, 10, 15, N'SCKE909001', N'HT/FT', N'2010 FIFA World Cup South Africa', N'Brazil', N'Netherlands', N'LIVE 10:00PM', CAST(0x00009DA60180A524 AS DateTime), N'0332', N'HH', 0, 3.2, CAST(3.00 AS Decimal(18, 2)), N'Running', N'117.4.199.137', 9.6, -3, 0, N'0 - 0', CAST(0x00009DA601851708 AS DateTime), N'-', 30, 5, 65, 0, 1, 0.6, 0.4, 0.25, 0.25, N'MY        ', N'Soccer', CAST(0x00009DB900000000 AS DateTime))
INSERT [dbo].[tblBets] ([ID], [AccID], [MatchID], [BetTypeID], [ParentID], [SGMId], [GMId], [MasterId], [AgentId], [StrAcc], [BetType], [LeaguaName], [Home], [Away], [Time], [TransTime], [Code], [Choice], [Hdp], [Odds], [Stake], [Status], [IPBet], [PotentialWin], [Win], [IsLiveBet], [ResultLiveBet], [ResultTime], [FinalScore], [PTSGM], [PTGM], [PTMaster], [PTAgent], [CommSGM], [CommGM], [CommMaster], [CommAgent], [CommMember], [OTValue], [NameEvent], [ReportDate]) VALUES (43, 16, 16, 14, 15, 4, 7, 10, 15, N'SCKE909001', N'FG/LG', N'2010 FIFA World Cup South Africa', N'Brazil', N'Netherlands', N'LIVE 10:00PM', CAST(0x00009DA60180A524 AS DateTime), N'0332', N'Home FG', 0, 1.65, CAST(3.00 AS Decimal(18, 2)), N'Running', N'117.4.199.137', 4.95, -3, 0, N'0 - 0', CAST(0x00009DA601851708 AS DateTime), N'-', 30, 5, 65, 0, 1, 0.6, 0.4, 0.25, 0.25, N'MY        ', N'Soccer', CAST(0x00009DB900000000 AS DateTime))
INSERT [dbo].[tblBets] ([ID], [AccID], [MatchID], [BetTypeID], [ParentID], [SGMId], [GMId], [MasterId], [AgentId], [StrAcc], [BetType], [LeaguaName], [Home], [Away], [Time], [TransTime], [Code], [Choice], [Hdp], [Odds], [Stake], [Status], [IPBet], [PotentialWin], [Win], [IsLiveBet], [ResultLiveBet], [ResultTime], [FinalScore], [PTSGM], [PTGM], [PTMaster], [PTAgent], [CommSGM], [CommGM], [CommMaster], [CommAgent], [CommMember], [OTValue], [NameEvent], [ReportDate]) VALUES (44, 16, 0, 10, 15, 4, 7, 10, 15, N'SCKE909001', N'Outright', N'2010 FIFA World Cup South Africa', N'', N'', N'', CAST(0x00009DA700009150 AS DateTime), N'0332', N'Brazil', 0, 3.35, CAST(2.00 AS Decimal(18, 2)), N'Running', N'117.4.199.137', 6.7, -2, 0, N'0 - 0', CAST(0x00009DA601851708 AS DateTime), N'-', 30, 5, 65, 0, 1, 0.6, 0.4, 0.25, 0.25, N'MY        ', N'Soccer', CAST(0x00009DB900000000 AS DateTime))
INSERT [dbo].[tblBets] ([ID], [AccID], [MatchID], [BetTypeID], [ParentID], [SGMId], [GMId], [MasterId], [AgentId], [StrAcc], [BetType], [LeaguaName], [Home], [Away], [Time], [TransTime], [Code], [Choice], [Hdp], [Odds], [Stake], [Status], [IPBet], [PotentialWin], [Win], [IsLiveBet], [ResultLiveBet], [ResultTime], [FinalScore], [PTSGM], [PTGM], [PTMaster], [PTAgent], [CommSGM], [CommGM], [CommMaster], [CommAgent], [CommMember], [OTValue], [NameEvent], [ReportDate]) VALUES (45, 16, 1, 3, 15, 4, 7, 10, 15, N'SCKE909001', N'Handicap', N'2010 FIFA World Cup South Africa', N'Italy', N'Paraguay', N'LIVE 02:30AM', CAST(0x00009D950040CE3C AS DateTime), N'0389', N'Over', 0.5, 0.83, CAST(5.00 AS Decimal(18, 2)), N'Won', N'117.4.219.36', 4.15, 4.15, 1, N'0 - 0', CAST(0x00009D9500C56B74 AS DateTime), N'2-1', 30, 5, 65, 0, 0.25, 0.25, 0.25, 0.25, 0.25, N'MY        ', N'Soccer', CAST(0x00009DB900000000 AS DateTime))
SET IDENTITY_INSERT [dbo].[tblBets] OFF
/****** Object:  Table [dbo].[tblBalance]    Script Date: 12/31/2010 17:36:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblBalance](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[AccID] [bigint] NULL,
	[CashBalance] [decimal](18, 2) NULL,
	[YesCashBalance] [decimal](18, 2) NULL,
	[TotalBalance] [decimal](18, 2) NULL,
	[YesTotalBalance] [decimal](18, 2) NULL,
	[Outstanding] [decimal](18, 2) NULL,
	[Credit] [decimal](18, 2) NULL,
	[BetCredit] [decimal](18, 2) NULL,
	[CreateDate] [datetime] NULL,
	[modifyDate] [datetime] NULL,
 CONSTRAINT [PK_tblBlance] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[tblBalance] ON
INSERT [dbo].[tblBalance] ([ID], [AccID], [CashBalance], [YesCashBalance], [TotalBalance], [YesTotalBalance], [Outstanding], [Credit], [BetCredit], [CreateDate], [modifyDate]) VALUES (1, 15, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(50000.00 AS Decimal(18, 2)), CAST(50000.00 AS Decimal(18, 2)), CAST(0x00009D9E01867FF8 AS DateTime), CAST(0x00009D9E01867FF8 AS DateTime))
INSERT [dbo].[tblBalance] ([ID], [AccID], [CashBalance], [YesCashBalance], [TotalBalance], [YesTotalBalance], [Outstanding], [Credit], [BetCredit], [CreateDate], [modifyDate]) VALUES (10, 4, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(11.00 AS Decimal(18, 2)), CAST(20688000.00 AS Decimal(18, 2)), CAST(0x00009D9E01867FF8 AS DateTime), CAST(0x00009D9E01867FF8 AS DateTime))
INSERT [dbo].[tblBalance] ([ID], [AccID], [CashBalance], [YesCashBalance], [TotalBalance], [YesTotalBalance], [Outstanding], [Credit], [BetCredit], [CreateDate], [modifyDate]) VALUES (11, 7, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(800000.00 AS Decimal(18, 2)), CAST(800000.00 AS Decimal(18, 2)), CAST(0x00009DA800B6840C AS DateTime), CAST(0x00009DA800B6840C AS DateTime))
INSERT [dbo].[tblBalance] ([ID], [AccID], [CashBalance], [YesCashBalance], [TotalBalance], [YesTotalBalance], [Outstanding], [Credit], [BetCredit], [CreateDate], [modifyDate]) VALUES (12, 10, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(90000.00 AS Decimal(18, 2)), CAST(90000.00 AS Decimal(18, 2)), CAST(0x00009D9F00A39528 AS DateTime), CAST(0x00009D9F00A39528 AS DateTime))
INSERT [dbo].[tblBalance] ([ID], [AccID], [CashBalance], [YesCashBalance], [TotalBalance], [YesTotalBalance], [Outstanding], [Credit], [BetCredit], [CreateDate], [modifyDate]) VALUES (16, 16, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(1.00 AS Decimal(18, 2)), CAST(300.00 AS Decimal(18, 2)), CAST(0x00009D9E01867FF8 AS DateTime), CAST(0x00009D9E01867FF8 AS DateTime))
INSERT [dbo].[tblBalance] ([ID], [AccID], [CashBalance], [YesCashBalance], [TotalBalance], [YesTotalBalance], [Outstanding], [Credit], [BetCredit], [CreateDate], [modifyDate]) VALUES (17, 17, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(1000.00 AS Decimal(18, 2)), CAST(1000.00 AS Decimal(18, 2)), CAST(0x00009D9E01867FF8 AS DateTime), CAST(0x00009D9E01867FF8 AS DateTime))
INSERT [dbo].[tblBalance] ([ID], [AccID], [CashBalance], [YesCashBalance], [TotalBalance], [YesTotalBalance], [Outstanding], [Credit], [BetCredit], [CreateDate], [modifyDate]) VALUES (18, 18, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(200.00 AS Decimal(18, 2)), CAST(200.00 AS Decimal(18, 2)), CAST(0x00009D9E01867FF8 AS DateTime), CAST(0x00009D9E01867FF8 AS DateTime))
INSERT [dbo].[tblBalance] ([ID], [AccID], [CashBalance], [YesCashBalance], [TotalBalance], [YesTotalBalance], [Outstanding], [Credit], [BetCredit], [CreateDate], [modifyDate]) VALUES (19, 35, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(1.00 AS Decimal(18, 2)), CAST(80000.00 AS Decimal(18, 2)), CAST(0x00009DA800C000CC AS DateTime), CAST(0x00009DA800C000CC AS DateTime))
INSERT [dbo].[tblBalance] ([ID], [AccID], [CashBalance], [YesCashBalance], [TotalBalance], [YesTotalBalance], [Outstanding], [Credit], [BetCredit], [CreateDate], [modifyDate]) VALUES (20, 38, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0x00009DA901105290 AS DateTime), CAST(0x00009DA901105290 AS DateTime))
INSERT [dbo].[tblBalance] ([ID], [AccID], [CashBalance], [YesCashBalance], [TotalBalance], [YesTotalBalance], [Outstanding], [Credit], [BetCredit], [CreateDate], [modifyDate]) VALUES (21, 40, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(50.00 AS Decimal(18, 2)), CAST(50.00 AS Decimal(18, 2)), CAST(0x00009DAD0115F559 AS DateTime), CAST(0x00009DAD0115F559 AS DateTime))
INSERT [dbo].[tblBalance] ([ID], [AccID], [CashBalance], [YesCashBalance], [TotalBalance], [YesTotalBalance], [Outstanding], [Credit], [BetCredit], [CreateDate], [modifyDate]) VALUES (22, 47, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0x00009DAD0182B29E AS DateTime), CAST(0x00009DAD0182B29E AS DateTime))
INSERT [dbo].[tblBalance] ([ID], [AccID], [CashBalance], [YesCashBalance], [TotalBalance], [YesTotalBalance], [Outstanding], [Credit], [BetCredit], [CreateDate], [modifyDate]) VALUES (23, 50, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(5.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0x00009DAE009296DD AS DateTime), CAST(0x00009DAE009296DD AS DateTime))
INSERT [dbo].[tblBalance] ([ID], [AccID], [CashBalance], [YesCashBalance], [TotalBalance], [YesTotalBalance], [Outstanding], [Credit], [BetCredit], [CreateDate], [modifyDate]) VALUES (24, 53, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(400.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0x00009DC200F812F2 AS DateTime), CAST(0x00009DC200F812F2 AS DateTime))
INSERT [dbo].[tblBalance] ([ID], [AccID], [CashBalance], [YesCashBalance], [TotalBalance], [YesTotalBalance], [Outstanding], [Credit], [BetCredit], [CreateDate], [modifyDate]) VALUES (28, 57, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(500.00 AS Decimal(18, 2)), CAST(500.00 AS Decimal(18, 2)), CAST(0x00009DC3000FBA40 AS DateTime), CAST(0x00009DC3000FBA40 AS DateTime))
INSERT [dbo].[tblBalance] ([ID], [AccID], [CashBalance], [YesCashBalance], [TotalBalance], [YesTotalBalance], [Outstanding], [Credit], [BetCredit], [CreateDate], [modifyDate]) VALUES (29, 58, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0x00009DC30011FD86 AS DateTime), CAST(0x00009DC30011FD86 AS DateTime))
INSERT [dbo].[tblBalance] ([ID], [AccID], [CashBalance], [YesCashBalance], [TotalBalance], [YesTotalBalance], [Outstanding], [Credit], [BetCredit], [CreateDate], [modifyDate]) VALUES (30, 59, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(6666200.00 AS Decimal(18, 2)), CAST(200.00 AS Decimal(18, 2)), CAST(0x00009DC3001258B6 AS DateTime), CAST(0x00009DC3001258B6 AS DateTime))
SET IDENTITY_INSERT [dbo].[tblBalance] OFF
/****** Object:  StoredProcedure [dbo].[iBet_tblMatchBetSetting_Update]    Script Date: 12/31/2010 17:36:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[iBet_tblMatchBetSetting_Update] 


	@ID_KeyValues int,


	@ID int,
	@MatchID bigint,
	@Minbet float,
	@Maxbet float,
	@MaxPerMath float

AS
UPDATE [dbo].[tblMatchBetSetting]
Set
	 [dbo].[tblMatchBetSetting].[MatchID]=@MatchID,
	 [dbo].[tblMatchBetSetting].[Minbet]=@Minbet,
	 [dbo].[tblMatchBetSetting].[Maxbet]=@Maxbet,
	 [dbo].[tblMatchBetSetting].[MaxPerMath]=@MaxPerMath
WHERE ((([dbo].[tblMatchBetSetting].[ID])=@ID_KeyValues))
GO
/****** Object:  StoredProcedure [dbo].[iBet_tblMatchBetSetting_Insert]    Script Date: 12/31/2010 17:36:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[iBet_tblMatchBetSetting_Insert] 

	@ID int output,
	@MatchID bigint,
	@Minbet float,
	@Maxbet float,
	@MaxPerMath float

AS
INSERT INTO [dbo].[tblMatchBetSetting]
		(
			 [MatchID],
			 [Minbet],
			 [Maxbet],
			 [MaxPerMath]
		)
Values
		(
			@MatchID,
			@Minbet,
			@Maxbet,
			@MaxPerMath
		)
set @ID=@@IDENTITY
GO
/****** Object:  StoredProcedure [dbo].[iBet_tblMatchBetSetting_Gets]    Script Date: 12/31/2010 17:36:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[iBet_tblMatchBetSetting_Gets] 

AS
SELECT 
	[tblMatchBetSetting].ID,
	[tblMatchBetSetting].MatchID,
	[tblMatchBetSetting].Minbet,
	[tblMatchBetSetting].Maxbet,
	[tblMatchBetSetting].MaxPerMath
FROM [dbo].[tblMatchBetSetting]
GO
/****** Object:  StoredProcedure [dbo].[iBet_tblMatchBetSetting_Get]    Script Date: 12/31/2010 17:36:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[iBet_tblMatchBetSetting_Get] 

	@ID int
AS
SELECT 
	ID,
	MatchID,
	Minbet,
	Maxbet,
	MaxPerMath
FROM [dbo].[tblMatchBetSetting]
WHERE ((([dbo].[tblMatchBetSetting].[ID])=@ID))
GO
/****** Object:  StoredProcedure [dbo].[iBet_tblMatchBetSetting_Delete]    Script Date: 12/31/2010 17:36:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[iBet_tblMatchBetSetting_Delete]

	@ID int

AS
DELETE
From [dbo].[tblMatchBetSetting]
 WHERE ((([dbo].[tblMatchBetSetting].[ID])=@ID))
GO
/****** Object:  Table [dbo].[tblMatch]    Script Date: 12/31/2010 17:36:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblMatch](
	[MatchId] [bigint] NOT NULL,
	[MatchCode] [varchar](50) NULL,
	[HomeName] [varchar](150) NULL,
	[AwayName] [varchar](150) NULL,
	[KickoffTime] [varchar](50) NULL,
	[StatsId] [bigint] NULL,
	[SportRadar] [int] NULL,
	[StreamingId] [bigint] NULL,
	[ShowTime] [varchar](50) NULL,
	[Favorite] [bit] NULL,
	[FlagLive] [bit] NULL,
	[LivePeriod] [int] NULL,
	[CsStatus] [int] NULL,
	[InjuryTime] [int] NULL,
	[ScoreH] [int] NULL,
	[ScoreA] [int] NULL,
	[RedCardH] [int] NULL,
	[RedCardA] [int] NULL,
	[MoreCount] [int] NULL,
	[MaxPerMatch] [decimal](18, 2) NULL,
	[intVisibleState] [int] NULL,
	[CurrentState] [nvarchar](50) NULL,
 CONSTRAINT [PK_tblMatch] PRIMARY KEY CLUSTERED 
(
	[MatchId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Admin setting' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tblMatch', @level2type=N'COLUMN',@level2name=N'MaxPerMatch'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ALLOW/NOTALLOW/CLOSED' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tblMatch', @level2type=N'COLUMN',@level2name=N'CurrentState'
GO
INSERT [dbo].[tblMatch] ([MatchId], [MatchCode], [HomeName], [AwayName], [KickoffTime], [StatsId], [SportRadar], [StreamingId], [ShowTime], [Favorite], [FlagLive], [LivePeriod], [CsStatus], [InjuryTime], [ScoreH], [ScoreA], [RedCardH], [RedCardA], [MoreCount], [MaxPerMatch], [intVisibleState], [CurrentState]) VALUES (21, N'0987', N'Manchester United', N'Chelsea FC', N'08/17 03:00AM', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, N'ALLOW')
/****** Object:  Table [dbo].[tblListChar]    Script Date: 12/31/2010 17:36:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblListChar](
	[ID] [nvarchar](50) NOT NULL,
	[Name] [nvarchar](50) NULL
) ON [PRIMARY]
GO
INSERT [dbo].[tblListChar] ([ID], [Name]) VALUES (N'0', N'0')
INSERT [dbo].[tblListChar] ([ID], [Name]) VALUES (N'1', N'1')
INSERT [dbo].[tblListChar] ([ID], [Name]) VALUES (N'2', N'2')
INSERT [dbo].[tblListChar] ([ID], [Name]) VALUES (N'3', N'3')
INSERT [dbo].[tblListChar] ([ID], [Name]) VALUES (N'4', N'4')
INSERT [dbo].[tblListChar] ([ID], [Name]) VALUES (N'5', N'5')
INSERT [dbo].[tblListChar] ([ID], [Name]) VALUES (N'6', N'6')
INSERT [dbo].[tblListChar] ([ID], [Name]) VALUES (N'7', N'7')
INSERT [dbo].[tblListChar] ([ID], [Name]) VALUES (N'8', N'8')
INSERT [dbo].[tblListChar] ([ID], [Name]) VALUES (N'9', N'9')
INSERT [dbo].[tblListChar] ([ID], [Name]) VALUES (N'A', N'A')
INSERT [dbo].[tblListChar] ([ID], [Name]) VALUES (N'B', N'B')
INSERT [dbo].[tblListChar] ([ID], [Name]) VALUES (N'C', N'C')
INSERT [dbo].[tblListChar] ([ID], [Name]) VALUES (N'D', N'D')
INSERT [dbo].[tblListChar] ([ID], [Name]) VALUES (N'E', N'E')
INSERT [dbo].[tblListChar] ([ID], [Name]) VALUES (N'F', N'F')
INSERT [dbo].[tblListChar] ([ID], [Name]) VALUES (N'G', N'G')
INSERT [dbo].[tblListChar] ([ID], [Name]) VALUES (N'H', N'H')
INSERT [dbo].[tblListChar] ([ID], [Name]) VALUES (N'I', N'I')
INSERT [dbo].[tblListChar] ([ID], [Name]) VALUES (N'J', N'J')
INSERT [dbo].[tblListChar] ([ID], [Name]) VALUES (N'K', N'K')
INSERT [dbo].[tblListChar] ([ID], [Name]) VALUES (N'L', N'L')
INSERT [dbo].[tblListChar] ([ID], [Name]) VALUES (N'M', N'M')
INSERT [dbo].[tblListChar] ([ID], [Name]) VALUES (N'N', N'N')
INSERT [dbo].[tblListChar] ([ID], [Name]) VALUES (N'O', N'O')
INSERT [dbo].[tblListChar] ([ID], [Name]) VALUES (N'P', N'P')
INSERT [dbo].[tblListChar] ([ID], [Name]) VALUES (N'Q', N'Q')
INSERT [dbo].[tblListChar] ([ID], [Name]) VALUES (N'R', N'R')
INSERT [dbo].[tblListChar] ([ID], [Name]) VALUES (N'S', N'S')
INSERT [dbo].[tblListChar] ([ID], [Name]) VALUES (N'T', N'T')
INSERT [dbo].[tblListChar] ([ID], [Name]) VALUES (N'U', N'U')
INSERT [dbo].[tblListChar] ([ID], [Name]) VALUES (N'V', N'V')
INSERT [dbo].[tblListChar] ([ID], [Name]) VALUES (N'W', N'W')
INSERT [dbo].[tblListChar] ([ID], [Name]) VALUES (N'X', N'X')
INSERT [dbo].[tblListChar] ([ID], [Name]) VALUES (N'Y', N'Y')
INSERT [dbo].[tblListChar] ([ID], [Name]) VALUES (N'Z', N'Z')
/****** Object:  Table [dbo].[tblLeague]    Script Date: 12/31/2010 17:36:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblLeague](
	[LeaguaId] [int] NOT NULL,
	[LeaguaName] [nvarchar](255) NULL,
	[LeagueStatus] [bit] NULL,
 CONSTRAINT [PK_League] PRIMARY KEY CLUSTERED 
(
	[LeaguaId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[tblLeague] ([LeaguaId], [LeaguaName], [LeagueStatus]) VALUES (1, N'2010 FIFA World Cup South Africa', 1)
INSERT [dbo].[tblLeague] ([LeaguaId], [LeaguaName], [LeagueStatus]) VALUES (2, N'V-League', 1)
INSERT [dbo].[tblLeague] ([LeaguaId], [LeaguaName], [LeagueStatus]) VALUES (3, N'Champion League', 1)
INSERT [dbo].[tblLeague] ([LeaguaId], [LeaguaName], [LeagueStatus]) VALUES (4, N'CLUB FRIENDLY', 1)
INSERT [dbo].[tblLeague] ([LeaguaId], [LeaguaName], [LeagueStatus]) VALUES (5, N'TESTING (Betting Prohibited Area!!) - SOCCER', 1)
/****** Object:  Table [dbo].[tblLanguegeSystem]    Script Date: 12/31/2010 17:36:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblLanguegeSystem](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ShortName] [nvarchar](50) NULL,
	[LanguagerName] [nvarchar](255) NULL,
 CONSTRAINT [PK_tblLanguegeSystem] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[tblLanguegeSystem] ON
INSERT [dbo].[tblLanguegeSystem] ([ID], [ShortName], [LanguagerName]) VALUES (1, N'en', N'English')
INSERT [dbo].[tblLanguegeSystem] ([ID], [ShortName], [LanguagerName]) VALUES (2, N'cn', N'China')
SET IDENTITY_INSERT [dbo].[tblLanguegeSystem] OFF
/****** Object:  Table [dbo].[tblGroupComm]    Script Date: 12/31/2010 17:36:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblGroupComm](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ComGroupName] [nvarchar](50) NULL,
	[Value] [float] NULL,
	[CreateDate] [datetime] NULL,
	[CreateBy] [bigint] NULL,
	[ModifyDate] [datetime] NULL,
	[ModifyBy] [bigint] NULL,
 CONSTRAINT [PK_tblGroupComm] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblFunctions]    Script Date: 12/31/2010 17:36:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblFunctions](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ModuleID] [int] NULL,
	[FunctionName] [nvarchar](100) NULL,
	[FunctionTitle] [nvarchar](255) NULL,
	[FunctionDescription] [nvarchar](200) NULL,
	[FunctionURL] [nvarchar](255) NULL,
	[IsVisible] [bit] NULL,
	[Priority] [int] NULL,
 CONSTRAINT [PK_tblFunctions] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[tblFunctions] ON
INSERT [dbo].[tblFunctions] ([ID], [ModuleID], [FunctionName], [FunctionTitle], [FunctionDescription], [FunctionURL], [IsVisible], [Priority]) VALUES (4, 1, N'HDPOU', N'Handicap/Over Under/Live', N'HANDICAP/OVER UNDER/LIVE', N'~/TotalBets/HDPOU.aspx', 1, 1)
INSERT [dbo].[tblFunctions] ([ID], [ModuleID], [FunctionName], [FunctionTitle], [FunctionDescription], [FunctionURL], [IsVisible], [Priority]) VALUES (5, 1, N'Total Goal', N'Total Goal', N'Total Goal', N'~/TotalBets/TotalGoal.aspx', 1, 4)
INSERT [dbo].[tblFunctions] ([ID], [ModuleID], [FunctionName], [FunctionTitle], [FunctionDescription], [FunctionURL], [IsVisible], [Priority]) VALUES (6, 1, N'OddEven1x2', N'Odd/Even + 1x2', N'ODD/EVEN + 1 X 2', N'~/TotalBets/OddEven1x2.aspx', 1, 2)
INSERT [dbo].[tblFunctions] ([ID], [ModuleID], [FunctionName], [FunctionTitle], [FunctionDescription], [FunctionURL], [IsVisible], [Priority]) VALUES (7, 1, N'BetList', N'Correct Score', N'BET LIST', N'~/BetList/BetList.aspx?bettype=4&type=Bettype', 1, 3)
INSERT [dbo].[tblFunctions] ([ID], [ModuleID], [FunctionName], [FunctionTitle], [FunctionDescription], [FunctionURL], [IsVisible], [Priority]) VALUES (8, 1, N'MixParlay', N'Mix Parlay', N'MIX PARLAY', N'~/BetList/BetList.aspx?type=MixParlay', 1, 5)
INSERT [dbo].[tblFunctions] ([ID], [ModuleID], [FunctionName], [FunctionTitle], [FunctionDescription], [FunctionURL], [IsVisible], [Priority]) VALUES (9, 1, N'Outright', N'Outright', N'OUTRIGHT', N'~/TotalBets/Outright.aspx', 1, 6)
INSERT [dbo].[tblFunctions] ([ID], [ModuleID], [FunctionName], [FunctionTitle], [FunctionDescription], [FunctionURL], [IsVisible], [Priority]) VALUES (10, 1, N'HTFT', N'HT/FT', N'HT/FT', N'~/TotalBets/HTFT.aspx', 1, 7)
INSERT [dbo].[tblFunctions] ([ID], [ModuleID], [FunctionName], [FunctionTitle], [FunctionDescription], [FunctionURL], [IsVisible], [Priority]) VALUES (11, 1, N'FGLG', N'FG/LG', N'FG/LG', N'~/TotalBets/FGLG.aspx', 1, 8)
INSERT [dbo].[tblFunctions] ([ID], [ModuleID], [FunctionName], [FunctionTitle], [FunctionDescription], [FunctionURL], [IsVisible], [Priority]) VALUES (12, 1, N'NextGoal', N'Next Goal', N'NEXT GOAL', N'~/TotalBets/NextGoal.aspx', 1, 9)
INSERT [dbo].[tblFunctions] ([ID], [ModuleID], [FunctionName], [FunctionTitle], [FunctionDescription], [FunctionURL], [IsVisible], [Priority]) VALUES (13, 1, N'HorseRacing', N'Horse Racing', N'HORSE RACING', N'~/TotalBets/Horseracing.aspx', 1, 10)
INSERT [dbo].[tblFunctions] ([ID], [ModuleID], [FunctionName], [FunctionTitle], [FunctionDescription], [FunctionURL], [IsVisible], [Priority]) VALUES (14, 2, N'Forecast.HDPOU', N'Handicap/Over Under/Live', N'[League]', N'~/Forecast/MasterForecast.aspx', 1, 1)
INSERT [dbo].[tblFunctions] ([ID], [ModuleID], [FunctionName], [FunctionTitle], [FunctionDescription], [FunctionURL], [IsVisible], [Priority]) VALUES (15, 2, N'Forecast.1x2', N'1 X 2', N'1 X 2', N'~/Forecast/ForeCast1X2.aspx', 1, 2)
INSERT [dbo].[tblFunctions] ([ID], [ModuleID], [FunctionName], [FunctionTitle], [FunctionDescription], [FunctionURL], [IsVisible], [Priority]) VALUES (16, 3, N'MemberWinLoss', N'Member Win Loss', N'MEMBER WIN LOSS', N'~/Report/MatchResultEntered.aspx', 1, 1)
INSERT [dbo].[tblFunctions] ([ID], [ModuleID], [FunctionName], [FunctionTitle], [FunctionDescription], [FunctionURL], [IsVisible], [Priority]) VALUES (17, 7, N'Balance', N'Balance', N'BALANCE', N'~/CreditBalance/CreditBalance.aspx', 1, 1)
INSERT [dbo].[tblFunctions] ([ID], [ModuleID], [FunctionName], [FunctionTitle], [FunctionDescription], [FunctionURL], [IsVisible], [Priority]) VALUES (18, 7, N'Transfer', N'Transfer', N'MULTIPLE TRANSFER', N'~/Transfer/MultipleTransfer.aspx', 1, 2)
INSERT [dbo].[tblFunctions] ([ID], [ModuleID], [FunctionName], [FunctionTitle], [FunctionDescription], [FunctionURL], [IsVisible], [Priority]) VALUES (19, 7, N'ChangePassword', N'Change Password', N'CHANGE PASSWORD', N'~/MemberInfo/ChangePassword.aspx', 1, 3)
INSERT [dbo].[tblFunctions] ([ID], [ModuleID], [FunctionName], [FunctionTitle], [FunctionDescription], [FunctionURL], [IsVisible], [Priority]) VALUES (20, 7, N'Logout', N'Log Out', N'Log Out', N'~/MemberInfo/Logout.aspx', 1, 4)
INSERT [dbo].[tblFunctions] ([ID], [ModuleID], [FunctionName], [FunctionTitle], [FunctionDescription], [FunctionURL], [IsVisible], [Priority]) VALUES (21, 3, N'MemberWinLossDetail', N'Member Win Loss Detail', N'MEMBER WIN LOSS DETAIL', N'~/Report/WinLossDetailAgent.aspx', 1, 2)
INSERT [dbo].[tblFunctions] ([ID], [ModuleID], [FunctionName], [FunctionTitle], [FunctionDescription], [FunctionURL], [IsVisible], [Priority]) VALUES (22, 3, N'MemberOutstanding', N'Member Outstanding', N'MEMBER OUTSTANDING', N'~/Report/MemberMiscInfo.aspx', 1, 3)
INSERT [dbo].[tblFunctions] ([ID], [ModuleID], [FunctionName], [FunctionTitle], [FunctionDescription], [FunctionURL], [IsVisible], [Priority]) VALUES (23, 3, N'MatchWinLoss', N'Match Win Loss', N'MATCH WIN LOSS', N'~/Report/MatchWinLossAgent.aspx', 1, 4)
INSERT [dbo].[tblFunctions] ([ID], [ModuleID], [FunctionName], [FunctionTitle], [FunctionDescription], [FunctionURL], [IsVisible], [Priority]) VALUES (24, 3, N'MatchWinLossDetail', N'Match Win Loss Detail', N'MATCH WIN LOSS DETAIL', N'~/Report/MatchWinLossDetail.aspx', 1, 5)
INSERT [dbo].[tblFunctions] ([ID], [ModuleID], [FunctionName], [FunctionTitle], [FunctionDescription], [FunctionURL], [IsVisible], [Priority]) VALUES (25, 3, N'WinLossByBetType', N'Win Loss By Bet Type', N'WIN LOSS BY BET TYPE', N'~/Report/WinLossByBettype.aspx', 1, 6)
INSERT [dbo].[tblFunctions] ([ID], [ModuleID], [FunctionName], [FunctionTitle], [FunctionDescription], [FunctionURL], [IsVisible], [Priority]) VALUES (26, 3, N'CommissionByBetType', N'Commission By Bet Type', N'COMMISSION BY BET TYPE', N'~/Report/CommissionByBettype.aspx', 1, 7)
INSERT [dbo].[tblFunctions] ([ID], [ModuleID], [FunctionName], [FunctionTitle], [FunctionDescription], [FunctionURL], [IsVisible], [Priority]) VALUES (27, 3, N'HorseRacingCommission', N'Horse Racing Commission', N'HORSE RACING COMMISSION', N'~/Report/RptCommissionHR.aspx', 1, 8)
INSERT [dbo].[tblFunctions] ([ID], [ModuleID], [FunctionName], [FunctionTitle], [FunctionDescription], [FunctionURL], [IsVisible], [Priority]) VALUES (28, 3, N'CacelledBets', N'Cancelled Bets', N'VOID/RERECTED BET LIST (LAST 3 DAYS)', N'~/Report/CancelBetList.aspx', 1, 9)
INSERT [dbo].[tblFunctions] ([ID], [ModuleID], [FunctionName], [FunctionTitle], [FunctionDescription], [FunctionURL], [IsVisible], [Priority]) VALUES (29, 3, N'Statement', N'Statement', N'STATEMENT', N'~/Report/Statement.aspx', 1, 10)
INSERT [dbo].[tblFunctions] ([ID], [ModuleID], [FunctionName], [FunctionTitle], [FunctionDescription], [FunctionURL], [IsVisible], [Priority]) VALUES (30, 3, N'Results', N'Results', N'RESULTS', N'~/Report/Result.aspx', 1, 11)
INSERT [dbo].[tblFunctions] ([ID], [ModuleID], [FunctionName], [FunctionTitle], [FunctionDescription], [FunctionURL], [IsVisible], [Priority]) VALUES (31, 4, N'NewMember', N'New Member', N'ADD NEW MEMBER', N'~/MemberInfo/AddNewMemberSingle.aspx', 1, 1)
INSERT [dbo].[tblFunctions] ([ID], [ModuleID], [FunctionName], [FunctionTitle], [FunctionDescription], [FunctionURL], [IsVisible], [Priority]) VALUES (32, 4, N'SubAccount', N'Sub Account', N'SUB ACCOUNT', N'~/MemberInfo/SubAccList.aspx', 1, 2)
INSERT [dbo].[tblFunctions] ([ID], [ModuleID], [FunctionName], [FunctionTitle], [FunctionDescription], [FunctionURL], [IsVisible], [Priority]) VALUES (35, 4, N'CustomerList', N'Customer List', N'CUSTOMER LIST', N'~/MemberInfo/DownlineList.aspx', 1, 3)
INSERT [dbo].[tblFunctions] ([ID], [ModuleID], [FunctionName], [FunctionTitle], [FunctionDescription], [FunctionURL], [IsVisible], [Priority]) VALUES (36, 4, N'CreditBalance', N'Credit/Balance', N'Customer List |Credit/Balance', N'~/MemberInfo/CreditBalance.aspx', 1, 4)
INSERT [dbo].[tblFunctions] ([ID], [ModuleID], [FunctionName], [FunctionTitle], [FunctionDescription], [FunctionURL], [IsVisible], [Priority]) VALUES (37, 4, N'PositionTaking', N'Position Taking (%)', N'POSITION TAKING (%)', N'~/MemberInfo/PositionTaking.aspx', 1, 5)
INSERT [dbo].[tblFunctions] ([ID], [ModuleID], [FunctionName], [FunctionTitle], [FunctionDescription], [FunctionURL], [IsVisible], [Priority]) VALUES (38, 4, N'MemberCommission', N'Member Commission', N'MEMBER COMMISSION', N'~/MemberInfo/MemberCommission.aspx', 1, 6)
INSERT [dbo].[tblFunctions] ([ID], [ModuleID], [FunctionName], [FunctionTitle], [FunctionDescription], [FunctionURL], [IsVisible], [Priority]) VALUES (39, 4, N'New GM', N'New GM', N'ADD NEW GM', N'~/GroupInfo/AddGM.aspx', 1, 1)
INSERT [dbo].[tblFunctions] ([ID], [ModuleID], [FunctionName], [FunctionTitle], [FunctionDescription], [FunctionURL], [IsVisible], [Priority]) VALUES (40, 4, N'NewMaster', N'New Master', N'ADD NEW MASTER', N'~/GroupInfo/AddMater.aspx', 1, 1)
INSERT [dbo].[tblFunctions] ([ID], [ModuleID], [FunctionName], [FunctionTitle], [FunctionDescription], [FunctionURL], [IsVisible], [Priority]) VALUES (41, 4, N'NewAgent', N'New Agent', N'ADD NEW AGENT', N'~/GroupInfo/AddAgent.aspx', 1, 1)
INSERT [dbo].[tblFunctions] ([ID], [ModuleID], [FunctionName], [FunctionTitle], [FunctionDescription], [FunctionURL], [IsVisible], [Priority]) VALUES (42, 4, N'GMList', N'GM List', N'GM LIST', N'~/MemberInfo/DownlineListSGM.aspx', 1, 2)
INSERT [dbo].[tblFunctions] ([ID], [ModuleID], [FunctionName], [FunctionTitle], [FunctionDescription], [FunctionURL], [IsVisible], [Priority]) VALUES (43, 4, N'MasterList', N'Master Agent List', N'MASTER LIST', N'~/MemberInfo/DownlineListSGM.aspx', 1, 2)
INSERT [dbo].[tblFunctions] ([ID], [ModuleID], [FunctionName], [FunctionTitle], [FunctionDescription], [FunctionURL], [IsVisible], [Priority]) VALUES (44, 4, N'AgentList', N'Agent List', N'AGENT LIST', N'~/MemberInfo/DownlineListSGM.aspx', 1, 2)
INSERT [dbo].[tblFunctions] ([ID], [ModuleID], [FunctionName], [FunctionTitle], [FunctionDescription], [FunctionURL], [IsVisible], [Priority]) VALUES (45, 3, N'MasterWinLoss', N'Master Win Loss', N'MASTER WIN LOSS', N'~/Report/MatchResultEntered.aspx', 1, 1)
INSERT [dbo].[tblFunctions] ([ID], [ModuleID], [FunctionName], [FunctionTitle], [FunctionDescription], [FunctionURL], [IsVisible], [Priority]) VALUES (46, 3, N'MasterWinLossDetail', N'Master Win Loss Detail', N'MASTER WIN LOSS DETAIL', N'~/Report/WinLossDetailAgent.aspx', 1, 2)
INSERT [dbo].[tblFunctions] ([ID], [ModuleID], [FunctionName], [FunctionTitle], [FunctionDescription], [FunctionURL], [IsVisible], [Priority]) VALUES (47, 3, N'MasterOutstanding', N'Master Outstanding', N'MASTER OUTSTANDING', N'~/Report/MemberMiscInfo.aspx', 1, 3)
INSERT [dbo].[tblFunctions] ([ID], [ModuleID], [FunctionName], [FunctionTitle], [FunctionDescription], [FunctionURL], [IsVisible], [Priority]) VALUES (48, 3, N'GMWinLoss', N'GM Win Loss', N'GM WIN LOSS', N'~/Report/MatchResultEntered.aspx', 1, 1)
INSERT [dbo].[tblFunctions] ([ID], [ModuleID], [FunctionName], [FunctionTitle], [FunctionDescription], [FunctionURL], [IsVisible], [Priority]) VALUES (49, 3, N'GMWinLossDetail', N'GM Win Loss Detail', N'GM WIN LOSS DETAIL', N'~/Report/WinLossDetailAgent.aspx', 1, 2)
INSERT [dbo].[tblFunctions] ([ID], [ModuleID], [FunctionName], [FunctionTitle], [FunctionDescription], [FunctionURL], [IsVisible], [Priority]) VALUES (50, 3, N'GMOutstanding', N'GM Outstanding', N'GM OUTSTANDING', N'~/Report/MemberMiscInfo.aspx', 1, 3)
INSERT [dbo].[tblFunctions] ([ID], [ModuleID], [FunctionName], [FunctionTitle], [FunctionDescription], [FunctionURL], [IsVisible], [Priority]) VALUES (51, 3, N'AgentWinLoss', N'Agent Win Loss', N'AGENT WIN LOSS', N'~/Report/MatchResultEntered.aspx', 1, 1)
INSERT [dbo].[tblFunctions] ([ID], [ModuleID], [FunctionName], [FunctionTitle], [FunctionDescription], [FunctionURL], [IsVisible], [Priority]) VALUES (52, 3, N'AgentWinLossDetail', N'Agent Win Loss Detail', N'AGENT WIN LOSS DETAIL', N'~/Report/WinLossDetailAgent.aspx', 1, 2)
INSERT [dbo].[tblFunctions] ([ID], [ModuleID], [FunctionName], [FunctionTitle], [FunctionDescription], [FunctionURL], [IsVisible], [Priority]) VALUES (53, 3, N'AgentOutstanding', N'Agent Outstanding', N'AGENT OUTSTANDING', N'~/Report/MemberMiscInfo.aspx', 1, 3)
INSERT [dbo].[tblFunctions] ([ID], [ModuleID], [FunctionName], [FunctionTitle], [FunctionDescription], [FunctionURL], [IsVisible], [Priority]) VALUES (54, 4, N'SGM Commission', N'Member Commission', N'SGM COMMISSION', N'~/MemberInfo/MemberCommission.aspx', 1, 6)
INSERT [dbo].[tblFunctions] ([ID], [ModuleID], [FunctionName], [FunctionTitle], [FunctionDescription], [FunctionURL], [IsVisible], [Priority]) VALUES (55, 4, N'GMCommission', N'Member Commission', N'GM COMMISSION', N'~/MemberInfo/MemberCommission.aspx', 1, 6)
INSERT [dbo].[tblFunctions] ([ID], [ModuleID], [FunctionName], [FunctionTitle], [FunctionDescription], [FunctionURL], [IsVisible], [Priority]) VALUES (56, 4, N'MasterCommission', N'Member Commission', N'MASTER COMMISSION', N'~/MemberInfo/MemberCommission.aspx', 1, 6)
INSERT [dbo].[tblFunctions] ([ID], [ModuleID], [FunctionName], [FunctionTitle], [FunctionDescription], [FunctionURL], [IsVisible], [Priority]) VALUES (57, 4, N'AgentCommission', N'Member Commission', N'AGENT COMMISSION', N'~/MemberInfo/MemberCommission.aspx', 1, 6)
SET IDENTITY_INSERT [dbo].[tblFunctions] OFF
/****** Object:  Table [dbo].[tblFavorite]    Script Date: 12/31/2010 17:36:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblFavorite](
	[FavoriteId] [bigint] IDENTITY(1,1) NOT NULL,
	[MatchId] [bigint] NULL,
	[MemberId] [bigint] NULL,
	[TimeInsert] [datetime] NULL,
	[Favorite] [bit] NULL,
 CONSTRAINT [PK_tblFavorite] PRIMARY KEY CLUSTERED 
(
	[FavoriteId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblAgentDetail]    Script Date: 12/31/2010 17:36:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblAgentDetail](
	[AgentDetailId] [bigint] NOT NULL,
	[AgentId] [bigint] NULL,
	[MemberId] [bigint] NULL,
 CONSTRAINT [PK_tblAgentDetail] PRIMARY KEY CLUSTERED 
(
	[AgentDetailId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[iBet_TotalBetsTotalGoal]    Script Date: 12/31/2010 17:36:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[iBet_TotalBetsTotalGoal]
	@ID int = 0 
AS
BEGIN
	SET NOCOUNT ON;
	SELECT
	MatchID, Home, Away,
	SUM(CASE WHEN BetTypeID  != 6 THEN NULL
			 WHEN SGMId		  = @ID AND lower(Choice)='odd' THEN  Stake * PTSGM
			 WHEN SGMId		  = @ID AND lower(Choice)='even' THEN -Stake * PTSGM
			 WHEN GMId		  = @ID AND lower(Choice)='odd' THEN  Stake * PTGM
			 WHEN GMId		  = @ID AND lower(Choice)='even' THEN -Stake * PTGM
			 WHEN MasterId    = @ID AND lower(Choice)='odd' THEN  Stake * PTMaster
			 WHEN MasterId	  = @ID AND lower(Choice)='even' THEN -Stake * PTMaster
			 WHEN AgentId	  = @ID AND lower(Choice)='odd' THEN  Stake * PTAgent
			 WHEN AgentId	  = @ID AND lower(Choice)='even' THEN -Stake * PTAgent
			 ELSE NULL
			 END 			 
	) / 100 as ZezoOne,
	SUM(CASE WHEN BetTypeID  != 6 THEN NULL
			 WHEN SGMId		  = @ID AND lower(Choice)='ft.1'  THEN  Stake * PTSGM
			 WHEN SGMId		  = @ID AND lower(Choice)='ft.2' THEN -Stake * PTSGM
			 WHEN GMId		  = @ID AND lower(Choice)='ft.1'  THEN  Stake * PTGM
			 WHEN GMId		  = @ID AND lower(Choice)='ft.2' THEN -Stake * PTGM
			 WHEN MasterId    = @ID AND lower(Choice)='ft.1'  THEN  Stake * PTMaster
			 WHEN MasterId	  = @ID AND lower(Choice)='ft.2' THEN -Stake * PTMaster
			 WHEN AgentId	  = @ID AND lower(Choice)='ft.1'  THEN  Stake * PTAgent
			 WHEN AgentId	  = @ID AND lower(Choice)='ft.2' THEN -Stake * PTAgent
			 ELSE NULL
			 END 			 
	) / 100 as TwoThree,
	SUM(CASE WHEN BetTypeID  != 6 THEN NULL
			 WHEN SGMId		  = @ID AND lower(Choice)='odd' THEN  Stake * PTSGM
			 WHEN SGMId		  = @ID AND lower(Choice)='even' THEN -Stake * PTSGM
			 WHEN GMId		  = @ID AND lower(Choice)='odd' THEN  Stake * PTGM
			 WHEN GMId		  = @ID AND lower(Choice)='even' THEN -Stake * PTGM
			 WHEN MasterId    = @ID AND lower(Choice)='odd' THEN  Stake * PTMaster
			 WHEN MasterId	  = @ID AND lower(Choice)='even' THEN -Stake * PTMaster
			 WHEN AgentId	  = @ID AND lower(Choice)='odd' THEN  Stake * PTAgent
			 WHEN AgentId	  = @ID AND lower(Choice)='even' THEN -Stake * PTAgent
			 ELSE NULL
			 END 			 
	) / 100 as FourSix,
	SUM(CASE WHEN BetTypeID  != 6 THEN NULL
			 WHEN SGMId		  = @ID AND lower(Choice)='1st.1'  THEN Stake * PTSGM
			 WHEN SGMId		  = @ID AND lower(Choice)='1st.2' THEN -Stake * PTSGM
			 WHEN GMId		  = @ID AND lower(Choice)='1st.1'  THEN Stake * PTGM
			 WHEN GMId		  = @ID AND lower(Choice)='1st.2' THEN -Stake * PTGM
			 WHEN MasterId    = @ID AND lower(Choice)='1st.1'  THEN Stake * PTMaster
			 WHEN MasterId	  = @ID AND lower(Choice)='1st.2' THEN -Stake * PTMaster
			 WHEN AgentId	  = @ID AND lower(Choice)='1st.1'  THEN Stake * PTAgent
			 WHEN AgentId	  = @ID AND lower(Choice)='1st.2' THEN -Stake * PTAgent
			 ELSE NULL
			 END 			 
	) / 100 as SeventOver
	FROM tblBets
	WHERE tblBets.[Status]='Running'
	GROUP BY MatchID, Home, Away
END
GO
/****** Object:  StoredProcedure [dbo].[iBet_TotalBetsOutright]    Script Date: 12/31/2010 17:36:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[iBet_TotalBetsOutright]
	@ID int = 0 
AS
BEGIN
	SET NOCOUNT ON;
	SELECT
	MatchID, Choice as Team, LeaguaName,
	SUM(CASE WHEN BetTypeID  != 10 THEN NULL
			 WHEN SGMId		  = @ID THEN  Stake * PTSGM
			 WHEN GMId		  = @ID THEN  Stake * PTGM
			 WHEN MasterId    = @ID THEN  Stake * PTMaster
			 WHEN AgentId	  = @ID THEN  Stake * PTAgent
			 END 			 
	) /100 as Balance,
	SUM(CASE WHEN BetTypeID  != 10 THEN NULL
			 WHEN SGMId		  = @ID THEN  Stake * (Odds - 1) * PTSGM
			 WHEN GMId		  = @ID THEN  Stake * (Odds - 1) * PTGM
			 WHEN MasterId    = @ID THEN  Stake * (Odds - 1) * PTMaster
			 WHEN AgentId	  = @ID THEN  Stake * (Odds - 1) * PTAgent
			 END 			 
	) /100 as Forecast
		FROM tblBets
	WHERE tblBets.[Status]='Running' AND (BetTypeID=10) 
	GROUP BY MatchID, Choice, LeaguaName
END
GO
/****** Object:  StoredProcedure [dbo].[iBet_TotalBetsOddEven1x2]    Script Date: 12/31/2010 17:36:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[iBet_TotalBetsOddEven1x2]
	@ID int = 0 
AS
BEGIN
	SET NOCOUNT ON;
	SELECT
	MatchID, Home, Away, LeaguaName, [Time],
	SUM(CASE WHEN BetTypeID  != 2 THEN NULL
			 WHEN SGMId		  = @ID AND lower(Choice)='odd' THEN  Stake * PTSGM
			 WHEN SGMId		  = @ID AND lower(Choice)='even' THEN -Stake * PTSGM
			 WHEN GMId		  = @ID AND lower(Choice)='odd' THEN  Stake * PTGM
			 WHEN GMId		  = @ID AND lower(Choice)='even' THEN -Stake * PTGM
			 WHEN MasterId    = @ID AND lower(Choice)='odd' THEN  Stake * PTMaster
			 WHEN MasterId	  = @ID AND lower(Choice)='even' THEN -Stake * PTMaster
			 WHEN AgentId	  = @ID AND lower(Choice)='odd' THEN  Stake * PTAgent
			 WHEN AgentId	  = @ID AND lower(Choice)='even' THEN -Stake * PTAgent
			 END 			 
	) / 100 as FTOE,
	SUM(CASE WHEN BetTypeID  != 5 THEN NULL
			 WHEN SGMId		  = @ID THEN  Stake * PTSGM
			 WHEN GMId		  = @ID THEN  Stake * PTGM
			 WHEN MasterId    = @ID THEN  Stake * PTMaster
			 WHEN AgentId	  = @ID THEN  Stake * PTAgent
			 END 			 
	) / 100 as FT1x2,
	SUM(CASE WHEN BetTypeID  != 12 THEN NULL
			 WHEN SGMId		  = @ID AND lower(Choice)='odd' THEN  Stake * PTSGM
			 WHEN SGMId		  = @ID AND lower(Choice)='even' THEN -Stake * PTSGM
			 WHEN GMId		  = @ID AND lower(Choice)='odd' THEN  Stake * PTGM
			 WHEN GMId		  = @ID AND lower(Choice)='even' THEN -Stake * PTGM
			 WHEN MasterId    = @ID AND lower(Choice)='odd' THEN  Stake * PTMaster
			 WHEN MasterId	  = @ID AND lower(Choice)='even' THEN -Stake * PTMaster
			 WHEN AgentId	  = @ID AND lower(Choice)='odd' THEN  Stake * PTAgent
			 WHEN AgentId	  = @ID AND lower(Choice)='even' THEN -Stake * PTAgent
			 END 			 
	) / 100 as OneHalfOE,
	SUM(CASE WHEN BetTypeID  != 15 THEN NULL
			 WHEN SGMId		  = @ID THEN Stake * PTSGM
			 WHEN GMId		  = @ID THEN Stake * PTGM
			 WHEN MasterId    = @ID THEN Stake * PTMaster
			 WHEN AgentId	  = @ID THEN Stake * PTAgent
			 END 			 
	) / 100 as OneHalf1X2
	FROM tblBets
	WHERE tblBets.[Status]='Running' AND (BetTypeID = 2 OR BetTypeID = 5 OR BetTypeID = 12 OR BetTypeID = 15)
	GROUP BY MatchID, Home, Away, LeaguaName, [Time]
END
GO
/****** Object:  StoredProcedure [dbo].[iBet_TotalBetsHTFT]    Script Date: 12/31/2010 17:36:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[iBet_TotalBetsHTFT]
	@ID int = 0 
AS
BEGIN
	SET NOCOUNT ON;
	SELECT
	MatchID, Home, Away,
	SUM(CASE WHEN BetTypeID  != 16 THEN NULL
			 WHEN SGMId = @ID AND Choice = 'HH' THEN Stake * (Odds - 1) * PTSGM
			 WHEN GMId = @ID AND Choice = 'HH' THEN Stake * (Odds - 1) * PTGM
			 WHEN MasterId = @ID AND Choice = 'HH' THEN Stake * (Odds - 1) * PTMaster
			 WHEN AgentId = @ID AND Choice = 'HH' THEN Stake * (Odds - 1) * PTAgent			 
			 ELSE 0
			 END 			 
	) / 100 as HH,
	SUM(CASE WHEN BetTypeID  != 16 THEN NULL
			 WHEN SGMId = @ID AND Choice = 'HD' THEN Stake * (Odds - 1) * PTSGM
			 WHEN GMId = @ID AND Choice = 'HD' THEN Stake * (Odds - 1) * PTGM
			 WHEN MasterId = @ID AND Choice = 'HD' THEN Stake * (Odds - 1) * PTMaster
			 WHEN AgentId = @ID AND Choice = 'HD' THEN Stake * (Odds - 1) * PTAgent			 
			 ELSE 0
			 END 			 
	) / 100 as HD,
	SUM(CASE WHEN BetTypeID  != 16 THEN NULL
			 WHEN SGMId = @ID AND Choice = 'HA' THEN Stake * (Odds - 1) * PTSGM
			 WHEN GMId = @ID AND Choice = 'HA' THEN Stake * (Odds - 1) * PTGM
			 WHEN MasterId = @ID AND Choice = 'HA' THEN Stake * (Odds - 1) * PTMaster
			 WHEN AgentId = @ID AND Choice = 'HA' THEN Stake * (Odds - 1) * PTAgent			 
			 ELSE 0
			 END 			 
	) / 100 as HA,
	SUM(CASE WHEN BetTypeID  != 16 THEN NULL
			 WHEN SGMId = @ID AND Choice = 'DH' THEN Stake * (Odds - 1) * PTSGM
			 WHEN GMId = @ID AND Choice = 'DH' THEN Stake * (Odds - 1) * PTGM
			 WHEN MasterId = @ID AND Choice = 'DH' THEN Stake * (Odds - 1) * PTMaster
			 WHEN AgentId = @ID AND Choice = 'DH' THEN Stake * (Odds - 1) * PTAgent			 
			 ELSE 0
			 END 			 
	) / 100 as DH,
	SUM(CASE WHEN BetTypeID  != 16 THEN NULL
			 WHEN SGMId = @ID AND Choice = 'DD' THEN Stake * (Odds - 1) * PTSGM
			 WHEN GMId = @ID AND Choice = 'DD' THEN Stake * (Odds - 1) * PTGM
			 WHEN MasterId = @ID AND Choice = 'DD' THEN Stake * (Odds - 1) * PTMaster
			 WHEN AgentId = @ID AND Choice = 'DD' THEN Stake * (Odds - 1) * PTAgent			 
			 ELSE 0
			 END 			 
	) / 100 as DD,
	SUM(CASE WHEN BetTypeID  != 16 THEN NULL
			 WHEN SGMId = @ID AND Choice = 'DA' THEN Stake * (Odds - 1) * PTSGM
			 WHEN GMId = @ID AND Choice = 'DA' THEN Stake * (Odds - 1) * PTGM
			 WHEN MasterId = @ID AND Choice = 'DA' THEN Stake * (Odds - 1) * PTMaster
			 WHEN AgentId = @ID AND Choice = 'DA' THEN Stake * (Odds - 1) * PTAgent			 
			 ELSE 0
			 END 			 
	) / 100 as DA,
	SUM(CASE WHEN BetTypeID  != 16 THEN NULL
			 WHEN SGMId = @ID AND Choice = 'AH' THEN Stake * (Odds - 1) * PTSGM
			 WHEN GMId = @ID AND Choice = 'AH' THEN Stake * (Odds - 1) * PTGM
			 WHEN MasterId = @ID AND Choice = 'AH' THEN Stake * (Odds - 1) * PTMaster
			 WHEN AgentId = @ID AND Choice = 'AH' THEN Stake * (Odds - 1) * PTAgent			 
			 ELSE 0
			 END 			 
	) / 100 as AH,
	SUM(CASE WHEN BetTypeID  != 16 THEN NULL
			 WHEN SGMId = @ID AND Choice = 'AD' THEN Stake * (Odds - 1) * PTSGM
			 WHEN GMId = @ID AND Choice = 'AD' THEN Stake * (Odds - 1) * PTGM
			 WHEN MasterId = @ID AND Choice = 'AD' THEN Stake * (Odds - 1) * PTMaster
			 WHEN AgentId = @ID AND Choice = 'AD' THEN Stake * (Odds - 1) * PTAgent			 
			 ELSE 0
			 END 			 
	) / 100 as AD,
	SUM(CASE WHEN BetTypeID  != 16 THEN NULL
			 WHEN SGMId = @ID AND Choice = 'AA' THEN Stake * (Odds - 1) * PTSGM
			 WHEN GMId = @ID AND Choice = 'AA' THEN Stake * (Odds - 1) * PTGM
			 WHEN MasterId = @ID AND Choice = 'AA' THEN Stake * (Odds - 1) * PTMaster
			 WHEN AgentId = @ID AND Choice = 'AA' THEN Stake * (Odds - 1) * PTAgent			 
			 ELSE 0
			 END 			 
	) / 100 as AA	
	FROM tblBets
	WHERE tblBets.[Status]='Running' AND BetTypeID = 16
	GROUP BY MatchID, Home, Away
END
GO
/****** Object:  StoredProcedure [dbo].[iBet_TotalBetsHandiOU]    Script Date: 12/31/2010 17:36:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[iBet_TotalBetsHandiOU]
	@ID int = 0 
AS
BEGIN
	SET NOCOUNT ON;
	SELECT
	MatchID, Home, Away, LeaguaName, [Time],
	SUM(CASE WHEN BetTypeID  != 1 THEN NULL
			 WHEN SGMId		  = @ID AND Choice = Home THEN  Stake * PTSGM
			 WHEN SGMId		  = @ID AND Choice = Away THEN -Stake * PTSGM
			 WHEN GMId		  = @ID AND Choice = Home THEN  Stake * PTGM
			 WHEN GMId		  = @ID AND Choice = Away THEN -Stake * PTGM
			 WHEN MasterId    = @ID AND Choice = Home THEN  Stake * PTMaster
			 WHEN MasterId	  = @ID AND Choice = Away THEN -Stake * PTMaster
			 WHEN AgentId	  = @ID AND Choice = Home THEN  Stake * PTAgent
			 WHEN AgentId	  = @ID AND Choice = Away THEN -Stake * PTAgent
			 ELSE NULL
			 END 			 
	) /100 as FTHan,
	SUM(CASE WHEN BetTypeID  != 3 THEN NULL
			 WHEN SGMId		  = @ID AND lower(Choice)='over'  THEN  Stake * PTSGM
			 WHEN SGMId		  = @ID AND lower(Choice)='under' THEN -Stake * PTSGM
			 WHEN GMId		  = @ID AND lower(Choice)='over'  THEN  Stake * PTGM
			 WHEN GMId		  = @ID AND lower(Choice)='under' THEN -Stake * PTGM
			 WHEN MasterId    = @ID AND lower(Choice)='over'  THEN  Stake * PTMaster
			 WHEN MasterId	  = @ID AND lower(Choice)='under' THEN -Stake * PTMaster
			 WHEN AgentId	  = @ID AND lower(Choice)='over'  THEN  Stake * PTAgent
			 WHEN AgentId	  = @ID AND lower(Choice)='under' THEN -Stake * PTAgent
			 ELSE NULL
			 END 			 
	) /100 as FTOU,
	SUM(CASE WHEN BetTypeID  != 7 THEN NULL
			 WHEN SGMId		  = @ID AND Choice = Home THEN  Stake * PTSGM
			 WHEN SGMId		  = @ID AND Choice = Away THEN -Stake * PTSGM
			 WHEN GMId		  = @ID AND Choice = Home THEN  Stake * PTGM
			 WHEN GMId		  = @ID AND Choice = Away THEN -Stake * PTGM
			 WHEN MasterId    = @ID AND Choice = Home THEN  Stake * PTMaster
			 WHEN MasterId	  = @ID AND Choice = Away THEN -Stake * PTMaster
			 WHEN AgentId	  = @ID AND Choice = Home THEN  Stake * PTAgent
			 WHEN AgentId	  = @ID AND Choice = Away THEN -Stake * PTAgent
			 ELSE NULL
			 END 			 
	) /100 as OneHalfHan,
	SUM(CASE WHEN BetTypeID  != 8 THEN NULL
			 WHEN SGMId		  = @ID AND lower(Choice)='over'  THEN Stake * PTSGM
			 WHEN SGMId		  = @ID AND lower(Choice)='under' THEN -Stake * PTSGM
			 WHEN GMId		  = @ID AND lower(Choice)='over'  THEN Stake * PTGM
			 WHEN GMId		  = @ID AND lower(Choice)='under' THEN -Stake * PTGM
			 WHEN MasterId    = @ID AND lower(Choice)='over'  THEN Stake * PTMaster
			 WHEN MasterId	  = @ID AND lower(Choice)='under' THEN -Stake * PTMaster
			 WHEN AgentId	  = @ID AND lower(Choice)='over'  THEN Stake * PTAgent
			 WHEN AgentId	  = @ID AND lower(Choice)='under' THEN -Stake * PTAgent
			 ELSE NULL
			 END 			 
	) /100 as OneHalfOU
	FROM tblBets
	WHERE tblBets.[Status]='Running' AND (BetTypeID=1 OR BetTypeID=3 OR BetTypeID=7 OR BettypeID=8) 
	GROUP BY MatchID, Home, Away, LeaguaName, [Time]
END
GO
/****** Object:  StoredProcedure [dbo].[iBet_TotalBetsFGLG]    Script Date: 12/31/2010 17:36:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[iBet_TotalBetsFGLG]
	@ID int = 0 
AS
BEGIN
	SET NOCOUNT ON;
	SELECT	MatchID, Home, Away, LeaguaName, [Time],
	SUM(CASE 
			WHEN BetTypeID  != 14 THEN NULL
			WHEN SGMId = @ID AND Choice = 'Home FG' THEN Stake * PTSGM
			ELSE 0
		END) / 100 as FirstGoalHome,
	SUM(CASE 
			WHEN BetTypeID  != 14 THEN NULL
			WHEN SGMId = @ID AND Choice = 'Away FG' THEN Stake * PTSGM
			ELSE 0
		END) / 100 as FirstGoalAway,
	SUM(CASE 
			WHEN BetTypeID  != 14 THEN NULL
			WHEN SGMId = @ID AND Choice = 'Home LG' THEN Stake * PTSGM
			ELSE 0
		END) / 100 as LastGoalHome,
	SUM(CASE 
			WHEN BetTypeID  != 14 THEN NULL
			WHEN SGMId = @ID AND Choice = 'Away FG' THEN Stake * PTSGM
			ELSE 0
		END) / 100 as LastGoalAway,
	SUM(CASE 
			WHEN BetTypeID  != 14 THEN NULL
			WHEN SGMId = @ID AND Choice = 'NG' THEN Stake * PTSGM
			ELSE 0
		END) / 100 as NoGoal
	FROM tblBets
	WHERE tblBets.[Status]='Running' AND BetTypeID = 14
	GROUP BY MatchID, Home, Away, LeaguaName, [Time]
END
GO
/****** Object:  StoredProcedure [dbo].[iBet_tblUserSoccerEvent_Insert]    Script Date: 12/31/2010 17:36:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[iBet_tblUserSoccerEvent_Insert] 

	@EventID int,
	@AccID bigint

AS
INSERT INTO [dbo].[tblUserSoccerEvent]
		(
			 [EventID],
			 [AccID]
		)
Values
		(
			@EventID,
			@AccID
		)
GO
/****** Object:  StoredProcedure [dbo].[iBet_tblUserSoccerEvent_Gets]    Script Date: 12/31/2010 17:36:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[iBet_tblUserSoccerEvent_Gets] 

AS
SELECT 
	[tblUserSoccerEvent].EventID,
	[tblUserSoccerEvent].AccID
FROM [dbo].[tblUserSoccerEvent]
GO
/****** Object:  StoredProcedure [dbo].[iBet_tblUserSoccerEvent_Get]    Script Date: 12/31/2010 17:36:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[iBet_tblUserSoccerEvent_Get] 

	@EventID int,
	@AccID bigint
AS
SELECT 
	EventID,
	AccID
FROM [dbo].[tblUserSoccerEvent]
WHERE ((([dbo].[tblUserSoccerEvent].[EventID])=@EventID))
AND ((([dbo].[tblUserSoccerEvent].[AccID])=@AccID))
GO
/****** Object:  StoredProcedure [dbo].[iBet_tblUserSoccerEvent_Delete]    Script Date: 12/31/2010 17:36:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[iBet_tblUserSoccerEvent_Delete]

	@EventID int,
	@AccID bigint

AS
DELETE
From [dbo].[tblUserSoccerEvent]
 WHERE ((([dbo].[tblUserSoccerEvent].[EventID])=@EventID))
 AND ((([dbo].[tblUserSoccerEvent].[AccID])=@AccID))
GO
/****** Object:  StoredProcedure [dbo].[iBet_tblUserRights_Update]    Script Date: 12/31/2010 17:36:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[iBet_tblUserRights_Update] 




	@UserID bigint,
	@intFunctionID int,
	@GradeID int

AS
UPDATE [dbo].[tblUserRights]
Set
	 [dbo].[tblUserRights].[UserID]=@UserID,
	 [dbo].[tblUserRights].[intFunctionID]=@intFunctionID,
	[dbo].[tblUserRights].[GradeID]=@GradeID
GO
/****** Object:  StoredProcedure [dbo].[iBet_tblUserRights_Insert]    Script Date: 12/31/2010 17:36:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[iBet_tblUserRights_Insert] 

	@UserID bigint,
	@intFunctionID int,
	@GradeID int

AS
INSERT INTO [dbo].[tblUserRights]
		(
			 [UserID],
			 [intFunctionID],
			 [GradeID]
		)
Values
		(
			@UserID,
			@intFunctionID,
			@GradeID
		)
GO
/****** Object:  StoredProcedure [dbo].[iBet_tblUserRights_Gets]    Script Date: 12/31/2010 17:36:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[iBet_tblUserRights_Gets] 

AS
SELECT 
	[tblUserRights].UserID,
	[tblUserRights].intFunctionID,
	[tblUserRights].GradeID
FROM [dbo].[tblUserRights]
GO
/****** Object:  StoredProcedure [dbo].[iBet_tblUserRights_Get]    Script Date: 12/31/2010 17:36:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[iBet_tblUserRights_Get] 

AS
SELECT 
	UserID,
	intFunctionID,
	GradeID
FROM [dbo].[tblUserRights]
GO
/****** Object:  StoredProcedure [dbo].[iBet_tblUserRights_Delete]    Script Date: 12/31/2010 17:36:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[iBet_tblUserRights_Delete]
	@UserID as bigint,
	@strKey as nvarchar(100)=NULL
AS
IF @strKey IS NULL 
	DELETE From [dbo].[tblUserRights] WHERE UserID=@UserID
ELSE
	DELETE From [dbo].[tblUserRights] WHERE (UserID=@UserID) 
	AND (intFunctionID in (Select intFunctionID from tblRoleFunctionMapping where Replace(roletitle,' ','')=@strKey))
GO
/****** Object:  StoredProcedure [dbo].[iBet_tblUserCommission_Update]    Script Date: 12/31/2010 17:36:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[iBet_tblUserCommission_Update] 


	@ID int,
	@AccID bigint,
	@CommA decimal(18, 4),
	@CommB decimal(18, 4),
	@CommC decimal(18, 4),
	@CommD decimal(18, 4),
	@Comm1X2 decimal(18, 4),
	@CommOther decimal(18, 4),
	@CreateBy bigint,
	@CreateDate datetime,
	@ModifyBy bigint,
	@ModifyDate datetime

AS
UPDATE [dbo].[tblUserCommission]
Set
	 [dbo].[tblUserCommission].[AccID]=@AccID,
	 [dbo].[tblUserCommission].[CommA]=@CommA,
	 [dbo].[tblUserCommission].[CommB]=@CommB,
	 [dbo].[tblUserCommission].[CommC]=@CommC,
	 [dbo].[tblUserCommission].[CommD]=@CommD,
	 [dbo].[tblUserCommission].[Comm1X2]=@Comm1X2,
	 [dbo].[tblUserCommission].[CommOther]=@CommOther,
	 [dbo].[tblUserCommission].[CreateBy]=@CreateBy,
	 [dbo].[tblUserCommission].[CreateDate]=@CreateDate,
	 [dbo].[tblUserCommission].[ModifyBy]=@ModifyBy,
	 [dbo].[tblUserCommission].[ModifyDate]=@ModifyDate
WHERE ((([dbo].[tblUserCommission].[ID])=@ID))
GO
/****** Object:  StoredProcedure [dbo].[iBet_tblUserCommission_Insert]    Script Date: 12/31/2010 17:36:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[iBet_tblUserCommission_Insert] 

	@ID int output,
	@AccID bigint,
	@CommA decimal(18, 4),
	@CommB decimal(18, 4),
	@CommC decimal(18, 4),
	@CommD decimal(18, 4),
	@Comm1X2 decimal(18, 4),
	@CommOther decimal(18, 4),
	@CreateBy bigint,
	@CreateDate datetime,
	@ModifyBy bigint,
	@ModifyDate datetime

AS
INSERT INTO [dbo].[tblUserCommission]
		(
			 [AccID],
			 [CommA],
			 [CommB],
			 [CommC],
			 [CommD],
			 [Comm1X2],
			 [CommOther],
			 [CreateBy],
			 [CreateDate],
			 [ModifyBy],
			 [ModifyDate]
		)
Values
		(
			@AccID,
			@CommA,
			@CommB,
			@CommC,
			@CommD,
			@Comm1X2,
			@CommOther,
			@CreateBy,
			@CreateDate,
			@ModifyBy,
			@ModifyDate
		)
set @ID=@@IDENTITY
GO
/****** Object:  StoredProcedure [dbo].[iBet_tblUserCommission_Gets]    Script Date: 12/31/2010 17:36:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[iBet_tblUserCommission_Gets] 

AS
SELECT 
	[tblUserCommission].ID,
	[tblUserCommission].AccID,
	[tblUserCommission].CommA,
	[tblUserCommission].CommB,
	[tblUserCommission].CommC,
	[tblUserCommission].CommD,
	[tblUserCommission].Comm1X2,
	[tblUserCommission].CommOther,
	[tblUserCommission].CreateBy,
	[tblUserCommission].CreateDate,
	[tblUserCommission].ModifyBy,
	[tblUserCommission].ModifyDate
FROM [dbo].[tblUserCommission]
GO
/****** Object:  StoredProcedure [dbo].[iBet_tblUserCommission_GetByAccId]    Script Date: 12/31/2010 17:36:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[iBet_tblUserCommission_GetByAccId] 

	@AccID bigint
AS
SELECT 
	ID,
	AccID,
	CommA,
	CommB,
	CommC,
	CommD,
	Comm1X2,
	CommOther,
	CreateBy,
	CreateDate,
	ModifyBy,
	ModifyDate
FROM [dbo].[tblUserCommission]
WHERE ((([dbo].[tblUserCommission].AccID)=@AccID))
GO
/****** Object:  StoredProcedure [dbo].[iBet_tblUserCommission_Get]    Script Date: 12/31/2010 17:36:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[iBet_tblUserCommission_Get] 

	@ID int
AS
SELECT 
	ID,
	AccID,
	CommA,
	CommB,
	CommC,
	CommD,
	Comm1X2,
	CommOther,
	CreateBy,
	CreateDate,
	ModifyBy,
	ModifyDate
FROM [dbo].[tblUserCommission]
WHERE ((([dbo].[tblUserCommission].[ID])=@ID))
GO
/****** Object:  StoredProcedure [dbo].[iBet_tblUserCommission_Delete]    Script Date: 12/31/2010 17:36:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[iBet_tblUserCommission_Delete]

	@ID int

AS
DELETE
From [dbo].[tblUserCommission]
 WHERE ((([dbo].[tblUserCommission].[ID])=@ID))
GO
/****** Object:  StoredProcedure [dbo].[iBet_tblSystemSetting_Update]    Script Date: 12/31/2010 17:36:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[iBet_tblSystemSetting_Update] 


	@ID_KeyValues int,


	@ID int,
	@Name nvarchar(250),
	@MinValue float,
	@MaxValue float

AS
UPDATE [dbo].[tblSystemSetting]
Set
	 [dbo].[tblSystemSetting].[Name]=@Name,
	 [dbo].[tblSystemSetting].[MinValue]=@MinValue,
	 [dbo].[tblSystemSetting].[MaxValue]=@MaxValue
WHERE ((([dbo].[tblSystemSetting].[ID])=@ID_KeyValues))
GO
/****** Object:  StoredProcedure [dbo].[iBet_tblSystemSetting_Insert]    Script Date: 12/31/2010 17:36:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[iBet_tblSystemSetting_Insert] 

	@ID int output,
	@Name nvarchar(250),
	@MinValue float,
	@MaxValue float

AS
INSERT INTO [dbo].[tblSystemSetting]
		(
			 [Name],
			 [MinValue],
			 [MaxValue]
		)
Values
		(
			@Name,
			@MinValue,
			@MaxValue
		)
set @ID=@@IDENTITY
GO
/****** Object:  StoredProcedure [dbo].[iBet_tblSystemSetting_Gets]    Script Date: 12/31/2010 17:36:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[iBet_tblSystemSetting_Gets] 

AS
SELECT 
	[tblSystemSetting].ID,
	[tblSystemSetting].Name,
	[tblSystemSetting].MinValue,
	[tblSystemSetting].MaxValue
FROM [dbo].[tblSystemSetting]
GO
/****** Object:  StoredProcedure [dbo].[iBet_tblSystemSetting_Get]    Script Date: 12/31/2010 17:36:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[iBet_tblSystemSetting_Get] 

	@ID int
AS
SELECT 
	ID,
	Name,
	MinValue,
	MaxValue
FROM [dbo].[tblSystemSetting]
WHERE ((([dbo].[tblSystemSetting].[ID])=@ID))
GO
/****** Object:  StoredProcedure [dbo].[iBet_tblSystemSetting_Delete]    Script Date: 12/31/2010 17:36:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[iBet_tblSystemSetting_Delete]

	@ID int

AS
DELETE
From [dbo].[tblSystemSetting]
 WHERE ((([dbo].[tblSystemSetting].[ID])=@ID))
GO
/****** Object:  StoredProcedure [dbo].[iBet_tblSoccerLive_Update]    Script Date: 12/31/2010 17:36:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[iBet_tblSoccerLive_Update] 


	@ID int,
	@AccID bigint,
	@Handi_NG decimal(18, 2),
	@Over_Under decimal(18, 2),
	@FirtHandicap decimal(18, 2),
	@FirtOverUnder decimal(18, 2)

AS
UPDATE [dbo].[tblSoccerLive]
Set
	 [dbo].[tblSoccerLive].[AccID]=@AccID,
	 [dbo].[tblSoccerLive].[Handi_NG]=@Handi_NG,
	 [dbo].[tblSoccerLive].[Over_Under]=@Over_Under,
	 [dbo].[tblSoccerLive].[FirtHandicap]=@FirtHandicap,
	 [dbo].[tblSoccerLive].[FirtOverUnder]=@FirtOverUnder
WHERE ((([dbo].[tblSoccerLive].[ID])=@ID))
GO
/****** Object:  StoredProcedure [dbo].[iBet_tblSoccerLive_Insert]    Script Date: 12/31/2010 17:36:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[iBet_tblSoccerLive_Insert] 

	@ID int output,
	@AccID bigint,
	@Handi_NG decimal(18, 2),
	@Over_Under decimal(18, 2),
	@FirtHandicap decimal(18, 2),
	@FirtOverUnder decimal(18, 2)

AS
INSERT INTO [dbo].[tblSoccerLive]
		(
			 [AccID],
			 [Handi_NG],
			 [Over_Under],
			 [FirtHandicap],
			 [FirtOverUnder]
		)
Values
		(
			@AccID,
			@Handi_NG,
			@Over_Under,
			@FirtHandicap,
			@FirtOverUnder
		)
set @ID=@@IDENTITY
GO
/****** Object:  StoredProcedure [dbo].[iBet_tblSoccerLive_Gets]    Script Date: 12/31/2010 17:36:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[iBet_tblSoccerLive_Gets] 

AS
SELECT 
	[tblSoccerLive].ID,
	[tblSoccerLive].AccID,
	[tblSoccerLive].Handi_NG,
	[tblSoccerLive].Over_Under,
	[tblSoccerLive].FirtHandicap,
	[tblSoccerLive].FirtOverUnder
FROM [dbo].[tblSoccerLive]
GO
/****** Object:  StoredProcedure [dbo].[iBet_tblSoccerLive_GetByAccId]    Script Date: 12/31/2010 17:36:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[iBet_tblSoccerLive_GetByAccId] 

	@AccId bigint
AS
SELECT 
	ID,
	AccID,
	Handi_NG,
	Over_Under,
	FirtHandicap,
	FirtOverUnder
FROM [dbo].[tblSoccerLive]
WHERE ((([dbo].[tblSoccerLive].AccID)=@AccId))
GO
/****** Object:  StoredProcedure [dbo].[iBet_tblSoccerLive_Get]    Script Date: 12/31/2010 17:36:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[iBet_tblSoccerLive_Get] 

	@ID int
AS
SELECT 
	ID,
	AccID,
	Handi_NG,
	Over_Under,
	FirtHandicap,
	FirtOverUnder
FROM [dbo].[tblSoccerLive]
WHERE ((([dbo].[tblSoccerLive].[ID])=@ID))
GO
/****** Object:  StoredProcedure [dbo].[iBet_tblSoccerLive_Delete]    Script Date: 12/31/2010 17:36:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[iBet_tblSoccerLive_Delete]

	@ID int

AS
DELETE
From [dbo].[tblSoccerLive]
 WHERE ((([dbo].[tblSoccerLive].[ID])=@ID))
GO
/****** Object:  StoredProcedure [dbo].[iBet_tblSoccerEvent_Update]    Script Date: 12/31/2010 17:36:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[iBet_tblSoccerEvent_Update] 


	@ID_KeyValues int,


	@ID int,
	@NameEvent nvarchar(255),
	@Minbet decimal(18, 0),
	@Maxbet decimal(18, 0),
	@MaxPerMath decimal(18, 0),
	@Handicap decimal(18, 2),
	@Over_Under decimal(18, 2),
	@Odd_Even decimal(18, 2),
	@MixParpal decimal(18, 2),
	@MoneyLine decimal(18, 2)

AS
UPDATE [dbo].[tblSoccerEvent]
Set
	 [dbo].[tblSoccerEvent].[NameEvent]=@NameEvent,
	 [dbo].[tblSoccerEvent].[Minbet]=@Minbet,
	 [dbo].[tblSoccerEvent].[Maxbet]=@Maxbet,
	 [dbo].[tblSoccerEvent].[MaxPerMath]=@MaxPerMath,
	 [dbo].[tblSoccerEvent].[Handicap]=@Handicap,
	 [dbo].[tblSoccerEvent].[Over_Under]=@Over_Under,
	 [dbo].[tblSoccerEvent].[Odd_Even]=@Odd_Even,
	 [dbo].[tblSoccerEvent].[MixParpal]=@MixParpal,
	 [dbo].[tblSoccerEvent].[MoneyLine]=@MoneyLine
WHERE ((([dbo].[tblSoccerEvent].[ID])=@ID_KeyValues))
GO
/****** Object:  StoredProcedure [dbo].[iBet_tblSoccerEvent_Insert]    Script Date: 12/31/2010 17:36:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[iBet_tblSoccerEvent_Insert] 

	@ID int output,
	@NameEvent nvarchar(255),
	@Minbet decimal(18, 0),
	@Maxbet decimal(18, 0),
	@MaxPerMath decimal(18, 0),
	@Handicap decimal(18, 2),
	@Over_Under decimal(18, 2),
	@Odd_Even decimal(18, 2),
	@MixParpal decimal(18, 2),
	@MoneyLine decimal(18, 2)

AS
INSERT INTO [dbo].[tblSoccerEvent]
		(
			 [NameEvent],
			 [Minbet],
			 [Maxbet],
			 [MaxPerMath],
			 [Handicap],
			 [Over_Under],
			 [Odd_Even],
			 [MixParpal],
			 [MoneyLine]
		)
Values
		(
			@NameEvent,
			@Minbet,
			@Maxbet,
			@MaxPerMath,
			@Handicap,
			@Over_Under,
			@Odd_Even,
			@MixParpal,
			@MoneyLine
		)
set @ID=@@IDENTITY
GO
/****** Object:  StoredProcedure [dbo].[iBet_tblSoccerEvent_Gets]    Script Date: 12/31/2010 17:36:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[iBet_tblSoccerEvent_Gets] 

AS
SELECT 
	[tblSoccerEvent].ID,
	[tblSoccerEvent].NameEvent,
	[tblSoccerEvent].Minbet,
	[tblSoccerEvent].Maxbet,
	[tblSoccerEvent].MaxPerMath,
	[tblSoccerEvent].Handicap,
	[tblSoccerEvent].Over_Under,
	[tblSoccerEvent].Odd_Even,
	[tblSoccerEvent].MixParpal,
	[tblSoccerEvent].MoneyLine
FROM [dbo].[tblSoccerEvent]
GO
/****** Object:  StoredProcedure [dbo].[iBet_tblSoccerEvent_Get]    Script Date: 12/31/2010 17:36:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[iBet_tblSoccerEvent_Get] 

	@ID int
AS
SELECT 
	ID,
	NameEvent,
	Minbet,
	Maxbet,
	MaxPerMath,
	Handicap,
	Over_Under,
	Odd_Even,
	MixParpal,
	MoneyLine
FROM [dbo].[tblSoccerEvent]
WHERE ((([dbo].[tblSoccerEvent].[ID])=@ID))
GO
/****** Object:  StoredProcedure [dbo].[iBet_tblSoccerEvent_Delete]    Script Date: 12/31/2010 17:36:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[iBet_tblSoccerEvent_Delete]

	@ID int

AS
DELETE
From [dbo].[tblSoccerEvent]
 WHERE ((([dbo].[tblSoccerEvent].[ID])=@ID))
GO
/****** Object:  StoredProcedure [dbo].[iBet_tblSoccerDeadBall_Update]    Script Date: 12/31/2010 17:36:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[iBet_tblSoccerDeadBall_Update] 


	@ID int,
	@AccID bigint,
	@Handi_NG decimal(18, 2),
	@Over_Under decimal(18, 2),
	@FirtHandicap decimal(18, 2),
	@FirtOverUnder decimal(18, 2),
	@Over_Event decimal(18, 2),
	@OneXTwo decimal(18, 2),
	@CorrectScore decimal(18, 2),
	@TotalGoal decimal(18, 2),
	@MixParlay decimal(18, 2),
	@Outright decimal(18, 2)

AS
UPDATE [dbo].[tblSoccerDeadBall]
Set
	 [dbo].[tblSoccerDeadBall].[AccID]=@AccID,
	 [dbo].[tblSoccerDeadBall].[Handi_NG]=@Handi_NG,
	 [dbo].[tblSoccerDeadBall].[Over_Under]=@Over_Under,
	 [dbo].[tblSoccerDeadBall].[FirtHandicap]=@FirtHandicap,
	 [dbo].[tblSoccerDeadBall].[FirtOverUnder]=@FirtOverUnder,
	 [dbo].[tblSoccerDeadBall].[Over_Event]=@Over_Event,
	 [dbo].[tblSoccerDeadBall].[OneXTwo]=@OneXTwo,
	 [dbo].[tblSoccerDeadBall].[CorrectScore]=@CorrectScore,
	 [dbo].[tblSoccerDeadBall].[TotalGoal]=@TotalGoal,
	 [dbo].[tblSoccerDeadBall].[MixParlay]=@MixParlay,
	 [dbo].[tblSoccerDeadBall].[Outright]=@Outright
WHERE ((([dbo].[tblSoccerDeadBall].[ID])=@ID))
GO
/****** Object:  StoredProcedure [dbo].[iBet_tblSoccerDeadBall_Insert]    Script Date: 12/31/2010 17:36:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[iBet_tblSoccerDeadBall_Insert] 

	@ID int output,
	@AccID bigint,
	@Handi_NG decimal(18, 2),
	@Over_Under decimal(18, 2),
	@FirtHandicap decimal(18, 2),
	@FirtOverUnder decimal(18, 2),
	@Over_Event decimal(18, 2),
	@OneXTwo decimal(18, 2),
	@CorrectScore decimal(18, 2),
	@TotalGoal decimal(18, 2),
	@MixParlay decimal(18, 2),
	@Outright decimal(18, 2)

AS
INSERT INTO [dbo].[tblSoccerDeadBall]
		(
			 [AccID],
			 [Handi_NG],
			 [Over_Under],
			 [FirtHandicap],
			 [FirtOverUnder],
			 [Over_Event],
			 [OneXTwo],
			 [CorrectScore],
			 [TotalGoal],
			 [MixParlay],
			 [Outright]
		)
Values
		(
			@AccID,
			@Handi_NG,
			@Over_Under,
			@FirtHandicap,
			@FirtOverUnder,
			@Over_Event,
			@OneXTwo,
			@CorrectScore,
			@TotalGoal,
			@MixParlay,
			@Outright
		)
set @ID=@@IDENTITY
GO
/****** Object:  StoredProcedure [dbo].[iBet_tblSoccerDeadBall_Gets]    Script Date: 12/31/2010 17:36:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[iBet_tblSoccerDeadBall_Gets] 

AS
SELECT 
	[tblSoccerDeadBall].ID,
	[tblSoccerDeadBall].AccID,
	[tblSoccerDeadBall].Handi_NG,
	[tblSoccerDeadBall].Over_Under,
	[tblSoccerDeadBall].FirtHandicap,
	[tblSoccerDeadBall].FirtOverUnder,
	[tblSoccerDeadBall].Over_Event,
	[tblSoccerDeadBall].OneXTwo,
	[tblSoccerDeadBall].CorrectScore,
	[tblSoccerDeadBall].TotalGoal,
	[tblSoccerDeadBall].MixParlay,
	[tblSoccerDeadBall].Outright
FROM [dbo].[tblSoccerDeadBall]
GO
/****** Object:  StoredProcedure [dbo].[iBet_tblSoccerDeadBall_GetByAccId]    Script Date: 12/31/2010 17:36:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[iBet_tblSoccerDeadBall_GetByAccId] 

	@AccId bigint
AS
SELECT 
	ID,
	AccID,
	Handi_NG,
	Over_Under,
	FirtHandicap,
	FirtOverUnder,
	Over_Event,
	OneXTwo,
	CorrectScore,
	TotalGoal,
	MixParlay,
	Outright
FROM [dbo].[tblSoccerDeadBall]
WHERE ((([dbo].[tblSoccerDeadBall].AccID)=@AccId))
GO
/****** Object:  StoredProcedure [dbo].[iBet_tblSoccerDeadBall_Get]    Script Date: 12/31/2010 17:36:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[iBet_tblSoccerDeadBall_Get] 

	@ID int
AS
SELECT 
	ID,
	AccID,
	Handi_NG,
	Over_Under,
	FirtHandicap,
	FirtOverUnder,
	Over_Event,
	OneXTwo,
	CorrectScore,
	TotalGoal,
	MixParlay,
	Outright
FROM [dbo].[tblSoccerDeadBall]
WHERE ((([dbo].[tblSoccerDeadBall].[ID])=@ID))
GO
/****** Object:  StoredProcedure [dbo].[iBet_tblSoccerDeadBall_Delete]    Script Date: 12/31/2010 17:36:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[iBet_tblSoccerDeadBall_Delete]

	@ID int

AS
DELETE
From [dbo].[tblSoccerDeadBall]
 WHERE ((([dbo].[tblSoccerDeadBall].[ID])=@ID))
GO
/****** Object:  StoredProcedure [dbo].[iBet_tblSoccerBetSetting_Update]    Script Date: 12/31/2010 17:36:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[iBet_tblSoccerBetSetting_Update] 


	@ID int,
	@AccID bigint,
	@Minbet decimal(18, 0),
	@Maxbet decimal(18, 0),
	@MaxPerMatch decimal(18, 0)

AS
UPDATE [dbo].[tblSoccerBetSetting]
Set
	 [dbo].[tblSoccerBetSetting].[AccID]=@AccID,
	 [dbo].[tblSoccerBetSetting].[Minbet]=@Minbet,
	 [dbo].[tblSoccerBetSetting].[Maxbet]=@Maxbet,
	 [dbo].[tblSoccerBetSetting].[MaxPerMatch]=@MaxPerMatch
WHERE ((([dbo].[tblSoccerBetSetting].[ID])=@ID))
GO
/****** Object:  StoredProcedure [dbo].[iBet_tblSoccerBetSetting_Insert]    Script Date: 12/31/2010 17:36:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[iBet_tblSoccerBetSetting_Insert] 

	@ID int output,
	@AccID bigint,
	@Minbet decimal(18, 0),
	@Maxbet decimal(18, 0),
	@MaxPerMatch decimal(18, 0)

AS
INSERT INTO [dbo].[tblSoccerBetSetting]
		(
			 [AccID],
			 [Minbet],
			 [Maxbet],
			 [MaxPerMatch]
		)
Values
		(
			@AccID,
			@Minbet,
			@Maxbet,
			@MaxPerMatch
		)
set @ID=@@IDENTITY
GO
/****** Object:  StoredProcedure [dbo].[iBet_tblSoccerBetSetting_Gets]    Script Date: 12/31/2010 17:36:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[iBet_tblSoccerBetSetting_Gets] 

AS
SELECT 
	[tblSoccerBetSetting].ID,
	[tblSoccerBetSetting].AccID,
	[tblSoccerBetSetting].Minbet,
	[tblSoccerBetSetting].Maxbet,
	[tblSoccerBetSetting].MaxPerMatch
FROM [dbo].[tblSoccerBetSetting]
GO
/****** Object:  StoredProcedure [dbo].[iBet_tblSoccerBetSetting_GetByAccId]    Script Date: 12/31/2010 17:36:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[iBet_tblSoccerBetSetting_GetByAccId] 

	@AccId bigint
AS
SELECT 
	ID,
	AccID,
	Minbet,
	Maxbet,
	MaxPerMatch
FROM [dbo].[tblSoccerBetSetting]
WHERE ((([dbo].[tblSoccerBetSetting].AccID)=@AccId))
GO
/****** Object:  StoredProcedure [dbo].[iBet_tblSoccerBetSetting_Get]    Script Date: 12/31/2010 17:36:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[iBet_tblSoccerBetSetting_Get] 

	@ID int
AS
SELECT 
	ID,
	AccID,
	Minbet,
	Maxbet,
	MaxPerMatch
FROM [dbo].[tblSoccerBetSetting]
WHERE ((([dbo].[tblSoccerBetSetting].[ID])=@ID))
GO
/****** Object:  StoredProcedure [dbo].[iBet_tblSoccerBetSetting_Delete]    Script Date: 12/31/2010 17:36:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[iBet_tblSoccerBetSetting_Delete]

	@ID int

AS
DELETE
From [dbo].[tblSoccerBetSetting]
 WHERE ((([dbo].[tblSoccerBetSetting].[ID])=@ID))
GO
/****** Object:  StoredProcedure [dbo].[iBet_tblRpWinLostDetail_Update]    Script Date: 12/31/2010 17:36:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[iBet_tblRpWinLostDetail_Update] 


	@ID_KeyValues bigint,


	@ID bigint,
	@AccID bigint,
	@StrAccID nvarchar(50),
	@Turnover float,
	@GrossComm float,
	@MeWinLoss float,
	@MeComm float,
	@MeTotal float,
	@AgWinLoss float,
	@AgComm float,
	@AgTotal float,
	@MaWinLoss float,
	@MaComm float,
	@MaTotal float,
	@GmWinLoss float,
	@GmComm float,
	@GmTotal float,
	@SuWinLoss float,
	@SuComm float,
	@SuTotal float,
	@Company float,
	@UpdateTime datetime

AS
UPDATE [dbo].[tblRpWinLostDetail]
Set
	 [dbo].[tblRpWinLostDetail].[AccID]=@AccID,
	 [dbo].[tblRpWinLostDetail].[StrAccID]=@StrAccID,
	 [dbo].[tblRpWinLostDetail].[Turnover]=@Turnover,
	 [dbo].[tblRpWinLostDetail].[GrossComm]=@GrossComm,
	 [dbo].[tblRpWinLostDetail].[MeWinLoss]=@MeWinLoss,
	 [dbo].[tblRpWinLostDetail].[MeComm]=@MeComm,
	 [dbo].[tblRpWinLostDetail].[MeTotal]=@MeTotal,
	 [dbo].[tblRpWinLostDetail].[AgWinLoss]=@AgWinLoss,
	 [dbo].[tblRpWinLostDetail].[AgComm]=@AgComm,
	 [dbo].[tblRpWinLostDetail].[AgTotal]=@AgTotal,
	 [dbo].[tblRpWinLostDetail].[MaWinLoss]=@MaWinLoss,
	 [dbo].[tblRpWinLostDetail].[MaComm]=@MaComm,
	 [dbo].[tblRpWinLostDetail].[MaTotal]=@MaTotal,
	 [dbo].[tblRpWinLostDetail].[GmWinLoss]=@GmWinLoss,
	 [dbo].[tblRpWinLostDetail].[GmComm]=@GmComm,
	 [dbo].[tblRpWinLostDetail].[GmTotal]=@GmTotal,
	 [dbo].[tblRpWinLostDetail].[SuWinLoss]=@SuWinLoss,
	 [dbo].[tblRpWinLostDetail].[SuComm]=@SuComm,
	 [dbo].[tblRpWinLostDetail].[SuTotal]=@SuTotal,
	 [dbo].[tblRpWinLostDetail].[Company]=@Company,
	 [dbo].[tblRpWinLostDetail].[UpdateTime]=@UpdateTime
WHERE ((([dbo].[tblRpWinLostDetail].[ID])=@ID_KeyValues))
GO
/****** Object:  StoredProcedure [dbo].[iBet_tblRpWinLostDetail_Insert]    Script Date: 12/31/2010 17:36:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[iBet_tblRpWinLostDetail_Insert] 

	@ID bigint output,
	@AccID bigint,
	@StrAccID nvarchar(50),
	@Turnover float,
	@GrossComm float,
	@MeWinLoss float,
	@MeComm float,
	@MeTotal float,
	@AgWinLoss float,
	@AgComm float,
	@AgTotal float,
	@MaWinLoss float,
	@MaComm float,
	@MaTotal float,
	@GmWinLoss float,
	@GmComm float,
	@GmTotal float,
	@SuWinLoss float,
	@SuComm float,
	@SuTotal float,
	@Company float,
	@UpdateTime datetime

AS
INSERT INTO [dbo].[tblRpWinLostDetail]
		(
			 [AccID],
			 [StrAccID],
			 [Turnover],
			 [GrossComm],
			 [MeWinLoss],
			 [MeComm],
			 [MeTotal],
			 [AgWinLoss],
			 [AgComm],
			 [AgTotal],
			 [MaWinLoss],
			 [MaComm],
			 [MaTotal],
			 [GmWinLoss],
			 [GmComm],
			 [GmTotal],
			 [SuWinLoss],
			 [SuComm],
			 [SuTotal],
			 [Company],
			 [UpdateTime]
		)
Values
		(
			@AccID,
			@StrAccID,
			@Turnover,
			@GrossComm,
			@MeWinLoss,
			@MeComm,
			@MeTotal,
			@AgWinLoss,
			@AgComm,
			@AgTotal,
			@MaWinLoss,
			@MaComm,
			@MaTotal,
			@GmWinLoss,
			@GmComm,
			@GmTotal,
			@SuWinLoss,
			@SuComm,
			@SuTotal,
			@Company,
			@UpdateTime
		)
set @ID=@@IDENTITY
GO
/****** Object:  StoredProcedure [dbo].[iBet_tblRpWinLostDetail_Gets]    Script Date: 12/31/2010 17:36:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[iBet_tblRpWinLostDetail_Gets] 

AS
SELECT 
	[tblRpWinLostDetail].ID,
	[tblRpWinLostDetail].AccID,
	[tblRpWinLostDetail].StrAccID,
	[tblRpWinLostDetail].Turnover,
	[tblRpWinLostDetail].GrossComm,
	[tblRpWinLostDetail].MeWinLoss,
	[tblRpWinLostDetail].MeComm,
	[tblRpWinLostDetail].MeTotal,
	[tblRpWinLostDetail].AgWinLoss,
	[tblRpWinLostDetail].AgComm,
	[tblRpWinLostDetail].AgTotal,
	[tblRpWinLostDetail].MaWinLoss,
	[tblRpWinLostDetail].MaComm,
	[tblRpWinLostDetail].MaTotal,
	[tblRpWinLostDetail].GmWinLoss,
	[tblRpWinLostDetail].GmComm,
	[tblRpWinLostDetail].GmTotal,
	[tblRpWinLostDetail].SuWinLoss,
	[tblRpWinLostDetail].SuComm,
	[tblRpWinLostDetail].SuTotal,
	[tblRpWinLostDetail].Company,
	[tblRpWinLostDetail].UpdateTime
FROM [dbo].[tblRpWinLostDetail]
GO
/****** Object:  StoredProcedure [dbo].[iBet_tblRpWinLostDetail_Get]    Script Date: 12/31/2010 17:36:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[iBet_tblRpWinLostDetail_Get] 

	@ID bigint
AS
SELECT 
	ID,
	AccID,
	StrAccID,
	Turnover,
	GrossComm,
	MeWinLoss,
	MeComm,
	MeTotal,
	AgWinLoss,
	AgComm,
	AgTotal,
	MaWinLoss,
	MaComm,
	MaTotal,
	GmWinLoss,
	GmComm,
	GmTotal,
	SuWinLoss,
	SuComm,
	SuTotal,
	Company,
	UpdateTime
FROM [dbo].[tblRpWinLostDetail]
WHERE ((([dbo].[tblRpWinLostDetail].[ID])=@ID))
GO
/****** Object:  StoredProcedure [dbo].[iBet_tblRpWinLostDetail_Delete]    Script Date: 12/31/2010 17:36:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[iBet_tblRpWinLostDetail_Delete]

	@ID bigint

AS
DELETE
From [dbo].[tblRpWinLostDetail]
 WHERE ((([dbo].[tblRpWinLostDetail].[ID])=@ID))
GO
/****** Object:  StoredProcedure [dbo].[iBet_tblRpWinLostByBetType_Update]    Script Date: 12/31/2010 17:36:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[iBet_tblRpWinLostByBetType_Update] 


	@ID_KeyValues bigint,


	@ID bigint,
	@AccID bigint,
	@BetTypeID int,
	@BetTypeName nvarchar(250),
	@Turnover float,
	@GrossComm float,
	@MeWinLoss float,
	@MeComm float,
	@MeTotal float,
	@AgWinLoss float,
	@AgComm float,
	@AgTotal float,
	@MaWinLoss float,
	@MaComm float,
	@MaTotal float,
	@GmWinLoss float,
	@GmComm float,
	@GmTotal float,
	@SuWinLoss float,
	@SuComm float,
	@SuTotal float,
	@Company float,
	@ReportDate datetime

AS
UPDATE [dbo].[tblRpWinLostByBetType]
Set
	 [dbo].[tblRpWinLostByBetType].[AccID]=@AccID,
	 [dbo].[tblRpWinLostByBetType].[BetTypeID]=@BetTypeID,
	 [dbo].[tblRpWinLostByBetType].[BetTypeName]=@BetTypeName,
	 [dbo].[tblRpWinLostByBetType].[Turnover]=@Turnover,
	 [dbo].[tblRpWinLostByBetType].[GrossComm]=@GrossComm,
	 [dbo].[tblRpWinLostByBetType].[MeWinLoss]=@MeWinLoss,
	 [dbo].[tblRpWinLostByBetType].[MeComm]=@MeComm,
	 [dbo].[tblRpWinLostByBetType].[MeTotal]=@MeTotal,
	 [dbo].[tblRpWinLostByBetType].[AgWinLoss]=@AgWinLoss,
	 [dbo].[tblRpWinLostByBetType].[AgComm]=@AgComm,
	 [dbo].[tblRpWinLostByBetType].[AgTotal]=@AgTotal,
	 [dbo].[tblRpWinLostByBetType].[MaWinLoss]=@MaWinLoss,
	 [dbo].[tblRpWinLostByBetType].[MaComm]=@MaComm,
	 [dbo].[tblRpWinLostByBetType].[MaTotal]=@MaTotal,
	 [dbo].[tblRpWinLostByBetType].[GmWinLoss]=@GmWinLoss,
	 [dbo].[tblRpWinLostByBetType].[GmComm]=@GmComm,
	 [dbo].[tblRpWinLostByBetType].[GmTotal]=@GmTotal,
	 [dbo].[tblRpWinLostByBetType].[SuWinLoss]=@SuWinLoss,
	 [dbo].[tblRpWinLostByBetType].[SuComm]=@SuComm,
	 [dbo].[tblRpWinLostByBetType].[SuTotal]=@SuTotal,
	 [dbo].[tblRpWinLostByBetType].[Company]=@Company,
	 [dbo].[tblRpWinLostByBetType].[ReportDate]=@ReportDate
WHERE ((([dbo].[tblRpWinLostByBetType].[ID])=@ID_KeyValues))
GO
/****** Object:  StoredProcedure [dbo].[iBet_tblRpWinLostByBetType_Insert]    Script Date: 12/31/2010 17:36:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[iBet_tblRpWinLostByBetType_Insert] 

	@ID bigint output,
	@AccID bigint,
	@BetTypeID int,
	@BetTypeName nvarchar(250),
	@Turnover float,
	@GrossComm float,
	@MeWinLoss float,
	@MeComm float,
	@MeTotal float,
	@AgWinLoss float,
	@AgComm float,
	@AgTotal float,
	@MaWinLoss float,
	@MaComm float,
	@MaTotal float,
	@GmWinLoss float,
	@GmComm float,
	@GmTotal float,
	@SuWinLoss float,
	@SuComm float,
	@SuTotal float,
	@Company float,
	@ReportDate datetime

AS
INSERT INTO [dbo].[tblRpWinLostByBetType]
		(
			 [AccID],
			 [BetTypeID],
			 [BetTypeName],
			 [Turnover],
			 [GrossComm],
			 [MeWinLoss],
			 [MeComm],
			 [MeTotal],
			 [AgWinLoss],
			 [AgComm],
			 [AgTotal],
			 [MaWinLoss],
			 [MaComm],
			 [MaTotal],
			 [GmWinLoss],
			 [GmComm],
			 [GmTotal],
			 [SuWinLoss],
			 [SuComm],
			 [SuTotal],
			 [Company],
			 [ReportDate]
		)
Values
		(
			@AccID,
			@BetTypeID,
			@BetTypeName,
			@Turnover,
			@GrossComm,
			@MeWinLoss,
			@MeComm,
			@MeTotal,
			@AgWinLoss,
			@AgComm,
			@AgTotal,
			@MaWinLoss,
			@MaComm,
			@MaTotal,
			@GmWinLoss,
			@GmComm,
			@GmTotal,
			@SuWinLoss,
			@SuComm,
			@SuTotal,
			@Company,
			@ReportDate
		)
set @ID=@@IDENTITY
GO
/****** Object:  StoredProcedure [dbo].[iBet_tblRpWinLostByBetType_GetsAll]    Script Date: 12/31/2010 17:36:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[iBet_tblRpWinLostByBetType_GetsAll] 
	@AccID int = 0 ,
	@fdate nvarchar(100),
	@tdate nvarchar(100)
AS
BEGIN
	SET NOCOUNT ON;
	SELECT 
		BetTypeID,
		BetTypeName,
		SUM(Turnover) as Turnover,
		SUM(GrossComm) as GrossComm,
		SUM(MeWinLoss) as MeWinLoss,
		SUM(MeComm) as MeComm,
		SUM(MeTotal) as MeTotal,
		SUM(AgWinLoss) as AgWinLoss,
		SUM(AgComm) as AgComm,
		SUM(AgTotal) as AgTotal,
		SUM(MaWinLoss) as MaWinLoss,
		SUM(MaComm) as MaComm,
		SUM(MaTotal) as MaTotal,
		SUM(GmWinLoss) as GmWinLoss,
		SUM(GmComm) as GmComm,
		SUM(GmTotal) as GmTotal,
		SUM(SuWinLoss) as SuWinLoss,
		SUM(SuComm) as SuComm,
		SUM(SuTotal) as SuTotal,
		SUM(Company) as Company
	FROM [dbo].[tblRpWinLostByBetType]
	WHERE ReportDate >= @fdate and ReportDate <= @tdate and AccID= @AccID
	GROUP BY BetTypeName, BetTypeID
END
GO
/****** Object:  StoredProcedure [dbo].[iBet_tblRpWinLostByBetType_Gets]    Script Date: 12/31/2010 17:36:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[iBet_tblRpWinLostByBetType_Gets] 

AS
SELECT 
	[tblRpWinLostByBetType].ID,
	[tblRpWinLostByBetType].AccID,
	[tblRpWinLostByBetType].BetTypeID,
	[tblRpWinLostByBetType].BetTypeName,
	[tblRpWinLostByBetType].Turnover,
	[tblRpWinLostByBetType].GrossComm,
	[tblRpWinLostByBetType].MeWinLoss,
	[tblRpWinLostByBetType].MeComm,
	[tblRpWinLostByBetType].MeTotal,
	[tblRpWinLostByBetType].AgWinLoss,
	[tblRpWinLostByBetType].AgComm,
	[tblRpWinLostByBetType].AgTotal,
	[tblRpWinLostByBetType].MaWinLoss,
	[tblRpWinLostByBetType].MaComm,
	[tblRpWinLostByBetType].MaTotal,
	[tblRpWinLostByBetType].GmWinLoss,
	[tblRpWinLostByBetType].GmComm,
	[tblRpWinLostByBetType].GmTotal,
	[tblRpWinLostByBetType].SuWinLoss,
	[tblRpWinLostByBetType].SuComm,
	[tblRpWinLostByBetType].SuTotal,
	[tblRpWinLostByBetType].Company,
	[tblRpWinLostByBetType].ReportDate
FROM [dbo].[tblRpWinLostByBetType]
GO
/****** Object:  StoredProcedure [dbo].[iBet_tblRpWinLostByBetType_Get]    Script Date: 12/31/2010 17:36:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[iBet_tblRpWinLostByBetType_Get] 

	@ID bigint
AS
SELECT 
	ID,
	AccID,
	BetTypeID,
	BetTypeName,
	Turnover,
	GrossComm,
	MeWinLoss,
	MeComm,
	MeTotal,
	AgWinLoss,
	AgComm,
	AgTotal,
	MaWinLoss,
	MaComm,
	MaTotal,
	GmWinLoss,
	GmComm,
	GmTotal,
	SuWinLoss,
	SuComm,
	SuTotal,
	Company,
	ReportDate
FROM [dbo].[tblRpWinLostByBetType]
WHERE ((([dbo].[tblRpWinLostByBetType].[ID])=@ID))
GO
/****** Object:  StoredProcedure [dbo].[iBet_tblRpWinLostByBetType_Delete]    Script Date: 12/31/2010 17:36:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[iBet_tblRpWinLostByBetType_Delete]

	@ID bigint

AS
DELETE
From [dbo].[tblRpWinLostByBetType]
 WHERE ((([dbo].[tblRpWinLostByBetType].[ID])=@ID))
GO
/****** Object:  StoredProcedure [dbo].[iBet_tblRpWinLossDetail_GetsAll]    Script Date: 12/31/2010 17:36:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[iBet_tblRpWinLossDetail_GetsAll] 
	@ParentID int = 0 ,
	@fdate nvarchar(100),
	@tdate nvarchar(100)
AS
BEGIN
	SET NOCOUNT ON;
	SELECT 
		AccID,
		StrAccID,
		SUM(Turnover) as Turnover,
		SUM(GrossComm) as GrossComm,
		SUM(MeWinLoss) as MeWinLoss,
		SUM(MeComm) as MeComm,
		SUM(MeTotal) as MeTotal,
		SUM(AgWinLoss) as AgWinLoss,
		SUM(AgComm) as AgComm,
		SUM(AgTotal) as AgTotal,
		SUM(MaWinLoss) as MaWinLoss,
		SUM(MaComm) as MaComm,
		SUM(MaTotal) as MaTotal,
		SUM(GmWinLoss) as GmWinLoss,
		SUM(GmComm) as GmComm,
		SUM(GmTotal) as GmTotal,
		SUM(SuWinLoss) as SuWinLoss,
		SUM(SuComm) as SuComm,
		SUM(SuTotal) as SuTotal,
		SUM(Company) as Company
	FROM tblRpWinLostDetail
	WHERE UpdateTime >= @fdate and UpdateTime <= @tdate and ParentID= @ParentID
	GROUP BY AccID, StrAccID
END
GO
/****** Object:  StoredProcedure [dbo].[iBet_tblRpStatement_Update]    Script Date: 12/31/2010 17:36:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[iBet_tblRpStatement_Update] 


	@ID_KeyValues bigint,


	@ID bigint,
	@AccID bigint,
	@Date datetime,
	@Type nvarchar(50),
	@Remark nvarchar(250),
	@TotalAmt float,
	@Total float,
	@ReportDate datetime

AS
UPDATE [dbo].[tblRpStatement]
Set
	 [dbo].[tblRpStatement].[AccID]=@AccID,
	 [dbo].[tblRpStatement].[Date]=@Date,
	 [dbo].[tblRpStatement].[Type]=@Type,
	 [dbo].[tblRpStatement].[Remark]=@Remark,
	 [dbo].[tblRpStatement].[TotalAmt]=@TotalAmt,
	 [dbo].[tblRpStatement].[Total]=@Total,
	 [dbo].[tblRpStatement].[ReportDate]=@ReportDate
WHERE ((([dbo].[tblRpStatement].[ID])=@ID_KeyValues))
GO
/****** Object:  StoredProcedure [dbo].[iBet_tblRpStatement_Insert]    Script Date: 12/31/2010 17:36:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[iBet_tblRpStatement_Insert] 

	@ID bigint output,
	@AccID bigint,
	@Date datetime,
	@Type nvarchar(50),
	@Remark nvarchar(250),
	@TotalAmt float,
	@Total float,
	@ReportDate datetime

AS
INSERT INTO [dbo].[tblRpStatement]
		(
			 [AccID],
			 [Date],
			 [Type],
			 [Remark],
			 [TotalAmt],
			 [Total],
			 [ReportDate]
		)
Values
		(
			@AccID,
			@Date,
			@Type,
			@Remark,
			@TotalAmt,
			@Total,
			@ReportDate
		)
set @ID=@@IDENTITY
GO
/****** Object:  StoredProcedure [dbo].[iBet_tblRpStatement_Gets]    Script Date: 12/31/2010 17:36:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[iBet_tblRpStatement_Gets] 

AS
SELECT 
	[tblRpStatement].ID,
	[tblRpStatement].AccID,
	[tblRpStatement].Date,
	[tblRpStatement].Type,
	[tblRpStatement].Remark,
	[tblRpStatement].TotalAmt,
	[tblRpStatement].Total,
	[tblRpStatement].ReportDate
FROM [dbo].[tblRpStatement]
GO
/****** Object:  StoredProcedure [dbo].[iBet_tblRpStatement_Get]    Script Date: 12/31/2010 17:36:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[iBet_tblRpStatement_Get] 

	@ID bigint
AS
SELECT 
	ID,
	AccID,
	Date,
	Type,
	Remark,
	TotalAmt,
	Total,
	ReportDate
FROM [dbo].[tblRpStatement]
WHERE ((([dbo].[tblRpStatement].[ID])=@ID))
GO
/****** Object:  StoredProcedure [dbo].[iBet_tblRpStatement_Delete]    Script Date: 12/31/2010 17:36:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[iBet_tblRpStatement_Delete]

	@ID bigint

AS
DELETE
From [dbo].[tblRpStatement]
 WHERE ((([dbo].[tblRpStatement].[ID])=@ID))
GO
/****** Object:  StoredProcedure [dbo].[iBet_tblRpOutstandings_Update]    Script Date: 12/31/2010 17:36:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[iBet_tblRpOutstandings_Update] 


	@ID_KeyValues bigint,


	@ID bigint,
	@ParentID bigint,
	@AccID bigint,
	@StrAccID nvarchar(50),
	@SBOutstanding float,
	@SBPosition float,
	@CasinoTransfer float,
	@CasinoOutstanding float,
	@ReportDate datetime

AS
UPDATE [dbo].[tblRpOutstandings]
Set
	 [dbo].[tblRpOutstandings].[ParentID]=@ParentID,
	 [dbo].[tblRpOutstandings].[AccID]=@AccID,
	 [dbo].[tblRpOutstandings].[StrAccID]=@StrAccID,
	 [dbo].[tblRpOutstandings].[SBOutstanding]=@SBOutstanding,
	 [dbo].[tblRpOutstandings].[SBPosition]=@SBPosition,
	 [dbo].[tblRpOutstandings].[CasinoTransfer]=@CasinoTransfer,
	 [dbo].[tblRpOutstandings].[CasinoOutstanding]=@CasinoOutstanding,
	 [dbo].[tblRpOutstandings].[ReportDate]=@ReportDate
WHERE ((([dbo].[tblRpOutstandings].[ID])=@ID_KeyValues))
GO
/****** Object:  StoredProcedure [dbo].[iBet_tblRpOutstandings_Insert]    Script Date: 12/31/2010 17:36:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[iBet_tblRpOutstandings_Insert] 

	@ID bigint output,
	@ParentID bigint,
	@AccID bigint,
	@StrAccID nvarchar(50),
	@SBOutstanding float,
	@SBPosition float,
	@CasinoTransfer float,
	@CasinoOutstanding float,
	@ReportDate datetime

AS
INSERT INTO [dbo].[tblRpOutstandings]
		(
			 [ParentID],
			 [AccID],
			 [StrAccID],
			 [SBOutstanding],
			 [SBPosition],
			 [CasinoTransfer],
			 [CasinoOutstanding],
			 [ReportDate]
		)
Values
		(
			@ParentID,
			@AccID,
			@StrAccID,
			@SBOutstanding,
			@SBPosition,
			@CasinoTransfer,
			@CasinoOutstanding,
			@ReportDate
		)
set @ID=@@IDENTITY
GO
/****** Object:  StoredProcedure [dbo].[iBet_tblRpOutstandings_Gets]    Script Date: 12/31/2010 17:36:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[iBet_tblRpOutstandings_Gets] 

AS
SELECT 
	[tblRpOutstandings].ID,
	[tblRpOutstandings].ParentID,
	[tblRpOutstandings].AccID,
	[tblRpOutstandings].StrAccID,
	[tblRpOutstandings].SBOutstanding,
	[tblRpOutstandings].SBPosition,
	[tblRpOutstandings].CasinoTransfer,
	[tblRpOutstandings].CasinoOutstanding,
	[tblRpOutstandings].ReportDate
FROM [dbo].[tblRpOutstandings]
GO
/****** Object:  StoredProcedure [dbo].[iBet_tblRpOutstandings_Get]    Script Date: 12/31/2010 17:36:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[iBet_tblRpOutstandings_Get] 

	@ID bigint
AS
SELECT 
	ID,
	ParentID,
	AccID,
	StrAccID,
	SBOutstanding,
	SBPosition,
	CasinoTransfer,
	CasinoOutstanding,
	ReportDate
FROM [dbo].[tblRpOutstandings]
WHERE ((([dbo].[tblRpOutstandings].[ID])=@ID))
GO
/****** Object:  StoredProcedure [dbo].[iBet_tblRpOutstandings_Delete]    Script Date: 12/31/2010 17:36:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[iBet_tblRpOutstandings_Delete]

	@ID bigint

AS
DELETE
From [dbo].[tblRpOutstandings]
 WHERE ((([dbo].[tblRpOutstandings].[ID])=@ID))
GO
/****** Object:  StoredProcedure [dbo].[iBet_tblRpMatchWinLossDetail_Update]    Script Date: 12/31/2010 17:36:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[iBet_tblRpMatchWinLossDetail_Update] 


	@ID_KeyValues bigint,


	@ID bigint,
	@AccID bigint,
	@LeaguaID int,
	@MatchID bigint,
	@BetTypeID int,
	@LeaguaName nvarchar(500),
	@MatchName nvarchar(250),
	@BetTypeName nvarchar(50),
	@Turnover float,
	@GrossComm float,
	@MeWinLoss float,
	@MeComm float,
	@MeTotal float,
	@AgWinLoss float,
	@AgComm float,
	@AgTotal float,
	@MaWinLoss float,
	@MaComm float,
	@Matotal float,
	@GmWinLoss float,
	@GmComm float,
	@GmTotal float,
	@SuWinLoss float,
	@SuComm float,
	@SuTotal float,
	@CompanyComm float,
	@CompanyTotal float,
	@ReportDate datetime

AS
UPDATE [dbo].[tblRpMatchWinLossDetail]
Set
	 [dbo].[tblRpMatchWinLossDetail].[AccID]=@AccID,
	 [dbo].[tblRpMatchWinLossDetail].[LeaguaID]=@LeaguaID,
	 [dbo].[tblRpMatchWinLossDetail].[MatchID]=@MatchID,
	 [dbo].[tblRpMatchWinLossDetail].[BetTypeID]=@BetTypeID,
	 [dbo].[tblRpMatchWinLossDetail].[LeaguaName]=@LeaguaName,
	 [dbo].[tblRpMatchWinLossDetail].[MatchName]=@MatchName,
	 [dbo].[tblRpMatchWinLossDetail].[BetTypeName]=@BetTypeName,
	 [dbo].[tblRpMatchWinLossDetail].[Turnover]=@Turnover,
	 [dbo].[tblRpMatchWinLossDetail].[GrossComm]=@GrossComm,
	 [dbo].[tblRpMatchWinLossDetail].[MeWinLoss]=@MeWinLoss,
	 [dbo].[tblRpMatchWinLossDetail].[MeComm]=@MeComm,
	 [dbo].[tblRpMatchWinLossDetail].[MeTotal]=@MeTotal,
	 [dbo].[tblRpMatchWinLossDetail].[AgWinLoss]=@AgWinLoss,
	 [dbo].[tblRpMatchWinLossDetail].[AgComm]=@AgComm,
	 [dbo].[tblRpMatchWinLossDetail].[AgTotal]=@AgTotal,
	 [dbo].[tblRpMatchWinLossDetail].[MaWinLoss]=@MaWinLoss,
	 [dbo].[tblRpMatchWinLossDetail].[MaComm]=@MaComm,
	 [dbo].[tblRpMatchWinLossDetail].[Matotal]=@Matotal,
	 [dbo].[tblRpMatchWinLossDetail].[GmWinLoss]=@GmWinLoss,
	 [dbo].[tblRpMatchWinLossDetail].[GmComm]=@GmComm,
	 [dbo].[tblRpMatchWinLossDetail].[GmTotal]=@GmTotal,
	 [dbo].[tblRpMatchWinLossDetail].[SuWinLoss]=@SuWinLoss,
	 [dbo].[tblRpMatchWinLossDetail].[SuComm]=@SuComm,
	 [dbo].[tblRpMatchWinLossDetail].[SuTotal]=@SuTotal,
	 [dbo].[tblRpMatchWinLossDetail].[CompanyComm]=@CompanyComm,
	 [dbo].[tblRpMatchWinLossDetail].[CompanyTotal]=@CompanyTotal,
	 [dbo].[tblRpMatchWinLossDetail].[ReportDate]=@ReportDate
WHERE ((([dbo].[tblRpMatchWinLossDetail].[ID])=@ID_KeyValues))
GO
/****** Object:  StoredProcedure [dbo].[iBet_tblRpMatchWinLossDetail_Insert]    Script Date: 12/31/2010 17:36:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[iBet_tblRpMatchWinLossDetail_Insert] 

	@ID bigint output,
	@AccID bigint,
	@LeaguaID int,
	@MatchID bigint,
	@BetTypeID int,
	@LeaguaName nvarchar(500),
	@MatchName nvarchar(250),
	@BetTypeName nvarchar(50),
	@Turnover float,
	@GrossComm float,
	@MeWinLoss float,
	@MeComm float,
	@MeTotal float,
	@AgWinLoss float,
	@AgComm float,
	@AgTotal float,
	@MaWinLoss float,
	@MaComm float,
	@Matotal float,
	@GmWinLoss float,
	@GmComm float,
	@GmTotal float,
	@SuWinLoss float,
	@SuComm float,
	@SuTotal float,
	@CompanyComm float,
	@CompanyTotal float,
	@ReportDate datetime

AS
INSERT INTO [dbo].[tblRpMatchWinLossDetail]
		(
			 [AccID],
			 [LeaguaID],
			 [MatchID],
			 [BetTypeID],
			 [LeaguaName],
			 [MatchName],
			 [BetTypeName],
			 [Turnover],
			 [GrossComm],
			 [MeWinLoss],
			 [MeComm],
			 [MeTotal],
			 [AgWinLoss],
			 [AgComm],
			 [AgTotal],
			 [MaWinLoss],
			 [MaComm],
			 [Matotal],
			 [GmWinLoss],
			 [GmComm],
			 [GmTotal],
			 [SuWinLoss],
			 [SuComm],
			 [SuTotal],
			 [CompanyComm],
			 [CompanyTotal],
			 [ReportDate]
		)
Values
		(
			@AccID,
			@LeaguaID,
			@MatchID,
			@BetTypeID,
			@LeaguaName,
			@MatchName,
			@BetTypeName,
			@Turnover,
			@GrossComm,
			@MeWinLoss,
			@MeComm,
			@MeTotal,
			@AgWinLoss,
			@AgComm,
			@AgTotal,
			@MaWinLoss,
			@MaComm,
			@Matotal,
			@GmWinLoss,
			@GmComm,
			@GmTotal,
			@SuWinLoss,
			@SuComm,
			@SuTotal,
			@CompanyComm,
			@CompanyTotal,
			@ReportDate
		)
set @ID=@@IDENTITY
GO
/****** Object:  StoredProcedure [dbo].[iBet_tblRpMatchWinLossDetail_Gets]    Script Date: 12/31/2010 17:36:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[iBet_tblRpMatchWinLossDetail_Gets] 

AS
SELECT 
	[tblRpMatchWinLossDetail].ID,
	[tblRpMatchWinLossDetail].AccID,
	[tblRpMatchWinLossDetail].LeaguaID,
	[tblRpMatchWinLossDetail].MatchID,
	[tblRpMatchWinLossDetail].BetTypeID,
	[tblRpMatchWinLossDetail].LeaguaName,
	[tblRpMatchWinLossDetail].MatchName,
	[tblRpMatchWinLossDetail].BetTypeName,
	[tblRpMatchWinLossDetail].Turnover,
	[tblRpMatchWinLossDetail].GrossComm,
	[tblRpMatchWinLossDetail].MeWinLoss,
	[tblRpMatchWinLossDetail].MeComm,
	[tblRpMatchWinLossDetail].MeTotal,
	[tblRpMatchWinLossDetail].AgWinLoss,
	[tblRpMatchWinLossDetail].AgComm,
	[tblRpMatchWinLossDetail].AgTotal,
	[tblRpMatchWinLossDetail].MaWinLoss,
	[tblRpMatchWinLossDetail].MaComm,
	[tblRpMatchWinLossDetail].Matotal,
	[tblRpMatchWinLossDetail].GmWinLoss,
	[tblRpMatchWinLossDetail].GmComm,
	[tblRpMatchWinLossDetail].GmTotal,
	[tblRpMatchWinLossDetail].SuWinLoss,
	[tblRpMatchWinLossDetail].SuComm,
	[tblRpMatchWinLossDetail].SuTotal,
	[tblRpMatchWinLossDetail].CompanyComm,
	[tblRpMatchWinLossDetail].CompanyTotal,
	[tblRpMatchWinLossDetail].ReportDate
FROM [dbo].[tblRpMatchWinLossDetail]
GO
/****** Object:  StoredProcedure [dbo].[iBet_tblRpMatchWinLossDetail_Get]    Script Date: 12/31/2010 17:36:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[iBet_tblRpMatchWinLossDetail_Get] 

	@ID bigint
AS
SELECT 
	ID,
	AccID,
	LeaguaID,
	MatchID,
	BetTypeID,
	LeaguaName,
	MatchName,
	BetTypeName,
	Turnover,
	GrossComm,
	MeWinLoss,
	MeComm,
	MeTotal,
	AgWinLoss,
	AgComm,
	AgTotal,
	MaWinLoss,
	MaComm,
	Matotal,
	GmWinLoss,
	GmComm,
	GmTotal,
	SuWinLoss,
	SuComm,
	SuTotal,
	CompanyComm,
	CompanyTotal,
	ReportDate
FROM [dbo].[tblRpMatchWinLossDetail]
WHERE ((([dbo].[tblRpMatchWinLossDetail].[ID])=@ID))
GO
/****** Object:  StoredProcedure [dbo].[iBet_tblRpMatchWinLossDetail_Delete]    Script Date: 12/31/2010 17:36:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[iBet_tblRpMatchWinLossDetail_Delete]

	@ID bigint

AS
DELETE
From [dbo].[tblRpMatchWinLossDetail]
 WHERE ((([dbo].[tblRpMatchWinLossDetail].[ID])=@ID))
GO
/****** Object:  StoredProcedure [dbo].[iBet_tblRpMatchWinLoss_Update]    Script Date: 12/31/2010 17:36:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[iBet_tblRpMatchWinLoss_Update] 


	@ID_KeyValues bigint,


	@ID bigint,
	@AccID bigint,
	@MatchID int,
	@MatchName nvarchar(250),
	@BetType nvarchar(50),
	@GrossComm float,
	@Comm float,
	@PositionTaking float,
	@Total float,
	@ReportDate datetime

AS
UPDATE [dbo].[tblRpMatchWinLoss]
Set
	 [dbo].[tblRpMatchWinLoss].[AccID]=@AccID,
	 [dbo].[tblRpMatchWinLoss].[MatchID]=@MatchID,
	 [dbo].[tblRpMatchWinLoss].[MatchName]=@MatchName,
	 [dbo].[tblRpMatchWinLoss].[BetType]=@BetType,
	 [dbo].[tblRpMatchWinLoss].[GrossComm]=@GrossComm,
	 [dbo].[tblRpMatchWinLoss].[Comm]=@Comm,
	 [dbo].[tblRpMatchWinLoss].[PositionTaking]=@PositionTaking,
	 [dbo].[tblRpMatchWinLoss].[Total]=@Total,
	 [dbo].[tblRpMatchWinLoss].[ReportDate]=@ReportDate
WHERE ((([dbo].[tblRpMatchWinLoss].[ID])=@ID_KeyValues))
GO
/****** Object:  StoredProcedure [dbo].[iBet_tblRpMatchWinLoss_Insert]    Script Date: 12/31/2010 17:36:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[iBet_tblRpMatchWinLoss_Insert] 

	@ID bigint output,
	@AccID bigint,
	@MatchID int,
	@MatchName nvarchar(250),
	@BetType nvarchar(50),
	@GrossComm float,
	@Comm float,
	@PositionTaking float,
	@Total float,
	@ReportDate datetime

AS
INSERT INTO [dbo].[tblRpMatchWinLoss]
		(
			 [AccID],
			 [MatchID],
			 [MatchName],
			 [BetType],
			 [GrossComm],
			 [Comm],
			 [PositionTaking],
			 [Total],
			 [ReportDate]
		)
Values
		(
			@AccID,
			@MatchID,
			@MatchName,
			@BetType,
			@GrossComm,
			@Comm,
			@PositionTaking,
			@Total,
			@ReportDate
		)
set @ID=@@IDENTITY
GO
/****** Object:  StoredProcedure [dbo].[iBet_tblRpMatchWinLoss_Gets]    Script Date: 12/31/2010 17:36:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[iBet_tblRpMatchWinLoss_Gets] 

AS
SELECT 
	[tblRpMatchWinLoss].ID,
	[tblRpMatchWinLoss].AccID,
	[tblRpMatchWinLoss].MatchID,
	[tblRpMatchWinLoss].MatchName,
	[tblRpMatchWinLoss].BetType,
	[tblRpMatchWinLoss].GrossComm,
	[tblRpMatchWinLoss].Comm,
	[tblRpMatchWinLoss].PositionTaking,
	[tblRpMatchWinLoss].Total,
	[tblRpMatchWinLoss].ReportDate
FROM [dbo].[tblRpMatchWinLoss]
GO
/****** Object:  StoredProcedure [dbo].[iBet_tblRpMatchWinLoss_Get]    Script Date: 12/31/2010 17:36:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[iBet_tblRpMatchWinLoss_Get] 

	@ID bigint
AS
SELECT 
	ID,
	AccID,
	MatchID,
	MatchName,
	BetType,
	GrossComm,
	Comm,
	PositionTaking,
	Total,
	ReportDate
FROM [dbo].[tblRpMatchWinLoss]
WHERE ((([dbo].[tblRpMatchWinLoss].[ID])=@ID))
GO
/****** Object:  StoredProcedure [dbo].[iBet_tblRpMatchWinLoss_Delete]    Script Date: 12/31/2010 17:36:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[iBet_tblRpMatchWinLoss_Delete]

	@ID bigint

AS
DELETE
From [dbo].[tblRpMatchWinLoss]
 WHERE ((([dbo].[tblRpMatchWinLoss].[ID])=@ID))
GO
/****** Object:  StoredProcedure [dbo].[iBet_tblRpMatchLoss_Update]    Script Date: 12/31/2010 17:36:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[iBet_tblRpMatchLoss_Update] 


	@ID_KeyValues int,


	@ID int,
	@Results nvarchar(50),
	@YEntered nvarchar(50),
	@YNonEntered nvarchar(50),
	@Entered nvarchar(50),
	@NonEntered nvarchar(50),
	@UpdateTime datetime

AS
UPDATE [dbo].[tblRpMatchLoss]
Set
	 [dbo].[tblRpMatchLoss].[Results]=@Results,
	 [dbo].[tblRpMatchLoss].[YEntered]=@YEntered,
	 [dbo].[tblRpMatchLoss].[YNonEntered]=@YNonEntered,
	 [dbo].[tblRpMatchLoss].[Entered]=@Entered,
	 [dbo].[tblRpMatchLoss].[NonEntered]=@NonEntered,
	 [dbo].[tblRpMatchLoss].[UpdateTime]=@UpdateTime
WHERE ((([dbo].[tblRpMatchLoss].[ID])=@ID_KeyValues))
GO
/****** Object:  StoredProcedure [dbo].[iBet_tblRpMatchLoss_Insert]    Script Date: 12/31/2010 17:36:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[iBet_tblRpMatchLoss_Insert] 

	@ID int output,
	@Results nvarchar(50),
	@YEntered nvarchar(50),
	@YNonEntered nvarchar(50),
	@Entered nvarchar(50),
	@NonEntered nvarchar(50),
	@UpdateTime datetime

AS
INSERT INTO [dbo].[tblRpMatchLoss]
		(
			 [Results],
			 [YEntered],
			 [YNonEntered],
			 [Entered],
			 [NonEntered],
			 [UpdateTime]
		)
Values
		(
			@Results,
			@YEntered,
			@YNonEntered,
			@Entered,
			@NonEntered,
			@UpdateTime
		)
set @ID=@@IDENTITY
GO
/****** Object:  StoredProcedure [dbo].[iBet_tblRpMatchLoss_Gets]    Script Date: 12/31/2010 17:36:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[iBet_tblRpMatchLoss_Gets] 

AS
SELECT 
	[tblRpMatchLoss].ID,
	[tblRpMatchLoss].Results,
	[tblRpMatchLoss].YEntered,
	[tblRpMatchLoss].YNonEntered,
	[tblRpMatchLoss].Entered,
	[tblRpMatchLoss].NonEntered,
	[tblRpMatchLoss].UpdateTime
FROM [dbo].[tblRpMatchLoss]
GO
/****** Object:  StoredProcedure [dbo].[iBet_tblRpMatchLoss_Get]    Script Date: 12/31/2010 17:36:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[iBet_tblRpMatchLoss_Get] 

	@ID int
AS
SELECT 
	ID,
	Results,
	YEntered,
	YNonEntered,
	Entered,
	NonEntered,
	UpdateTime
FROM [dbo].[tblRpMatchLoss]
WHERE ((([dbo].[tblRpMatchLoss].[ID])=@ID))
GO
/****** Object:  StoredProcedure [dbo].[iBet_tblRpMatchLoss_Delete]    Script Date: 12/31/2010 17:36:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[iBet_tblRpMatchLoss_Delete]

	@ID int

AS
DELETE
From [dbo].[tblRpMatchLoss]
 WHERE ((([dbo].[tblRpMatchLoss].[ID])=@ID))
GO
/****** Object:  StoredProcedure [dbo].[iBet_tblRpHorseRacingComm_Update]    Script Date: 12/31/2010 17:36:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[iBet_tblRpHorseRacingComm_Update] 


	@ID_KeyValues bigint,


	@ID bigint,
	@AccID bigint,
	@StrAccID nvarchar(50),
	@Win float,
	@Place float,
	@WinPlace float,
	@Total float,
	@ReportDate datetime

AS
UPDATE [dbo].[tblRpHorseRacingComm]
Set
	 [dbo].[tblRpHorseRacingComm].[AccID]=@AccID,
	 [dbo].[tblRpHorseRacingComm].[StrAccID]=@StrAccID,
	 [dbo].[tblRpHorseRacingComm].[Win]=@Win,
	 [dbo].[tblRpHorseRacingComm].[Place]=@Place,
	 [dbo].[tblRpHorseRacingComm].[WinPlace]=@WinPlace,
	 [dbo].[tblRpHorseRacingComm].[Total]=@Total,
	 [dbo].[tblRpHorseRacingComm].[ReportDate]=@ReportDate
WHERE ((([dbo].[tblRpHorseRacingComm].[ID])=@ID_KeyValues))
GO
/****** Object:  StoredProcedure [dbo].[iBet_tblRpHorseRacingComm_Insert]    Script Date: 12/31/2010 17:36:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[iBet_tblRpHorseRacingComm_Insert] 

	@ID bigint output,
	@AccID bigint,
	@StrAccID nvarchar(50),
	@Win float,
	@Place float,
	@WinPlace float,
	@Total float,
	@ReportDate datetime

AS
INSERT INTO [dbo].[tblRpHorseRacingComm]
		(
			 [AccID],
			 [StrAccID],
			 [Win],
			 [Place],
			 [WinPlace],
			 [Total],
			 [ReportDate]
		)
Values
		(
			@AccID,
			@StrAccID,
			@Win,
			@Place,
			@WinPlace,
			@Total,
			@ReportDate
		)
set @ID=@@IDENTITY
GO
/****** Object:  StoredProcedure [dbo].[iBet_tblRpHorseRacingComm_Gets]    Script Date: 12/31/2010 17:36:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[iBet_tblRpHorseRacingComm_Gets] 

AS
SELECT 
	[tblRpHorseRacingComm].ID,
	[tblRpHorseRacingComm].AccID,
	[tblRpHorseRacingComm].StrAccID,
	[tblRpHorseRacingComm].Win,
	[tblRpHorseRacingComm].Place,
	[tblRpHorseRacingComm].WinPlace,
	[tblRpHorseRacingComm].Total,
	[tblRpHorseRacingComm].ReportDate
FROM [dbo].[tblRpHorseRacingComm]
GO
/****** Object:  StoredProcedure [dbo].[iBet_tblRpHorseRacingComm_Get]    Script Date: 12/31/2010 17:36:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[iBet_tblRpHorseRacingComm_Get] 

	@ID bigint
AS
SELECT 
	ID,
	AccID,
	StrAccID,
	Win,
	Place,
	WinPlace,
	Total,
	ReportDate
FROM [dbo].[tblRpHorseRacingComm]
WHERE ((([dbo].[tblRpHorseRacingComm].[ID])=@ID))
GO
/****** Object:  StoredProcedure [dbo].[iBet_tblRpHorseRacingComm_Delete]    Script Date: 12/31/2010 17:36:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[iBet_tblRpHorseRacingComm_Delete]

	@ID bigint

AS
DELETE
From [dbo].[tblRpHorseRacingComm]
 WHERE ((([dbo].[tblRpHorseRacingComm].[ID])=@ID))
GO
/****** Object:  StoredProcedure [dbo].[iBet_tblRpFinanceCommission_Update]    Script Date: 12/31/2010 17:36:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[iBet_tblRpFinanceCommission_Update] 


	@ID_KeyValues bigint,


	@ID bigint,
	@AccID bigint,
	@StrAccID nvarchar(50),
	@OU5Min float,
	@OU15Min float,
	@OU30Min float,
	@OU45Min float,
	@OU60Min float,
	@OUEndOfDay float,
	@OUTotal float,
	@OE5Min float,
	@OE15Min float,
	@OE30Min float,
	@OE45Min float,
	@OE60Min float,
	@OEEndOfDay float,
	@OETotal float,
	@ReportDate datetime

AS
UPDATE [dbo].[tblRpFinanceCommission]
Set
	 [dbo].[tblRpFinanceCommission].[AccID]=@AccID,
	 [dbo].[tblRpFinanceCommission].[StrAccID]=@StrAccID,
	 [dbo].[tblRpFinanceCommission].[OU5Min]=@OU5Min,
	 [dbo].[tblRpFinanceCommission].[OU15Min]=@OU15Min,
	 [dbo].[tblRpFinanceCommission].[OU30Min]=@OU30Min,
	 [dbo].[tblRpFinanceCommission].[OU45Min]=@OU45Min,
	 [dbo].[tblRpFinanceCommission].[OU60Min]=@OU60Min,
	 [dbo].[tblRpFinanceCommission].[OUEndOfDay]=@OUEndOfDay,
	 [dbo].[tblRpFinanceCommission].[OUTotal]=@OUTotal,
	 [dbo].[tblRpFinanceCommission].[OE5Min]=@OE5Min,
	 [dbo].[tblRpFinanceCommission].[OE15Min]=@OE15Min,
	 [dbo].[tblRpFinanceCommission].[OE30Min]=@OE30Min,
	 [dbo].[tblRpFinanceCommission].[OE45Min]=@OE45Min,
	 [dbo].[tblRpFinanceCommission].[OE60Min]=@OE60Min,
	 [dbo].[tblRpFinanceCommission].[OEEndOfDay]=@OEEndOfDay,
	 [dbo].[tblRpFinanceCommission].[OETotal]=@OETotal,
	 [dbo].[tblRpFinanceCommission].[ReportDate]=@ReportDate
WHERE ((([dbo].[tblRpFinanceCommission].[ID])=@ID_KeyValues))
GO
/****** Object:  StoredProcedure [dbo].[iBet_tblRpFinanceCommission_Insert]    Script Date: 12/31/2010 17:36:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[iBet_tblRpFinanceCommission_Insert] 

	@ID bigint output,
	@AccID bigint,
	@StrAccID nvarchar(50),
	@OU5Min float,
	@OU15Min float,
	@OU30Min float,
	@OU45Min float,
	@OU60Min float,
	@OUEndOfDay float,
	@OUTotal float,
	@OE5Min float,
	@OE15Min float,
	@OE30Min float,
	@OE45Min float,
	@OE60Min float,
	@OEEndOfDay float,
	@OETotal float,
	@ReportDate datetime

AS
INSERT INTO [dbo].[tblRpFinanceCommission]
		(
			 [AccID],
			 [StrAccID],
			 [OU5Min],
			 [OU15Min],
			 [OU30Min],
			 [OU45Min],
			 [OU60Min],
			 [OUEndOfDay],
			 [OUTotal],
			 [OE5Min],
			 [OE15Min],
			 [OE30Min],
			 [OE45Min],
			 [OE60Min],
			 [OEEndOfDay],
			 [OETotal],
			 [ReportDate]
		)
Values
		(
			@AccID,
			@StrAccID,
			@OU5Min,
			@OU15Min,
			@OU30Min,
			@OU45Min,
			@OU60Min,
			@OUEndOfDay,
			@OUTotal,
			@OE5Min,
			@OE15Min,
			@OE30Min,
			@OE45Min,
			@OE60Min,
			@OEEndOfDay,
			@OETotal,
			@ReportDate
		)
set @ID=@@IDENTITY
GO
/****** Object:  StoredProcedure [dbo].[iBet_tblRpFinanceCommission_Gets]    Script Date: 12/31/2010 17:36:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[iBet_tblRpFinanceCommission_Gets] 

AS
SELECT 
	[tblRpFinanceCommission].ID,
	[tblRpFinanceCommission].AccID,
	[tblRpFinanceCommission].StrAccID,
	[tblRpFinanceCommission].OU5Min,
	[tblRpFinanceCommission].OU15Min,
	[tblRpFinanceCommission].OU30Min,
	[tblRpFinanceCommission].OU45Min,
	[tblRpFinanceCommission].OU60Min,
	[tblRpFinanceCommission].OUEndOfDay,
	[tblRpFinanceCommission].OUTotal,
	[tblRpFinanceCommission].OE5Min,
	[tblRpFinanceCommission].OE15Min,
	[tblRpFinanceCommission].OE30Min,
	[tblRpFinanceCommission].OE45Min,
	[tblRpFinanceCommission].OE60Min,
	[tblRpFinanceCommission].OEEndOfDay,
	[tblRpFinanceCommission].OETotal,
	[tblRpFinanceCommission].ReportDate
FROM [dbo].[tblRpFinanceCommission]
GO
/****** Object:  StoredProcedure [dbo].[iBet_tblRpFinanceCommission_Get]    Script Date: 12/31/2010 17:36:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[iBet_tblRpFinanceCommission_Get] 

	@ID bigint
AS
SELECT 
	ID,
	AccID,
	StrAccID,
	OU5Min,
	OU15Min,
	OU30Min,
	OU45Min,
	OU60Min,
	OUEndOfDay,
	OUTotal,
	OE5Min,
	OE15Min,
	OE30Min,
	OE45Min,
	OE60Min,
	OEEndOfDay,
	OETotal,
	ReportDate
FROM [dbo].[tblRpFinanceCommission]
WHERE ((([dbo].[tblRpFinanceCommission].[ID])=@ID))
GO
/****** Object:  StoredProcedure [dbo].[iBet_tblRpFinanceCommission_Delete]    Script Date: 12/31/2010 17:36:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[iBet_tblRpFinanceCommission_Delete]

	@ID bigint

AS
DELETE
From [dbo].[tblRpFinanceCommission]
 WHERE ((([dbo].[tblRpFinanceCommission].[ID])=@ID))
GO
/****** Object:  StoredProcedure [dbo].[iBet_tblRpCommByBetType_Update]    Script Date: 12/31/2010 17:36:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[iBet_tblRpCommByBetType_Update] 


	@ID_KeyValues bigint,


	@ID bigint,
	@ParentID bigint,
	@AccID bigint,
	@StrAccID nvarchar(50),
	@Hdp decimal(18, 2),
	@OU decimal(18, 2),
	@OneHdp decimal(18, 2),
	@OneOU decimal(18, 2),
	@OE decimal(18, 2),
	@NG decimal(18, 2),
	@Total1 decimal(18, 2),
	@OneXTwo decimal(18, 2),
	@CorrectScore decimal(18, 2),
	@TG decimal(18, 2),
	@MP decimal(18, 2),
	@Outright decimal(18, 2),
	@FGLG decimal(18, 2),
	@HTFT decimal(18, 2),
	@MoneyLine decimal(18, 2),
	@Total2 decimal(18, 2),
	@ReportDate datetime

AS
UPDATE [dbo].[tblRpCommByBetType]
Set
	 [dbo].[tblRpCommByBetType].[ParentID]=@ParentID,
	 [dbo].[tblRpCommByBetType].[AccID]=@AccID,
	 [dbo].[tblRpCommByBetType].[StrAccID]=@StrAccID,
	 [dbo].[tblRpCommByBetType].[Hdp]=@Hdp,
	 [dbo].[tblRpCommByBetType].[OU]=@OU,
	 [dbo].[tblRpCommByBetType].[OneHdp]=@OneHdp,
	 [dbo].[tblRpCommByBetType].[OneOU]=@OneOU,
	 [dbo].[tblRpCommByBetType].[OE]=@OE,
	 [dbo].[tblRpCommByBetType].[NG]=@NG,
	 [dbo].[tblRpCommByBetType].[Total1]=@Total1,
	 [dbo].[tblRpCommByBetType].[OneXTwo]=@OneXTwo,
	 [dbo].[tblRpCommByBetType].[CorrectScore]=@CorrectScore,
	 [dbo].[tblRpCommByBetType].[TG]=@TG,
	 [dbo].[tblRpCommByBetType].[MP]=@MP,
	 [dbo].[tblRpCommByBetType].[Outright]=@Outright,
	 [dbo].[tblRpCommByBetType].[FGLG]=@FGLG,
	 [dbo].[tblRpCommByBetType].[HTFT]=@HTFT,
	 [dbo].[tblRpCommByBetType].[MoneyLine]=@MoneyLine,
	 [dbo].[tblRpCommByBetType].[Total2]=@Total2,
	 [dbo].[tblRpCommByBetType].[ReportDate]=@ReportDate
WHERE ((([dbo].[tblRpCommByBetType].[ID])=@ID_KeyValues))
GO
/****** Object:  StoredProcedure [dbo].[iBet_tblRpCommByBetType_Insert]    Script Date: 12/31/2010 17:36:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[iBet_tblRpCommByBetType_Insert] 

	@ID bigint output,
	@ParentID bigint,
	@AccID bigint,
	@StrAccID nvarchar(50),
	@Hdp decimal(18, 2),
	@OU decimal(18, 2),
	@OneHdp decimal(18, 2),
	@OneOU decimal(18, 2),
	@OE decimal(18, 2),
	@NG decimal(18, 2),
	@Total1 decimal(18, 2),
	@OneXTwo decimal(18, 2),
	@CorrectScore decimal(18, 2),
	@TG decimal(18, 2),
	@MP decimal(18, 2),
	@Outright decimal(18, 2),
	@FGLG decimal(18, 2),
	@HTFT decimal(18, 2),
	@MoneyLine decimal(18, 2),
	@Total2 decimal(18, 2),
	@ReportDate datetime

AS
INSERT INTO [dbo].[tblRpCommByBetType]
		(
			 [ParentID],
			 [AccID],
			 [StrAccID],
			 [Hdp],
			 [OU],
			 [OneHdp],
			 [OneOU],
			 [OE],
			 [NG],
			 [Total1],
			 [OneXTwo],
			 [CorrectScore],
			 [TG],
			 [MP],
			 [Outright],
			 [FGLG],
			 [HTFT],
			 [MoneyLine],
			 [Total2],
			 [ReportDate]
		)
Values
		(
			@ParentID,
			@AccID,
			@StrAccID,
			@Hdp,
			@OU,
			@OneHdp,
			@OneOU,
			@OE,
			@NG,
			@Total1,
			@OneXTwo,
			@CorrectScore,
			@TG,
			@MP,
			@Outright,
			@FGLG,
			@HTFT,
			@MoneyLine,
			@Total2,
			@ReportDate
		)
set @ID=@@IDENTITY
GO
/****** Object:  StoredProcedure [dbo].[iBet_tblRpCommByBetType_GetsAll]    Script Date: 12/31/2010 17:36:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create PROCEDURE [dbo].[iBet_tblRpCommByBetType_GetsAll] 
	@ParentID int = 0 ,
	@fdate nvarchar(100),
	@tdate nvarchar(100)
AS
BEGIN
	SET NOCOUNT ON;
	SELECT 
		AccID,
		StrAccID,
		SUM(Hdp) as Hdp,
		SUM(OU) as OU,
		SUM(OneHdp) as OneHdp,
		SUM(OneOU) as OneOU,
		SUM(OE) as OE,
		SUM(NG) as NG,
		SUM(Total1) as Total1,
		SUM(OneXTwo) as OneXTwo,
		SUM(CorrectScore) as CorrectScore,
		SUM(TG) as TG,
		SUM(MP) as MP,
		SUM(Outright) as Outright,
		SUM(FGLG) as FGLG,
		SUM(HTFT) as HTFT,
		SUM(MoneyLine) as MoneyLine,
		SUM(Total2) as Total2
	FROM [dbo].[tblRpCommByBetType]
	WHERE ReportDate >= @fdate and ReportDate <= @tdate and ParentID= @ParentID
	GROUP BY AccID, StrAccID
END
GO
/****** Object:  StoredProcedure [dbo].[iBet_tblRpCommByBetType_Gets]    Script Date: 12/31/2010 17:36:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[iBet_tblRpCommByBetType_Gets] 

AS
SELECT 
	[tblRpCommByBetType].ID,
	[tblRpCommByBetType].ParentID,
	[tblRpCommByBetType].AccID,
	[tblRpCommByBetType].StrAccID,
	[tblRpCommByBetType].Hdp,
	[tblRpCommByBetType].OU,
	[tblRpCommByBetType].OneHdp,
	[tblRpCommByBetType].OneOU,
	[tblRpCommByBetType].OE,
	[tblRpCommByBetType].NG,
	[tblRpCommByBetType].Total1,
	[tblRpCommByBetType].OneXTwo,
	[tblRpCommByBetType].CorrectScore,
	[tblRpCommByBetType].TG,
	[tblRpCommByBetType].MP,
	[tblRpCommByBetType].Outright,
	[tblRpCommByBetType].FGLG,
	[tblRpCommByBetType].HTFT,
	[tblRpCommByBetType].MoneyLine,
	[tblRpCommByBetType].Total2,
	[tblRpCommByBetType].ReportDate
FROM [dbo].[tblRpCommByBetType]
GO
/****** Object:  StoredProcedure [dbo].[iBet_tblRpCommByBetType_Get]    Script Date: 12/31/2010 17:36:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[iBet_tblRpCommByBetType_Get] 

	@ID bigint
AS
SELECT 
	ID,
	ParentID,
	AccID,
	StrAccID,
	Hdp,
	OU,
	OneHdp,
	OneOU,
	OE,
	NG,
	Total1,
	OneXTwo,
	CorrectScore,
	TG,
	MP,
	Outright,
	FGLG,
	HTFT,
	MoneyLine,
	Total2,
	ReportDate
FROM [dbo].[tblRpCommByBetType]
WHERE ((([dbo].[tblRpCommByBetType].[ID])=@ID))
GO
/****** Object:  StoredProcedure [dbo].[iBet_tblRpCommByBetType_Delete]    Script Date: 12/31/2010 17:36:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[iBet_tblRpCommByBetType_Delete]

	@ID bigint

AS
DELETE
From [dbo].[tblRpCommByBetType]
 WHERE ((([dbo].[tblRpCommByBetType].[ID])=@ID))
GO
/****** Object:  StoredProcedure [dbo].[iBet_tblBetType_Update]    Script Date: 12/31/2010 17:36:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[iBet_tblBetType_Update] 


	@ID_KeyValues int,


	@ID int,
	@NameType nvarchar(255),
	@Description nvarchar(255)

AS
UPDATE [dbo].[tblBetType]
Set
	 [dbo].[tblBetType].[NameType]=@NameType,
	 [dbo].[tblBetType].[Description]=@Description
WHERE ((([dbo].[tblBetType].[ID])=@ID_KeyValues))
GO
/****** Object:  StoredProcedure [dbo].[iBet_tblBetType_Insert]    Script Date: 12/31/2010 17:36:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[iBet_tblBetType_Insert] 

	@ID int output,
	@NameType nvarchar(255),
	@Description nvarchar(255)

AS
INSERT INTO [dbo].[tblBetType]
		(
			 [NameType],
			 [Description]
		)
Values
		(
			@NameType,
			@Description
		)
set @ID=@@IDENTITY
GO
/****** Object:  StoredProcedure [dbo].[iBet_tblBetType_Gets]    Script Date: 12/31/2010 17:36:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[iBet_tblBetType_Gets] 

AS
SELECT 
	[tblBetType].ID,
	[tblBetType].NameType,
	[tblBetType].Description
FROM [dbo].[tblBetType]
GO
/****** Object:  StoredProcedure [dbo].[iBet_tblBetType_Get]    Script Date: 12/31/2010 17:36:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[iBet_tblBetType_Get] 

	@ID int
AS
SELECT 
	ID,
	NameType,
	Description
FROM [dbo].[tblBetType]
WHERE ((([dbo].[tblBetType].[ID])=@ID))
GO
/****** Object:  StoredProcedure [dbo].[iBet_tblBetType_Delete]    Script Date: 12/31/2010 17:36:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[iBet_tblBetType_Delete]

	@ID int

AS
DELETE
From [dbo].[tblBetType]
 WHERE ((([dbo].[tblBetType].[ID])=@ID))
GO
/****** Object:  StoredProcedure [dbo].[iBet_tblBets_Update]    Script Date: 12/31/2010 17:36:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[iBet_tblBets_Update] 


	@ID_KeyValues bigint,


	@ID bigint,
	@AccID int,
	@MatchID bigint,
	@BetTypeID int,
	@ParentID bigint,
	@SGMId bigint,
	@GMId bigint,
	@MasterId bigint,
	@AgentId bigint,
	@StrAcc nvarchar(50),
	@BetType nvarchar(255),
	@LeaguaName nvarchar(255),
	@Home nvarchar(255),
	@Away nvarchar(255),
	@Time nvarchar(255),
	@TransTime datetime,
	@Code nvarchar(50),
	@Choice nvarchar(50),
	@Hdp float,
	@Odds float,
	@Stake decimal(18, 2),
	@Status nvarchar(50),
	@IPBet nvarchar(50),
	@PotentialWin float,
	@Win float,
	@IsLiveBet bit,
	@ResultLiveBet nvarchar(50),
	@ResultTime datetime,
	@FinalScore nvarchar(50),
	@PTSGM float,
	@PTGM float,
	@PTMaster float,
	@PTAgent float,
	@CommSGM float,
	@CommGM float,
	@CommMaster float,
	@CommAgent float,
	@CommMember float,
	@OTValue nchar(10),
	@NameEvent nvarchar(150),
	@ReportDate datetime

AS
UPDATE [dbo].[tblBets]
Set
	 [dbo].[tblBets].[AccID]=@AccID,
	 [dbo].[tblBets].[MatchID]=@MatchID,
	 [dbo].[tblBets].[BetTypeID]=@BetTypeID,
	 [dbo].[tblBets].[ParentID]=@ParentID,
	 [dbo].[tblBets].[SGMId]=@SGMId,
	 [dbo].[tblBets].[GMId]=@GMId,
	 [dbo].[tblBets].[MasterId]=@MasterId,
	 [dbo].[tblBets].[AgentId]=@AgentId,
	 [dbo].[tblBets].[StrAcc]=@StrAcc,
	 [dbo].[tblBets].[BetType]=@BetType,
	 [dbo].[tblBets].[LeaguaName]=@LeaguaName,
	 [dbo].[tblBets].[Home]=@Home,
	 [dbo].[tblBets].[Away]=@Away,
	 [dbo].[tblBets].[Time]=@Time,
	 [dbo].[tblBets].[TransTime]=@TransTime,
	 [dbo].[tblBets].[Code]=@Code,
	 [dbo].[tblBets].[Choice]=@Choice,
	 [dbo].[tblBets].[Hdp]=@Hdp,
	 [dbo].[tblBets].[Odds]=@Odds,
	 [dbo].[tblBets].[Stake]=@Stake,
	 [dbo].[tblBets].[Status]=@Status,
	 [dbo].[tblBets].[IPBet]=@IPBet,
	 [dbo].[tblBets].[PotentialWin]=@PotentialWin,
	 [dbo].[tblBets].[Win]=@Win,
	 [dbo].[tblBets].[IsLiveBet]=@IsLiveBet,
	 [dbo].[tblBets].[ResultLiveBet]=@ResultLiveBet,
	 [dbo].[tblBets].[ResultTime]=@ResultTime,
	 [dbo].[tblBets].[FinalScore]=@FinalScore,
	 [dbo].[tblBets].[PTSGM]=@PTSGM,
	 [dbo].[tblBets].[PTGM]=@PTGM,
	 [dbo].[tblBets].[PTMaster]=@PTMaster,
	 [dbo].[tblBets].[PTAgent]=@PTAgent,
	 [dbo].[tblBets].[CommSGM]=@CommSGM,
	 [dbo].[tblBets].[CommGM]=@CommGM,
	 [dbo].[tblBets].[CommMaster]=@CommMaster,
	 [dbo].[tblBets].[CommAgent]=@CommAgent,
	 [dbo].[tblBets].[CommMember]=@CommMember,
	 [dbo].[tblBets].[OTValue]=@OTValue,
	 [dbo].[tblBets].[NameEvent]=@NameEvent,
	 [dbo].[tblBets].[ReportDate]=@ReportDate
WHERE ((([dbo].[tblBets].[ID])=@ID_KeyValues))
GO
/****** Object:  StoredProcedure [dbo].[iBet_tblAdmAccounts_Update]    Script Date: 12/31/2010 17:36:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[iBet_tblAdmAccounts_Update] 


	@AdminId_KeyValues int,


	@AdminId int,
	@AdminName nvarchar(250),
	@AdminPass nvarchar(250),
	@SubAdmin int,
	@GroupHolders nvarchar(50),
	@SGMIDs nvarchar(200),
	@LastLoginTime datetime,
	@LastLoginIp nvarchar(50),
	@CreateDate datetime,
	@CreateBy int,
	@ModifyDate datetime,
	@ModifyBy int

AS
UPDATE [dbo].[tblAdm_Accounts]
Set
	 [dbo].[tblAdm_Accounts].[AdminName]=@AdminName,
	 [dbo].[tblAdm_Accounts].[AdminPass]=@AdminPass,
	 [dbo].[tblAdm_Accounts].[SubAdmin]=@SubAdmin,
	 [dbo].[tblAdm_Accounts].[GroupHolders]=@GroupHolders,
	 [dbo].[tblAdm_Accounts].[SGMIDs]=@SGMIDs,
	 [dbo].[tblAdm_Accounts].[LastLoginTime]=@LastLoginTime,
	 [dbo].[tblAdm_Accounts].[LastLoginIp]=@LastLoginIp,
	 [dbo].[tblAdm_Accounts].[CreateDate]=@CreateDate,
	 [dbo].[tblAdm_Accounts].[CreateBy]=@CreateBy,
	 [dbo].[tblAdm_Accounts].[ModifyDate]=@ModifyDate,
	 [dbo].[tblAdm_Accounts].[ModifyBy]=@ModifyBy
WHERE ((([dbo].[tblAdm_Accounts].[AdminId])=@AdminId_KeyValues))
GO
/****** Object:  StoredProcedure [dbo].[iBet_tblAdmAccounts_Insert]    Script Date: 12/31/2010 17:36:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[iBet_tblAdmAccounts_Insert] 

	@AdminId int,
	@AdminName nvarchar(250),
	@AdminPass nvarchar(250),
	@SubAdmin int,
	@GroupHolders nvarchar(50),
	@SGMIDs nvarchar(200),
	@LastLoginTime datetime,
	@LastLoginIp nvarchar(50),
	@CreateDate datetime,
	@CreateBy int,
	@ModifyDate datetime,
	@ModifyBy int

AS
INSERT INTO [dbo].[tblAdm_Accounts]
		(
			 [AdminName],
			 [AdminPass],
			 [SubAdmin],
			 [GroupHolders],
			 [SGMIDs],
			 [LastLoginTime],
			 [LastLoginIp],
			 [CreateDate],
			 [CreateBy],
			 [ModifyDate],
			 [ModifyBy]
		)
Values
		(
			@AdminName,
			@AdminPass,
			@SubAdmin,
			@GroupHolders,
			@SGMIDs,
			@LastLoginTime,
			@LastLoginIp,
			@CreateDate,
			@CreateBy,
			@ModifyDate,
			@ModifyBy
		)
GO
/****** Object:  StoredProcedure [dbo].[iBet_tblAdmAccounts_Gets]    Script Date: 12/31/2010 17:36:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[iBet_tblAdmAccounts_Gets] 

AS
SELECT 
	[tblAdm_Accounts].AdminId,
	[tblAdm_Accounts].AdminName,
	[tblAdm_Accounts].AdminPass,
	[tblAdm_Accounts].SubAdmin,
	[tblAdm_Accounts].GroupHolders,
	[tblAdm_Accounts].SGMIDs,
	[tblAdm_Accounts].LastLoginTime,
	[tblAdm_Accounts].LastLoginIp,
	[tblAdm_Accounts].CreateDate,
	[tblAdm_Accounts].CreateBy,
	[tblAdm_Accounts].ModifyDate,
	[tblAdm_Accounts].ModifyBy
FROM [dbo].[tblAdm_Accounts]
GO
/****** Object:  StoredProcedure [dbo].[iBet_tblAdmAccounts_Get]    Script Date: 12/31/2010 17:36:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[iBet_tblAdmAccounts_Get] 

	@AdminId int
AS
SELECT 
	AdminId,
	AdminName,
	AdminPass,
	SubAdmin,
	GroupHolders,
	SGMIDs,
	LastLoginTime,
	LastLoginIp,
	CreateDate,
	CreateBy,
	ModifyDate,
	ModifyBy
FROM [dbo].[tblAdm_Accounts]
WHERE ((([dbo].[tblAdm_Accounts].[AdminId])=@AdminId))
GO
/****** Object:  StoredProcedure [dbo].[iBet_tblAdmAccounts_Delete]    Script Date: 12/31/2010 17:36:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[iBet_tblAdmAccounts_Delete]

	@AdminId int

AS
DELETE
From [dbo].[tblAdm_Accounts]
 WHERE ((([dbo].[tblAdm_Accounts].[AdminId])=@AdminId))
GO
/****** Object:  StoredProcedure [dbo].[iBet_tblAccounts_Update]    Script Date: 12/31/2010 17:36:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[iBet_tblAccounts_Update] 


	@ID bigint,
	@ParentID bigint,
	@SGMId bigint,
	@GMId bigint,
	@MaterId bigint,
	@AgentId bigint,
	@AccountID bigint,
	@AccGrade int,
	@UserName nvarchar(50),
	@Password nvarchar(150),
	@NickName nvarchar(250),
	@Firtname nvarchar(100),
	@LastName nvarchar(150),
	@Phone nvarchar(50),
	@MobilePhone nvarchar(50),
	@MaxCredit decimal(18, 2),
	@Fax nvarchar(50),
	@IsOpen bit,
	@IsSuspended bit,
	@AllowAutoPT bit,
	@TransferConditionId int,
	@CreateBy bigint,
	@CreateDate datetime,
	@ModifyBy bigint,
	@ModifyDate datetime,
	@LastTxn datetime,
	@PasswordExpiryDate datetime,
	@LoginIP nvarchar(50),
	@LoginTime datetime,
	@LastLoginIP nvarchar(50),
	@LastLoginTime datetime,
	@IsOutright bit

AS
UPDATE [dbo].[tblAccounts]
Set
	 [dbo].[tblAccounts].[ParentID]=@ParentID,
	 [dbo].[tblAccounts].[SGMId]=@SGMId,
	 [dbo].[tblAccounts].[GMId]=@GMId,
	 [dbo].[tblAccounts].[MaterId]=@MaterId,
	 [dbo].[tblAccounts].[AgentId]=@AgentId,
	 [dbo].[tblAccounts].[AccountID]=@AccountID,
	 [dbo].[tblAccounts].[AccGrade]=@AccGrade,
	 [dbo].[tblAccounts].[UserName]=@UserName,
	 [dbo].[tblAccounts].[Password]=@Password,
	 [dbo].[tblAccounts].[NickName]=@NickName,
	 [dbo].[tblAccounts].[Firtname]=@Firtname,
	 [dbo].[tblAccounts].[LastName]=@LastName,
	 [dbo].[tblAccounts].[Phone]=@Phone,
	 [dbo].[tblAccounts].[MobilePhone]=@MobilePhone,
	 [dbo].[tblAccounts].[MaxCredit]=@MaxCredit,
	 [dbo].[tblAccounts].[Fax]=@Fax,
	 [dbo].[tblAccounts].[IsOpen]=@IsOpen,
	 [dbo].[tblAccounts].[IsSuspended]=@IsSuspended,
	 [dbo].[tblAccounts].[AllowAutoPT]=@AllowAutoPT,
	 [dbo].[tblAccounts].[TransferConditionId]=@TransferConditionId,
	 [dbo].[tblAccounts].[CreateBy]=@CreateBy,
	 [dbo].[tblAccounts].[CreateDate]=@CreateDate,
	 [dbo].[tblAccounts].[ModifyBy]=@ModifyBy,
	 [dbo].[tblAccounts].[ModifyDate]=@ModifyDate,
	 [dbo].[tblAccounts].[LastTxn]=@LastTxn,
	 [dbo].[tblAccounts].[PasswordExpiryDate]=@PasswordExpiryDate,
	 [dbo].[tblAccounts].[LoginIP]=@LoginIP,
	 [dbo].[tblAccounts].[LoginTime]=@LoginTime,
	 [dbo].[tblAccounts].[LastLoginIP]=@LastLoginIP,
	 [dbo].[tblAccounts].[LastLoginTime]=@LastLoginTime,
	 [dbo].[tblAccounts].[IsOutright]=@IsOutright
WHERE ((([dbo].[tblAccounts].[ID])=@ID))
GO
/****** Object:  StoredProcedure [dbo].[iBet_tblAccounts_ResetPassword]    Script Date: 12/31/2010 17:36:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[iBet_tblAccounts_ResetPassword] 
	@ID bigint,
	@Password nvarchar(50)

AS
UPDATE [dbo].[tblAccounts]
Set Password=@Password where ID=@ID
GO
/****** Object:  StoredProcedure [dbo].[iBet_tblAccounts_Insert]    Script Date: 12/31/2010 17:36:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[iBet_tblAccounts_Insert] 

	@ParentID bigint,
	@SGMId bigint,
	@GMId bigint,
	@MaterId bigint,
	@AgentId bigint,
	@AccountID bigint,
	@AccGrade int,
	@UserName nvarchar(50),
	@Password nvarchar(150),
	@NickName nvarchar(250),
	@Firtname nvarchar(100),
	@LastName nvarchar(150),
	@Phone nvarchar(50),
	@MobilePhone nvarchar(50),
	@MaxCredit decimal(18, 2),
	@Fax nvarchar(50),
	@IsOpen bit,
	@IsSuspended bit,
	@AllowAutoPT bit,
	@TransferConditionId int,
	@CreateBy bigint,
	@CreateDate datetime,
	@ModifyBy bigint,
	@ModifyDate datetime,
	@LastTxn datetime,
	@PasswordExpiryDate datetime,
	@LoginIP nvarchar(50),
	@LoginTime datetime,
	@LastLoginIP nvarchar(50),
	@LastLoginTime datetime,
	@IsOutright bit

AS
INSERT INTO [dbo].[tblAccounts]
		(
			 [ParentID],
			 [SGMId],
			 [GMId],
			 [MaterId],
			 [AgentId],
			 [AccountID],
			 [AccGrade],
			 [UserName],
			 [Password],
			 [NickName],
			 [Firtname],
			 [LastName],
			 [Phone],
			 [MobilePhone],
			 [MaxCredit],
			 [Fax],
			 [IsOpen],
			 [IsSuspended],
			 [AllowAutoPT],
			 [TransferConditionId],
			 [CreateBy],
			 [CreateDate],
			 [ModifyBy],
			 [ModifyDate],
			 [LastTxn],
			 [PasswordExpiryDate],
			 [LoginIP],
			 [LoginTime],
			 [LastLoginIP],
			 [LastLoginTime],
			 [IsOutright]
		)
Values
		(
			@ParentID,
			@SGMId,
			@GMId,
			@MaterId,
			@AgentId,
			@AccountID,
			@AccGrade,
			@UserName,
			@Password,
			@NickName,
			@Firtname,
			@LastName,
			@Phone,
			@MobilePhone,
			@MaxCredit,
			@Fax,
			@IsOpen,
			@IsSuspended,
			@AllowAutoPT,
			@TransferConditionId,
			@CreateBy,
			@CreateDate,
			@ModifyBy,
			@ModifyDate,
			@LastTxn,
			@PasswordExpiryDate,
			@LoginIP,
			@LoginTime,
			@LastLoginIP,
			@LastLoginTime,
			@IsOutright
		)
GO
/****** Object:  StoredProcedure [dbo].[iBet_tblAccounts_Gets]    Script Date: 12/31/2010 17:36:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[iBet_tblAccounts_Gets] 

AS
SELECT 
	[tblAccounts].ID,
	[tblAccounts].ParentID,
	[tblAccounts].SGMId,
	[tblAccounts].GMId,
	[tblAccounts].MaterId,
	[tblAccounts].AgentId,
	[tblAccounts].AccountID,
	[tblAccounts].AccGrade,
	[tblAccounts].UserName,
	[tblAccounts].Password,
	[tblAccounts].NickName,
	[tblAccounts].Firtname,
	[tblAccounts].LastName,
	[tblAccounts].Phone,
	[tblAccounts].MobilePhone,
	[tblAccounts].MaxCredit,
	[tblAccounts].Fax,
	[tblAccounts].IsOpen,
	[tblAccounts].IsSuspended,
	[tblAccounts].AllowAutoPT,
	[tblAccounts].TransferConditionId,
	[tblAccounts].CreateBy,
	[tblAccounts].CreateDate,
	[tblAccounts].ModifyBy,
	[tblAccounts].ModifyDate,
	[tblAccounts].LastTxn,
	[tblAccounts].PasswordExpiryDate,
	[tblAccounts].LoginIP,
	[tblAccounts].LoginTime,
	[tblAccounts].LastLoginIP,
	[tblAccounts].LastLoginTime,
	[tblAccounts].IsOutright
FROM [dbo].[tblAccounts]
GO
/****** Object:  StoredProcedure [dbo].[iBet_tblAccounts_Get]    Script Date: 12/31/2010 17:36:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[iBet_tblAccounts_Get] 

	@ID bigint
AS
SELECT 
	ID,
	ParentID,
	SGMId,
	GMId,
	MaterId,
	AgentId,
	AccountID,
	AccGrade,
	UserName,
	Password,
	NickName,
	Firtname,
	LastName,
	Phone,
	MobilePhone,
	MaxCredit,
	Fax,
	IsOpen,
	IsSuspended,
	AllowAutoPT,
	TransferConditionId,
	CreateBy,
	CreateDate,
	ModifyBy,
	ModifyDate,
	LastTxn,
	PasswordExpiryDate,
	LoginIP,
	LoginTime,
	LastLoginIP,
	LastLoginTime,
	IsOutright
FROM [dbo].[tblAccounts]
WHERE ((([dbo].[tblAccounts].[ID])=@ID))
GO
/****** Object:  StoredProcedure [dbo].[iBet_tblAccounts_Delete]    Script Date: 12/31/2010 17:36:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[iBet_tblAccounts_Delete]

	@ID bigint

AS
DELETE
From [dbo].[tblAccounts]
 WHERE ((([dbo].[tblAccounts].[ID])=@ID))
GO
/****** Object:  StoredProcedure [dbo].[iBet_tblAccounts_CheckUserName]    Script Date: 12/31/2010 17:36:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[iBet_tblAccounts_CheckUserName] 

	@UserName nvarchar(50)
AS
SELECT 
	ID
FROM [dbo].[tblAccounts]
WHERE UPPER(UserName)=UPPER(@UserName)
GO
/****** Object:  StoredProcedure [dbo].[iBet_ReportMatchWinLostAgentDate]    Script Date: 12/31/2010 17:36:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create PROCEDURE [dbo].[iBet_ReportMatchWinLostAgentDate]
	@ID int = 0,
	@TDate datetime = getdate
AS
BEGIN
	SET NOCOUNT ON;
	SELECT
	MatchID, BetTypeID, BetType as BetTypeName, (Home +'(N)-vs- '+ Away) as MatchName, LeaguaName,
	SUM(CASE WHEN SGMId		  = @ID  THEN  Stake
			 WHEN GMId		  = @ID THEN  Stake
			 WHEN MasterId    = @ID  THEN  Stake
			 WHEN AgentId	  = @ID  THEN  Stake 
			 ELSE NULL
			 END 			 
	) as Turnover,
	SUM(CASE WHEN SGMId		  = @ID THEN  Stake * CommSGM / 100
			 WHEN GMId		  = @ID THEN  Stake * CommGm / 100
			 WHEN MasterId    = @ID THEN  Stake * CommMaster / 100
			 WHEN AgentId	  = @ID THEN  Stake * CommAgent / 100
			 ELSE NULL
			 END 			 
	) as GrossComm,
	SUM(CASE WHEN SGMId		  = @ID THEN  Win
			 WHEN GMId		  = @ID THEN Win
			 WHEN MasterId    = @ID THEN  Win
			 WHEN AgentId	  = @ID THEN  Win
			 ELSE NULL
			 END 			 
	) as MeWinLoss,
	SUM(CASE WHEN SGMId		  = @ID THEN Stake * CommMember / 100
			 WHEN GMId		  = @ID THEN Stake * CommMember / 100
			 WHEN MasterId    = @ID THEN Stake * CommMember / 100
			 WHEN AgentId	  = @ID THEN Stake * CommMember / 100
			 ELSE NULL
			 END 			 
	) as MeComm,
	SUM(CASE WHEN SGMId	  = @ID THEN  -Win * PTAgent / 100
			 WHEN GMId	  = @ID THEN  -Win * PTAgent / 100
			 WHEN MasterId	  = @ID THEN  -Win * PTAgent / 100
			 WHEN AgentId	  = @ID THEN  -Win * PTAgent / 100
			 ELSE NULL
			 END 			 
	) as AgWinLoss,
	SUM(CASE WHEN SGMId	  = @ID THEN Stake * (CommAgent-CommMember) / 100
			 WHEN GMId	  = @ID THEN Stake * (CommAgent-CommMember) / 100
			 WHEN MasterId	  = @ID THEN Stake * (CommAgent-CommMember) / 100
			 WHEN AgentId	  = @ID THEN Stake * (CommAgent-CommMember) / 100
			 ELSE NULL
			 END 			 
	) as AgComm,
	SUM(CASE WHEN SGMId	  = @ID THEN  -Win * PTMaster / 100
			 WHEN GMId	  = @ID THEN  -Win * PTMaster / 100
			 WHEN MasterId	  = @ID THEN  -Win * PTMaster / 100
			 WHEN AgentId	  = @ID THEN  -Win * PTMaster / 100
			 ELSE NULL
			 END 			 
	) as MaWinLoss,
	SUM(CASE WHEN SGMId	  = @ID THEN Stake * (CommMaster-CommAgent) / 100
			 WHEN GMId	  = @ID THEN Stake * (CommMaster-CommAgent) / 100
			 WHEN MasterId	  = @ID THEN Stake * (CommMaster-CommAgent) / 100
			 WHEN AgentId	  = @ID THEN Stake * (CommMaster-CommAgent) / 100
			 ELSE NULL
			 END 			 
	) as MaComm,
	SUM(CASE WHEN SGMId	  = @ID THEN  -Win * PTGM / 100
			 WHEN GMId	  = @ID THEN  -Win * PTGM / 100
			 WHEN MasterId	  = @ID THEN  -Win * PTGM / 100
			 WHEN AgentId	  = @ID THEN  -Win * PTGM / 100
			 ELSE NULL
			 END 			 
	) as GmWinLoss,
	SUM(CASE WHEN SGMId	  = @ID THEN Stake * (CommGM - CommMaster) / 100
			 WHEN GMId	  = @ID THEN Stake * (CommGM - CommMaster) / 100
			 WHEN MasterId	  = @ID THEN Stake * (CommGM - CommMaster) / 100
			 WHEN AgentId	  = @ID THEN Stake * (CommGM - CommMaster) / 100
			 ELSE NULL
			 END 			 
	) as GmComm,
	SUM(CASE WHEN SGMId	  = @ID THEN  -Win * PTSGM / 100
			 WHEN GMId	  = @ID THEN  -Win * PTSGM / 100
			 WHEN MasterId	  = @ID THEN  -Win * PTSGM / 100
			 WHEN AgentId	  = @ID THEN  -Win * PTSGM / 100
			 ELSE NULL
			 END 			 
	) as SuWinLoss,
	SUM(CASE WHEN SGMId	  = @ID THEN Stake * (CommSGM-CommGM) / 100
			 WHEN GMId	  = @ID THEN Stake * (CommSGM-CommGM) / 100
			 WHEN MasterId	  = @ID THEN Stake * (CommSGM-CommGM) / 100
			 WHEN AgentId	  = @ID THEN Stake * (CommSGM-CommGM) / 100
			 ELSE NULL
			 END 			 
	) as SuComm
	
	FROM tblBets
	WHERE (tblBets.[Status] ='Won' OR tblBets.[Status]='Lose') And (tblBets.[ReportDate] = @TDate) 
	GROUP BY MatchID, BetTypeID, BetType, Home, Away, LeaguaName
END
GO
/****** Object:  StoredProcedure [dbo].[iBet_ReportMatchWinLostAgent]    Script Date: 12/31/2010 17:36:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[iBet_ReportMatchWinLostAgent]
	@ID int = 0,
	@FDate datetime = getdate,
	@TDate datetime = getdate
AS
BEGIN
	SET NOCOUNT ON;
	SELECT
	MatchID, BetTypeID, BetType as BetTypeName, (Home +'(N)-vs- '+ Away) as MatchName, LeaguaName,
	SUM(CASE WHEN SGMId		  = @ID  THEN  Stake
			 WHEN GMId		  = @ID THEN  Stake
			 WHEN MasterId    = @ID  THEN  Stake
			 WHEN AgentId	  = @ID  THEN  Stake 
			 ELSE NULL
			 END 			 
	) as Turnover,
	SUM(CASE WHEN SGMId		  = @ID THEN  Stake * CommSGM / 100
			 WHEN GMId		  = @ID THEN  Stake * CommGm / 100
			 WHEN MasterId    = @ID THEN  Stake * CommMaster / 100
			 WHEN AgentId	  = @ID THEN  Stake * CommAgent / 100
			 ELSE NULL
			 END 			 
	) as GrossComm,
	SUM(CASE WHEN SGMId		  = @ID THEN  Win
			 WHEN GMId		  = @ID THEN Win
			 WHEN MasterId    = @ID THEN  Win
			 WHEN AgentId	  = @ID THEN  Win
			 ELSE NULL
			 END 			 
	) as MeWinLoss,
	SUM(CASE WHEN SGMId		  = @ID THEN Stake * CommMember / 100
			 WHEN GMId		  = @ID THEN Stake * CommMember / 100
			 WHEN MasterId    = @ID THEN Stake * CommMember / 100
			 WHEN AgentId	  = @ID THEN Stake * CommMember / 100
			 ELSE NULL
			 END 			 
	) as MeComm,
	SUM(CASE WHEN SGMId	  = @ID THEN  -Win * PTAgent / 100
			 WHEN GMId	  = @ID THEN  -Win * PTAgent / 100
			 WHEN MasterId	  = @ID THEN  -Win * PTAgent / 100
			 WHEN AgentId	  = @ID THEN  -Win * PTAgent / 100
			 ELSE NULL
			 END 			 
	) as AgWinLoss,
	SUM(CASE WHEN SGMId	  = @ID THEN Stake * (CommAgent-CommMember) / 100
			 WHEN GMId	  = @ID THEN Stake * (CommAgent-CommMember) / 100
			 WHEN MasterId	  = @ID THEN Stake * (CommAgent-CommMember) / 100
			 WHEN AgentId	  = @ID THEN Stake * (CommAgent-CommMember) / 100
			 ELSE NULL
			 END 			 
	) as AgComm,
	SUM(CASE WHEN SGMId	  = @ID THEN  -Win * PTMaster / 100
			 WHEN GMId	  = @ID THEN  -Win * PTMaster / 100
			 WHEN MasterId	  = @ID THEN  -Win * PTMaster / 100
			 WHEN AgentId	  = @ID THEN  -Win * PTMaster / 100
			 ELSE NULL
			 END 			 
	) as MaWinLoss,
	SUM(CASE WHEN SGMId	  = @ID THEN Stake * (CommMaster-CommAgent) / 100
			 WHEN GMId	  = @ID THEN Stake * (CommMaster-CommAgent) / 100
			 WHEN MasterId	  = @ID THEN Stake * (CommMaster-CommAgent) / 100
			 WHEN AgentId	  = @ID THEN Stake * (CommMaster-CommAgent) / 100
			 ELSE NULL
			 END 			 
	) as MaComm,
	SUM(CASE WHEN SGMId	  = @ID THEN  -Win * PTGM / 100
			 WHEN GMId	  = @ID THEN  -Win * PTGM / 100
			 WHEN MasterId	  = @ID THEN  -Win * PTGM / 100
			 WHEN AgentId	  = @ID THEN  -Win * PTGM / 100
			 ELSE NULL
			 END 			 
	) as GmWinLoss,
	SUM(CASE WHEN SGMId	  = @ID THEN Stake * (CommGM - CommMaster) / 100
			 WHEN GMId	  = @ID THEN Stake * (CommGM - CommMaster) / 100
			 WHEN MasterId	  = @ID THEN Stake * (CommGM - CommMaster) / 100
			 WHEN AgentId	  = @ID THEN Stake * (CommGM - CommMaster) / 100
			 ELSE NULL
			 END 			 
	) as GmComm,
	SUM(CASE WHEN SGMId	  = @ID THEN  -Win * PTSGM / 100
			 WHEN GMId	  = @ID THEN  -Win * PTSGM / 100
			 WHEN MasterId	  = @ID THEN  -Win * PTSGM / 100
			 WHEN AgentId	  = @ID THEN  -Win * PTSGM / 100
			 ELSE NULL
			 END 			 
	) as SuWinLoss,
	SUM(CASE WHEN SGMId	  = @ID THEN Stake * (CommSGM-CommGM) / 100
			 WHEN GMId	  = @ID THEN Stake * (CommSGM-CommGM) / 100
			 WHEN MasterId	  = @ID THEN Stake * (CommSGM-CommGM) / 100
			 WHEN AgentId	  = @ID THEN Stake * (CommSGM-CommGM) / 100
			 ELSE NULL
			 END 			 
	) as SuComm
	
	FROM tblBets
	WHERE (tblBets.[Status] ='Won' OR tblBets.[Status]='Lose') And (tblBets.[ReportDate] >= @FDate) And (tblBets.[ReportDate] <= @TDate )
	GROUP BY MatchID, BetTypeID, BetType, Home, Away, LeaguaName
END
GO
/****** Object:  StoredProcedure [dbo].[iBet_Report_OutstandingSu]    Script Date: 12/31/2010 17:36:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[iBet_Report_OutstandingSu]
	@ID int = 0 
AS
BEGIN
	SET NOCOUNT ON;
	SELECT
	GMId as AccID,
	SUM(CASE WHEN SGMId		  = @ID AND Odds > 0 THEN  Stake
			 WHEN SGMId		  = @ID AND Odds < 0 THEN -Odds * Stake
			 ELSE NULL
			 END 			 
	) as SBOutstanding,
	SUM(CASE WHEN SGMId		  = @ID AND Odds > 0  THEN  Stake * PTSGM
			 WHEN SGMId		  = @ID AND Odds < 0 THEN -Odds * Stake * PTSGM
			 ELSE NULL
			 END 			 
	) as SBPosition
	
	FROM tblBets
	WHERE tblBets.[Status]='Running' 
	AND (SGMID=@ID )
	GROUP BY GMId
END
GO
/****** Object:  StoredProcedure [dbo].[iBet_Report_OutstandingMa]    Script Date: 12/31/2010 17:36:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[iBet_Report_OutstandingMa]
	@ID int = 0 
AS
BEGIN
	SET NOCOUNT ON;
	SELECT
	AgentID as AccID,
	SUM(CASE WHEN MasterId    = @ID AND Odds > 0 THEN  Stake
			 WHEN MasterId	  = @ID AND Odds < 0 THEN -Odds * Stake
			 ELSE NULL
			 END 			 
	) as SBOutstanding,
	SUM(CASE WHEN MasterId    = @ID AND Odds > 0   THEN  Stake * PTMaster
			 WHEN MasterId	  = @ID AND Odds < 0 THEN -Odds * Stake * PTMaster
			 ELSE NULL
			 END 			 
	) as SBPosition
	
	FROM tblBets
	WHERE tblBets.[Status]='Running' 
	AND (MasterID=@ID)
	GROUP BY AgentID
END
GO
/****** Object:  StoredProcedure [dbo].[iBet_Report_OutstandingGm]    Script Date: 12/31/2010 17:36:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[iBet_Report_OutstandingGm]
	@ID int = 0 
AS
BEGIN
	SET NOCOUNT ON;
	SELECT
	MasterId as AccID,
	SUM(CASE WHEN GMId		  = @ID AND Odds > 0 THEN  Stake
			 WHEN GMId		  = @ID AND Odds < 0 THEN -Odds * Stake
			 ELSE NULL
			 END 			 
	) as SBOutstanding,
	SUM(CASE WHEN GMId		  = @ID AND Odds > 0   THEN  Stake * PTGM
			 WHEN GMId		  = @ID AND Odds < 0 THEN -Odds * Stake * PTGM
			 ELSE NULL
			 END 			 
	) as SBPosition
	
	FROM tblBets
	WHERE tblBets.[Status]='Running' 
	AND (GMID=@ID)
	GROUP BY MasterId
END
GO
/****** Object:  StoredProcedure [dbo].[iBet_Report_Outstanding]    Script Date: 12/31/2010 17:36:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[iBet_Report_Outstanding]
	@ID int = 0 
AS
BEGIN
	SET NOCOUNT ON;
	SELECT
	AccID, StrAcc,
	SUM(CASE WHEN SGMId		  = @ID AND Odds > 0 THEN  Stake
			 WHEN SGMId		  = @ID AND Odds < 0 THEN -Odds * Stake
			 WHEN GMId		  = @ID AND Odds > 0 THEN  Stake
			 WHEN GMId		  = @ID AND Odds < 0 THEN -Odds * Stake
			 WHEN MasterId    = @ID AND Odds > 0 THEN  Stake
			 WHEN MasterId	  = @ID AND Odds < 0 THEN -Odds * Stake
			 WHEN AgentId	  = @ID AND Odds > 0 THEN  Stake
			 WHEN AgentId	  = @ID AND Odds < 0 THEN -Odds * Stake
			 ELSE NULL
			 END 			 
	) as SBOutstanding,
	SUM(CASE WHEN SGMId		  = @ID AND Odds > 0  THEN  Stake * PTSGM
			 WHEN SGMId		  = @ID AND Odds < 0 THEN -Odds * Stake * PTSGM
			 WHEN GMId		  = @ID AND Odds > 0   THEN  Stake * PTGM
			 WHEN GMId		  = @ID AND Odds < 0 THEN -Odds * Stake * PTGM
			 WHEN MasterId    = @ID AND Odds > 0   THEN  Stake * PTMaster
			 WHEN MasterId	  = @ID AND Odds < 0 THEN -Odds * Stake * PTMaster
			 WHEN AgentId	  = @ID AND Odds > 0   THEN  Stake * PTAgent
			 WHEN AgentId	  = @ID AND Odds < 0 THEN -Odds * Stake * PTAgent
			 ELSE NULL
			 END 			 
	) as SBPosition
	
	FROM tblBets
	WHERE tblBets.[Status]='Running' 
	AND (SGMID=@ID OR GMID=@ID OR MasterID=@ID OR AgentID=@ID)
	GROUP BY AccID, StrAcc
END
GO
/****** Object:  StoredProcedure [dbo].[iBet_ProcessLogin]    Script Date: 12/31/2010 17:36:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[iBet_ProcessLogin]
	@strUsername nvarchar(100),
	@strPassword nvarchar(100)
AS
BEGIN
	SELECT ID from tblAccounts where Username=@strUsername and Password=@strPassword and IsOpen='True' and IsSuspended='False' 
END
GO
/****** Object:  StoredProcedure [dbo].[iBet_ProcessAdminLogin]    Script Date: 12/31/2010 17:36:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[iBet_ProcessAdminLogin]
	@strUsername nvarchar(100),
	@strPassword nvarchar(100)
AS
BEGIN
	SELECT AdminID from tblAdm_Accounts where AdminName=@strUsername and AdminPass=@strPassword 
END
GO
/****** Object:  StoredProcedure [dbo].[iBet_tblMatch_Update]    Script Date: 12/31/2010 17:36:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[iBet_tblMatch_Update] 


	@MatchId_KeyValues bigint,


	@MatchId bigint,
	@MatchCode varchar(50),
	@HomeName varchar(150),
	@AwayName varchar(150),
	@KickoffTime varchar(50),
	@StatsId bigint,
	@SportRadar int,
	@StreamingId bigint,
	@ShowTime varchar(50),
	@Favorite bit,
	@FlagLive bit,
	@LivePeriod int,
	@CsStatus int,
	@InjuryTime int,
	@ScoreH int,
	@ScoreA int,
	@RedCardH int,
	@RedCardA int,
	@MoreCount int,
	@MaxPerMatch decimal(18, 2),
	@intVisibleState int,
	@CurrentState nvarchar(50)

AS
UPDATE [dbo].[tblMatch]
Set
	 [dbo].[tblMatch].[MatchCode]=@MatchCode,
	 [dbo].[tblMatch].[HomeName]=@HomeName,
	 [dbo].[tblMatch].[AwayName]=@AwayName,
	 [dbo].[tblMatch].[KickoffTime]=@KickoffTime,
	 [dbo].[tblMatch].[StatsId]=@StatsId,
	 [dbo].[tblMatch].[SportRadar]=@SportRadar,
	 [dbo].[tblMatch].[StreamingId]=@StreamingId,
	 [dbo].[tblMatch].[ShowTime]=@ShowTime,
	 [dbo].[tblMatch].[Favorite]=@Favorite,
	 [dbo].[tblMatch].[FlagLive]=@FlagLive,
	 [dbo].[tblMatch].[LivePeriod]=@LivePeriod,
	 [dbo].[tblMatch].[CsStatus]=@CsStatus,
	 [dbo].[tblMatch].[InjuryTime]=@InjuryTime,
	 [dbo].[tblMatch].[ScoreH]=@ScoreH,
	 [dbo].[tblMatch].[ScoreA]=@ScoreA,
	 [dbo].[tblMatch].[RedCardH]=@RedCardH,
	 [dbo].[tblMatch].[RedCardA]=@RedCardA,
	 [dbo].[tblMatch].[MoreCount]=@MoreCount,
	 [dbo].[tblMatch].[MaxPerMatch]=@MaxPerMatch,
	 [dbo].[tblMatch].[intVisibleState]=@intVisibleState,
	 [dbo].[tblMatch].[CurrentState]=@CurrentState
WHERE ((([dbo].[tblMatch].[MatchId])=@MatchId_KeyValues))
GO
/****** Object:  StoredProcedure [dbo].[iBet_tblMatch_Insert]    Script Date: 12/31/2010 17:36:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[iBet_tblMatch_Insert] 

	@MatchId bigint,
	@MatchCode varchar(50),
	@HomeName varchar(150),
	@AwayName varchar(150),
	@KickoffTime varchar(50),
	@StatsId bigint,
	@SportRadar int,
	@StreamingId bigint,
	@ShowTime varchar(50),
	@Favorite bit,
	@FlagLive bit,
	@LivePeriod int,
	@CsStatus int,
	@InjuryTime int,
	@ScoreH int,
	@ScoreA int,
	@RedCardH int,
	@RedCardA int,
	@MoreCount int,
	@MaxPerMatch decimal(18, 2),
	@intVisibleState int,
	@CurrentState nvarchar(50)

AS
INSERT INTO [dbo].[tblMatch]
		(
			 [MatchId],
			 [MatchCode],
			 [HomeName],
			 [AwayName],
			 [KickoffTime],
			 [StatsId],
			 [SportRadar],
			 [StreamingId],
			 [ShowTime],
			 [Favorite],
			 [FlagLive],
			 [LivePeriod],
			 [CsStatus],
			 [InjuryTime],
			 [ScoreH],
			 [ScoreA],
			 [RedCardH],
			 [RedCardA],
			 [MoreCount],
			 [MaxPerMatch],
			 [intVisibleState],
			 [CurrentState]
		)
Values
		(
			@MatchId,
			@MatchCode,
			@HomeName,
			@AwayName,
			@KickoffTime,
			@StatsId,
			@SportRadar,
			@StreamingId,
			@ShowTime,
			@Favorite,
			@FlagLive,
			@LivePeriod,
			@CsStatus,
			@InjuryTime,
			@ScoreH,
			@ScoreA,
			@RedCardH,
			@RedCardA,
			@MoreCount,
			@MaxPerMatch,
			@intVisibleState,
			@CurrentState
		)
GO
/****** Object:  StoredProcedure [dbo].[iBet_tblMatch_Gets]    Script Date: 12/31/2010 17:36:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[iBet_tblMatch_Gets] 

AS
SELECT 
	[tblMatch].MatchId,
	[tblMatch].MatchCode,
	[tblMatch].HomeName,
	[tblMatch].AwayName,
	[tblMatch].KickoffTime,
	[tblMatch].StatsId,
	[tblMatch].SportRadar,
	[tblMatch].StreamingId,
	[tblMatch].ShowTime,
	[tblMatch].Favorite,
	[tblMatch].FlagLive,
	[tblMatch].LivePeriod,
	[tblMatch].CsStatus,
	[tblMatch].InjuryTime,
	[tblMatch].ScoreH,
	[tblMatch].ScoreA,
	[tblMatch].RedCardH,
	[tblMatch].RedCardA,
	[tblMatch].MoreCount,
	[tblMatch].MaxPerMatch,
	[tblMatch].intVisibleState,
	[tblMatch].CurrentState
FROM [dbo].[tblMatch]
GO
/****** Object:  StoredProcedure [dbo].[iBet_tblMatch_Get]    Script Date: 12/31/2010 17:36:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[iBet_tblMatch_Get] 

	@MatchId bigint
AS
SELECT 
	MatchId,
	MatchCode,
	HomeName,
	AwayName,
	KickoffTime,
	StatsId,
	SportRadar,
	StreamingId,
	ShowTime,
	Favorite,
	FlagLive,
	LivePeriod,
	CsStatus,
	InjuryTime,
	ScoreH,
	ScoreA,
	RedCardH,
	RedCardA,
	MoreCount,
	MaxPerMatch,
	intVisibleState,
	CurrentState
FROM [dbo].[tblMatch]
WHERE ((([dbo].[tblMatch].[MatchId])=@MatchId))
GO
/****** Object:  StoredProcedure [dbo].[iBet_tblMatch_Delete]    Script Date: 12/31/2010 17:36:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[iBet_tblMatch_Delete]

	@MatchId bigint

AS
DELETE
From [dbo].[tblMatch]
 WHERE ((([dbo].[tblMatch].[MatchId])=@MatchId))
GO
/****** Object:  StoredProcedure [dbo].[iBet_tblListChar_Update]    Script Date: 12/31/2010 17:36:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[iBet_tblListChar_Update] 




	@ID nvarchar(50),
	@Name nvarchar(50)

AS
UPDATE [dbo].[tblListChar]
Set
	 [dbo].[tblListChar].[ID]=@ID,
	 [dbo].[tblListChar].[Name]=@Name
GO
/****** Object:  StoredProcedure [dbo].[iBet_tblListChar_Insert]    Script Date: 12/31/2010 17:36:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[iBet_tblListChar_Insert] 

	@ID nvarchar(50),
	@Name nvarchar(50)

AS
INSERT INTO [dbo].[tblListChar]
		(
			 [ID],
			 [Name]
		)
Values
		(
			@ID,
			@Name
		)
GO
/****** Object:  StoredProcedure [dbo].[iBet_tblListChar_Gets]    Script Date: 12/31/2010 17:36:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[iBet_tblListChar_Gets] 

AS
SELECT 
	[tblListChar].ID,
	[tblListChar].Name
FROM [dbo].[tblListChar]
GO
/****** Object:  StoredProcedure [dbo].[iBet_tblListChar_Get]    Script Date: 12/31/2010 17:36:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[iBet_tblListChar_Get] 

AS
SELECT 
	ID,
	Name
FROM [dbo].[tblListChar]
GO
/****** Object:  StoredProcedure [dbo].[iBet_tblListChar_Delete]    Script Date: 12/31/2010 17:36:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[iBet_tblListChar_Delete]


AS
DELETE
From [dbo].[tblListChar]
GO
/****** Object:  StoredProcedure [dbo].[iBet_tblLeague_Update]    Script Date: 12/31/2010 17:36:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[iBet_tblLeague_Update] 


	@LeaguaId_KeyValues int,


	@LeaguaId int,
	@LeaguaName nvarchar(255)

AS
UPDATE [dbo].[tblLeague]
Set
	 [dbo].[tblLeague].[LeaguaName]=@LeaguaName
WHERE ((([dbo].[tblLeague].[LeaguaId])=@LeaguaId_KeyValues))
GO
/****** Object:  StoredProcedure [dbo].[iBet_tblLeague_Insert]    Script Date: 12/31/2010 17:36:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[iBet_tblLeague_Insert] 

	@LeaguaId int,
	@LeaguaName nvarchar(255)

AS
INSERT INTO [dbo].[tblLeague]
		(
			 [LeaguaId],
			 [LeaguaName]
		)
Values
		(
			@LeaguaId,
			@LeaguaName
		)
GO
/****** Object:  StoredProcedure [dbo].[iBet_tblLeague_Gets]    Script Date: 12/31/2010 17:36:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[iBet_tblLeague_Gets] 

AS
SELECT 
	[tblLeague].LeaguaId,
	[tblLeague].LeaguaName
FROM [dbo].[tblLeague]
GO
/****** Object:  StoredProcedure [dbo].[iBet_tblLeague_Get]    Script Date: 12/31/2010 17:36:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[iBet_tblLeague_Get] 

	@LeaguaId int
AS
SELECT 
	LeaguaId,
	LeaguaName
FROM [dbo].[tblLeague]
WHERE ((([dbo].[tblLeague].[LeaguaId])=@LeaguaId))
GO
/****** Object:  StoredProcedure [dbo].[iBet_tblLeague_Delete]    Script Date: 12/31/2010 17:36:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[iBet_tblLeague_Delete]

	@LeaguaId int

AS
DELETE
From [dbo].[tblLeague]
 WHERE ((([dbo].[tblLeague].[LeaguaId])=@LeaguaId))
GO
/****** Object:  StoredProcedure [dbo].[iBet_tblLanguegeSystem_Update]    Script Date: 12/31/2010 17:36:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[iBet_tblLanguegeSystem_Update] 


	@ID_KeyValues int,


	@ID int,
	@ShortName nvarchar(50),
	@LanguagerName nvarchar(255)

AS
UPDATE [dbo].[tblLanguegeSystem]
Set
	 [dbo].[tblLanguegeSystem].[ShortName]=@ShortName,
	 [dbo].[tblLanguegeSystem].[LanguagerName]=@LanguagerName
WHERE ((([dbo].[tblLanguegeSystem].[ID])=@ID_KeyValues))
GO
/****** Object:  StoredProcedure [dbo].[iBet_tblLanguegeSystem_Insert]    Script Date: 12/31/2010 17:36:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[iBet_tblLanguegeSystem_Insert] 

	@ID int output,
	@ShortName nvarchar(50),
	@LanguagerName nvarchar(255)

AS
INSERT INTO [dbo].[tblLanguegeSystem]
		(
			 [ShortName],
			 [LanguagerName]
		)
Values
		(
			@ShortName,
			@LanguagerName
		)
set @ID=@@IDENTITY
GO
/****** Object:  StoredProcedure [dbo].[iBet_tblLanguegeSystem_Gets]    Script Date: 12/31/2010 17:36:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[iBet_tblLanguegeSystem_Gets] 

AS
SELECT 
	[tblLanguegeSystem].ID,
	[tblLanguegeSystem].ShortName,
	[tblLanguegeSystem].LanguagerName
FROM [dbo].[tblLanguegeSystem]
GO
/****** Object:  StoredProcedure [dbo].[iBet_tblLanguegeSystem_Get]    Script Date: 12/31/2010 17:36:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[iBet_tblLanguegeSystem_Get] 

	@ID int
AS
SELECT 
	ID,
	ShortName,
	LanguagerName
FROM [dbo].[tblLanguegeSystem]
WHERE ((([dbo].[tblLanguegeSystem].[ID])=@ID))
GO
/****** Object:  StoredProcedure [dbo].[iBet_tblLanguegeSystem_Delete]    Script Date: 12/31/2010 17:36:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[iBet_tblLanguegeSystem_Delete]

	@ID int

AS
DELETE
From [dbo].[tblLanguegeSystem]
 WHERE ((([dbo].[tblLanguegeSystem].[ID])=@ID))
GO
/****** Object:  StoredProcedure [dbo].[iBet_tblGroupComm_Update]    Script Date: 12/31/2010 17:36:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[iBet_tblGroupComm_Update] 


	@ID_KeyValues int,


	@ID int,
	@ComGroupName nvarchar(50),
	@Value float,
	@CreateDate datetime,
	@CreateBy bigint,
	@ModifyDate datetime,
	@ModifyBy bigint

AS
UPDATE [dbo].[tblGroupComm]
Set
	 [dbo].[tblGroupComm].[ComGroupName]=@ComGroupName,
	 [dbo].[tblGroupComm].[Value]=@Value,
	 [dbo].[tblGroupComm].[CreateDate]=@CreateDate,
	 [dbo].[tblGroupComm].[CreateBy]=@CreateBy,
	 [dbo].[tblGroupComm].[ModifyDate]=@ModifyDate,
	 [dbo].[tblGroupComm].[ModifyBy]=@ModifyBy
WHERE ((([dbo].[tblGroupComm].[ID])=@ID_KeyValues))
GO
/****** Object:  StoredProcedure [dbo].[iBet_tblGroupComm_Insert]    Script Date: 12/31/2010 17:36:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[iBet_tblGroupComm_Insert] 

	@ID int output,
	@ComGroupName nvarchar(50),
	@Value float,
	@CreateDate datetime,
	@CreateBy bigint,
	@ModifyDate datetime,
	@ModifyBy bigint

AS
INSERT INTO [dbo].[tblGroupComm]
		(
			 [ComGroupName],
			 [Value],
			 [CreateDate],
			 [CreateBy],
			 [ModifyDate],
			 [ModifyBy]
		)
Values
		(
			@ComGroupName,
			@Value,
			@CreateDate,
			@CreateBy,
			@ModifyDate,
			@ModifyBy
		)
set @ID=@@IDENTITY
GO
/****** Object:  StoredProcedure [dbo].[iBet_tblGroupComm_Gets]    Script Date: 12/31/2010 17:36:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[iBet_tblGroupComm_Gets] 

AS
SELECT 
	[tblGroupComm].ID,
	[tblGroupComm].ComGroupName,
	[tblGroupComm].Value,
	[tblGroupComm].CreateDate,
	[tblGroupComm].CreateBy,
	[tblGroupComm].ModifyDate,
	[tblGroupComm].ModifyBy
FROM [dbo].[tblGroupComm]
GO
/****** Object:  StoredProcedure [dbo].[iBet_tblGroupComm_Get]    Script Date: 12/31/2010 17:36:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[iBet_tblGroupComm_Get] 

	@ID int
AS
SELECT 
	ID,
	ComGroupName,
	Value,
	CreateDate,
	CreateBy,
	ModifyDate,
	ModifyBy
FROM [dbo].[tblGroupComm]
WHERE ((([dbo].[tblGroupComm].[ID])=@ID))
GO
/****** Object:  StoredProcedure [dbo].[iBet_tblGroupComm_Delete]    Script Date: 12/31/2010 17:36:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[iBet_tblGroupComm_Delete]

	@ID int

AS
DELETE
From [dbo].[tblGroupComm]
 WHERE ((([dbo].[tblGroupComm].[ID])=@ID))
GO
/****** Object:  StoredProcedure [dbo].[iBet_tblFunctions_Update]    Script Date: 12/31/2010 17:36:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[iBet_tblFunctions_Update] 


	@ID_KeyValues int,


	@ID int,
	@ModuleID int,
	@FunctionName nvarchar(100),
	@FunctionTitle nvarchar(255),
	@FunctionDescription nvarchar(200),
	@FunctionURL nvarchar(255),
	@IsVisible bit,
	@Priority int

AS
UPDATE [dbo].[tblFunctions]
Set
	 [dbo].[tblFunctions].[ModuleID]=@ModuleID,
	 [dbo].[tblFunctions].[FunctionName]=@FunctionName,
	 [dbo].[tblFunctions].[FunctionTitle]=@FunctionTitle,
	 [dbo].[tblFunctions].[FunctionDescription]=@FunctionDescription,
	 [dbo].[tblFunctions].[FunctionURL]=@FunctionURL,
	 [dbo].[tblFunctions].[IsVisible]=@IsVisible,
	 [dbo].[tblFunctions].[Priority]=@Priority
WHERE ((([dbo].[tblFunctions].[ID])=@ID_KeyValues))
GO
/****** Object:  StoredProcedure [dbo].[iBet_tblFunctions_Insert]    Script Date: 12/31/2010 17:36:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[iBet_tblFunctions_Insert] 

	@ID int output,
	@ModuleID int,
	@FunctionName nvarchar(100),
	@FunctionTitle nvarchar(255),
	@FunctionDescription nvarchar(200),
	@FunctionURL nvarchar(255),
	@IsVisible bit,
	@Priority int

AS
INSERT INTO [dbo].[tblFunctions]
		(
			 [ModuleID],
			 [FunctionName],
			 [FunctionTitle],
			 [FunctionDescription],
			 [FunctionURL],
			 [IsVisible],
			 [Priority]
		)
Values
		(
			@ModuleID,
			@FunctionName,
			@FunctionTitle,
			@FunctionDescription,
			@FunctionURL,
			@IsVisible,
			@Priority
		)
set @ID=@@IDENTITY
GO
/****** Object:  StoredProcedure [dbo].[iBet_tblFunctions_Gets]    Script Date: 12/31/2010 17:36:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[iBet_tblFunctions_Gets] 

AS
SELECT 
	[tblFunctions].ID,
	[tblFunctions].ModuleID,
	[tblFunctions].FunctionName,
	[tblFunctions].FunctionTitle,
	[tblFunctions].FunctionDescription,
	[tblFunctions].FunctionURL,
	[tblFunctions].IsVisible,
	[tblFunctions].Priority
FROM [dbo].[tblFunctions]
GO
/****** Object:  StoredProcedure [dbo].[iBet_tblFunctions_GetRoleTitle]    Script Date: 12/31/2010 17:36:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[iBet_tblFunctions_GetRoleTitle]
	@ID as bigint
AS
BEGIN
	SELECT DISTINCT dbo.tblUserRights.UserID, dbo.tblRoleFunctionMapping.RoleTitle
	FROM         dbo.tblUserRights INNER JOIN dbo.tblRoleFunctionMapping 
	ON dbo.tblUserRights.intFunctionID = dbo.tblRoleFunctionMapping.intFunctionID
	WHERE dbo.tblUserRights.UserID=@ID
END
GO
/****** Object:  StoredProcedure [dbo].[iBet_tblModules_Get]    Script Date: 12/31/2010 17:36:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[iBet_tblModules_Get] 

	@ID int
AS
SELECT 
	ID,
	ModuleName,
	ModuleTitle,
	ModuleDescription,
	ModuleURL,
	IsVisible,
	Priority,
	Identifier
FROM [dbo].[tblModules]
WHERE ((([dbo].[tblModules].[ID])=@ID))
GO
/****** Object:  StoredProcedure [dbo].[iBet_tblModules_Delete]    Script Date: 12/31/2010 17:36:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[iBet_tblModules_Delete]

	@ID int

AS
DELETE
From [dbo].[tblModules]
 WHERE ((([dbo].[tblModules].[ID])=@ID))
GO
/****** Object:  StoredProcedure [dbo].[iBet_tblMessage_Update]    Script Date: 12/31/2010 17:36:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[iBet_tblMessage_Update] 


	@MessageID_KeyValues int,


	@MessageID int,
	@LanguegerSystemID int,
	@Message ntext,
	@PostDate datetime,
	@Status nvarchar(50),
	@AdminName nvarchar(255),
	@AccID bigint

AS
UPDATE [dbo].[tblMessage]
Set
	 [dbo].[tblMessage].[LanguegerSystemID]=@LanguegerSystemID,
	 [dbo].[tblMessage].[Message]=@Message,
	 [dbo].[tblMessage].[PostDate]=@PostDate,
	 [dbo].[tblMessage].[Status]=@Status,
	 [dbo].[tblMessage].[AdminName]=@AdminName,
	 [dbo].[tblMessage].[AccID]=@AccID
WHERE ((([dbo].[tblMessage].[MessageID])=@MessageID_KeyValues))
GO
/****** Object:  StoredProcedure [dbo].[iBet_tblMessage_Insert]    Script Date: 12/31/2010 17:36:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[iBet_tblMessage_Insert] 

	@MessageID int,
	@LanguegerSystemID int,
	@Message ntext,
	@PostDate datetime,
	@Status nvarchar(50),
	@AdminName nvarchar(255),
	@AccID bigint

AS
INSERT INTO [dbo].[tblMessage]
		(
			 [LanguegerSystemID],
			 [Message],
			 [PostDate],
			 [Status],
			 [AdminName],
			 [AccID]
		)
Values
		(
			@LanguegerSystemID,
			@Message,
			@PostDate,
			@Status,
			@AdminName,
			@AccID
		)
GO
/****** Object:  StoredProcedure [dbo].[iBet_tblMessage_Gets]    Script Date: 12/31/2010 17:36:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[iBet_tblMessage_Gets] 

AS
SELECT 
	[tblMessage].MessageID,
	[tblMessage].LanguegerSystemID,
	[tblMessage].Message,
	[tblMessage].PostDate,
	[tblMessage].Status,
	[tblMessage].AdminName,
	[tblMessage].AccID
FROM [dbo].[tblMessage]
GO
/****** Object:  StoredProcedure [dbo].[iBet_tblMessage_Get]    Script Date: 12/31/2010 17:36:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[iBet_tblMessage_Get] 

	@MessageID int
AS
SELECT 
	MessageID,
	LanguegerSystemID,
	Message,
	PostDate,
	Status,
	AdminName,
	AccID
FROM [dbo].[tblMessage]
WHERE ((([dbo].[tblMessage].[MessageID])=@MessageID))
GO
/****** Object:  StoredProcedure [dbo].[iBet_tblMessage_Delete]    Script Date: 12/31/2010 17:36:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[iBet_tblMessage_Delete]

	@MessageID int

AS
DELETE
From [dbo].[tblMessage]
 WHERE ((([dbo].[tblMessage].[MessageID])=@MessageID))
GO
/****** Object:  StoredProcedure [dbo].[iBet_tblMember_Update]    Script Date: 12/31/2010 17:36:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[iBet_tblMember_Update] 


	@MemberId_KeyValues bigint,


	@MemberId bigint,
	@UserNamePrefix nvarchar(15),
	@Username nvarchar(20),
	@Pass nvarchar(50),
	@FName nvarchar(20),
	@LName nvarchar(20),
	@Phone nvarchar(20),
	@MobilePhone nvarchar(20),
	@Fax nvarchar(20),
	@MemberGroupId bigint,
	@Status nvarchar(20),
	@MinBet numeric(18, 0),
	@MaxBet numeric(18, 0),
	@MaxPerMatch numeric(18, 0),
	@LastLogin datetime,
	@LoginIp nvarchar(50),
	@CreateDate datetime,
	@ModifyDate datetime,
	@SessionLogin varchar(200),
	@Online bit,
	@PasswordExpiryDate datetime,
	@CashBalance numeric(18, 2),
	@Outstanding numeric(18, 2),
	@BetCredit numeric(18, 2),
	@GivenCredit numeric(18, 2),
	@TimeInsert datetime

AS
UPDATE [dbo].[tblMember]
Set
	 [dbo].[tblMember].[UserNamePrefix]=@UserNamePrefix,
	 [dbo].[tblMember].[Username]=@Username,
	 [dbo].[tblMember].[Pass]=@Pass,
	 [dbo].[tblMember].[FName]=@FName,
	 [dbo].[tblMember].[LName]=@LName,
	 [dbo].[tblMember].[Phone]=@Phone,
	 [dbo].[tblMember].[MobilePhone]=@MobilePhone,
	 [dbo].[tblMember].[Fax]=@Fax,
	 [dbo].[tblMember].[MemberGroupId]=@MemberGroupId,
	 [dbo].[tblMember].[Status]=@Status,
	 [dbo].[tblMember].[MinBet]=@MinBet,
	 [dbo].[tblMember].[MaxBet]=@MaxBet,
	 [dbo].[tblMember].[MaxPerMatch]=@MaxPerMatch,
	 [dbo].[tblMember].[LastLogin]=@LastLogin,
	 [dbo].[tblMember].[LoginIp]=@LoginIp,
	 [dbo].[tblMember].[CreateDate]=@CreateDate,
	 [dbo].[tblMember].[ModifyDate]=@ModifyDate,
	 [dbo].[tblMember].[SessionLogin]=@SessionLogin,
	 [dbo].[tblMember].[Online]=@Online,
	 [dbo].[tblMember].[PasswordExpiryDate]=@PasswordExpiryDate,
	 [dbo].[tblMember].[CashBalance]=@CashBalance,
	 [dbo].[tblMember].[Outstanding]=@Outstanding,
	 [dbo].[tblMember].[BetCredit]=@BetCredit,
	 [dbo].[tblMember].[GivenCredit]=@GivenCredit,
	 [dbo].[tblMember].[TimeInsert]=@TimeInsert
WHERE ((([dbo].[tblMember].[MemberId])=@MemberId_KeyValues))
GO
/****** Object:  StoredProcedure [dbo].[iBet_tblMember_Insert]    Script Date: 12/31/2010 17:36:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[iBet_tblMember_Insert] 

	@MemberId bigint,
	@UserNamePrefix nvarchar(15),
	@Username nvarchar(20),
	@Pass nvarchar(50),
	@FName nvarchar(20),
	@LName nvarchar(20),
	@Phone nvarchar(20),
	@MobilePhone nvarchar(20),
	@Fax nvarchar(20),
	@MemberGroupId bigint,
	@Status nvarchar(20),
	@MinBet numeric(18, 0),
	@MaxBet numeric(18, 0),
	@MaxPerMatch numeric(18, 0),
	@LastLogin datetime,
	@LoginIp nvarchar(50),
	@CreateDate datetime,
	@ModifyDate datetime,
	@SessionLogin varchar(200),
	@Online bit,
	@PasswordExpiryDate datetime,
	@CashBalance numeric(18, 2),
	@Outstanding numeric(18, 2),
	@BetCredit numeric(18, 2),
	@GivenCredit numeric(18, 2),
	@TimeInsert datetime

AS
INSERT INTO [dbo].[tblMember]
		(
			 [MemberId],
			 [UserNamePrefix],
			 [Username],
			 [Pass],
			 [FName],
			 [LName],
			 [Phone],
			 [MobilePhone],
			 [Fax],
			 [MemberGroupId],
			 [Status],
			 [MinBet],
			 [MaxBet],
			 [MaxPerMatch],
			 [LastLogin],
			 [LoginIp],
			 [CreateDate],
			 [ModifyDate],
			 [SessionLogin],
			 [Online],
			 [PasswordExpiryDate],
			 [CashBalance],
			 [Outstanding],
			 [BetCredit],
			 [GivenCredit],
			 [TimeInsert]
		)
Values
		(
			@MemberId,
			@UserNamePrefix,
			@Username,
			@Pass,
			@FName,
			@LName,
			@Phone,
			@MobilePhone,
			@Fax,
			@MemberGroupId,
			@Status,
			@MinBet,
			@MaxBet,
			@MaxPerMatch,
			@LastLogin,
			@LoginIp,
			@CreateDate,
			@ModifyDate,
			@SessionLogin,
			@Online,
			@PasswordExpiryDate,
			@CashBalance,
			@Outstanding,
			@BetCredit,
			@GivenCredit,
			@TimeInsert
		)
GO
/****** Object:  StoredProcedure [dbo].[iBet_tblMember_Gets]    Script Date: 12/31/2010 17:36:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[iBet_tblMember_Gets] 

AS
SELECT 
	*
FROM [dbo].[tblMember]
GO
/****** Object:  StoredProcedure [dbo].[iBet_tblMember_Get]    Script Date: 12/31/2010 17:36:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[iBet_tblMember_Get] 

	@MemberId bigint
AS
SELECT 
	*
FROM [dbo].[tblMember]
WHERE ((([dbo].[tblMember].[MemberId])=@MemberId))
GO
/****** Object:  StoredProcedure [dbo].[iBet_tblMember_Delete]    Script Date: 12/31/2010 17:36:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[iBet_tblMember_Delete]

	@MemberId bigint

AS
DELETE
From [dbo].[tblMember]
 WHERE ((([dbo].[tblMember].[MemberId])=@MemberId))
GO
/****** Object:  StoredProcedure [dbo].[iBet_tblMatchs_Update]    Script Date: 12/31/2010 17:36:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[iBet_tblMatchs_Update] 


	@MatchId_KeyValues int,


	@MatchId int,
	@LeaguaID int,
	@HomeName nvarchar(250),
	@AwayName nvarchar(250),
	@KickoffTime nvarchar(50),
	@ShowTime nvarchar(50),
	@ShowDate datetime,
	@ScoreH int,
	@ScoreA int,
	@LiveTime nvarchar(50),
	@Status int,
	@ShowFace bit,
	@Live bit,
	@CreateDate datetime,
	@CreateBy nvarchar(255),
	@ModifyDate datetime,
	@ModifyName nvarchar(255)

AS
UPDATE [dbo].[tblMatchs]
Set
	 [dbo].[tblMatchs].[LeaguaID]=@LeaguaID,
	 [dbo].[tblMatchs].[HomeName]=@HomeName,
	 [dbo].[tblMatchs].[AwayName]=@AwayName,
	 [dbo].[tblMatchs].[KickoffTime]=@KickoffTime,
	 [dbo].[tblMatchs].[ShowTime]=@ShowTime,
	 [dbo].[tblMatchs].[ShowDate]=@ShowDate,
	 [dbo].[tblMatchs].[ScoreH]=@ScoreH,
	 [dbo].[tblMatchs].[ScoreA]=@ScoreA,
	 [dbo].[tblMatchs].[LiveTime]=@LiveTime,
	 [dbo].[tblMatchs].[Status]=@Status,
	 [dbo].[tblMatchs].[ShowFace]=@ShowFace,
	 [dbo].[tblMatchs].[Live]=@Live,
	 [dbo].[tblMatchs].[CreateDate]=@CreateDate,
	 [dbo].[tblMatchs].[CreateBy]=@CreateBy,
	 [dbo].[tblMatchs].[ModifyDate]=@ModifyDate,
	 [dbo].[tblMatchs].[ModifyName]=@ModifyName
WHERE ((([dbo].[tblMatchs].[MatchId])=@MatchId_KeyValues))
GO
/****** Object:  StoredProcedure [dbo].[iBet_tblMatchs_Insert]    Script Date: 12/31/2010 17:36:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[iBet_tblMatchs_Insert] 

	@MatchId int,
	@LeaguaID int,
	@HomeName nvarchar(250),
	@AwayName nvarchar(250),
	@KickoffTime nvarchar(50),
	@ShowTime nvarchar(50),
	@ShowDate datetime,
	@ScoreH int,
	@ScoreA int,
	@LiveTime nvarchar(50),
	@Status int,
	@ShowFace bit,
	@Live bit,
	@CreateDate datetime,
	@CreateBy nvarchar(255),
	@ModifyDate datetime,
	@ModifyName nvarchar(255)

AS
INSERT INTO [dbo].[tblMatchs]
		(
			 [MatchId],
			 [LeaguaID],
			 [HomeName],
			 [AwayName],
			 [KickoffTime],
			 [ShowTime],
			 [ShowDate],
			 [ScoreH],
			 [ScoreA],
			 [LiveTime],
			 [Status],
			 [ShowFace],
			 [Live],
			 [CreateDate],
			 [CreateBy],
			 [ModifyDate],
			 [ModifyName]
		)
Values
		(
			@MatchId,
			@LeaguaID,
			@HomeName,
			@AwayName,
			@KickoffTime,
			@ShowTime,
			@ShowDate,
			@ScoreH,
			@ScoreA,
			@LiveTime,
			@Status,
			@ShowFace,
			@Live,
			@CreateDate,
			@CreateBy,
			@ModifyDate,
			@ModifyName
		)
GO
/****** Object:  StoredProcedure [dbo].[iBet_tblMatchs_Gets]    Script Date: 12/31/2010 17:36:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[iBet_tblMatchs_Gets] 

AS
SELECT 
	[tblMatchs].MatchId,
	[tblMatchs].LeaguaID,
	[tblMatchs].HomeName,
	[tblMatchs].AwayName,
	[tblMatchs].KickoffTime,
	[tblMatchs].ShowTime,
	[tblMatchs].ShowDate,
	[tblMatchs].ScoreH,
	[tblMatchs].ScoreA,
	[tblMatchs].LiveTime,
	[tblMatchs].Status,
	[tblMatchs].ShowFace,
	[tblMatchs].Live,
	[tblMatchs].CreateDate,
	[tblMatchs].CreateBy,
	[tblMatchs].ModifyDate,
	[tblMatchs].ModifyName
FROM [dbo].[tblMatchs]
GO
/****** Object:  StoredProcedure [dbo].[iBet_tblMatchs_Get]    Script Date: 12/31/2010 17:36:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[iBet_tblMatchs_Get] 

	@MatchId int
AS
SELECT 
	MatchId,
	LeaguaID,
	HomeName,
	AwayName,
	KickoffTime,
	ShowTime,
	ShowDate,
	ScoreH,
	ScoreA,
	LiveTime,
	Status,
	ShowFace,
	Live,
	CreateDate,
	CreateBy,
	ModifyDate,
	ModifyName
FROM [dbo].[tblMatchs]
WHERE ((([dbo].[tblMatchs].[MatchId])=@MatchId))
GO
/****** Object:  StoredProcedure [dbo].[iBet_tblMatchs_Delete]    Script Date: 12/31/2010 17:36:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[iBet_tblMatchs_Delete]

	@MatchId int

AS
DELETE
From [dbo].[tblMatchs]
 WHERE ((([dbo].[tblMatchs].[MatchId])=@MatchId))
GO
/****** Object:  StoredProcedure [dbo].[iBet_tblFunctions_Get]    Script Date: 12/31/2010 17:36:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[iBet_tblFunctions_Get] 

	@ID int
AS
SELECT 
	ID,
	ModuleID,
	FunctionName,
	FunctionTitle,
	FunctionDescription,
	FunctionURL,
	IsVisible,
	Priority
FROM [dbo].[tblFunctions]
WHERE ((([dbo].[tblFunctions].[ID])=@ID))
GO
/****** Object:  StoredProcedure [dbo].[iBet_tblFunctions_Delete]    Script Date: 12/31/2010 17:36:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[iBet_tblFunctions_Delete]

	@ID int

AS
DELETE
From [dbo].[tblFunctions]
 WHERE ((([dbo].[tblFunctions].[ID])=@ID))
GO
/****** Object:  StoredProcedure [dbo].[iBet_tbldTransferCondition_Update]    Script Date: 12/31/2010 17:36:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[iBet_tbldTransferCondition_Update] 


	@ID_KeyValues int,


	@ID int,
	@AccID bigint,
	@OnDay nvarchar(50)

AS
UPDATE [dbo].[tbldTransferCondition]
Set
	 [dbo].[tbldTransferCondition].[AccID]=@AccID,
	 [dbo].[tbldTransferCondition].[OnDay]=@OnDay
WHERE ((([dbo].[tbldTransferCondition].[ID])=@ID_KeyValues))
GO
/****** Object:  StoredProcedure [dbo].[iBet_tbldTransferCondition_Insert]    Script Date: 12/31/2010 17:36:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[iBet_tbldTransferCondition_Insert] 

	@ID int output,
	@AccID bigint,
	@OnDay nvarchar(50)

AS
INSERT INTO [dbo].[tbldTransferCondition]
		(
			 [AccID],
			 [OnDay]
		)
Values
		(
			@AccID,
			@OnDay
		)
set @ID=@@IDENTITY
GO
/****** Object:  StoredProcedure [dbo].[iBet_tbldTransferCondition_Gets]    Script Date: 12/31/2010 17:36:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[iBet_tbldTransferCondition_Gets] 

AS
SELECT 
	[tbldTransferCondition].ID,
	[tbldTransferCondition].AccID,
	[tbldTransferCondition].OnDay
FROM [dbo].[tbldTransferCondition]
GO
/****** Object:  StoredProcedure [dbo].[iBet_tbldTransferCondition_Get]    Script Date: 12/31/2010 17:36:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[iBet_tbldTransferCondition_Get] 

	@ID int
AS
SELECT 
	ID,
	AccID,
	OnDay
FROM [dbo].[tbldTransferCondition]
WHERE ((([dbo].[tbldTransferCondition].[ID])=@ID))
GO
/****** Object:  StoredProcedure [dbo].[iBet_tbldTransferCondition_Delete]    Script Date: 12/31/2010 17:36:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[iBet_tbldTransferCondition_Delete]

	@ID int

AS
DELETE
From [dbo].[tbldTransferCondition]
 WHERE ((([dbo].[tbldTransferCondition].[ID])=@ID))
GO
/****** Object:  StoredProcedure [dbo].[iBet_ForeCastOverUnderDynamic]    Script Date: 12/31/2010 17:36:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[iBet_ForeCastOverUnderDynamic]
	@ID int = 0,
	@MatchID int,
	@First int = 0,
	@Last int = 5		
AS
DECLARE @count int

BEGIN
	SET NOCOUNT ON;
	SET @count = @First

	UPDATE tblRangeForecast
	SET MatchID = -2	
	WHERE FCScore>-1000 AND FCScore<1000	
	
	WHILE (@count <= @Last)
	BEGIN
		IF EXISTS(SELECT MatchID FROM tblRangeForecast WHERE FCScore=@count)
		UPDATE tblRangeForecast
		SET	MatchID = @MatchID
		WHERE FCScore = @count
		ELSE 
			INSERT INTO tblRangeForecast(FCScore, MatchID)
			VALUES (@count, @MatchID)
		SET @count = @count + 1	
	END
	
	IF EXISTS(SELECT name FROM sys.tables
    WHERE name = 'TempBet')
    DROP TABLE TempBet
     
	SELECT * INTO TempBet
	FROM tblBets
	WHERE (SGMId = @ID OR GMId = @ID OR MasterId = @ID OR AgentId = @ID) 
		AND BetTypeId = 3 AND MatchID = @MatchID
	
	ALTER TABLE TempBet
	ADD ptVal float
	
	ALTER TABLE TempBet
	ADD winVal float
	
	ALTER TABLE TempBet
	ADD loseVal float
	
	UPDATE TempBet
	SET ptVal = CASE 
					WHEN SGMId = @ID THEN ptSGM
					WHEN GMId = @ID THEN ptGM
					WHEN MasterId = @ID THEN ptMaster
					WHEN AgentId = @ID THEN ptAgent
				END
				
	UPDATE TempBet
	SET WinVal = CASE 
					WHEN Odds < 0 THEN Stake
					ELSE Stake * Odds
				 END
	
	UPDATE TempBet
	SET LoseVal = CASE
					 WHEN Odds > 0 THEN Stake
					 ELSE Stake * Odds
				  END		 	
	
	SELECT Home, Away, FCScore,
	SUM (CASE
			WHEN BetTypeId != 3 THEN NULL
			WHEN Hdp = FCScore THEN 0
			WHEN (Hdp < FCScore AND Choice = 'Over') OR (Hdp > FCScore AND Choice = 'Under') THEN WinVal * ptVal
			ELSE -LoseVal * ptVal
		 END) /100 AS ForecastVal
		FROM TempBet,TblRangeForecast
	WHERE TempBet.MatchID = TblRangeForecast.MatchID AND [Status] = 'Running'
	GROUP BY TempBet.MatchID, Home, Away, FCScore
END
GO
/****** Object:  StoredProcedure [dbo].[iBet_ForeCastHandiOUStatic]    Script Date: 12/31/2010 17:36:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[iBet_ForeCastHandiOUStatic]
	@ID int = 0	
AS
BEGIN
	SET NOCOUNT ON;
	
	IF EXISTS(SELECT name FROM sys.tables
    WHERE name = 'TempBet')
    DROP TABLE TempBet
     
	SELECT * INTO TempBet
	FROM tblBets
	WHERE (SGMId = @ID OR GMId = @ID OR MasterId = @ID OR AgentId = @ID)
			AND (BetTypeId = 1 OR BetTypeId = 7 OR BetTypeId = 3 OR BetTypeId = 8)
	
	ALTER TABLE TempBet
	ADD ptVal float
	
	ALTER TABLE TempBet
	ADD winVal float
	
	ALTER TABLE TempBet
	ADD loseVal float
	
	UPDATE TempBet
	SET ptVal = CASE 
					WHEN SGMId = @ID THEN ptSGM
					WHEN GMId = @ID THEN ptGM
					WHEN MasterId = @ID THEN ptMaster
					WHEN AgentId = @ID THEN ptAgent
				END
				
	UPDATE TempBet
	SET WinVal = CASE 
					WHEN Odds < 0 THEN Stake
					ELSE Stake * Odds
				 END
	
	UPDATE TempBet
	SET LoseVal = CASE
					 WHEN Odds > 0 THEN Stake
					 ELSE Stake * Odds
				  END		 	
	
	SELECT MatchID, Home, Away, [Time], LeaguaName, BetTypeId,
	SUM (CASE
			WHEN BetTypeId != 1 THEN NULL
			WHEN Hdp = -1 THEN 0
			WHEN (Hdp < -1 AND Choice = Home) OR (Hdp > -1 AND Choice = Away) THEN WinVal * ptVal
			ELSE -LoseVal * ptVal
		 END) /100 AS HdpFTMinus1,
	SUM (CASE
			WHEN BetTypeId != 1 THEN NULL
			WHEN Hdp = 0 THEN 0
			WHEN (Hdp < 0 AND Choice = Home) OR (Hdp > 0 AND Choice = Away) THEN WinVal * ptVal
			ELSE -LoseVal * ptVal
		 END) /100 AS HdpFT0,
	SUM (CASE
			WHEN BetTypeId != 1 THEN NULL
			WHEN Hdp = 1 THEN 0
			WHEN (Hdp < 1 AND Choice = Home) OR (Hdp > 1 AND Choice = Away) THEN WinVal * ptVal
			ELSE -LoseVal * ptVal
		 END) /100 AS HdpFT1,
	SUM (CASE
			WHEN BetTypeId != 7 THEN NULL
			WHEN Hdp = -1 THEN 0
			WHEN (Hdp < -1 AND Choice = Home) OR (Hdp > -1 AND Choice = Away) THEN WinVal * ptVal
			ELSE -LoseVal * ptVal
		 END) /100 AS HdpFHMinus1,
	SUM (CASE
			WHEN BetTypeId != 7 THEN NULL
			WHEN Hdp = 0 THEN 0
			WHEN (Hdp < 0 AND Choice = Home) OR (Hdp > 0 AND Choice = Away) THEN WinVal * ptVal
			ELSE -LoseVal * ptVal
		 END) /100 AS HdpFH0,
	SUM (CASE
			WHEN BetTypeId != 7 THEN NULL
			WHEN Hdp = 1 THEN 0
			WHEN (Hdp < 1 AND Choice = Home) OR (Hdp > 1 AND Choice = Away) THEN WinVal * ptVal
			ELSE -LoseVal * ptVal
		 END) /100 AS HdpFH1,
	SUM (CASE
			WHEN BetTypeID !=3 THEN NULL
			WHEN Hdp = 0 THEN 0
			WHEN (Hdp > 0 AND Choice = 'Under') THEN WinVal * ptVal
			WHEN (Hdp > 0 AND Choice = 'Over') THEN -LoseVal * ptVal
		 END) /100 AS OUFT0,
	SUM (CASE
			WHEN BetTypeID !=3 THEN NULL
			WHEN Hdp = 1 THEN 0
			WHEN (Hdp > 1 AND Choice = 'Under') OR (Hdp < 1 AND Choice = 'Over') THEN WinVal * ptVal
			WHEN (Hdp > 1 AND Choice = 'Over') OR (Hdp > 1 AND Choice = 'Under') THEN -LoseVal * ptVal
		 END) /100 AS OUFT1,
	SUM (CASE
			WHEN BetTypeID !=3 THEN NULL
			WHEN Hdp = 2 THEN 0
			WHEN (Hdp > 2 AND Choice = 'Under') OR (Hdp < 2 AND Choice = 'Over') THEN WinVal * ptVal
			WHEN (Hdp > 2 AND Choice = 'Over') OR (Hdp > 2 AND Choice = 'Under') THEN -LoseVal * ptVal
		 END) /100 AS OUFT2,
	SUM (CASE
			WHEN BetTypeID !=8 THEN NULL
			WHEN Hdp = 0 THEN 0
			WHEN (Hdp > 0 AND Choice = 'Under') THEN WinVal * ptVal
			WHEN (Hdp > 0 AND Choice = 'Over') THEN -LoseVal * ptVal
		 END) /100 AS OUFH0,
	SUM (CASE
			WHEN BetTypeID !=8 THEN NULL
			WHEN Hdp = 1 THEN 0
			WHEN (Hdp > 1 AND Choice = 'Under') OR (Hdp < 1 AND Choice = 'Over') THEN WinVal * ptVal
			WHEN (Hdp > 1 AND Choice = 'Over') OR (Hdp > 1 AND Choice = 'Under') THEN -LoseVal * ptVal
		 END) /100 AS OUFH1,
	SUM (CASE
			WHEN BetTypeID !=8 THEN NULL
			WHEN Hdp = 2 THEN 0
			WHEN (Hdp > 2 AND Choice = 'Under') OR (Hdp < 2 AND Choice = 'Over') THEN WinVal * ptVal
			WHEN (Hdp > 2 AND Choice = 'Over') OR (Hdp > 2 AND Choice = 'Under') THEN -LoseVal * ptVal
		 END) /100 AS OUFH2		 
	FROM TempBet
	WHERE [Status] = 'Running'
	GROUP BY MatchID, Home, Away, [Time], LeaguaName, BetTypeId
END
GO
/****** Object:  StoredProcedure [dbo].[iBet_ForeCastHandiDynamic]    Script Date: 12/31/2010 17:36:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[iBet_ForeCastHandiDynamic]
	@ID int = 0,
	@MatchID int,
	@First int = -2,
	@Last int = 2	
AS
DECLARE @count int

BEGIN
	SET NOCOUNT ON;
	SET @count = @First
	UPDATE tblRangeForecast
	SET MatchID = -2	
	WHERE FCScore>-1000 AND FCScore<1000	
	
	WHILE (@count <= @Last)
	BEGIN
		IF EXISTS(SELECT MatchID FROM tblRangeForecast WHERE FCScore=@count)
		UPDATE tblRangeForecast
		SET	MatchID = @MatchID
		WHERE FCScore = @count
		ELSE 
			INSERT INTO tblRangeForecast(FCScore, MatchID)
			VALUES (@count, @MatchID)
		SET @count = @count + 1	
	END
			
	IF EXISTS(SELECT name FROM sys.tables
    WHERE name = 'TempBet')
    DROP TABLE TempBet
     
	SELECT * INTO TempBet
	FROM tblBets
	WHERE (SGMId = @ID OR GMId = @ID OR MasterId = @ID OR AgentId = @ID) 
		AND BetTypeId = 1 AND MatchID = @MatchID
	
	ALTER TABLE TempBet
	ADD ptVal float
	
	ALTER TABLE TempBet
	ADD winVal float
	
	ALTER TABLE TempBet
	ADD loseVal float
	
	UPDATE TempBet
	SET ptVal = CASE 
					WHEN SGMId = @ID THEN ptSGM
					WHEN GMId = @ID THEN ptGM
					WHEN MasterId = @ID THEN ptMaster
					WHEN AgentId = @ID THEN ptAgent
				END
				
	UPDATE TempBet
	SET WinVal = CASE 
					WHEN Odds < 0 THEN Stake
					ELSE Stake * Odds
				 END
	
	UPDATE TempBet
	SET LoseVal = CASE
					 WHEN Odds > 0 THEN Stake
					 ELSE Stake * Odds
				  END		 	
	
	SELECT Home, Away, FCScore,
	SUM (CASE
			WHEN BetTypeId != 1 THEN NULL
			WHEN Hdp = FCScore THEN 0
			WHEN (Hdp < FCScore AND Choice = Home) OR (Hdp > FCScore AND Choice = Away) THEN WinVal * ptVal
			ELSE -LoseVal * ptVal
		 END) /100 AS ForecastVal
		FROM TempBet,TblRangeForecast
	WHERE TempBet.MatchID = TblRangeForecast.MatchID AND [Status] = 'Running'
	GROUP BY TempBet.MatchID, Home, Away, FCScore
END
GO
/****** Object:  StoredProcedure [dbo].[iBet_ForeCast1x2Static]    Script Date: 12/31/2010 17:36:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[iBet_ForeCast1x2Static]
	@ID int = 0	
AS
BEGIN
	SET NOCOUNT ON;
	
	IF EXISTS(SELECT name FROM sys.tables
    WHERE name = 'TempBet')
    DROP TABLE TempBet
     
	SELECT * INTO TempBet
	FROM tblBets
	WHERE (SGMId = @ID OR GMId = @ID OR MasterId = @ID OR AgentId = @ID)
			AND (BetTypeId = 5 OR BetTypeId = 15) AND [Status] = 'Running'
	
	ALTER TABLE TempBet
	ADD ptVal float
	
	ALTER TABLE TempBet
	ADD winVal float
	
	ALTER TABLE TempBet
	ADD loseVal float
	
	UPDATE TempBet
	SET ptVal = CASE 
					WHEN SGMId = @ID THEN ptSGM
					WHEN GMId = @ID THEN ptGM
					WHEN MasterId = @ID THEN ptMaster
					WHEN AgentId = @ID THEN ptAgent
				END
				
	UPDATE TempBet
	SET WinVal = CASE 
					WHEN Odds < 0 THEN Stake
					ELSE Stake * Odds
				 END
	
	UPDATE TempBet
	SET LoseVal = CASE
					 WHEN Odds > 0 THEN Stake
					 ELSE Stake * Odds
				  END		 	
	
	SELECT MatchID, Home, Away, [Time], LeaguaName,
	SUM (CASE
			WHEN BetTypeId != 5 THEN NULL
			WHEN Choice = 'FT.1' THEN WinVal * ptVal			
			ELSE -LoseVal * ptVal
		 END) /100 AS OnexTwoFT1,
	SUM (CASE
			WHEN BetTypeId != 5 THEN NULL
			WHEN Choice = 'FT.x' THEN WinVal * ptVal			
			ELSE -LoseVal * ptVal
		 END) /100 AS OnexTwoFTx,
	SUM (CASE
			WHEN BetTypeId != 5 THEN NULL
			WHEN Choice = 'FT.2' THEN WinVal * ptVal			
			ELSE -LoseVal * ptVal
		 END) /100 AS OnexTwoFT2,
	SUM (CASE
			WHEN BetTypeId != 15 THEN NULL
			WHEN Choice = 'HT.1' THEN WinVal * ptVal			
			ELSE -LoseVal * ptVal
		 END) /100 AS OnexTwoHT1,
	SUM (CASE
			WHEN BetTypeId != 15 THEN NULL
			WHEN Choice = 'HT.x' THEN WinVal * ptVal			
			ELSE -LoseVal * ptVal
		 END) /100 AS OnexTwoHTx,
	SUM (CASE
			WHEN BetTypeId != 15 THEN NULL
			WHEN Choice = 'HT.2' THEN WinVal * ptVal			
			ELSE -LoseVal * ptVal
		 END) /100 AS OnexTwoHT2		 
		FROM TempBet
	WHERE [Status] = 'Running'
	GROUP BY MatchID, Home, Away, [Time], LeaguaName
END
GO
/****** Object:  StoredProcedure [dbo].[iBet_tblBets_Insert]    Script Date: 12/31/2010 17:36:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[iBet_tblBets_Insert] 

	@ID bigint output,
	@AccID int,
	@MatchID bigint,
	@BetTypeID int,
	@ParentID bigint,
	@SGMId bigint,
	@GMId bigint,
	@MasterId bigint,
	@AgentId bigint,
	@StrAcc nvarchar(50),
	@BetType nvarchar(255),
	@LeaguaName nvarchar(255),
	@Home nvarchar(255),
	@Away nvarchar(255),
	@Time nvarchar(255),
	@TransTime datetime,
	@Code nvarchar(50),
	@Choice nvarchar(50),
	@Hdp float,
	@Odds float,
	@Stake decimal(18, 2),
	@Status nvarchar(50),
	@IPBet nvarchar(50),
	@PotentialWin float,
	@Win float,
	@IsLiveBet bit,
	@ResultLiveBet nvarchar(50),
	@ResultTime datetime,
	@FinalScore nvarchar(50),
	@PTSGM float,
	@PTGM float,
	@PTMaster float,
	@PTAgent float,
	@CommSGM float,
	@CommGM float,
	@CommMaster float,
	@CommAgent float,
	@CommMember float,
	@OTValue nchar(10),
	@NameEvent nvarchar(150),
	@ReportDate datetime

AS
INSERT INTO [dbo].[tblBets]
		(
			 [AccID],
			 [MatchID],
			 [BetTypeID],
			 [ParentID],
			 [SGMId],
			 [GMId],
			 [MasterId],
			 [AgentId],
			 [StrAcc],
			 [BetType],
			 [LeaguaName],
			 [Home],
			 [Away],
			 [Time],
			 [TransTime],
			 [Code],
			 [Choice],
			 [Hdp],
			 [Odds],
			 [Stake],
			 [Status],
			 [IPBet],
			 [PotentialWin],
			 [Win],
			 [IsLiveBet],
			 [ResultLiveBet],
			 [ResultTime],
			 [FinalScore],
			 [PTSGM],
			 [PTGM],
			 [PTMaster],
			 [PTAgent],
			 [CommSGM],
			 [CommGM],
			 [CommMaster],
			 [CommAgent],
			 [CommMember],
			 [OTValue],
			 [NameEvent],
			 [ReportDate]
		)
Values
		(
			@AccID,
			@MatchID,
			@BetTypeID,
			@ParentID,
			@SGMId,
			@GMId,
			@MasterId,
			@AgentId,
			@StrAcc,
			@BetType,
			@LeaguaName,
			@Home,
			@Away,
			@Time,
			@TransTime,
			@Code,
			@Choice,
			@Hdp,
			@Odds,
			@Stake,
			@Status,
			@IPBet,
			@PotentialWin,
			@Win,
			@IsLiveBet,
			@ResultLiveBet,
			@ResultTime,
			@FinalScore,
			@PTSGM,
			@PTGM,
			@PTMaster,
			@PTAgent,
			@CommSGM,
			@CommGM,
			@CommMaster,
			@CommAgent,
			@CommMember,
			@OTValue,
			@NameEvent,
			@ReportDate
		)
set @ID=@@IDENTITY
GO
/****** Object:  StoredProcedure [dbo].[iBet_tblBets_Gets]    Script Date: 12/31/2010 17:36:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[iBet_tblBets_Gets] 

AS
SELECT 
	[tblBets].ID,
	[tblBets].AccID,
	[tblBets].MatchID,
	[tblBets].BetTypeID,
	[tblBets].ParentID,
	[tblBets].SGMId,
	[tblBets].GMId,
	[tblBets].MasterId,
	[tblBets].AgentId,
	[tblBets].StrAcc,
	[tblBets].BetType,
	[tblBets].LeaguaName,
	[tblBets].Home,
	[tblBets].Away,
	[tblBets].Time,
	[tblBets].TransTime,
	[tblBets].Code,
	[tblBets].Choice,
	[tblBets].Hdp,
	[tblBets].Odds,
	[tblBets].Stake,
	[tblBets].Status,
	[tblBets].IPBet,
	[tblBets].PotentialWin,
	[tblBets].Win,
	[tblBets].IsLiveBet,
	[tblBets].ResultLiveBet,
	[tblBets].ResultTime,
	[tblBets].FinalScore,
	[tblBets].PTSGM,
	[tblBets].PTGM,
	[tblBets].PTMaster,
	[tblBets].PTAgent,
	[tblBets].CommSGM,
	[tblBets].CommGM,
	[tblBets].CommMaster,
	[tblBets].CommAgent,
	[tblBets].CommMember,
	[tblBets].OTValue,
	[tblBets].NameEvent,
	[tblBets].ReportDate
FROM [dbo].[tblBets]
GO
/****** Object:  StoredProcedure [dbo].[iBet_tblBets_Get]    Script Date: 12/31/2010 17:36:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[iBet_tblBets_Get] 

	@ID bigint
AS
SELECT 
	ID,
	AccID,
	MatchID,
	BetTypeID,
	ParentID,
	SGMId,
	GMId,
	MasterId,
	AgentId,
	StrAcc,
	BetType,
	LeaguaName,
	Home,
	Away,
	Time,
	TransTime,
	Code,
	Choice,
	Hdp,
	Odds,
	Stake,
	Status,
	IPBet,
	PotentialWin,
	Win,
	IsLiveBet,
	ResultLiveBet,
	ResultTime,
	FinalScore,
	PTSGM,
	PTGM,
	PTMaster,
	PTAgent,
	CommSGM,
	CommGM,
	CommMaster,
	CommAgent,
	CommMember,
	OTValue,
	NameEvent,
	ReportDate
FROM [dbo].[tblBets]
WHERE ((([dbo].[tblBets].[ID])=@ID))
GO
/****** Object:  StoredProcedure [dbo].[iBet_tblBets_Delete]    Script Date: 12/31/2010 17:36:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[iBet_tblBets_Delete]

	@ID bigint

AS
DELETE
From [dbo].[tblBets]
 WHERE ((([dbo].[tblBets].[ID])=@ID))
GO
/****** Object:  StoredProcedure [dbo].[iBet_tblBalance_UpdateCredit]    Script Date: 12/31/2010 17:36:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[iBet_tblBalance_UpdateCredit] 


	@AccID bigint,
	@Credit decimal(18, 2)
	

AS
UPDATE [dbo].[tblBalance]
Set
	 [dbo].[tblBalance].[Credit]=@Credit
	 
WHERE ((([dbo].[tblBalance].AccID)=@AccID))
GO
/****** Object:  StoredProcedure [dbo].[iBet_tblBalance_Update]    Script Date: 12/31/2010 17:36:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[iBet_tblBalance_Update] 


	@ID_KeyValues bigint,


	@ID bigint,
	@AccID bigint,
	@CashBalance decimal(18, 2),
	@YesCashBalance decimal(18, 2),
	@TotalBalance decimal(18, 2),
	@YesTotalBalance decimal(18, 2),
	@Outstanding decimal(18, 2),
	@Credit decimal(18, 2),
	@BetCredit decimal(18, 2),
	@CreateDate datetime,
	@modifyDate datetime

AS
UPDATE [dbo].[tblBalance]
Set
	 [dbo].[tblBalance].[AccID]=@AccID,
	 [dbo].[tblBalance].[CashBalance]=@CashBalance,
	 [dbo].[tblBalance].[YesCashBalance]=@YesCashBalance,
	 [dbo].[tblBalance].[TotalBalance]=@TotalBalance,
	 [dbo].[tblBalance].[YesTotalBalance]=@YesTotalBalance,
	 [dbo].[tblBalance].[Outstanding]=@Outstanding,
	 [dbo].[tblBalance].[Credit]=@Credit,
	 [dbo].[tblBalance].[BetCredit]=@BetCredit,
	 [dbo].[tblBalance].[CreateDate]=@CreateDate,
	 [dbo].[tblBalance].[modifyDate]=@modifyDate
WHERE ((([dbo].[tblBalance].[ID])=@ID_KeyValues))
GO
/****** Object:  StoredProcedure [dbo].[iBet_tblBalance_Insert]    Script Date: 12/31/2010 17:36:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[iBet_tblBalance_Insert] 

	@ID bigint output,
	@AccID bigint,
	@CashBalance decimal(18, 2),
	@YesCashBalance decimal(18, 2),
	@TotalBalance decimal(18, 2),
	@YesTotalBalance decimal(18, 2),
	@Outstanding decimal(18, 2),
	@Credit decimal(18, 2),
	@BetCredit decimal(18, 2),
	@CreateDate datetime,
	@modifyDate datetime

AS
INSERT INTO [dbo].[tblBalance]
		(
			 [AccID],
			 [CashBalance],
			 [YesCashBalance],
			 [TotalBalance],
			 [YesTotalBalance],
			 [Outstanding],
			 [Credit],
			 [BetCredit],
			 [CreateDate],
			 [modifyDate]
		)
Values
		(
			@AccID,
			@CashBalance,
			@YesCashBalance,
			@TotalBalance,
			@YesTotalBalance,
			@Outstanding,
			@Credit,
			@BetCredit,
			@CreateDate,
			@modifyDate
		)
set @ID=@@IDENTITY
GO
/****** Object:  StoredProcedure [dbo].[iBet_tblBalance_Gets]    Script Date: 12/31/2010 17:36:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[iBet_tblBalance_Gets] 

AS
SELECT 
	[tblBalance].ID,
	[tblBalance].AccID,
	[tblBalance].CashBalance,
	[tblBalance].YesCashBalance,
	[tblBalance].TotalBalance,
	[tblBalance].YesTotalBalance,
	[tblBalance].Outstanding,
	[tblBalance].Credit,
	[tblBalance].BetCredit,
	[tblBalance].CreateDate,
	[tblBalance].modifyDate
FROM [dbo].[tblBalance]
GO
/****** Object:  StoredProcedure [dbo].[iBet_tblBalance_GetByAccId]    Script Date: 12/31/2010 17:36:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[iBet_tblBalance_GetByAccId] 

	@AcciD bigint
AS
SELECT 
	ID,
	AccID,
	CashBalance,
	YesCashBalance,
	TotalBalance,
	YesTotalBalance,
	Outstanding,
	Credit,
	BetCredit,
	CreateDate,
	modifyDate
FROM [dbo].[tblBalance]
WHERE ((([dbo].[tblBalance].AccID)=@AcciD))
GO
/****** Object:  StoredProcedure [dbo].[iBet_tblBalance_Get]    Script Date: 12/31/2010 17:36:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[iBet_tblBalance_Get] 

	@ID bigint
AS
SELECT 
	ID,
	AccID,
	CashBalance,
	YesCashBalance,
	TotalBalance,
	YesTotalBalance,
	Outstanding,
	Credit,
	BetCredit,
	CreateDate,
	modifyDate
FROM [dbo].[tblBalance]
WHERE ((([dbo].[tblBalance].[ID])=@ID))
GO
/****** Object:  StoredProcedure [dbo].[iBet_tblBalance_Delete]    Script Date: 12/31/2010 17:36:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[iBet_tblBalance_Delete]

	@ID bigint

AS
DELETE
From [dbo].[tblBalance]
 WHERE ((([dbo].[tblBalance].[ID])=@ID))
GO
/****** Object:  StoredProcedure [dbo].[iBet_tblRoleModules_Update]    Script Date: 12/31/2010 17:36:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[iBet_tblRoleModules_Update] 




	@RoleID int,
	@ModuleID int

AS
UPDATE [dbo].[tblRoleModules]
Set
	 [dbo].[tblRoleModules].[RoleID]=@RoleID,
	 [dbo].[tblRoleModules].[ModuleID]=@ModuleID
GO
/****** Object:  StoredProcedure [dbo].[iBet_tblRoleModules_Insert]    Script Date: 12/31/2010 17:36:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[iBet_tblRoleModules_Insert] 

	@RoleID int,
	@ModuleID int

AS
INSERT INTO [dbo].[tblRoleModules]
		(
			 [RoleID],
			 [ModuleID]
		)
Values
		(
			@RoleID,
			@ModuleID
		)
GO
/****** Object:  StoredProcedure [dbo].[iBet_tblRoleModules_Gets]    Script Date: 12/31/2010 17:36:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[iBet_tblRoleModules_Gets] 

AS
SELECT 
	[tblRoleModules].RoleID,
	[tblRoleModules].ModuleID
FROM [dbo].[tblRoleModules]
GO
/****** Object:  StoredProcedure [dbo].[iBet_tblRoleModules_Get]    Script Date: 12/31/2010 17:36:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[iBet_tblRoleModules_Get] 

AS
SELECT 
	RoleID,
	ModuleID
FROM [dbo].[tblRoleModules]
GO
/****** Object:  StoredProcedure [dbo].[iBet_tblRoleModules_Delete]    Script Date: 12/31/2010 17:36:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[iBet_tblRoleModules_Delete]


AS
DELETE
From [dbo].[tblRoleModules]
GO
/****** Object:  StoredProcedure [dbo].[iBet_tblRoleFunctionMapping_Update]    Script Date: 12/31/2010 17:36:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[iBet_tblRoleFunctionMapping_Update] 


	@ID_KeyValues int,


	@ID int,
	@RoleTitle nvarchar(100),
	@intFunctionID int

AS
UPDATE [dbo].[tblRoleFunctionMapping]
Set
	 [dbo].[tblRoleFunctionMapping].[RoleTitle]=@RoleTitle,
	 [dbo].[tblRoleFunctionMapping].[intFunctionID]=@intFunctionID
WHERE ((([dbo].[tblRoleFunctionMapping].[ID])=@ID_KeyValues))
GO
/****** Object:  StoredProcedure [dbo].[iBet_tblRoleFunctionMapping_Insert]    Script Date: 12/31/2010 17:36:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[iBet_tblRoleFunctionMapping_Insert] 

	@ID int output,
	@RoleTitle nvarchar(100),
	@intFunctionID int

AS
INSERT INTO [dbo].[tblRoleFunctionMapping]
		(
			 [RoleTitle],
			 [intFunctionID]
		)
Values
		(
			@RoleTitle,
			@intFunctionID
		)
set @ID=@@IDENTITY
GO
/****** Object:  StoredProcedure [dbo].[iBet_tblRoleFunctionMapping_Gets]    Script Date: 12/31/2010 17:36:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[iBet_tblRoleFunctionMapping_Gets] 

AS
SELECT 	*
FROM [dbo].[tblRoleFunctionMapping]
GO
/****** Object:  StoredProcedure [dbo].[iBet_tblRoleFunctionMapping_GetDistinct]    Script Date: 12/31/2010 17:36:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[iBet_tblRoleFunctionMapping_GetDistinct] 
AS
SELECT DISTINCT RoleTitle as RoleTitle
FROM [dbo].[tblRoleFunctionMapping]
GO
/****** Object:  StoredProcedure [dbo].[iBet_tblRoleFunctionMapping_Get]    Script Date: 12/31/2010 17:36:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[iBet_tblRoleFunctionMapping_Get] 

	@ID int
AS
SELECT 	*
FROM [dbo].[tblRoleFunctionMapping]
WHERE ((([dbo].[tblRoleFunctionMapping].[ID])=@ID))
GO
/****** Object:  StoredProcedure [dbo].[iBet_tblRoleFunctionMapping_Delete]    Script Date: 12/31/2010 17:36:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[iBet_tblRoleFunctionMapping_Delete]

	@ID int

AS
DELETE
From [dbo].[tblRoleFunctionMapping]
 WHERE ((([dbo].[tblRoleFunctionMapping].[ID])=@ID))
GO
/****** Object:  StoredProcedure [dbo].[iBet_tblResult_Update]    Script Date: 12/31/2010 17:36:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[iBet_tblResult_Update] 


	@ResultId_KeyValues bigint,


	@ResultId bigint,
	@KickoffTime datetime,
	@LeagueId bigint,
	@LeagueName nvarchar(450),
	@MatchId bigint,
	@EventID int,
	@EventName nvarchar(255),
	@HomeName nvarchar(250),
	@AwayName nvarchar(250),
	@FirstHaflHome varchar(50),
	@FirstHaflAway varchar(50),
	@FinalHome varchar(50),
	@FinalAway varchar(50),
	@Status varchar(50),
	@CreateDate datetime

AS
UPDATE [dbo].[tblResult]
Set
	 [dbo].[tblResult].[KickoffTime]=@KickoffTime,
	 [dbo].[tblResult].[LeagueId]=@LeagueId,
	 [dbo].[tblResult].[LeagueName]=@LeagueName,
	 [dbo].[tblResult].[MatchId]=@MatchId,
	 [dbo].[tblResult].[EventID]=@EventID,
	 [dbo].[tblResult].[EventName]=@EventName,
	 [dbo].[tblResult].[HomeName]=@HomeName,
	 [dbo].[tblResult].[AwayName]=@AwayName,
	 [dbo].[tblResult].[FirstHaflHome]=@FirstHaflHome,
	 [dbo].[tblResult].[FirstHaflAway]=@FirstHaflAway,
	 [dbo].[tblResult].[FinalHome]=@FinalHome,
	 [dbo].[tblResult].[FinalAway]=@FinalAway,
	 [dbo].[tblResult].[Status]=@Status,
	 [dbo].[tblResult].[CreateDate]=@CreateDate
WHERE ((([dbo].[tblResult].[ResultId])=@ResultId_KeyValues))
GO
/****** Object:  StoredProcedure [dbo].[iBet_tblResult_Insert]    Script Date: 12/31/2010 17:36:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[iBet_tblResult_Insert] 

	@ResultId bigint,
	@KickoffTime datetime,
	@LeagueId bigint,
	@LeagueName nvarchar(450),
	@MatchId bigint,
	@EventID int,
	@EventName nvarchar(255),
	@HomeName nvarchar(250),
	@AwayName nvarchar(250),
	@FirstHaflHome varchar(50),
	@FirstHaflAway varchar(50),
	@FinalHome varchar(50),
	@FinalAway varchar(50),
	@Status varchar(50),
	@CreateDate datetime

AS
INSERT INTO [dbo].[tblResult]
		(
			 [KickoffTime],
			 [LeagueId],
			 [LeagueName],
			 [MatchId],
			 [EventID],
			 [EventName],
			 [HomeName],
			 [AwayName],
			 [FirstHaflHome],
			 [FirstHaflAway],
			 [FinalHome],
			 [FinalAway],
			 [Status],
			 [CreateDate]
		)
Values
		(
			@KickoffTime,
			@LeagueId,
			@LeagueName,
			@MatchId,
			@EventID,
			@EventName,
			@HomeName,
			@AwayName,
			@FirstHaflHome,
			@FirstHaflAway,
			@FinalHome,
			@FinalAway,
			@Status,
			@CreateDate
		)
GO
/****** Object:  StoredProcedure [dbo].[iBet_tblResult_Gets]    Script Date: 12/31/2010 17:36:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[iBet_tblResult_Gets] 

AS
SELECT 
	[tblResult].ResultId,
	[tblResult].KickoffTime,
	[tblResult].LeagueId,
	[tblResult].LeagueName,
	[tblResult].MatchId,
	[tblResult].EventID,
	[tblResult].EventName,
	[tblResult].HomeName,
	[tblResult].AwayName,
	[tblResult].FirstHaflHome,
	[tblResult].FirstHaflAway,
	[tblResult].FinalHome,
	[tblResult].FinalAway,
	[tblResult].Status,
	[tblResult].CreateDate
FROM [dbo].[tblResult]
GO
/****** Object:  StoredProcedure [dbo].[iBet_tblResult_Get]    Script Date: 12/31/2010 17:36:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[iBet_tblResult_Get] 

	@ResultId bigint
AS
SELECT 
	ResultId,
	KickoffTime,
	LeagueId,
	LeagueName,
	MatchId,
	EventID,
	EventName,
	HomeName,
	AwayName,
	FirstHaflHome,
	FirstHaflAway,
	FinalHome,
	FinalAway,
	Status,
	CreateDate
FROM [dbo].[tblResult]
WHERE ((([dbo].[tblResult].[ResultId])=@ResultId))
GO
/****** Object:  StoredProcedure [dbo].[iBet_tblResult_Delete]    Script Date: 12/31/2010 17:36:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[iBet_tblResult_Delete]

	@ResultId bigint

AS
DELETE
From [dbo].[tblResult]
 WHERE ((([dbo].[tblResult].[ResultId])=@ResultId))
GO
/****** Object:  StoredProcedure [dbo].[iBet_tblOdds_Update]    Script Date: 12/31/2010 17:36:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[iBet_tblOdds_Update] 


	@ID_KeyValues bigint,


	@ID bigint,
	@MatchID int,
	@OddID bigint,
	@OddTypeID int,
	@MatchName nvarchar(500),
	@OddType nvarchar(50),
	@MinValue decimal(18, 2),
	@MaxValue decimal(18, 2),
	@intVisibleState int,
	@CurrentState nvarchar(50)

AS
UPDATE [dbo].[tblOdds]
Set
	 [dbo].[tblOdds].[MatchID]=@MatchID,
	 [dbo].[tblOdds].[OddID]=@OddID,
	 [dbo].[tblOdds].[OddTypeID]=@OddTypeID,
	 [dbo].[tblOdds].[MatchName]=@MatchName,
	 [dbo].[tblOdds].[OddType]=@OddType,
	 [dbo].[tblOdds].[MinValue]=@MinValue,
	 [dbo].[tblOdds].[MaxValue]=@MaxValue,
	 [dbo].[tblOdds].[intVisibleState]=@intVisibleState,
	 [dbo].[tblOdds].[CurrentState]=@CurrentState
WHERE ((([dbo].[tblOdds].[ID])=@ID_KeyValues))
GO
/****** Object:  StoredProcedure [dbo].[iBet_tblOdds_Insert]    Script Date: 12/31/2010 17:36:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[iBet_tblOdds_Insert] 

	@ID bigint output,
	@MatchID int,
	@OddID bigint,
	@OddTypeID int,
	@MatchName nvarchar(500),
	@OddType nvarchar(50),
	@MinValue decimal(18, 2),
	@MaxValue decimal(18, 2),
	@intVisibleState int,
	@CurrentState nvarchar(50)

AS
INSERT INTO [dbo].[tblOdds]
		(
			 [MatchID],
			 [OddID],
			 [OddTypeID],
			 [MatchName],
			 [OddType],
			 [MinValue],
			 [MaxValue],
			 [intVisibleState],
			 [CurrentState]
		)
Values
		(
			@MatchID,
			@OddID,
			@OddTypeID,
			@MatchName,
			@OddType,
			@MinValue,
			@MaxValue,
			@intVisibleState,
			@CurrentState
		)
set @ID=@@IDENTITY
GO
/****** Object:  StoredProcedure [dbo].[iBet_tblOdds_Gets]    Script Date: 12/31/2010 17:36:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[iBet_tblOdds_Gets] 

AS
SELECT 
	[tblOdds].ID,
	[tblOdds].MatchID,
	[tblOdds].OddID,
	[tblOdds].OddTypeID,
	[tblOdds].MatchName,
	[tblOdds].OddType,
	[tblOdds].MinValue,
	[tblOdds].MaxValue,
	[tblOdds].intVisibleState,
	[tblOdds].CurrentState
FROM [dbo].[tblOdds]
GO
/****** Object:  StoredProcedure [dbo].[iBet_tblOdds_Get]    Script Date: 12/31/2010 17:36:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[iBet_tblOdds_Get] 

	@ID bigint
AS
SELECT 
	ID,
	MatchID,
	OddID,
	OddTypeID,
	MatchName,
	OddType,
	MinValue,
	MaxValue,
	intVisibleState,
	CurrentState
FROM [dbo].[tblOdds]
WHERE ((([dbo].[tblOdds].[ID])=@ID))
GO
/****** Object:  StoredProcedure [dbo].[iBet_tblOdds_Delete]    Script Date: 12/31/2010 17:36:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[iBet_tblOdds_Delete]

	@ID bigint

AS
DELETE
From [dbo].[tblOdds]
 WHERE ((([dbo].[tblOdds].[ID])=@ID))
GO
/****** Object:  StoredProcedure [dbo].[iBet_tblModules_Update]    Script Date: 12/31/2010 17:36:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[iBet_tblModules_Update] 


	@ID_KeyValues int,


	@ID int,
	@ModuleName nvarchar(255),
	@ModuleTitle nvarchar(50),
	@ModuleDescription nvarchar(200),
	@ModuleURL nvarchar(255),
	@IsVisible bit,
	@Priority int,
	@Identifier nvarchar(50)

AS
UPDATE [dbo].[tblModules]
Set
	 [dbo].[tblModules].[ModuleName]=@ModuleName,
	 [dbo].[tblModules].[ModuleTitle]=@ModuleTitle,
	 [dbo].[tblModules].[ModuleDescription]=@ModuleDescription,
	 [dbo].[tblModules].[ModuleURL]=@ModuleURL,
	 [dbo].[tblModules].[IsVisible]=@IsVisible,
	 [dbo].[tblModules].[Priority]=@Priority,
	 [dbo].[tblModules].[Identifier]=@Identifier
WHERE ((([dbo].[tblModules].[ID])=@ID_KeyValues))
GO
/****** Object:  StoredProcedure [dbo].[iBet_tblModules_Insert]    Script Date: 12/31/2010 17:36:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[iBet_tblModules_Insert] 

	@ID int output,
	@ModuleName nvarchar(255),
	@ModuleTitle nvarchar(50),
	@ModuleDescription nvarchar(200),
	@ModuleURL nvarchar(255),
	@IsVisible bit,
	@Priority int,
	@Identifier nvarchar(50)

AS
INSERT INTO [dbo].[tblModules]
		(
			 [ModuleName],
			 [ModuleTitle],
			 [ModuleDescription],
			 [ModuleURL],
			 [IsVisible],
			 [Priority],
			 [Identifier]
		)
Values
		(
			@ModuleName,
			@ModuleTitle,
			@ModuleDescription,
			@ModuleURL,
			@IsVisible,
			@Priority,
			@Identifier
		)
set @ID=@@IDENTITY
GO
/****** Object:  StoredProcedure [dbo].[iBet_tblModules_Gets]    Script Date: 12/31/2010 17:36:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[iBet_tblModules_Gets] 

AS
SELECT 
	[tblModules].ID,
	[tblModules].ModuleName,
	[tblModules].ModuleTitle,
	[tblModules].ModuleDescription,
	[tblModules].ModuleURL,
	[tblModules].IsVisible,
	[tblModules].Priority,
	[tblModules].Identifier
FROM [dbo].[tblModules]
GO
/****** Object:  StoredProcedure [dbo].[iBet_tblModules_GetByGroup]    Script Date: 12/31/2010 17:36:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		ThangVD
-- Create date: 11/06/2010 vn date
-- Description:	Return list of Modules - group by Identifier
-- =============================================
CREATE PROCEDURE [dbo].[iBet_tblModules_GetByGroup] 
	@strIdentifier nvarchar(200)
AS
SELECT 
	ID,
	ModuleName,
	ModuleTitle,
	ModuleURL,
	IsVisible,
	Priority,
	Identifier
FROM [dbo].[tblModules]
WHERE ((([dbo].[tblModules].[Identifier])=@strIdentifier))
GO
/****** Object:  Table [dbo].[tblMatchCount]    Script Date: 12/31/2010 17:36:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblMatchCount](
	[MatchCountId] [bigint] IDENTITY(1,1) NOT NULL,
	[MatchCount] [bigint] NOT NULL,
	[LeagueId] [bigint] NULL,
	[MatchId] [bigint] NULL,
	[OddsId_1] [bigint] NULL,
	[OddsId_3] [bigint] NULL,
	[OddsId_5] [bigint] NULL,
	[OddsId_7] [bigint] NULL,
	[OddsId_8] [bigint] NULL,
	[OddsId_15] [bigint] NULL,
	[OddsId_4] [bigint] NULL,
	[OddsId_2] [bigint] NULL,
	[OddsId_16] [bigint] NULL,
	[OddsId_12] [bigint] NULL,
	[OddsId_6] [bigint] NULL,
	[OddsId_14] [bigint] NULL,
	[Status] [bit] NULL,
 CONSTRAINT [PK_tblMatchCount_1] PRIMARY KEY CLUSTERED 
(
	[MatchCountId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[view_AccountRoleTitle]    Script Date: 12/31/2010 17:36:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[view_AccountRoleTitle]
AS
SELECT DISTINCT dbo.tblUserRights.UserID, dbo.tblRoleFunctionMapping.RoleTitle, dbo.tblRoleFunctionMapping.GradeID
FROM         dbo.tblUserRights INNER JOIN
                      dbo.tblRoleFunctionMapping ON dbo.tblUserRights.intFunctionID = dbo.tblRoleFunctionMapping.intFunctionID
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "tblUserRights"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 169
               Right = 198
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "tblRoleFunctionMapping"
            Begin Extent = 
               Top = 6
               Left = 301
               Bottom = 167
               Right = 529
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'view_AccountRoleTitle'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'view_AccountRoleTitle'
GO
/****** Object:  View [dbo].[view_AccountModules]    Script Date: 12/31/2010 17:36:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[view_AccountModules]
AS
SELECT     TOP (100) PERCENT dbo.tblAccounts.ID AS AccountID, dbo.tblRoleModules.RoleID, dbo.tblModules.ID AS ModuleID, dbo.tblAccounts.UserName, 
                      dbo.tblRoleModules.RoleName, dbo.tblRoleModules.RoleDescriptions, dbo.tblModules.ModuleName, dbo.tblModules.ModuleTitle, dbo.tblModules.ModuleDescription, 
                      dbo.tblModules.ModuleURL, dbo.tblModules.IsVisible AS ModuleVisible, dbo.tblModules.Priority, dbo.tblModules.Identifier
FROM         dbo.tblModules INNER JOIN
                      dbo.tblRoleModules ON dbo.tblModules.ID = dbo.tblRoleModules.ModuleID INNER JOIN
                      dbo.tblAccounts ON dbo.tblRoleModules.RoleID = dbo.tblAccounts.AccGrade
ORDER BY dbo.tblModules.Priority
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "tblAccounts"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 202
               Right = 223
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "tblRoleModules"
            Begin Extent = 
               Top = 23
               Left = 309
               Bottom = 174
               Right = 477
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "tblModules"
            Begin Extent = 
               Top = 0
               Left = 570
               Bottom = 196
               Right = 746
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 14
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 1875
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'view_AccountModules'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'view_AccountModules'
GO
/****** Object:  View [dbo].[view_AccountFunctions]    Script Date: 12/31/2010 17:36:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[view_AccountFunctions]
AS
SELECT     TOP (100) PERCENT dbo.tblAccounts.ID AS AccountID, dbo.tblUserRights.intFunctionID AS FunctionID, dbo.tblFunctions.ModuleID, dbo.tblAccounts.UserName, 
                      dbo.tblModules.ModuleName, dbo.tblModules.ModuleTitle, dbo.tblFunctions.FunctionName, dbo.tblFunctions.FunctionTitle, dbo.tblFunctions.FunctionDescription, 
                      dbo.tblFunctions.FunctionURL, dbo.tblFunctions.IsVisible, dbo.tblFunctions.Priority, dbo.tblUserRights.GradeID, dbo.tblAccounts.AccGrade
FROM         dbo.tblAccounts INNER JOIN
                      dbo.tblUserRights ON dbo.tblAccounts.ID = dbo.tblUserRights.UserID INNER JOIN
                      dbo.tblFunctions ON dbo.tblUserRights.intFunctionID = dbo.tblFunctions.ID INNER JOIN
                      dbo.tblModules ON dbo.tblFunctions.ModuleID = dbo.tblModules.ID
ORDER BY dbo.tblModules.Priority, dbo.tblFunctions.Priority
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[42] 4[26] 2[10] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "tblAccounts"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 209
               Right = 223
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "tblUserRights"
            Begin Extent = 
               Top = 6
               Left = 261
               Bottom = 125
               Right = 421
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "tblFunctions"
            Begin Extent = 
               Top = 6
               Left = 459
               Bottom = 203
               Right = 642
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "tblModules"
            Begin Extent = 
               Top = 19
               Left = 669
               Bottom = 197
               Right = 845
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 13
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1815
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 1470
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         Gro' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'view_AccountFunctions'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'upBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'view_AccountFunctions'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'view_AccountFunctions'
GO
/****** Object:  View [dbo].[View_AccountBalance]    Script Date: 12/31/2010 17:36:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[View_AccountBalance]
AS
SELECT     dbo.tblAccounts.ID AS Expr1, dbo.tblAccounts.ParentID, dbo.tblAccounts.SGMId, dbo.tblAccounts.GMId, dbo.tblAccounts.MaterId, 
                      dbo.tblAccounts.AgentId, dbo.tblAccounts.AccountID, dbo.tblAccounts.AccGrade, dbo.tblAccounts.UserName, dbo.tblBalance.ID, dbo.tblBalance.AccID, 
                      dbo.tblBalance.CashBalance, dbo.tblBalance.YesCashBalance, dbo.tblBalance.TotalBalance, dbo.tblBalance.YesTotalBalance, 
                      dbo.tblBalance.Outstanding, dbo.tblBalance.Credit, dbo.tblBalance.BetCredit, dbo.tblBalance.CreateDate, dbo.tblBalance.modifyDate, 
                      dbo.tblAccounts.IsOpen, dbo.tblAccounts.IsSuspended
FROM         dbo.tblAccounts INNER JOIN
                      dbo.tblBalance ON dbo.tblAccounts.ID = dbo.tblBalance.AccID
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "tblAccounts"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 182
               Right = 218
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "tblBalance"
            Begin Extent = 
               Top = 46
               Left = 311
               Bottom = 161
               Right = 470
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 3150
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_AccountBalance'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_AccountBalance'
GO
/****** Object:  Table [dbo].[tblTransaction_Log]    Script Date: 12/31/2010 17:36:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblTransaction_Log](
	[TransactionId] [bigint] IDENTITY(1,1) NOT NULL,
	[MemberId] [bigint] NOT NULL,
	[TimeInsert] [datetime] NULL,
	[BetMoney] [numeric](18, 0) NULL,
	[TotalBetMoney] [numeric](18, 3) NULL,
	[OddsValue] [decimal](18, 3) NULL,
	[OddsId] [bigint] NULL,
	[OddsType] [varchar](50) NULL,
	[MatchId] [bigint] NULL,
	[Status] [bit] NULL,
	[ChoiceValue] [varchar](150) NULL,
	[BetKindValue] [varchar](50) NULL,
	[Competitions] [varchar](50) NULL,
	[MenuType] [varchar](50) NULL,
	[MatchDate] [varchar](100) NULL,
	[IsLive] [bit] NULL,
	[IsWon] [varchar](50) NULL,
 CONSTRAINT [PK_tblTransaction_Log] PRIMARY KEY CLUSTERED 
(
	[TransactionId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblTransaction]    Script Date: 12/31/2010 17:36:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblTransaction](
	[TransactionId] [bigint] IDENTITY(1,1) NOT NULL,
	[MemberId] [bigint] NOT NULL,
	[TimeInsert] [datetime] NULL,
	[BetMoney] [numeric](18, 0) NULL,
	[TotalBetMoney] [numeric](18, 3) NULL,
	[OddsValue] [decimal](18, 3) NULL,
	[OddsId] [bigint] NULL,
	[OddsType] [varchar](50) NULL,
	[MatchId] [bigint] NULL,
	[Status] [bit] NULL,
	[ChoiceValue] [varchar](150) NULL,
	[BetKindValue] [varchar](50) NULL,
	[Competitions] [varchar](50) NULL,
	[MenuType] [varchar](50) NULL,
	[MatchDate] [varchar](100) NULL,
	[IsLive] [bit] NULL,
	[IsWon] [varchar](50) NULL,
 CONSTRAINT [PK_tbl_transaction] PRIMARY KEY CLUSTERED 
(
	[TransactionId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[tblTransaction] ON
INSERT [dbo].[tblTransaction] ([TransactionId], [MemberId], [TimeInsert], [BetMoney], [TotalBetMoney], [OddsValue], [OddsId], [OddsType], [MatchId], [Status], [ChoiceValue], [BetKindValue], [Competitions], [MenuType], [MatchDate], [IsLive], [IsWon]) VALUES (1, 1, CAST(0x00009DAF00B2F9F8 AS DateTime), CAST(5 AS Numeric(18, 0)), CAST(0.095 AS Numeric(18, 3)), CAST(-0.981 AS Decimal(18, 3)), 7367001, N'Handicap', 10179, 1, N'Manly United FC', N'-0.25', N'Score', N'undefined', N'06/22 05:30PM', 0, N'h')
INSERT [dbo].[tblTransaction] ([TransactionId], [MemberId], [TimeInsert], [BetMoney], [TotalBetMoney], [OddsValue], [OddsId], [OddsType], [MatchId], [Status], [ChoiceValue], [BetKindValue], [Competitions], [MenuType], [MatchDate], [IsLive], [IsWon]) VALUES (2, 1, CAST(0x00009DAF00B31744 AS DateTime), CAST(5 AS Numeric(18, 0)), CAST(1.300 AS Numeric(18, 3)), CAST(-0.740 AS Decimal(18, 3)), 5765328, N'Handicap', 780225, 1, N'Uruguay', N'-0.25', N'Score', N'undefined', N'06/22 05:30PM', 0, N'a')
INSERT [dbo].[tblTransaction] ([TransactionId], [MemberId], [TimeInsert], [BetMoney], [TotalBetMoney], [OddsValue], [OddsId], [OddsType], [MatchId], [Status], [ChoiceValue], [BetKindValue], [Competitions], [MenuType], [MatchDate], [IsLive], [IsWon]) VALUES (3, 1, CAST(0x00009DAF00B3310C AS DateTime), CAST(5 AS Numeric(18, 0)), CAST(10.000 AS Numeric(18, 3)), CAST(1.000 AS Decimal(18, 3)), 26, N'First Goal/Last Goal', 793392, 1, N'HF', NULL, N'FGLG', N'Score', N'06/22 10:00PM', 0, N'11')
INSERT [dbo].[tblTransaction] ([TransactionId], [MemberId], [TimeInsert], [BetMoney], [TotalBetMoney], [OddsValue], [OddsId], [OddsType], [MatchId], [Status], [ChoiceValue], [BetKindValue], [Competitions], [MenuType], [MatchDate], [IsLive], [IsWon]) VALUES (4, 1, CAST(0x00009DAF00B33CC4 AS DateTime), CAST(5 AS Numeric(18, 0)), CAST(10.000 AS Numeric(18, 3)), CAST(1.000 AS Decimal(18, 3)), 26, N'Correct Score', 793392, 1, N'0:5 UP', NULL, N'Correct Score', N'Score', N'06/22 10:00PM', 0, N'05')
INSERT [dbo].[tblTransaction] ([TransactionId], [MemberId], [TimeInsert], [BetMoney], [TotalBetMoney], [OddsValue], [OddsId], [OddsType], [MatchId], [Status], [ChoiceValue], [BetKindValue], [Competitions], [MenuType], [MatchDate], [IsLive], [IsWon]) VALUES (5, 1, CAST(0x00009DAF00B4FB40 AS DateTime), CAST(5 AS Numeric(18, 0)), CAST(0.850 AS Numeric(18, 3)), CAST(-0.830 AS Decimal(18, 3)), 5719827, N'OVER/UNDER', 780225, 1, N'Over', N'-2.25', N'Score', N'undefined', N'06/22 05:30PM', 0, N'h')
INSERT [dbo].[tblTransaction] ([TransactionId], [MemberId], [TimeInsert], [BetMoney], [TotalBetMoney], [OddsValue], [OddsId], [OddsType], [MatchId], [Status], [ChoiceValue], [BetKindValue], [Competitions], [MenuType], [MatchDate], [IsLive], [IsWon]) VALUES (6, 1, CAST(0x00009DAF00B6A24C AS DateTime), CAST(5 AS Numeric(18, 0)), CAST(9.555 AS Numeric(18, 3)), CAST(0.911 AS Decimal(18, 3)), 731545, N'Handicap', 780194, 1, N'South Africa', N'0.3', N'Score', N'undefined', N'06/22 10:00PM', 0, N'h')
SET IDENTITY_INSERT [dbo].[tblTransaction] OFF
/****** Object:  StoredProcedure [dbo].[iBet_viewAccountRoleTitle_Update]    Script Date: 12/31/2010 17:36:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[iBet_viewAccountRoleTitle_Update] 


	@UserID_KeyValues bigint,


	@UserID bigint,
	@RoleTitle nvarchar(100)

AS
UPDATE [dbo].[view_AccountRoleTitle]
Set
	 [dbo].[view_AccountRoleTitle].[RoleTitle]=@RoleTitle
WHERE ((([dbo].[view_AccountRoleTitle].[UserID])=@UserID_KeyValues))
GO
/****** Object:  StoredProcedure [dbo].[iBet_viewAccountRoleTitle_Insert]    Script Date: 12/31/2010 17:36:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[iBet_viewAccountRoleTitle_Insert] 

	@UserID bigint,
	@RoleTitle nvarchar(100)

AS
INSERT INTO [dbo].[view_AccountRoleTitle]
		(
			 [UserID],
			 [RoleTitle]
		)
Values
		(
			@UserID,
			@RoleTitle
		)
GO
/****** Object:  StoredProcedure [dbo].[iBet_viewAccountRoleTitle_Gets]    Script Date: 12/31/2010 17:36:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[iBet_viewAccountRoleTitle_Gets] 
	
AS
SELECT *	
FROM [dbo].[view_AccountRoleTitle]
GO
/****** Object:  StoredProcedure [dbo].[iBet_viewAccountRoleTitle_Get]    Script Date: 12/31/2010 17:36:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[iBet_viewAccountRoleTitle_Get] 

	@UserID bigint
AS
SELECT 	*
FROM [dbo].[view_AccountRoleTitle]
WHERE ((([dbo].[view_AccountRoleTitle].[UserID])=@UserID))
GO
/****** Object:  StoredProcedure [dbo].[iBet_viewAccountRoleTitle_Delete]    Script Date: 12/31/2010 17:36:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[iBet_viewAccountRoleTitle_Delete]

	@UserID bigint

AS
DELETE
From [dbo].[view_AccountRoleTitle]
 WHERE ((([dbo].[view_AccountRoleTitle].[UserID])=@UserID))
GO
/****** Object:  StoredProcedure [dbo].[iBet_tblModules_GetByAccount]    Script Date: 12/31/2010 17:36:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--ThangVD 13/06/2010 vndate
CREATE PROCEDURE [dbo].[iBet_tblModules_GetByAccount] 

	@AccountID bigint,
	@Identifier nvarchar(50) = NULL
AS			
	IF @Identifier IS NULL 
		SELECT * FROM dbo.view_AccountModules WHERE (AccountID=@AccountID)
	ELSE
		SELECT * FROM dbo.view_AccountModules WHERE (AccountID=@AccountID)  and (Identifier=@Identifier)
GO
/****** Object:  StoredProcedure [dbo].[iBet_tblFunctions_GetByModule]    Script Date: 12/31/2010 17:36:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--ThangVD 11/06/2010 vndate
CREATE PROCEDURE [dbo].[iBet_tblFunctions_GetByModule] 

	@intModuleID int,
	@intAcountID int
AS
SELECT     *
FROM         view_AccountFunctions
WHERE     (AccountID = @intAcountID) AND (ModuleID = @intModuleID) and (GradeID=AccGrade)
order by Priority
GO
/****** Object:  StoredProcedure [dbo].[iBet_Info_BalanceSGM]    Script Date: 12/31/2010 17:36:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[iBet_Info_BalanceSGM]
	@ID int = 0 
AS
BEGIN
	SET NOCOUNT ON;
	SELECT
	SUM(CASE WHEN SGMId	  = @ID AND GMId = '0' AND MaterId = '0' AND AgentId = '0' THEN Outstanding
			 ELSE NULL
			 END 			 
	) as TotalOutstanding,
	SUM(CASE WHEN ParentID	  = @ID THEN Credit
			 ELSE NULL
			 END 			 
	) as TotalGMCredit,
	SUM(CASE WHEN SGMId	  = @ID AND GMId != '0' AND MaterId ='0' AND AgentId = '0' THEN Credit
			 ELSE NULL
			 END 			 
	) as TotalMasterCredit,
	SUM(CASE WHEN SGMId	  = @ID AND GMId != '0' AND MaterId !='0' AND AgentId = '0' THEN Credit
			 ELSE NULL
			 END 			 
	) as TotalAgentCredit,
	SUM(CASE WHEN SGMId	  = @ID AND GMId != '0' AND MaterId !='0' AND AgentId != '0' THEN Credit
			 ELSE NULL
			 END 			 
	) as TotalMemberCredit,
	Count(CASE WHEN SGMId	= @ID AND GMId ='0' AND MaterId = '0' AND AgentId = '0' AND IsOpen = 'True' THEN AccID
			 ELSE NULL
			 END 			 
	) as GMActive,
	Count(CASE WHEN SGMId	  = @ID AND GMId ='0' AND MaterId = '0' AND AgentId = '0' AND IsOpen = 'False' THEN AccID
			 ELSE NULL
			 END 			 
	) as GMClosed,
	Count(CASE WHEN SGMId	  = @ID AND GMId ='0' AND MaterId = '0' AND AgentId = '0' AND IsSuspended = 'True' THEN AccID
			 ELSE NULL
			 END 			 
	) as GMSuspended,
	Count(CASE WHEN SGMId	= @ID AND GMId !='0' AND MaterId = '0' AND AgentId = '0' AND IsOpen = 'True' THEN AccID
			 ELSE NULL
			 END 			 
	) as MasterActive,
	Count(CASE WHEN SGMId	  = @ID AND GMId !='0' AND MaterId = '0' AND AgentId = '0' AND IsOpen = 'False' THEN AccID
			 ELSE NULL
			 END 			 
	) as MasterClosed,
	Count(CASE WHEN SGMId	  = @ID AND GMId !='0' AND MaterId = '0' AND AgentId = '0' AND IsSuspended = 'True' THEN AccID
			 ELSE NULL
			 END 			 
	) as MasterSuspended,
	Count(CASE WHEN SGMId	  = @ID AND GMId != '0' AND MaterId != '0' AND AgentId = '0' AND IsOpen = 'True' THEN AccID
			 ELSE NULL
			 END 			 
	) as AgentActive,
	Count(CASE WHEN SGMId	  = @ID AND GMId != '0' AND MaterId != '0' AND AgentId = '0' AND IsOpen = 'False' THEN AccID
			 ELSE NULL
			 END 			 
	) as AgentClosed,
	Count(CASE WHEN SGMId	  = @ID AND GMId != '0' AND MaterId != '0' AND AgentId = '0' AND IsSuspended = 'True' THEN AccID
			 ELSE NULL
			 END 			 
	) as AgentSuspended,
	Count(CASE WHEN SGMId	  = @ID AND GMId != '0' AND MaterId != '0' AND AgentId != '0' AND IsOpen = 'True' THEN AccID
			 ELSE NULL
			 END 			 
	) as MemberActive,
	Count(CASE WHEN SGMId	  = @ID AND GMId != '0' AND MaterId != '0' AND AgentId != '0' AND IsOpen = 'False' THEN AccID
			 ELSE NULL
			 END 			 
	) as MemberClosed,
	Count(CASE WHEN SGMId	  = @ID AND GMId != '0' AND MaterId != '0' AND AgentId != '0' AND IsSuspended = 'True' THEN AccID
			 ELSE NULL
			 END 			 
	) as MemberSuspended

	FROM View_AccountBalance
	WHERE SGMId=@ID
END
GO
/****** Object:  StoredProcedure [dbo].[iBet_Info_BalanceMater]    Script Date: 12/31/2010 17:36:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create PROCEDURE [dbo].[iBet_Info_BalanceMater]
	@ID int = 0 
AS
BEGIN
	SET NOCOUNT ON;
	SELECT
	SUM(CASE WHEN MaterId	  = @ID AND AgentId = '0' THEN Outstanding
			 ELSE NULL
			 END 			 
	) as TotalOutstanding,
	SUM(CASE WHEN ParentID	  = @ID THEN Credit
			 ELSE NULL
			 END 			 
	) as TotalAgentCredit,
	SUM(CASE WHEN MaterId	  = @ID AND AgentId != '0' THEN Credit
			 ELSE NULL
			 END 			 
	) as TotalMemberCredit,
	Count(CASE WHEN MaterId	= @ID AND AgentId = '0' AND IsOpen = 'True' THEN AccID
			 ELSE NULL
			 END 			 
	) as AgentActive,
	Count(CASE WHEN MaterId	  = @ID AND AgentId = '0' AND IsOpen = 'False' THEN AccID
			 ELSE NULL
			 END 			 
	) as AgentClosed,
	Count(CASE WHEN MaterId	  = @ID AND AgentId = '0' AND IsSuspended = 'True' THEN AccID
			 ELSE NULL
			 END 			 
	) as AgentSuspended,
	Count(CASE WHEN MaterId	= @ID AND AgentId != '0' AND IsOpen = 'True' THEN AccID
			 ELSE NULL
			 END 			 
	) as MemberActive,
	Count(CASE WHEN MaterId	  = @ID AND AgentId != '0' AND IsOpen = 'False' THEN AccID
			 ELSE NULL
			 END 			 
	) as MemberClosed,
	Count(CASE WHEN MaterId	  = @ID AND AgentId != '0' AND IsSuspended = 'True' THEN AccID
			 ELSE NULL
			 END 			 
	) as MemberSuspended

	FROM View_AccountBalance
	WHERE MaterId=@ID
END
GO
/****** Object:  StoredProcedure [dbo].[iBet_Info_BalanceGM]    Script Date: 12/31/2010 17:36:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create PROCEDURE [dbo].[iBet_Info_BalanceGM]
	@ID int = 0 
AS
BEGIN
	SET NOCOUNT ON;
	SELECT
	SUM(CASE WHEN GMId	  = @ID AND MaterId = '0' AND AgentId = '0' THEN Outstanding
			 ELSE NULL
			 END 			 
	) as TotalOutstanding,
	SUM(CASE WHEN ParentID	  = @ID THEN Credit
			 ELSE NULL
			 END 			 
	) as TotalMasterCredit,
	SUM(CASE WHEN GMId	  = @ID AND MaterId !='0' AND AgentId = '0' THEN Credit
			 ELSE NULL
			 END 			 
	) as TotalAgentCredit,
	SUM(CASE WHEN GMId	  = @ID AND MaterId !='0' AND AgentId != '0' THEN Credit
			 ELSE NULL
			 END 			 
	) as TotalMemberCredit,
	Count(CASE WHEN GMId	= @ID AND MaterId = '0' AND AgentId = '0' AND IsOpen = 'True' THEN AccID
			 ELSE NULL
			 END 			 
	) as MasterActive,
	Count(CASE WHEN GMId	  = @ID AND MaterId = '0' AND AgentId = '0' AND IsOpen = 'False' THEN AccID
			 ELSE NULL
			 END 			 
	) as MasterClosed,
	Count(CASE WHEN GMId	  = @ID AND MaterId = '0' AND AgentId = '0' AND IsSuspended = 'True' THEN AccID
			 ELSE NULL
			 END 			 
	) as MasterSuspended,
	Count(CASE WHEN GMId	  = @ID AND MaterId != '0' AND AgentId = '0' AND IsOpen = 'True' THEN AccID
			 ELSE NULL
			 END 			 
	) as AgentActive,
	Count(CASE WHEN GMId	  = @ID AND MaterId != '0' AND AgentId = '0' AND IsOpen = 'False' THEN AccID
			 ELSE NULL
			 END 			 
	) as AgentClosed,
	Count(CASE WHEN GMId	  = @ID AND MaterId != '0' AND AgentId = '0' AND IsSuspended = 'True' THEN AccID
			 ELSE NULL
			 END 			 
	) as AgentSuspended,
	Count(CASE WHEN GMId	  = @ID AND MaterId != '0' AND AgentId != '0' AND IsOpen = 'True' THEN AccID
			 ELSE NULL
			 END 			 
	) as MemberActive,
	Count(CASE WHEN GMId	  = @ID AND MaterId != '0' AND AgentId != '0' AND IsOpen = 'False' THEN AccID
			 ELSE NULL
			 END 			 
	) as MemberClosed,
	Count(CASE WHEN GMId	  = @ID AND MaterId != '0' AND AgentId != '0' AND IsSuspended = 'True' THEN AccID
			 ELSE NULL
			 END 			 
	) as MemberSuspended

	FROM View_AccountBalance
	WHERE GMId=@ID
END
GO
/****** Object:  StoredProcedure [dbo].[iBet_Info_BalanceAgent]    Script Date: 12/31/2010 17:36:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[iBet_Info_BalanceAgent]
	@ID int = 0 
AS
BEGIN
	SET NOCOUNT ON;
	SELECT
	SUM(CASE WHEN AgentId	  = @ID THEN Outstanding
			 ELSE NULL
			 END 			 
	) as TotalOutstanding,
	SUM(CASE WHEN AgentId	  = @ID THEN Credit
			 ELSE NULL
			 END 			 
	) as TotalMemberCredit,
	Count(CASE WHEN AgentId	  = @ID AND IsOpen = 'True' THEN AccID
			 ELSE NULL
			 END 			 
	) as MemberActive,
	Count(CASE WHEN AgentId	  = @ID AND IsOpen = 'False' THEN AccID
			 ELSE NULL
			 END 			 
	) as MemberClosed,
	Count(CASE WHEN AgentId	  = @ID AND IsSuspended = 'True' THEN AccID
			 ELSE NULL
			 END 			 
	) as MemberSuspended

	FROM View_AccountBalance
	WHERE AgentID=@ID
END
GO
/****** Object:  Default [DF_tblAdm_Accounts_SGMIDs]    Script Date: 12/31/2010 17:36:54 ******/
ALTER TABLE [dbo].[tblAdm_Accounts] ADD  CONSTRAINT [DF_tblAdm_Accounts_SGMIDs]  DEFAULT (N'0,0') FOR [SGMIDs]
GO
/****** Object:  Default [DF_tblMatch_intVisibleState]    Script Date: 12/31/2010 17:36:54 ******/
ALTER TABLE [dbo].[tblMatch] ADD  CONSTRAINT [DF_tblMatch_intVisibleState]  DEFAULT ((1)) FOR [intVisibleState]
GO
/****** Object:  Default [DF_tblMatch_CurrentState]    Script Date: 12/31/2010 17:36:54 ******/
ALTER TABLE [dbo].[tblMatch] ADD  CONSTRAINT [DF_tblMatch_CurrentState]  DEFAULT (N'ALLOW') FOR [CurrentState]
GO
/****** Object:  Default [DF_tblOdds_MatchID]    Script Date: 12/31/2010 17:36:55 ******/
ALTER TABLE [dbo].[tblOdds] ADD  CONSTRAINT [DF_tblOdds_MatchID]  DEFAULT ((0)) FOR [MatchID]
GO
/****** Object:  Default [DF_tblOdds_OddID]    Script Date: 12/31/2010 17:36:55 ******/
ALTER TABLE [dbo].[tblOdds] ADD  CONSTRAINT [DF_tblOdds_OddID]  DEFAULT ((0)) FOR [OddID]
GO
/****** Object:  Default [DF_tblOdds_OddType]    Script Date: 12/31/2010 17:36:55 ******/
ALTER TABLE [dbo].[tblOdds] ADD  CONSTRAINT [DF_tblOdds_OddType]  DEFAULT ('') FOR [OddType]
GO
/****** Object:  Default [DF_tblOdds_MinValue]    Script Date: 12/31/2010 17:36:55 ******/
ALTER TABLE [dbo].[tblOdds] ADD  CONSTRAINT [DF_tblOdds_MinValue]  DEFAULT ((0)) FOR [MinValue]
GO
/****** Object:  Default [DF_tblOdds_MaxValue]    Script Date: 12/31/2010 17:36:55 ******/
ALTER TABLE [dbo].[tblOdds] ADD  CONSTRAINT [DF_tblOdds_MaxValue]  DEFAULT ((0)) FOR [MaxValue]
GO
/****** Object:  Default [DF_tblOdds_intState]    Script Date: 12/31/2010 17:36:55 ******/
ALTER TABLE [dbo].[tblOdds] ADD  CONSTRAINT [DF_tblOdds_intState]  DEFAULT ((1)) FOR [intVisibleState]
GO
/****** Object:  Default [DF_tblOdds_intPermitState]    Script Date: 12/31/2010 17:36:55 ******/
ALTER TABLE [dbo].[tblOdds] ADD  CONSTRAINT [DF_tblOdds_intPermitState]  DEFAULT (N'ALLOW') FOR [CurrentState]
GO
/****** Object:  Default [DF_tblOnlineMembers_strToken]    Script Date: 12/31/2010 17:36:55 ******/
ALTER TABLE [dbo].[tblOnlineMembers] ADD  CONSTRAINT [DF_tblOnlineMembers_strToken]  DEFAULT ('') FOR [strToken]
GO
/****** Object:  Default [DF_tblOnlineMembers_IpAddress]    Script Date: 12/31/2010 17:36:55 ******/
ALTER TABLE [dbo].[tblOnlineMembers] ADD  CONSTRAINT [DF_tblOnlineMembers_IpAddress]  DEFAULT ('') FOR [IpAddress]
GO
/****** Object:  Default [DF_tblOnlineMembers_LogedInTime]    Script Date: 12/31/2010 17:36:55 ******/
ALTER TABLE [dbo].[tblOnlineMembers] ADD  CONSTRAINT [DF_tblOnlineMembers_LogedInTime]  DEFAULT (getdate()) FOR [LogedInTime]
GO
/****** Object:  Default [DF_tblRoleFunctionMapping_GradeID]    Script Date: 12/31/2010 17:36:55 ******/
ALTER TABLE [dbo].[tblRoleFunctionMapping] ADD  CONSTRAINT [DF_tblRoleFunctionMapping_GradeID]  DEFAULT ((1)) FOR [GradeID]
GO
/****** Object:  Default [DF_tblUserRights_GradeID]    Script Date: 12/31/2010 17:36:55 ******/
ALTER TABLE [dbo].[tblUserRights] ADD  CONSTRAINT [DF_tblUserRights_GradeID]  DEFAULT ((1)) FOR [GradeID]
GO
/****** Object:  ForeignKey [FK_tblAgentDetail_TBL_Agent1]    Script Date: 12/31/2010 17:36:54 ******/
ALTER TABLE [dbo].[tblAgentDetail]  WITH CHECK ADD  CONSTRAINT [FK_tblAgentDetail_TBL_Agent1] FOREIGN KEY([AgentId])
REFERENCES [dbo].[tblAgent] ([AgentId])
GO
ALTER TABLE [dbo].[tblAgentDetail] CHECK CONSTRAINT [FK_tblAgentDetail_TBL_Agent1]
GO
/****** Object:  ForeignKey [FK_tblAgentDetail_tblMember]    Script Date: 12/31/2010 17:36:54 ******/
ALTER TABLE [dbo].[tblAgentDetail]  WITH CHECK ADD  CONSTRAINT [FK_tblAgentDetail_tblMember] FOREIGN KEY([MemberId])
REFERENCES [dbo].[tblMember] ([MemberId])
GO
ALTER TABLE [dbo].[tblAgentDetail] CHECK CONSTRAINT [FK_tblAgentDetail_tblMember]
GO
/****** Object:  ForeignKey [FK_tblFavorite_tblMember]    Script Date: 12/31/2010 17:36:54 ******/
ALTER TABLE [dbo].[tblFavorite]  WITH CHECK ADD  CONSTRAINT [FK_tblFavorite_tblMember] FOREIGN KEY([MemberId])
REFERENCES [dbo].[tblMember] ([MemberId])
GO
ALTER TABLE [dbo].[tblFavorite] CHECK CONSTRAINT [FK_tblFavorite_tblMember]
GO
/****** Object:  ForeignKey [FK_tblMatchCount_tblMatch]    Script Date: 12/31/2010 17:36:54 ******/
ALTER TABLE [dbo].[tblMatchCount]  WITH CHECK ADD  CONSTRAINT [FK_tblMatchCount_tblMatch] FOREIGN KEY([MatchId])
REFERENCES [dbo].[tblMatch] ([MatchId])
GO
ALTER TABLE [dbo].[tblMatchCount] CHECK CONSTRAINT [FK_tblMatchCount_tblMatch]
GO
/****** Object:  ForeignKey [FK_tblMatchCount_tblOdds_1]    Script Date: 12/31/2010 17:36:54 ******/
ALTER TABLE [dbo].[tblMatchCount]  WITH CHECK ADD  CONSTRAINT [FK_tblMatchCount_tblOdds_1] FOREIGN KEY([OddsId_1])
REFERENCES [dbo].[tblOdds_1] ([OddsId_1])
GO
ALTER TABLE [dbo].[tblMatchCount] CHECK CONSTRAINT [FK_tblMatchCount_tblOdds_1]
GO
/****** Object:  ForeignKey [FK_tblMatchCount_tblOdds_12]    Script Date: 12/31/2010 17:36:54 ******/
ALTER TABLE [dbo].[tblMatchCount]  WITH CHECK ADD  CONSTRAINT [FK_tblMatchCount_tblOdds_12] FOREIGN KEY([OddsId_12])
REFERENCES [dbo].[tblOdds_12] ([OddsId_12])
GO
ALTER TABLE [dbo].[tblMatchCount] CHECK CONSTRAINT [FK_tblMatchCount_tblOdds_12]
GO
/****** Object:  ForeignKey [FK_tblMatchCount_tblOdds_15]    Script Date: 12/31/2010 17:36:54 ******/
ALTER TABLE [dbo].[tblMatchCount]  WITH CHECK ADD  CONSTRAINT [FK_tblMatchCount_tblOdds_15] FOREIGN KEY([OddsId_15])
REFERENCES [dbo].[tblOdds_15] ([OddsId_15])
GO
ALTER TABLE [dbo].[tblMatchCount] CHECK CONSTRAINT [FK_tblMatchCount_tblOdds_15]
GO
/****** Object:  ForeignKey [FK_tblMatchCount_tblOdds_2]    Script Date: 12/31/2010 17:36:54 ******/
ALTER TABLE [dbo].[tblMatchCount]  WITH CHECK ADD  CONSTRAINT [FK_tblMatchCount_tblOdds_2] FOREIGN KEY([OddsId_2])
REFERENCES [dbo].[tblOdds_2] ([OddsId_2])
GO
ALTER TABLE [dbo].[tblMatchCount] CHECK CONSTRAINT [FK_tblMatchCount_tblOdds_2]
GO
/****** Object:  ForeignKey [FK_tblMatchCount_tblOdds_3]    Script Date: 12/31/2010 17:36:54 ******/
ALTER TABLE [dbo].[tblMatchCount]  WITH CHECK ADD  CONSTRAINT [FK_tblMatchCount_tblOdds_3] FOREIGN KEY([OddsId_3])
REFERENCES [dbo].[tblOdds_3] ([OddsId_3])
GO
ALTER TABLE [dbo].[tblMatchCount] CHECK CONSTRAINT [FK_tblMatchCount_tblOdds_3]
GO
/****** Object:  ForeignKey [FK_tblMatchCount_tblOdds_4]    Script Date: 12/31/2010 17:36:54 ******/
ALTER TABLE [dbo].[tblMatchCount]  WITH CHECK ADD  CONSTRAINT [FK_tblMatchCount_tblOdds_4] FOREIGN KEY([OddsId_4])
REFERENCES [dbo].[tblOdds_4] ([OddsId_4])
GO
ALTER TABLE [dbo].[tblMatchCount] CHECK CONSTRAINT [FK_tblMatchCount_tblOdds_4]
GO
/****** Object:  ForeignKey [FK_tblMatchCount_tblOdds_5]    Script Date: 12/31/2010 17:36:54 ******/
ALTER TABLE [dbo].[tblMatchCount]  WITH CHECK ADD  CONSTRAINT [FK_tblMatchCount_tblOdds_5] FOREIGN KEY([OddsId_5])
REFERENCES [dbo].[tblOdds_5] ([OddsId_5])
GO
ALTER TABLE [dbo].[tblMatchCount] CHECK CONSTRAINT [FK_tblMatchCount_tblOdds_5]
GO
/****** Object:  ForeignKey [FK_tblMatchCount_tblOdds_6]    Script Date: 12/31/2010 17:36:54 ******/
ALTER TABLE [dbo].[tblMatchCount]  WITH CHECK ADD  CONSTRAINT [FK_tblMatchCount_tblOdds_6] FOREIGN KEY([OddsId_6])
REFERENCES [dbo].[tblOdds_6] ([OddsId_6])
GO
ALTER TABLE [dbo].[tblMatchCount] CHECK CONSTRAINT [FK_tblMatchCount_tblOdds_6]
GO
/****** Object:  ForeignKey [FK_tblMatchCount_tblOdds_7]    Script Date: 12/31/2010 17:36:54 ******/
ALTER TABLE [dbo].[tblMatchCount]  WITH CHECK ADD  CONSTRAINT [FK_tblMatchCount_tblOdds_7] FOREIGN KEY([OddsId_7])
REFERENCES [dbo].[tblOdds_7] ([OddsId_7])
GO
ALTER TABLE [dbo].[tblMatchCount] CHECK CONSTRAINT [FK_tblMatchCount_tblOdds_7]
GO
/****** Object:  ForeignKey [FK_tblMatchCount_tblOdds_8]    Script Date: 12/31/2010 17:36:54 ******/
ALTER TABLE [dbo].[tblMatchCount]  WITH CHECK ADD  CONSTRAINT [FK_tblMatchCount_tblOdds_8] FOREIGN KEY([OddsId_8])
REFERENCES [dbo].[tblOdds_8] ([OddsId_8])
GO
ALTER TABLE [dbo].[tblMatchCount] CHECK CONSTRAINT [FK_tblMatchCount_tblOdds_8]
GO
/****** Object:  ForeignKey [FK_tblMatchCount_tblOddsId_14]    Script Date: 12/31/2010 17:36:54 ******/
ALTER TABLE [dbo].[tblMatchCount]  WITH CHECK ADD  CONSTRAINT [FK_tblMatchCount_tblOddsId_14] FOREIGN KEY([OddsId_14])
REFERENCES [dbo].[tblOdds_14] ([OddsId_14])
GO
ALTER TABLE [dbo].[tblMatchCount] CHECK CONSTRAINT [FK_tblMatchCount_tblOddsId_14]
GO
/****** Object:  ForeignKey [FK_tblMatchCount_tblOddsId_16]    Script Date: 12/31/2010 17:36:54 ******/
ALTER TABLE [dbo].[tblMatchCount]  WITH CHECK ADD  CONSTRAINT [FK_tblMatchCount_tblOddsId_16] FOREIGN KEY([OddsId_16])
REFERENCES [dbo].[tblOdds_16] ([OddsId_16])
GO
ALTER TABLE [dbo].[tblMatchCount] CHECK CONSTRAINT [FK_tblMatchCount_tblOddsId_16]
GO
/****** Object:  ForeignKey [FK_tblTransaction_tblMember]    Script Date: 12/31/2010 17:36:55 ******/
ALTER TABLE [dbo].[tblTransaction]  WITH NOCHECK ADD  CONSTRAINT [FK_tblTransaction_tblMember] FOREIGN KEY([MemberId])
REFERENCES [dbo].[tblMember] ([MemberId])
GO
ALTER TABLE [dbo].[tblTransaction] CHECK CONSTRAINT [FK_tblTransaction_tblMember]
GO
/****** Object:  ForeignKey [FK_tblTransaction_Log_tblMember]    Script Date: 12/31/2010 17:36:55 ******/
ALTER TABLE [dbo].[tblTransaction_Log]  WITH CHECK ADD  CONSTRAINT [FK_tblTransaction_Log_tblMember] FOREIGN KEY([MemberId])
REFERENCES [dbo].[tblMember] ([MemberId])
GO
ALTER TABLE [dbo].[tblTransaction_Log] CHECK CONSTRAINT [FK_tblTransaction_Log_tblMember]
GO
