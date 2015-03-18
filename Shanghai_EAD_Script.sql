USE [Shanghai_ArrDepart]
GO
/****** Object:  User [EAP\SHG MGTDB LES]    Script Date: 03/18/2015 12:36:28 ******/
CREATE USER [EAP\SHG MGTDB LES] FOR LOGIN [EAP\SHG MGTDB LES]
GO
/****** Object:  User [EAP\SHG MGTDB LES FMO]    Script Date: 03/18/2015 12:36:28 ******/
CREATE USER [EAP\SHG MGTDB LES FMO] FOR LOGIN [EAP\SHG MGTDB LES FMO]
GO
/****** Object:  User [EAP\SHG MGTDB USDH]    Script Date: 03/18/2015 12:36:28 ******/
CREATE USER [EAP\SHG MGTDB USDH] FOR LOGIN [EAP\SHG MGTDB USDH]
GO
/****** Object:  User [SHG ISC]    Script Date: 03/18/2015 12:36:28 ******/
CREATE USER [SHG ISC] FOR LOGIN [EAP\SHG ISC]
GO
/****** Object:  Table [dbo].[EAD_Dropdowns]    Script Date: 03/18/2015 12:36:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[EAD_Dropdowns](
	[EAD_Dropdown_ID] [int] IDENTITY(1,1) NOT NULL,
	[EmployeeType] [varchar](256) NULL,
	[Section] [nchar](10) NULL,
	[PositionGrade] [nchar](10) NULL,
	[Cone] [nchar](10) NULL,
	[Tenured] [nchar](10) NULL,
	[TOD] [nchar](10) NULL,
	[LIP] [nchar](10) NULL,
	[CurrentOCCRank] [nchar](10) NULL,
	[HousingCompound] [nvarchar](50) NULL,
	[POV] [nchar](10) NULL,
	[Pets] [nchar](10) NULL,
	[MOH] [nchar](10) NULL,
	[PersonalGrade] [nchar](10) NULL,
	[FastOfficer] [nchar](10) NULL,
	[Spouse_Employment] [nvarchar](50) NULL,
	[Tandem] [nchar](10) NULL,
	[Dependent_Status] [nvarchar](50) NULL,
	[Special_Ed_Allowance] [nchar](10) NULL,
	[Home_School_Allowance] [nchar](10) NULL,
	[Educational_Travel] [nchar](10) NULL,
	[School_At_Post] [nvarchar](50) NULL,
 CONSTRAINT [PK__EAD_Dropdowns__52593CB8] PRIMARY KEY CLUSTERED 
(
	[EAD_Dropdown_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[EAD]    Script Date: 03/18/2015 12:36:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[EAD](
	[LastName] [nvarchar](255) NOT NULL,
	[FirstName] [nvarchar](255) NOT NULL,
	[MiddleInitial] [nvarchar](255) NULL,
	[ETA] [datetime] NOT NULL,
	[TED] [datetime] NOT NULL,
	[OtherTOD] [nvarchar](255) NULL,
	[EmployeeType] [varchar](256) NULL,
	[StateEmail] [nchar](255) NULL,
	[PersonalEmailAddresses] [nvarchar](255) NULL,
	[PositionTitle] [nchar](255) NULL,
	[PredecessorLastName] [nvarchar](255) NULL,
	[PredecessorFirstName] [nvarchar](255) NULL,
	[PredecessorMiddleInitial] [nvarchar](255) NULL,
	[PredecessorPostDepartureDate] [datetime] NULL,
	[Section] [nchar](10) NULL,
	[PPT_VisaCopiesReceived] [datetime] NULL,
	[PhotoReceived] [datetime] NULL,
	[DIPIDRequested] [datetime] NULL,
	[DIPIDReceived] [datetime] NULL,
	[ChinesePinyinName] [nvarchar](255) NULL,
	[DIPTitle] [nvarchar](255) NULL,
	[TM4Received Date] [datetime] NULL,
	[HHELbs] [nvarchar](255) NULL,
	[UABLbs] [nvarchar](255) NULL,
	[POV] [nchar](10) NULL,
	[PetandPetDescription] [nchar](10) NULL,
	[HousingQuestionnaireReceived] [datetime] NULL,
	[MaxSpaceEligibleSquareFeet] [nvarchar](255) NULL,
	[HousingCompound] [varchar](256) NULL,
	[HousingPhysicalAddress] [varchar](256) NULL,
	[UnitNo] [nchar](255) NULL,
	[ConsulateBoxNumber] [nvarchar](255) NULL,
	[TM8TransmittedDate] [datetime] NULL,
	[LanguageIncetivePayEligible] [nchar](10) NULL,
	[OfficeSponsorLastName] [nvarchar](255) NULL,
	[OfficeSponsorFirstName] [nvarchar](255) NULL,
	[OfficeSponsorMiddleInitial] [nvarchar](255) NULL,
	[SocialSponsorLastName] [nvarchar](255) NULL,
	[SocialSponsorFirstName] [nvarchar](255) NULL,
	[SocialSponsorMiddleInitial] [nvarchar](255) NULL,
	[RR1] [datetime] NULL,
	[RR2] [datetime] NULL,
	[HLRT] [datetime] NULL,
	[PositionGrade] [nchar](10) NULL,
	[Tenure] [nchar](10) NULL,
	[TenuredDate] [datetime] NULL,
	[PromotionEligibleDate] [datetime] NULL,
	[EERsCompletedforUSDH] [nvarchar](255) NULL,
	[EERsCompletedforLES] [nvarchar](255) NULL,
	[GainingPostFromTM1] [nvarchar](255) NULL,
	[TM2ReceivedDate] [datetime] NULL,
	[ETD] [datetime] NULL,
	[GainingPostTAReceivedDate] [datetime] NULL,
	[VisasNeededForGainingPost] [nvarchar](255) NULL,
	[EERDueDate] [datetime] NULL,
	[NumberofEvaluationsCompletedforUSDH] [nvarchar](255) NULL,
	[NumberofEvaluationsCompletedforLES] [nvarchar](255) NULL,
	[DepartureSponsorLastName] [nvarchar](255) NULL,
	[DepartureSponsorFirstName] [nvarchar](255) NULL,
	[DepartureSponsorMiddleInitital] [nvarchar](255) NULL,
	[DepartureSponsorEmail] [nvarchar](255) NULL,
	[MailForwardingAddress] [nvarchar](255) NULL,
	[TM5TransmittedDate] [datetime] NULL,
	[RecordLastUpdated] [timestamp] NULL,
	[WorkingNotes] [nvarchar](max) NULL,
	[Public_Notes] [nvarchar](max) NULL,
	[SameSexDomestic] [nvarchar](255) NULL,
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[T_O_D] [nchar](10) NULL,
	[DateModified] [datetime] NULL,
	[DateModified_User] [nchar](255) NULL,
	[homephone] [nvarchar](50) NULL,
	[USDH_mobile] [nvarchar](50) NULL,
	[EFM_mobile] [nvarchar](50) NULL,
	[SpouseEmail] [nvarchar](50) NULL,
	[GrossMeters] [nchar](10) NULL,
	[NetMeters] [nchar](10) NULL,
	[NoOccupy] [nchar](10) NULL,
	[CurrentOCCRank] [nchar](10) NULL,
	[DateHousingAssigned] [nchar](10) NULL,
	[GSOincomingComplete] [nchar](10) NULL,
	[Cone] [nchar](10) NULL,
	[FastOfficer] [nchar](10) NULL,
	[PersonalGrade] [nchar](10) NULL,
	[SocialSponsor_DateAssigned] [datetime] NULL,
	[HR_CheckoutComplete] [datetime] NULL,
	[HR_RatingPeriodStarts] [datetime] NULL,
	[HR_RatingPeriodEnds] [datetime] NULL,
	[Rater_LN] [nvarchar](50) NULL,
	[Rater_FN] [nvarchar](50) NULL,
	[Successor_LN] [nvarchar](50) NULL,
	[Successor_FN] [nvarchar](50) NULL,
	[Record_CreationDate] [datetime] NULL CONSTRAINT [DF_EAD_Record_CreationDate]  DEFAULT (getdate()),
	[USDH_BusinessPhone] [nvarchar](50) NULL,
	[USDH_Work_Email] [nvarchar](50) NULL,
	[MailForwardingStartDate] [datetime] NULL,
	[OccupancyAgreementSigned] [datetime] NULL,
	[CheckedIn] [datetime] NULL,
 CONSTRAINT [PK__EAD__0F975522] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[EAD_Dependents]    Script Date: 03/18/2015 12:36:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EAD_Dependents](
	[ID_Dependents] [int] IDENTITY(1,1) NOT NULL,
	[EAD_ID] [int] NULL,
	[LastName] [nvarchar](255) NULL,
	[FirstName] [nvarchar](255) NULL,
	[MI] [nvarchar](255) NULL,
	[DOB] [datetime] NULL,
	[Spouse_Employment] [nvarchar](50) NULL,
	[Dependent_Status] [nvarchar](50) NULL,
	[Special_Education_Allowance] [nchar](10) NULL,
	[Home_School_Allowance] [nchar](10) NULL,
	[Educational_Travel] [nchar](10) NULL,
	[School_At_Post] [nvarchar](50) NULL,
 CONSTRAINT [PK_EAD_Children] PRIMARY KEY CLUSTERED 
(
	[ID_Dependents] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  ForeignKey [FK_EAD_Dependents_EAD]    Script Date: 03/18/2015 12:36:19 ******/
