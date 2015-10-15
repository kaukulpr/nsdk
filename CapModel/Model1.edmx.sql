
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 10/15/2015 17:21:21
-- Generated from EDMX file: C:\Users\kaliandkanchan\Documents\SHERIDAN\INFO39014 CST Capstone Project\CapstoneStructure\CapstoneStructure\CapModel\Model1.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [CapstoneMaster];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[FK_UserRecruiter]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Users] DROP CONSTRAINT [FK_UserRecruiter];
GO
IF OBJECT_ID(N'[dbo].[FK_UserJobSeeker]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Users] DROP CONSTRAINT [FK_UserJobSeeker];
GO
IF OBJECT_ID(N'[dbo].[FK_JobSeekerLocation]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[JobSeekers] DROP CONSTRAINT [FK_JobSeekerLocation];
GO
IF OBJECT_ID(N'[dbo].[FK_RecruiterLocation]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Recruiters] DROP CONSTRAINT [FK_RecruiterLocation];
GO
IF OBJECT_ID(N'[dbo].[FK_JobSeekerCertification]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Certifications] DROP CONSTRAINT [FK_JobSeekerCertification];
GO
IF OBJECT_ID(N'[dbo].[FK_JobSeekerEducation]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Educations] DROP CONSTRAINT [FK_JobSeekerEducation];
GO
IF OBJECT_ID(N'[dbo].[FK_JobSeekerWorkExperience]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[WorkExperiences] DROP CONSTRAINT [FK_JobSeekerWorkExperience];
GO
IF OBJECT_ID(N'[dbo].[FK_UserCompany]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Users] DROP CONSTRAINT [FK_UserCompany];
GO
IF OBJECT_ID(N'[dbo].[FK_CompanyLocation]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Locations] DROP CONSTRAINT [FK_CompanyLocation];
GO
IF OBJECT_ID(N'[dbo].[FK_CompanyRecruiter]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Recruiters] DROP CONSTRAINT [FK_CompanyRecruiter];
GO
IF OBJECT_ID(N'[dbo].[FK_CompanyNewsPost]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[NewsPosts] DROP CONSTRAINT [FK_CompanyNewsPost];
GO
IF OBJECT_ID(N'[dbo].[FK_CompanyJobPosting]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[JobPostings] DROP CONSTRAINT [FK_CompanyJobPosting];
GO
IF OBJECT_ID(N'[dbo].[FK_RecruiterJobPosting]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[JobPostings] DROP CONSTRAINT [FK_RecruiterJobPosting];
GO
IF OBJECT_ID(N'[dbo].[FK_JobAreaJobPosting_JobArea]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[JobAreaJobPosting] DROP CONSTRAINT [FK_JobAreaJobPosting_JobArea];
GO
IF OBJECT_ID(N'[dbo].[FK_JobAreaJobPosting_JobPosting]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[JobAreaJobPosting] DROP CONSTRAINT [FK_JobAreaJobPosting_JobPosting];
GO
IF OBJECT_ID(N'[dbo].[FK_JobSeekerUserMedia]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[JobSeekers] DROP CONSTRAINT [FK_JobSeekerUserMedia];
GO
IF OBJECT_ID(N'[dbo].[FK_UserUserProfile]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Users] DROP CONSTRAINT [FK_UserUserProfile];
GO
IF OBJECT_ID(N'[dbo].[FK_JobPostingUserMedia]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[JobPostings] DROP CONSTRAINT [FK_JobPostingUserMedia];
GO
IF OBJECT_ID(N'[dbo].[FK_CompanyUserMedia]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Companies] DROP CONSTRAINT [FK_CompanyUserMedia];
GO
IF OBJECT_ID(N'[dbo].[FK_JobPostingJobApplied]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[JobApplieds] DROP CONSTRAINT [FK_JobPostingJobApplied];
GO
IF OBJECT_ID(N'[dbo].[FK_JobSeekerJobApplied]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[JobApplieds] DROP CONSTRAINT [FK_JobSeekerJobApplied];
GO
IF OBJECT_ID(N'[dbo].[FK_JobPostingLocation]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[JobPostings] DROP CONSTRAINT [FK_JobPostingLocation];
GO
IF OBJECT_ID(N'[dbo].[FK_JobSeekerSkillCollection]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[SkillCollections] DROP CONSTRAINT [FK_JobSeekerSkillCollection];
GO

-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[Users]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Users];
GO
IF OBJECT_ID(N'[dbo].[Locations]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Locations];
GO
IF OBJECT_ID(N'[dbo].[Recruiters]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Recruiters];
GO
IF OBJECT_ID(N'[dbo].[JobSeekers]', 'U') IS NOT NULL
    DROP TABLE [dbo].[JobSeekers];
GO
IF OBJECT_ID(N'[dbo].[SkillCollections]', 'U') IS NOT NULL
    DROP TABLE [dbo].[SkillCollections];
GO
IF OBJECT_ID(N'[dbo].[Certifications]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Certifications];
GO
IF OBJECT_ID(N'[dbo].[Educations]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Educations];
GO
IF OBJECT_ID(N'[dbo].[WorkExperiences]', 'U') IS NOT NULL
    DROP TABLE [dbo].[WorkExperiences];
GO
IF OBJECT_ID(N'[dbo].[Companies]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Companies];
GO
IF OBJECT_ID(N'[dbo].[Followers]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Followers];
GO
IF OBJECT_ID(N'[dbo].[NewsPosts]', 'U') IS NOT NULL
    DROP TABLE [dbo].[NewsPosts];
GO
IF OBJECT_ID(N'[dbo].[JobAreas]', 'U') IS NOT NULL
    DROP TABLE [dbo].[JobAreas];
GO
IF OBJECT_ID(N'[dbo].[JobPostings]', 'U') IS NOT NULL
    DROP TABLE [dbo].[JobPostings];
GO
IF OBJECT_ID(N'[dbo].[UserMedias]', 'U') IS NOT NULL
    DROP TABLE [dbo].[UserMedias];
GO
IF OBJECT_ID(N'[dbo].[UserProfiles]', 'U') IS NOT NULL
    DROP TABLE [dbo].[UserProfiles];
GO
IF OBJECT_ID(N'[dbo].[JobApplieds]', 'U') IS NOT NULL
    DROP TABLE [dbo].[JobApplieds];
GO
IF OBJECT_ID(N'[dbo].[JobAreaJobPosting]', 'U') IS NOT NULL
    DROP TABLE [dbo].[JobAreaJobPosting];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'Users'
CREATE TABLE [dbo].[Users] (
    [UserId] int IDENTITY(1,1) NOT NULL,
    [UserName] nvarchar(max)  NOT NULL,
    [FirstName] nvarchar(max)  NOT NULL,
    [LastName] nvarchar(max)  NOT NULL,
    [Email] nvarchar(max)  NOT NULL,
    [VerCode] nvarchar(max)  NOT NULL,
    [isVerified] nvarchar(max)  NOT NULL,
    [Password] nvarchar(max)  NOT NULL,
    [UserType] nvarchar(max)  NOT NULL,
    [Recruiter_RecId] int  NOT NULL,
    [JobSeeker_JSId] int  NOT NULL,
    [Company_CompId] int  NOT NULL,
    [UserProfile_ProfileId] int  NOT NULL
);
GO

-- Creating table 'Locations'
CREATE TABLE [dbo].[Locations] (
    [LocationId] int IDENTITY(1,1) NOT NULL,
    [UnitNum] nvarchar(max)  NOT NULL,
    [AptNum] nvarchar(max)  NOT NULL,
    [StreetAdd] nvarchar(max)  NOT NULL,
    [City] nvarchar(max)  NOT NULL,
    [Province] nvarchar(max)  NOT NULL,
    [Country] nvarchar(max)  NOT NULL,
    [Company_CompId] int  NOT NULL
);
GO

-- Creating table 'Recruiters'
CREATE TABLE [dbo].[Recruiters] (
    [RecId] int IDENTITY(1,1) NOT NULL,
    [Department] nvarchar(max)  NOT NULL,
    [JobTitle] nvarchar(max)  NOT NULL,
    [HasAccess] nvarchar(max)  NOT NULL,
    [CompanyCompId] int  NOT NULL,
    [Location_LocationId] int  NOT NULL
);
GO

-- Creating table 'JobSeekers'
CREATE TABLE [dbo].[JobSeekers] (
    [JSId] int IDENTITY(1,1) NOT NULL,
    [SkillSummary] nvarchar(max)  NOT NULL,
    [PhoneNumber] nvarchar(max)  NOT NULL,
    [Visibility] nvarchar(max)  NOT NULL,
    [Location_LocationId] int  NOT NULL,
    [UserMedia_UMediaId] int  NOT NULL
);
GO

-- Creating table 'SkillCollections'
CREATE TABLE [dbo].[SkillCollections] (
    [SkillId] int IDENTITY(1,1) NOT NULL,
    [SkillName] nvarchar(max)  NOT NULL,
    [JobSeekerJSId] int  NOT NULL
);
GO

-- Creating table 'Certifications'
CREATE TABLE [dbo].[Certifications] (
    [CertId] int IDENTITY(1,1) NOT NULL,
    [CertName] nvarchar(max)  NOT NULL,
    [CertAuthority] nvarchar(max)  NOT NULL,
    [CertLicense] nvarchar(max)  NOT NULL,
    [CertDate] nvarchar(max)  NOT NULL,
    [JobSeekerJSId] int  NOT NULL
);
GO

-- Creating table 'Educations'
CREATE TABLE [dbo].[Educations] (
    [EduId] int IDENTITY(1,1) NOT NULL,
    [CourseName] nvarchar(max)  NOT NULL,
    [SchoolName] nvarchar(max)  NOT NULL,
    [EduLocation] nvarchar(max)  NOT NULL,
    [EduStartDate] nvarchar(max)  NOT NULL,
    [EduEndDate] nvarchar(max)  NOT NULL,
    [EduDescription] nvarchar(max)  NOT NULL,
    [EduGrade] nvarchar(max)  NOT NULL,
    [JobSeekerJSId] int  NOT NULL
);
GO

-- Creating table 'WorkExperiences'
CREATE TABLE [dbo].[WorkExperiences] (
    [ExperienceId] int IDENTITY(1,1) NOT NULL,
    [ExpCompany] nvarchar(max)  NOT NULL,
    [ExpTitle] nvarchar(max)  NOT NULL,
    [ExpLocation] nvarchar(max)  NOT NULL,
    [ExpStartDate] nvarchar(max)  NOT NULL,
    [ExpEndDate] nvarchar(max)  NOT NULL,
    [CurrentPosition] nvarchar(max)  NOT NULL,
    [ExpSummary] nvarchar(max)  NOT NULL,
    [JobSeekerJSId] int  NOT NULL
);
GO

-- Creating table 'Companies'
CREATE TABLE [dbo].[Companies] (
    [CompId] int IDENTITY(1,1) NOT NULL,
    [CompName] nvarchar(max)  NOT NULL,
    [CompCode] nvarchar(max)  NOT NULL,
    [CompDescription] nvarchar(max)  NOT NULL,
    [NumFollowers] nvarchar(max)  NOT NULL,
    [UserMedia_UMediaId] int  NOT NULL
);
GO

-- Creating table 'Followers'
CREATE TABLE [dbo].[Followers] (
    [FollowId] int IDENTITY(1,1) NOT NULL,
    [ViewNews] nvarchar(max)  NOT NULL,
    [ViewJobs] nvarchar(max)  NOT NULL,
    [PostSeen] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'NewsPosts'
CREATE TABLE [dbo].[NewsPosts] (
    [NPId] int IDENTITY(1,1) NOT NULL,
    [Title] nvarchar(max)  NOT NULL,
    [NewsDesc] nvarchar(max)  NOT NULL,
    [NewsDate] nvarchar(max)  NOT NULL,
    [IsVisible] nvarchar(max)  NOT NULL,
    [CompanyCompId] int  NOT NULL
);
GO

-- Creating table 'JobAreas'
CREATE TABLE [dbo].[JobAreas] (
    [JobAreaId] int IDENTITY(1,1) NOT NULL,
    [JAName] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'JobPostings'
CREATE TABLE [dbo].[JobPostings] (
    [JobPostId] int IDENTITY(1,1) NOT NULL,
    [JobTitle] nvarchar(max)  NOT NULL,
    [JobType] nvarchar(max)  NOT NULL,
    [PostStartDate] nvarchar(max)  NOT NULL,
    [PostEndDate] nvarchar(max)  NOT NULL,
    [NumPositions] nvarchar(max)  NOT NULL,
    [JobLevel] nvarchar(max)  NOT NULL,
    [JobCompensation] nvarchar(max)  NOT NULL,
    [Description] nvarchar(max)  NOT NULL,
    [JobReq] nvarchar(max)  NOT NULL,
    [JobDuties] nvarchar(max)  NOT NULL,
    [CompanyCompId] int  NOT NULL,
    [RecruiterRecId] int  NOT NULL,
    [JobVisible] nvarchar(max)  NOT NULL,
    [UserMedia_UMediaId] int  NOT NULL,
    [Location_LocationId] int  NOT NULL
);
GO

-- Creating table 'UserMedias'
CREATE TABLE [dbo].[UserMedias] (
    [UMediaId] int IDENTITY(1,1) NOT NULL,
    [VidPath] nvarchar(max)  NOT NULL,
    [MediaDesc] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'UserProfiles'
CREATE TABLE [dbo].[UserProfiles] (
    [ProfileId] int IDENTITY(1,1) NOT NULL,
    [PicPath] nvarchar(max)  NOT NULL,
    [PicDesc] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'JobApplieds'
CREATE TABLE [dbo].[JobApplieds] (
    [JobAppId] int IDENTITY(1,1) NOT NULL,
    [ApplicationDate] nvarchar(max)  NOT NULL,
    [AppliedMessage] nvarchar(max)  NOT NULL,
    [JobPostingJobPostId] int  NOT NULL,
    [JobSeekerJSId] int  NOT NULL
);
GO

-- Creating table 'JobAreaJobPosting'
CREATE TABLE [dbo].[JobAreaJobPosting] (
    [JobAreas_JobAreaId] int  NOT NULL,
    [JobPostings_JobPostId] int  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [UserId] in table 'Users'
ALTER TABLE [dbo].[Users]
ADD CONSTRAINT [PK_Users]
    PRIMARY KEY CLUSTERED ([UserId] ASC);
GO

-- Creating primary key on [LocationId] in table 'Locations'
ALTER TABLE [dbo].[Locations]
ADD CONSTRAINT [PK_Locations]
    PRIMARY KEY CLUSTERED ([LocationId] ASC);
GO

-- Creating primary key on [RecId] in table 'Recruiters'
ALTER TABLE [dbo].[Recruiters]
ADD CONSTRAINT [PK_Recruiters]
    PRIMARY KEY CLUSTERED ([RecId] ASC);
GO

-- Creating primary key on [JSId] in table 'JobSeekers'
ALTER TABLE [dbo].[JobSeekers]
ADD CONSTRAINT [PK_JobSeekers]
    PRIMARY KEY CLUSTERED ([JSId] ASC);
GO

-- Creating primary key on [SkillId] in table 'SkillCollections'
ALTER TABLE [dbo].[SkillCollections]
ADD CONSTRAINT [PK_SkillCollections]
    PRIMARY KEY CLUSTERED ([SkillId] ASC);
GO

-- Creating primary key on [CertId] in table 'Certifications'
ALTER TABLE [dbo].[Certifications]
ADD CONSTRAINT [PK_Certifications]
    PRIMARY KEY CLUSTERED ([CertId] ASC);
GO

-- Creating primary key on [EduId] in table 'Educations'
ALTER TABLE [dbo].[Educations]
ADD CONSTRAINT [PK_Educations]
    PRIMARY KEY CLUSTERED ([EduId] ASC);
GO

-- Creating primary key on [ExperienceId] in table 'WorkExperiences'
ALTER TABLE [dbo].[WorkExperiences]
ADD CONSTRAINT [PK_WorkExperiences]
    PRIMARY KEY CLUSTERED ([ExperienceId] ASC);
GO

-- Creating primary key on [CompId] in table 'Companies'
ALTER TABLE [dbo].[Companies]
ADD CONSTRAINT [PK_Companies]
    PRIMARY KEY CLUSTERED ([CompId] ASC);
GO

-- Creating primary key on [FollowId] in table 'Followers'
ALTER TABLE [dbo].[Followers]
ADD CONSTRAINT [PK_Followers]
    PRIMARY KEY CLUSTERED ([FollowId] ASC);
GO

-- Creating primary key on [NPId] in table 'NewsPosts'
ALTER TABLE [dbo].[NewsPosts]
ADD CONSTRAINT [PK_NewsPosts]
    PRIMARY KEY CLUSTERED ([NPId] ASC);
GO

-- Creating primary key on [JobAreaId] in table 'JobAreas'
ALTER TABLE [dbo].[JobAreas]
ADD CONSTRAINT [PK_JobAreas]
    PRIMARY KEY CLUSTERED ([JobAreaId] ASC);
GO

-- Creating primary key on [JobPostId] in table 'JobPostings'
ALTER TABLE [dbo].[JobPostings]
ADD CONSTRAINT [PK_JobPostings]
    PRIMARY KEY CLUSTERED ([JobPostId] ASC);
GO

-- Creating primary key on [UMediaId] in table 'UserMedias'
ALTER TABLE [dbo].[UserMedias]
ADD CONSTRAINT [PK_UserMedias]
    PRIMARY KEY CLUSTERED ([UMediaId] ASC);
GO

-- Creating primary key on [ProfileId] in table 'UserProfiles'
ALTER TABLE [dbo].[UserProfiles]
ADD CONSTRAINT [PK_UserProfiles]
    PRIMARY KEY CLUSTERED ([ProfileId] ASC);
GO

-- Creating primary key on [JobAppId] in table 'JobApplieds'
ALTER TABLE [dbo].[JobApplieds]
ADD CONSTRAINT [PK_JobApplieds]
    PRIMARY KEY CLUSTERED ([JobAppId] ASC);
GO

-- Creating primary key on [JobAreas_JobAreaId], [JobPostings_JobPostId] in table 'JobAreaJobPosting'
ALTER TABLE [dbo].[JobAreaJobPosting]
ADD CONSTRAINT [PK_JobAreaJobPosting]
    PRIMARY KEY CLUSTERED ([JobAreas_JobAreaId], [JobPostings_JobPostId] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [Recruiter_RecId] in table 'Users'
ALTER TABLE [dbo].[Users]
ADD CONSTRAINT [FK_UserRecruiter]
    FOREIGN KEY ([Recruiter_RecId])
    REFERENCES [dbo].[Recruiters]
        ([RecId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_UserRecruiter'
CREATE INDEX [IX_FK_UserRecruiter]
ON [dbo].[Users]
    ([Recruiter_RecId]);
GO

-- Creating foreign key on [JobSeeker_JSId] in table 'Users'
ALTER TABLE [dbo].[Users]
ADD CONSTRAINT [FK_UserJobSeeker]
    FOREIGN KEY ([JobSeeker_JSId])
    REFERENCES [dbo].[JobSeekers]
        ([JSId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_UserJobSeeker'
CREATE INDEX [IX_FK_UserJobSeeker]
ON [dbo].[Users]
    ([JobSeeker_JSId]);
GO

-- Creating foreign key on [Location_LocationId] in table 'JobSeekers'
ALTER TABLE [dbo].[JobSeekers]
ADD CONSTRAINT [FK_JobSeekerLocation]
    FOREIGN KEY ([Location_LocationId])
    REFERENCES [dbo].[Locations]
        ([LocationId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_JobSeekerLocation'
CREATE INDEX [IX_FK_JobSeekerLocation]
ON [dbo].[JobSeekers]
    ([Location_LocationId]);
GO

-- Creating foreign key on [Location_LocationId] in table 'Recruiters'
ALTER TABLE [dbo].[Recruiters]
ADD CONSTRAINT [FK_RecruiterLocation]
    FOREIGN KEY ([Location_LocationId])
    REFERENCES [dbo].[Locations]
        ([LocationId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_RecruiterLocation'
CREATE INDEX [IX_FK_RecruiterLocation]
ON [dbo].[Recruiters]
    ([Location_LocationId]);
GO

-- Creating foreign key on [JobSeekerJSId] in table 'Certifications'
ALTER TABLE [dbo].[Certifications]
ADD CONSTRAINT [FK_JobSeekerCertification]
    FOREIGN KEY ([JobSeekerJSId])
    REFERENCES [dbo].[JobSeekers]
        ([JSId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_JobSeekerCertification'
CREATE INDEX [IX_FK_JobSeekerCertification]
ON [dbo].[Certifications]
    ([JobSeekerJSId]);
GO

-- Creating foreign key on [JobSeekerJSId] in table 'Educations'
ALTER TABLE [dbo].[Educations]
ADD CONSTRAINT [FK_JobSeekerEducation]
    FOREIGN KEY ([JobSeekerJSId])
    REFERENCES [dbo].[JobSeekers]
        ([JSId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_JobSeekerEducation'
CREATE INDEX [IX_FK_JobSeekerEducation]
ON [dbo].[Educations]
    ([JobSeekerJSId]);
GO

-- Creating foreign key on [JobSeekerJSId] in table 'WorkExperiences'
ALTER TABLE [dbo].[WorkExperiences]
ADD CONSTRAINT [FK_JobSeekerWorkExperience]
    FOREIGN KEY ([JobSeekerJSId])
    REFERENCES [dbo].[JobSeekers]
        ([JSId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_JobSeekerWorkExperience'
CREATE INDEX [IX_FK_JobSeekerWorkExperience]
ON [dbo].[WorkExperiences]
    ([JobSeekerJSId]);
GO

-- Creating foreign key on [Company_CompId] in table 'Users'
ALTER TABLE [dbo].[Users]
ADD CONSTRAINT [FK_UserCompany]
    FOREIGN KEY ([Company_CompId])
    REFERENCES [dbo].[Companies]
        ([CompId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_UserCompany'
CREATE INDEX [IX_FK_UserCompany]
ON [dbo].[Users]
    ([Company_CompId]);
GO

-- Creating foreign key on [Company_CompId] in table 'Locations'
ALTER TABLE [dbo].[Locations]
ADD CONSTRAINT [FK_CompanyLocation]
    FOREIGN KEY ([Company_CompId])
    REFERENCES [dbo].[Companies]
        ([CompId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_CompanyLocation'
CREATE INDEX [IX_FK_CompanyLocation]
ON [dbo].[Locations]
    ([Company_CompId]);
GO

-- Creating foreign key on [CompanyCompId] in table 'Recruiters'
ALTER TABLE [dbo].[Recruiters]
ADD CONSTRAINT [FK_CompanyRecruiter]
    FOREIGN KEY ([CompanyCompId])
    REFERENCES [dbo].[Companies]
        ([CompId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_CompanyRecruiter'
CREATE INDEX [IX_FK_CompanyRecruiter]
ON [dbo].[Recruiters]
    ([CompanyCompId]);
GO

-- Creating foreign key on [CompanyCompId] in table 'NewsPosts'
ALTER TABLE [dbo].[NewsPosts]
ADD CONSTRAINT [FK_CompanyNewsPost]
    FOREIGN KEY ([CompanyCompId])
    REFERENCES [dbo].[Companies]
        ([CompId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_CompanyNewsPost'
CREATE INDEX [IX_FK_CompanyNewsPost]
ON [dbo].[NewsPosts]
    ([CompanyCompId]);
GO

-- Creating foreign key on [CompanyCompId] in table 'JobPostings'
ALTER TABLE [dbo].[JobPostings]
ADD CONSTRAINT [FK_CompanyJobPosting]
    FOREIGN KEY ([CompanyCompId])
    REFERENCES [dbo].[Companies]
        ([CompId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_CompanyJobPosting'
CREATE INDEX [IX_FK_CompanyJobPosting]
ON [dbo].[JobPostings]
    ([CompanyCompId]);
GO

-- Creating foreign key on [RecruiterRecId] in table 'JobPostings'
ALTER TABLE [dbo].[JobPostings]
ADD CONSTRAINT [FK_RecruiterJobPosting]
    FOREIGN KEY ([RecruiterRecId])
    REFERENCES [dbo].[Recruiters]
        ([RecId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_RecruiterJobPosting'
CREATE INDEX [IX_FK_RecruiterJobPosting]
ON [dbo].[JobPostings]
    ([RecruiterRecId]);
GO

-- Creating foreign key on [JobAreas_JobAreaId] in table 'JobAreaJobPosting'
ALTER TABLE [dbo].[JobAreaJobPosting]
ADD CONSTRAINT [FK_JobAreaJobPosting_JobArea]
    FOREIGN KEY ([JobAreas_JobAreaId])
    REFERENCES [dbo].[JobAreas]
        ([JobAreaId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [JobPostings_JobPostId] in table 'JobAreaJobPosting'
ALTER TABLE [dbo].[JobAreaJobPosting]
ADD CONSTRAINT [FK_JobAreaJobPosting_JobPosting]
    FOREIGN KEY ([JobPostings_JobPostId])
    REFERENCES [dbo].[JobPostings]
        ([JobPostId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_JobAreaJobPosting_JobPosting'
CREATE INDEX [IX_FK_JobAreaJobPosting_JobPosting]
ON [dbo].[JobAreaJobPosting]
    ([JobPostings_JobPostId]);
GO

-- Creating foreign key on [UserMedia_UMediaId] in table 'JobSeekers'
ALTER TABLE [dbo].[JobSeekers]
ADD CONSTRAINT [FK_JobSeekerUserMedia]
    FOREIGN KEY ([UserMedia_UMediaId])
    REFERENCES [dbo].[UserMedias]
        ([UMediaId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_JobSeekerUserMedia'
CREATE INDEX [IX_FK_JobSeekerUserMedia]
ON [dbo].[JobSeekers]
    ([UserMedia_UMediaId]);
GO

-- Creating foreign key on [UserProfile_ProfileId] in table 'Users'
ALTER TABLE [dbo].[Users]
ADD CONSTRAINT [FK_UserUserProfile]
    FOREIGN KEY ([UserProfile_ProfileId])
    REFERENCES [dbo].[UserProfiles]
        ([ProfileId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_UserUserProfile'
CREATE INDEX [IX_FK_UserUserProfile]
ON [dbo].[Users]
    ([UserProfile_ProfileId]);
GO

-- Creating foreign key on [UserMedia_UMediaId] in table 'JobPostings'
ALTER TABLE [dbo].[JobPostings]
ADD CONSTRAINT [FK_JobPostingUserMedia]
    FOREIGN KEY ([UserMedia_UMediaId])
    REFERENCES [dbo].[UserMedias]
        ([UMediaId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_JobPostingUserMedia'
CREATE INDEX [IX_FK_JobPostingUserMedia]
ON [dbo].[JobPostings]
    ([UserMedia_UMediaId]);
GO

-- Creating foreign key on [UserMedia_UMediaId] in table 'Companies'
ALTER TABLE [dbo].[Companies]
ADD CONSTRAINT [FK_CompanyUserMedia]
    FOREIGN KEY ([UserMedia_UMediaId])
    REFERENCES [dbo].[UserMedias]
        ([UMediaId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_CompanyUserMedia'
CREATE INDEX [IX_FK_CompanyUserMedia]
ON [dbo].[Companies]
    ([UserMedia_UMediaId]);
GO

-- Creating foreign key on [JobPostingJobPostId] in table 'JobApplieds'
ALTER TABLE [dbo].[JobApplieds]
ADD CONSTRAINT [FK_JobPostingJobApplied]
    FOREIGN KEY ([JobPostingJobPostId])
    REFERENCES [dbo].[JobPostings]
        ([JobPostId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_JobPostingJobApplied'
CREATE INDEX [IX_FK_JobPostingJobApplied]
ON [dbo].[JobApplieds]
    ([JobPostingJobPostId]);
GO

-- Creating foreign key on [JobSeekerJSId] in table 'JobApplieds'
ALTER TABLE [dbo].[JobApplieds]
ADD CONSTRAINT [FK_JobSeekerJobApplied]
    FOREIGN KEY ([JobSeekerJSId])
    REFERENCES [dbo].[JobSeekers]
        ([JSId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_JobSeekerJobApplied'
CREATE INDEX [IX_FK_JobSeekerJobApplied]
ON [dbo].[JobApplieds]
    ([JobSeekerJSId]);
GO

-- Creating foreign key on [Location_LocationId] in table 'JobPostings'
ALTER TABLE [dbo].[JobPostings]
ADD CONSTRAINT [FK_JobPostingLocation]
    FOREIGN KEY ([Location_LocationId])
    REFERENCES [dbo].[Locations]
        ([LocationId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_JobPostingLocation'
CREATE INDEX [IX_FK_JobPostingLocation]
ON [dbo].[JobPostings]
    ([Location_LocationId]);
GO

-- Creating foreign key on [JobSeekerJSId] in table 'SkillCollections'
ALTER TABLE [dbo].[SkillCollections]
ADD CONSTRAINT [FK_JobSeekerSkillCollection]
    FOREIGN KEY ([JobSeekerJSId])
    REFERENCES [dbo].[JobSeekers]
        ([JSId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_JobSeekerSkillCollection'
CREATE INDEX [IX_FK_JobSeekerSkillCollection]
ON [dbo].[SkillCollections]
    ([JobSeekerJSId]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------