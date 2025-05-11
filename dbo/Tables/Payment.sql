CREATE TABLE [dbo].[Payment] (
    [PaymentID]     INT           IDENTITY (1, 1) NOT NULL,
    [OrderID]       INT           NULL,
    [PaymentDate]   DATE          NULL,
    [PaymentMethod] NVARCHAR (50) NULL,
    [CardDetail]    INT           NULL,
    [Invoice]       INT           NULL,
    [PaymentStatus] NVARCHAR (50) NULL,
    [PendingAmount] INT           NULL,
    [Discount]      INT           NULL,
    [Amount]        INT           NULL,
    [CreateUser]    NVARCHAR (50) DEFAULT (suser_sname()) NULL,
    [CreatedDate]   DATE          DEFAULT (getdate()) NULL,
    [ModifydUser]   NVARCHAR (50) DEFAULT (suser_sname()) NULL,
    [ModifiedDate]  DATE          DEFAULT (getdate()) NULL,
    PRIMARY KEY CLUSTERED ([PaymentID] ASC),
    CONSTRAINT [FK_Payment_CustomerOrders] FOREIGN KEY ([OrderID]) REFERENCES [dbo].[CustomerOrders] ([OrderID])
);

