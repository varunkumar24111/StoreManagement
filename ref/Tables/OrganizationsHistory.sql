CREATE TABLE [ref].[OrganizationsHistory] (
    [id]                INT            NOT NULL,
    [Organization_Name] NVARCHAR (100) NULL,
    [Country_id]        INT            NOT NULL,
    [IsActive]          BIT            NOT NULL,
    [StorageType1]      BIT            NOT NULL,
    [StorageType2]      BIT            NOT NULL,
    [StorageType3]      BIT            NOT NULL,
    [Subscription_Date] DATETIME       NOT NULL,
    [Expiration_Date]   DATETIME       NOT NULL,
    [CreateUser]        NVARCHAR (50)  NULL,
    [CreatedDate]       DATE           NULL,
    [ModifydUser]       NVARCHAR (50)  NULL,
    [ModifiedDate]      DATE           NULL,
    [ValidFrom]         DATETIME2 (7)  NOT NULL,
    [ValidTo]           DATETIME2 (7)  NOT NULL
);


GO
CREATE CLUSTERED INDEX [ix_OrganizationsHistory]
    ON [ref].[OrganizationsHistory]([ValidTo] ASC, [ValidFrom] ASC) WITH (DATA_COMPRESSION = PAGE);

