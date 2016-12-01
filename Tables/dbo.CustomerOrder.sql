SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[CustomerOrder] (
		[CustomerOrderID]     [int] IDENTITY(1000001, 1) NOT NULL,
		[CustomerID]          [int] NOT NULL,
		[OrderAmount]         [decimal](18, 2) NOT NULL,
		CONSTRAINT [PK__Customer__28FBA0DC6A37DA30]
		PRIMARY KEY
		CLUSTERED
		([CustomerOrderID])
	ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[CustomerOrder]
	WITH CHECK
	ADD CONSTRAINT [FK__CustomerO__Custo__2818EA29]
	FOREIGN KEY ([CustomerID]) REFERENCES [dbo].[Customer] ([customerID])
ALTER TABLE [dbo].[CustomerOrder]
	CHECK CONSTRAINT [FK__CustomerO__Custo__2818EA29]

GO
ALTER TABLE [dbo].[CustomerOrder] SET (LOCK_ESCALATION = TABLE)
GO
