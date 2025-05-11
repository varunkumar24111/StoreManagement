CREATE TABLE [dbo].[OrdersDetails] (
    [OrdersDetailsID] INT           IDENTITY (1, 1) NOT NULL,
    [BranchId]        INT           NULL,
    [CustomerID]      INT           NULL,
    [ItemTypeId]      INT           NULL,
    [OrderID]         INT           NULL,
    [quantity]        INT           NULL,
    [TotalPrice]      INT           NULL,
    [OrderDate]       DATE          NULL,
    [OrderTime]       TIME (7)      NULL,
    [CreateUser]      NVARCHAR (50) DEFAULT (suser_sname()) NULL,
    [CreatedDate]     DATE          DEFAULT (getdate()) NULL,
    [ModifydUser]     NVARCHAR (50) DEFAULT (suser_sname()) NULL,
    [ModifiedDate]    DATE          DEFAULT (getdate()) NULL,
    PRIMARY KEY CLUSTERED ([OrdersDetailsID] ASC),
    CONSTRAINT [FK_OrdersDetails_Branches] FOREIGN KEY ([BranchId]) REFERENCES [ref].[Branches] ([BranchId]),
    CONSTRAINT [FK_OrdersDetails_Customer] FOREIGN KEY ([CustomerID]) REFERENCES [ref].[Customer] ([CustomerId]),
    CONSTRAINT [FK_OrdersDetails_ItemType] FOREIGN KEY ([CustomerID]) REFERENCES [ref].[ItemType] ([ItemTypeId]),
    CONSTRAINT [FK_OrdersDetails_Orders] FOREIGN KEY ([OrderID]) REFERENCES [dbo].[Orders] ([OrderID])
);

