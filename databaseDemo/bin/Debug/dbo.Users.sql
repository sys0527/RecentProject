CREATE TABLE [dbo].[Users] (
    [ID]             INT           IDENTITY (1, 1) NULL,
    [FullName]       VARCHAR (60)  NULL,
    [Contact Number] NVARCHAR (20) NULL,
    [Passwords]      NVARCHAR (16) NULL,
    [Role]           VARCHAR (10)  NULL
);

