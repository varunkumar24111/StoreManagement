CREATE TABLE [ref].[CountryHistory] (
    [Country_Id]   INT            NOT NULL,
    [Country_name] NVARCHAR (200) NOT NULL,
    [CreateUser]   NVARCHAR (50)  NULL,
    [CreatedDate]  DATE           NULL,
    [ModifydUser]  NVARCHAR (50)  NULL,
    [ModifiedDate] DATE           NULL,
    [ValidFrom]    DATETIME2 (7)  NOT NULL,
    [ValidTo]      DATETIME2 (7)  NOT NULL
);


GO
CREATE CLUSTERED INDEX [ix_CountryHistory]
    ON [ref].[CountryHistory]([ValidTo] ASC, [ValidFrom] ASC) WITH (DATA_COMPRESSION = PAGE);

