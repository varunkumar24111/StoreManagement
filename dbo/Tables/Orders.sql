CREATE TABLE [dbo].[Orders] (
    [OrderID]      INT           IDENTITY (1, 1) NOT NULL,
    [BranchId]     INT           NULL,
    [CustomerID]   INT           NULL,
    [quantity]     INT           NULL,
    [TotalPrice]   INT           NULL,
    [OrderDate]    DATE          NULL,
    [OrderTime]    TIME (7)      NULL,
    [CreateUser]   NVARCHAR (50) DEFAULT (suser_sname()) NULL,
    [CreatedDate]  DATE          DEFAULT (getdate()) NULL,
    [ModifydUser]  NVARCHAR (50) DEFAULT (suser_sname()) NULL,
    [ModifiedDate] DATE          DEFAULT (getdate()) NULL,
    PRIMARY KEY CLUSTERED ([OrderID] ASC),
    CONSTRAINT [FK_Orders_Branches] FOREIGN KEY ([BranchId]) REFERENCES [ref].[Branches] ([BranchId]),
    CONSTRAINT [FK_Orders_Customer] FOREIGN KEY ([CustomerID]) REFERENCES [ref].[Customer] ([CustomerId])
);

