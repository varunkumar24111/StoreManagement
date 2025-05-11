CREATE TABLE [ref].[AddressTypeHistory] (
    [AddressTypeId] INT           NOT NULL,
    [AddressType]   VARCHAR (20)  NOT NULL,
    [CreateUser]    NVARCHAR (50) NULL,
    [CreatedDate]   DATE          NULL,
    [ModifydUser]   NVARCHAR (50) NULL,
    [ModifiedDate]  DATE          NULL,
    [ValidFrom]     DATETIME2 (7) NOT NULL,
    [ValidTo]       DATETIME2 (7) NOT NULL
);


GO
CREATE CLUSTERED INDEX [ix_AddressTypeHistory]
    ON [ref].[AddressTypeHistory]([ValidTo] ASC, [ValidFrom] ASC) WITH (DATA_COMPRESSION = PAGE);

