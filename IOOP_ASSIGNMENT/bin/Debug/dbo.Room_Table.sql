CREATE TABLE [dbo].[Room_Table] (
    [Room_No]   INT           IDENTITY (1, 1) NOT NULL,
    [Room_Id]   NVARCHAR (10) NOT NULL,
    [Room_Type] NCHAR (20)    NOT NULL,
    [Status]    NCHAR (10)    NOT NULL,
    [Date]      NVARCHAR(MAX) NULL,
    [Time]      NVARCHAR (50) NULL,
    [User_Id]   NVARCHAR (8)  NULL,
    [MDate] DATETIME NULL, 
    PRIMARY KEY CLUSTERED ([Room_No] ASC)
);

