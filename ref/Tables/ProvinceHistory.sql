CREATE TABLE [ref].[ProvinceHistory] (
    [Province_Id]   INT            NOT NULL,
    [Province_name] NVARCHAR (200) NOT NULL,
    [Country_Id]    INT            NOT NULL,
    [CreateUser]    NVARCHAR (50)  NULL,
    [CreatedDate]   DATE           NULL,
    [ModifydUser]   NVARCHAR (50)  NULL,
    [ModifiedDate]  DATE           NULL,
    [ValidFrom]     DATETIME2 (7)  NOT NULL,
    [ValidTo]       DATETIME2 (7)  NOT NULL
);


GO
CREATE CLUSTERED INDEX [ix_ProvinceHistory]
    ON [ref].[ProvinceHistory]([ValidTo] ASC, [ValidFrom] ASC) WITH (DATA_COMPRESSION = PAGE);

