CREATE TABLE [ref].[CustomerHistory] (
    [CustomerId]     INT            NOT NULL,
    [CustomerName]   VARCHAR (50)   NULL,
    [CustomerTypeId] INT            NULL,
    [CreateUser]     NVARCHAR (50)  NULL,
    [CreatedDate]    DATE           NULL,
    [ModifydUser]    NVARCHAR (50)  NULL,
    [ModifiedDate]   DATE           NULL,
    [ValidFrom]      DATETIME2 (7)  NOT NULL,
    [ValidTo]        DATETIME2 (7)  NOT NULL,
    [FirstName]      NVARCHAR (50)  NULL,
    [LastName]       NVARCHAR (50)  NULL,
    [Email]          NVARCHAR (100) NULL,
    [Phone]          NVARCHAR (15)  NULL,
    [Address_Id]     INT            NULL
);




GO
CREATE CLUSTERED INDEX [ix_CustomerHistory]
    ON [ref].[CustomerHistory]([ValidTo] ASC, [ValidFrom] ASC) WITH (DATA_COMPRESSION = PAGE);

