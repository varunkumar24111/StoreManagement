CREATE TABLE [ref].[Organizations] (
    [id]                INT                                         IDENTITY (1, 1) NOT NULL,
    [Organization_Name] NVARCHAR (100)                              NULL,
    [Country_id]        INT                                         NOT NULL,
    [IsActive]          BIT                                         NOT NULL,
    [StorageType1]      BIT                                         NOT NULL,
    [StorageType2]      BIT                                         NOT NULL,
    [StorageType3]      BIT                                         NOT NULL,
    [Subscription_Date] DATETIME                                    NOT NULL,
    [Expiration_Date]   DATETIME                                    DEFAULT ('2099-12-31') NOT NULL,
    [CreateUser]        NVARCHAR (50)                               DEFAULT (suser_sname()) NULL,
    [CreatedDate]       DATE                                        DEFAULT (getdate()) NULL,
    [ModifydUser]       NVARCHAR (50)                               DEFAULT (suser_sname()) NULL,
    [ModifiedDate]      DATE                                        DEFAULT (getdate()) NULL,
    [ValidFrom]         DATETIME2 (7) GENERATED ALWAYS AS ROW START NOT NULL,
    [ValidTo]           DATETIME2 (7) GENERATED ALWAYS AS ROW END   NOT NULL,
    PRIMARY KEY CLUSTERED ([id] ASC),
    CONSTRAINT [FK_Organizations_Country] FOREIGN KEY ([Country_id]) REFERENCES [ref].[Country] ([Country_Id]),
    PERIOD FOR SYSTEM_TIME ([ValidFrom], [ValidTo])
)
WITH (SYSTEM_VERSIONING = ON (HISTORY_TABLE=[ref].[OrganizationsHistory], DATA_CONSISTENCY_CHECK=ON));

