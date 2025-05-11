CREATE TABLE [ref].[Branches] (
    [BranchId]     INT                                         IDENTITY (1, 1) NOT NULL,
    [BranchName]   NVARCHAR (100)                              NULL,
    [Address_Id]   INT                                         NOT NULL,
    [CreateUser]   NVARCHAR (50)                               DEFAULT (suser_sname()) NULL,
    [CreatedDate]  DATE                                        DEFAULT (getdate()) NULL,
    [ModifydUser]  NVARCHAR (50)                               DEFAULT (suser_sname()) NULL,
    [ModifiedDate] DATE                                        DEFAULT (getdate()) NULL,
    [ValidFrom]    DATETIME2 (7) GENERATED ALWAYS AS ROW START NOT NULL,
    [ValidTo]      DATETIME2 (7) GENERATED ALWAYS AS ROW END   NOT NULL,
    PRIMARY KEY CLUSTERED ([BranchId] ASC),
    CONSTRAINT [FK_Branches_Address] FOREIGN KEY ([Address_Id]) REFERENCES [ref].[Address] ([Address_Id]),
    PERIOD FOR SYSTEM_TIME ([ValidFrom], [ValidTo])
)
WITH (SYSTEM_VERSIONING = ON (HISTORY_TABLE=[ref].[BranchesHistory], DATA_CONSISTENCY_CHECK=ON));

