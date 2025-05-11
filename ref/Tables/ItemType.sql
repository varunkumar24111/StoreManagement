CREATE TABLE [ref].[ItemType] (
    [ItemTypeId]   INT                                         IDENTITY (1, 1) NOT NULL,
    [ItemTypeName] VARCHAR (20)                                NOT NULL,
    [CreateUser]   NVARCHAR (50)                               DEFAULT (suser_sname()) NULL,
    [CreatedDate]  DATE                                        DEFAULT (getdate()) NULL,
    [ModifydUser]  NVARCHAR (50)                               DEFAULT (suser_sname()) NULL,
    [ModifiedDate] DATE                                        DEFAULT (getdate()) NULL,
    [ValidFrom]    DATETIME2 (7) GENERATED ALWAYS AS ROW START NOT NULL,
    [ValidTo]      DATETIME2 (7) GENERATED ALWAYS AS ROW END   NOT NULL,
    PRIMARY KEY CLUSTERED ([ItemTypeId] ASC),
    PERIOD FOR SYSTEM_TIME ([ValidFrom], [ValidTo])
)
WITH (SYSTEM_VERSIONING = ON (HISTORY_TABLE=[ref].[ItemTypeHistory], DATA_CONSISTENCY_CHECK=ON));

