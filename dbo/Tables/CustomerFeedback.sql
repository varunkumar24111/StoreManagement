CREATE TABLE [dbo].[CustomerFeedback] (
    [CustomerFeedbackID] INT            IDENTITY (1, 1) NOT NULL,
    [CustomerID]         INT            NULL,
    [OrderID]            INT            NULL,
    [Ratings]             INT            NULL,
    [comments]           NVARCHAR (200) NULL,
    [DateSubmitted]      DATE           NULL,
    [CreateUser]         NVARCHAR (50)  DEFAULT (suser_sname()) NULL,
    [CreatedDate]        DATE           DEFAULT (getdate()) NULL,
    [ModifydUser]        NVARCHAR (50)  DEFAULT (suser_sname()) NULL,
    [ModifiedDate]       DATE           DEFAULT (getdate()) NULL,
    PRIMARY KEY CLUSTERED ([CustomerFeedbackID] ASC),
    CHECK ([Ratings]>=(1) AND [Ratings]<=(5)),
    CONSTRAINT [FK_CustomerFeedback_Customer] FOREIGN KEY ([CustomerID]) REFERENCES [ref].[Customer] ([CustomerId]),
    CONSTRAINT [FK_CustomerFeedback_CustomerOrders] FOREIGN KEY ([OrderID]) REFERENCES [dbo].[CustomerOrders] ([OrderID])
);

