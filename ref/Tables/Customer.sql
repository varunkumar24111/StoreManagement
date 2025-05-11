CREATE TABLE [ref].[Customer] (
    [CustomerId]     INT                                         IDENTITY (1, 1) NOT NULL,
    [CustomerName]   VARCHAR (50)                                NULL,
    [CustomerTypeId] INT                                         NULL,
    [CreateUser]     NVARCHAR (50)                               DEFAULT (suser_sname()) NULL,
    [CreatedDate]    DATE                                        DEFAULT (getdate()) NULL,
    [ModifydUser]    NVARCHAR (50)                               DEFAULT (suser_sname()) NULL,
    [ModifiedDate]   DATE                                        DEFAULT (getdate()) NULL,
    [ValidFrom]      DATETIME2 (7) GENERATED ALWAYS AS ROW START NOT NULL,
    [ValidTo]        DATETIME2 (7) GENERATED ALWAYS AS ROW END   NOT NULL,
    [FirstName]      NVARCHAR (50)                               NULL,
    [LastName]       NVARCHAR (50)                               NULL,
    [Email]          NVARCHAR (100)                              NULL,
    [Phone]          NVARCHAR (15)                               NULL,
    [Address_Id]     INT                                         NULL,
    PRIMARY KEY CLUSTERED ([CustomerId] ASC),
    CONSTRAINT [FK_Customer_Address] FOREIGN KEY ([Address_Id]) REFERENCES [ref].[Address] ([Address_Id]),
    CONSTRAINT [FK_Customer_CustomerType] FOREIGN KEY ([CustomerTypeId]) REFERENCES [ref].[CustomerType] ([CustomerTypeId]),
    UNIQUE NONCLUSTERED ([Email] ASC),
    PERIOD FOR SYSTEM_TIME ([ValidFrom], [ValidTo])
)
WITH (SYSTEM_VERSIONING = ON (HISTORY_TABLE=[ref].[CustomerHistory], DATA_CONSISTENCY_CHECK=ON));

