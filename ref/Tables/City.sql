CREATE TABLE [ref].[City] (
    [City_Id]      INT                                         IDENTITY (1, 1) NOT NULL,
    [City_name]    NVARCHAR (200)                              NOT NULL,
    [Province_Id]  INT                                         NOT NULL,
    [CreateUser]   NVARCHAR (50)                               DEFAULT (suser_sname()) NULL,
    [CreatedDate]  DATE                                        DEFAULT (getdate()) NULL,
    [ModifydUser]  NVARCHAR (50)                               DEFAULT (suser_sname()) NULL,
    [ModifiedDate] DATE                                        DEFAULT (getdate()) NULL,
    [ValidFrom]    DATETIME2 (7) GENERATED ALWAYS AS ROW START NOT NULL,
    [ValidTo]      DATETIME2 (7) GENERATED ALWAYS AS ROW END   NOT NULL,
    PRIMARY KEY CLUSTERED ([City_Id] ASC),
    CONSTRAINT [FK_City_Province] FOREIGN KEY ([Province_Id]) REFERENCES [ref].[Province] ([Province_Id]),
    UNIQUE NONCLUSTERED ([City_name] ASC),
    PERIOD FOR SYSTEM_TIME ([ValidFrom], [ValidTo])
)
WITH (SYSTEM_VERSIONING = ON (HISTORY_TABLE=[ref].[CityHistory], DATA_CONSISTENCY_CHECK=ON));

