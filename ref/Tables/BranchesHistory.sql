CREATE TABLE [ref].[BranchesHistory] (
    [BranchId]     INT            NOT NULL,
    [BranchName]   NVARCHAR (100) NULL,
    [Address_Id]   INT            NOT NULL,
    [CreateUser]   NVARCHAR (50)  NULL,
    [CreatedDate]  DATE           NULL,
    [ModifydUser]  NVARCHAR (50)  NULL,
    [ModifiedDate] DATE           NULL,
    [ValidFrom]    DATETIME2 (7)  NOT NULL,
    [ValidTo]      DATETIME2 (7)  NOT NULL
);


GO
CREATE CLUSTERED INDEX [ix_BranchesHistory]
    ON [ref].[BranchesHistory]([ValidTo] ASC, [ValidFrom] ASC) WITH (DATA_COMPRESSION = PAGE);

