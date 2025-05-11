CREATE TABLE [ref].[StoragePrice] (
    [StoragePriceId]    INT            IDENTITY (1, 1) NOT NULL,
    [StoragePriceName] NVARCHAR (100) NULL,
    [BranchId]          INT            NULL,
    [price]             INT            NULL,
    [IsCurrent]         BIT            NOT NULL,
    [Expiration_Date]   DATETIME       DEFAULT ('2099-12-31') NOT NULL,
    [CreateUser]        NVARCHAR (50)  DEFAULT (suser_sname()) NULL,
    [CreatedDate]       DATE           DEFAULT (getdate()) NULL,
    [ModifydUser]       NVARCHAR (50)  DEFAULT (suser_sname()) NULL,
    [ModifiedDate]      DATE           DEFAULT (getdate()) NULL,
    [City_Id] INT NULL, 
    PRIMARY KEY CLUSTERED ([StoragePriceId] ASC),
    CONSTRAINT [FK_StoragePrice_Branches] FOREIGN KEY ([BranchId]) REFERENCES [ref].[Branches] ([BranchId])
);

