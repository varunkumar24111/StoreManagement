CREATE TABLE [ref].[CityHistory] (
    [City_Id]      INT            NOT NULL,
    [City_name]    NVARCHAR (200) NOT NULL,
    [Province_Id]  INT            NOT NULL,
    [CreateUser]   NVARCHAR (50)  NULL,
    [CreatedDate]  DATE           NULL,
    [ModifydUser]  NVARCHAR (50)  NULL,
    [ModifiedDate] DATE           NULL,
    [ValidFrom]    DATETIME2 (7)  NOT NULL,
    [ValidTo]      DATETIME2 (7)  NOT NULL
);


GO
CREATE CLUSTERED INDEX [ix_CityHistory]
    ON [ref].[CityHistory]([ValidTo] ASC, [ValidFrom] ASC) WITH (DATA_COMPRESSION = PAGE);

