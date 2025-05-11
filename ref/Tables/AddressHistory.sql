CREATE TABLE [ref].[AddressHistory] (
    [Address_Id]    INT            NOT NULL,
    [Address1]      NVARCHAR (100) NOT NULL,
    [Address2]      NVARCHAR (100) NULL,
    [Address3]      NVARCHAR (100) NULL,
    [Country_Id]    INT            NOT NULL,
    [Province_Id]   INT            NOT NULL,
    [City_Id]       INT            NOT NULL,
    [Zip_Code]      NVARCHAR (7)   NOT NULL,
    [AddressTypeId] INT            NOT NULL,
    [CreateUser]    NVARCHAR (50)  NULL,
    [CreatedDate]   DATE           NULL,
    [ModifydUser]   NVARCHAR (50)  NULL,
    [ModifiedDate]  DATE           NULL,
    [ValidFrom]     DATETIME2 (7)  NOT NULL,
    [ValidTo]       DATETIME2 (7)  NOT NULL,
    [CustomerId]    INT            NULL
);




GO
CREATE CLUSTERED INDEX [ix_AddressHistory]
    ON [ref].[AddressHistory]([ValidTo] ASC, [ValidFrom] ASC) WITH (DATA_COMPRESSION = PAGE);

