CREATE TABLE [dbo].[PaymentDetails] (
    [PaymentDetailsID] INT           IDENTITY (1, 1) NOT NULL,
    [OrderID]          INT           NULL,
    [PaymentID]        INT           NULL,
    [PaymentDate]      DATE          NULL,
    [PaymentMethod]    NVARCHAR (50) NULL,
    [Amount]           INT           NULL,
    [CreateUser]       NVARCHAR (50) DEFAULT (suser_sname()) NULL,
    [CreatedDate]      DATE          DEFAULT (getdate()) NULL,
    [ModifydUser]      NVARCHAR (50) DEFAULT (suser_sname()) NULL,
    [ModifiedDate]     DATE          DEFAULT (getdate()) NULL,
    PRIMARY KEY CLUSTERED ([PaymentDetailsID] ASC),
    CONSTRAINT [FK_PaymentDetails_CustomerOrders] FOREIGN KEY ([OrderID]) REFERENCES [dbo].[CustomerOrders] ([OrderID]),
    CONSTRAINT [FK_PaymentDetails_Payment] FOREIGN KEY ([PaymentID]) REFERENCES [dbo].[Payment] ([PaymentID])
);