ALTER TABLE [dbo].[EAD_Dependents]  WITH CHECK ADD  CONSTRAINT [FK_EAD_Dependents_EAD] FOREIGN KEY([EAD_ID])
REFERENCES [dbo].[EAD] ([ID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[EAD_Dependents] CHECK CONSTRAINT [FK_EAD_Dependents_EAD]
GO
GRANT INSERT ON [dbo].[EAD] TO [EAP\SHG MGTDB LES FMO]
GO
GRANT SELECT ON [dbo].[EAD] TO [EAP\SHG MGTDB LES FMO]
GO
GRANT UPDATE ON [dbo].[EAD] TO [EAP\SHG MGTDB LES FMO]
GO
GRANT INSERT ON [dbo].[EAD] TO [EAP\SHG MGTDB LES]
GO
GRANT SELECT ON [dbo].[EAD] TO [EAP\SHG MGTDB LES]
GO
GRANT UPDATE ON [dbo].[EAD] TO [EAP\SHG MGTDB LES]
GO
GRANT ALTER ON [dbo].[EAD] TO [EAP\SHG MGTDB USDH]
GO
GRANT INSERT ON [dbo].[EAD] TO [EAP\SHG MGTDB USDH]
GO
GRANT SELECT ON [dbo].[EAD] TO [EAP\SHG MGTDB USDH]
GO
GRANT UPDATE ON [dbo].[EAD] TO [EAP\SHG MGTDB USDH]
GO
GRANT ALTER ON [dbo].[EAD] TO [SHG ISC]
GO
GRANT DELETE ON [dbo].[EAD] TO [SHG ISC]
GO
GRANT INSERT ON [dbo].[EAD] TO [SHG ISC]
GO
GRANT SELECT ON [dbo].[EAD] TO [SHG ISC]
GO
GRANT UPDATE ON [dbo].[EAD] TO [SHG ISC]
GO
GRANT INSERT ON [dbo].[EAD_Dependents] TO [EAP\SHG MGTDB LES FMO]
GO
GRANT SELECT ON [dbo].[EAD_Dependents] TO [EAP\SHG MGTDB LES FMO]
GO
GRANT UPDATE ON [dbo].[EAD_Dependents] TO [EAP\SHG MGTDB LES FMO]
GO
GRANT INSERT ON [dbo].[EAD_Dependents] TO [EAP\SHG MGTDB LES]
GO
GRANT SELECT ON [dbo].[EAD_Dependents] TO [EAP\SHG MGTDB LES]
GO
GRANT UPDATE ON [dbo].[EAD_Dependents] TO [EAP\SHG MGTDB LES]
GO
GRANT INSERT ON [dbo].[EAD_Dependents] TO [EAP\SHG MGTDB USDH]
GO
GRANT SELECT ON [dbo].[EAD_Dependents] TO [EAP\SHG MGTDB USDH]
GO
GRANT UPDATE ON [dbo].[EAD_Dependents] TO [EAP\SHG MGTDB USDH]
GO
GRANT DELETE ON [dbo].[EAD_Dependents] TO [SHG ISC]
GO
GRANT INSERT ON [dbo].[EAD_Dependents] TO [SHG ISC]
GO
GRANT SELECT ON [dbo].[EAD_Dependents] TO [SHG ISC]
GO
GRANT UPDATE ON [dbo].[EAD_Dependents] TO [SHG ISC]
GO
GRANT INSERT ON [dbo].[EAD_Dropdowns] TO [EAP\SHG MGTDB LES FMO]
GO
GRANT SELECT ON [dbo].[EAD_Dropdowns] TO [EAP\SHG MGTDB LES FMO]
GO
GRANT UPDATE ON [dbo].[EAD_Dropdowns] TO [EAP\SHG MGTDB LES FMO]
GO
GRANT INSERT ON [dbo].[EAD_Dropdowns] TO [EAP\SHG MGTDB LES]
GO
GRANT SELECT ON [dbo].[EAD_Dropdowns] TO [EAP\SHG MGTDB LES]
GO
GRANT UPDATE ON [dbo].[EAD_Dropdowns] TO [EAP\SHG MGTDB LES]
GO
GRANT INSERT ON [dbo].[EAD_Dropdowns] TO [EAP\SHG MGTDB USDH]
GO
GRANT SELECT ON [dbo].[EAD_Dropdowns] TO [EAP\SHG MGTDB USDH]
GO
GRANT UPDATE ON [dbo].[EAD_Dropdowns] TO [EAP\SHG MGTDB USDH]
GO
GRANT ALTER ON [dbo].[EAD_Dropdowns] TO [SHG ISC]
GO
GRANT CONTROL ON [dbo].[EAD_Dropdowns] TO [SHG ISC]
GO
GRANT DELETE ON [dbo].[EAD_Dropdowns] TO [SHG ISC]
GO
GRANT INSERT ON [dbo].[EAD_Dropdowns] TO [SHG ISC]
GO
GRANT REFERENCES ON [dbo].[EAD_Dropdowns] TO [SHG ISC]
GO
GRANT SELECT ON [dbo].[EAD_Dropdowns] TO [SHG ISC]
GO
GRANT TAKE OWNERSHIP ON [dbo].[EAD_Dropdowns] TO [SHG ISC]
GO
GRANT UPDATE ON [dbo].[EAD_Dropdowns] TO [SHG ISC]
GO
GRANT VIEW DEFINITION ON [dbo].[EAD_Dropdowns] TO [SHG ISC]
GO
