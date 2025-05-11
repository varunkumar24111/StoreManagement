CREATE TABLE [dbo].[CustomerOrders] (
    [OrderID]      INT           NOT NULL,
    [CustomerId]   INT           NULL,
    [OrderDate]    DATE          NULL,
    [TotalAmount]  INT           NULL,
    [Status]       NVARCHAR (50) NULL,
    [CreateUser]   NVARCHAR (50) DEFAULT (suser_sname()) NULL,
    [CreatedDate]  DATE          DEFAULT (getdate()) NULL,
    [ModifydUser]  NVARCHAR (50) DEFAULT (suser_sname()) NULL,
    [ModifiedDate] DATE          DEFAULT (getdate()) NULL,
    PRIMARY KEY CLUSTERED ([OrderID] ASC),
    FOREIGN KEY ([CustomerId]) REFERENCES [ref].[Customer] ([CustomerId])
);

