SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
SET ANSI_PADDING OFF
GO
CREATE TABLE [tSQLt].[Private_NullCellTable] (
		[I]     [int] NULL
) ON [PRIMARY]
GO
ALTER TABLE [tSQLt].[Private_NullCellTable] SET (LOCK_ESCALATION = TABLE)
GO
