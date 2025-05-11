CREATE TABLE [ref].[Address] (
    [Address_Id]    INT                                         IDENTITY (1, 1) NOT NULL,
    [Address1]      NVARCHAR (100)                              NOT NULL,
    [Address2]      NVARCHAR (100)                              NULL,
    [Address3]      NVARCHAR (100)                              NULL,
    [Country_Id]    INT                                         NOT NULL,
    [Province_Id]   INT                                         NOT NULL,
    [City_Id]       INT                                         NOT NULL,
    [Zip_Code]      NVARCHAR (7)                                NOT NULL,
    [AddressTypeId] INT                                         NOT NULL,
    [CreateUser]    NVARCHAR (50)                               DEFAULT (suser_sname()) NULL,
    [CreatedDate]   DATE                                        DEFAULT (getdate()) NULL,
    [ModifydUser]   NVARCHAR (50)                               DEFAULT (suser_sname()) NULL,
    [ModifiedDate]  DATE                                        DEFAULT (getdate()) NULL,
    [ValidFrom]     DATETIME2 (7) GENERATED ALWAYS AS ROW START NOT NULL,
    [ValidTo]       DATETIME2 (7) GENERATED ALWAYS AS ROW END   NOT NULL,
    [CustomerId]    INT                                         NULL,
    PRIMARY KEY CLUSTERED ([Address_Id] ASC),
    CONSTRAINT [FK_Address_AddressType] FOREIGN KEY ([AddressTypeId]) REFERENCES [ref].[AddressType] ([AddressTypeId]),
    CONSTRAINT [FK_Address_City] FOREIGN KEY ([City_Id]) REFERENCES [ref].[City] ([City_Id]),
    CONSTRAINT [FK_Address_Country] FOREIGN KEY ([Country_Id]) REFERENCES [ref].[Country] ([Country_Id]),
    CONSTRAINT [FK_Address_Customer] FOREIGN KEY ([CustomerId]) REFERENCES [ref].[Customer] ([CustomerId]),
    CONSTRAINT [FK_Address_Province] FOREIGN KEY ([Province_Id]) REFERENCES [ref].[Province] ([Province_Id]),
    PERIOD FOR SYSTEM_TIME ([ValidFrom], [ValidTo])
)
WITH (SYSTEM_VERSIONING = ON (HISTORY_TABLE=[ref].[AddressHistory], DATA_CONSISTENCY_CHECK=ON));

