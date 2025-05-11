CREATE TABLE [ref].[Province] (
    [Province_Id]   INT                                         IDENTITY (1, 1) NOT NULL,
    [Province_name] NVARCHAR (200)                              NOT NULL,
    [Country_Id]    INT                                         NOT NULL,
    [CreateUser]    NVARCHAR (50)                               DEFAULT (suser_sname()) NULL,
    [CreatedDate]   DATE                                        DEFAULT (getdate()) NULL,
    [ModifydUser]   NVARCHAR (50)                               DEFAULT (suser_sname()) NULL,
    [ModifiedDate]  DATE                                        DEFAULT (getdate()) NULL,
    [ValidFrom]     DATETIME2 (7) GENERATED ALWAYS AS ROW START NOT NULL,
    [ValidTo]       DATETIME2 (7) GENERATED ALWAYS AS ROW END   NOT NULL,
    PRIMARY KEY CLUSTERED ([Province_Id] ASC),
    CONSTRAINT [FK_Province_Country] FOREIGN KEY ([Country_Id]) REFERENCES [ref].[Country] ([Country_Id]),
    UNIQUE NONCLUSTERED ([Province_name] ASC),
    PERIOD FOR SYSTEM_TIME ([ValidFrom], [ValidTo])
)
WITH (SYSTEM_VERSIONING = ON (HISTORY_TABLE=[ref].[ProvinceHistory], DATA_CONSISTENCY_CHECK=ON));

