CREATE TABLE [ref].[CustomerTypeHistory] (
    [CustomerTypeId] INT           NOT NULL,
    [CustomerType]   VARCHAR (20)  NOT NULL,
    [CreateUser]     NVARCHAR (50) NULL,
    [CreatedDate]    DATE          NULL,
    [ModifydUser]    NVARCHAR (50) NULL,
    [ModifiedDate]   DATE          NULL,
    [ValidFrom]      DATETIME2 (7) NOT NULL,
    [ValidTo]        DATETIME2 (7) NOT NULL
);


GO
CREATE CLUSTERED INDEX [ix_CustomerTypeHistory]
    ON [ref].[CustomerTypeHistory]([ValidTo] ASC, [ValidFrom] ASC) WITH (DATA_COMPRESSION = PAGE);

