CREATE TABLE [dbo].[ArticleDescriptions]
(
[ArticlesID] [int] NOT NULL IDENTITY(1, 1),
[ShortDescription] [nvarchar] (2000) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Description] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ArticlesName] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Picture] [image] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ArticleDescriptions] ADD CONSTRAINT [PK_ArticleDescriptions] PRIMARY KEY CLUSTERED  ([ArticlesID]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ArticleDescriptions] ADD CONSTRAINT [FK_ArticleDescriptions] FOREIGN KEY ([ArticlesID]) REFERENCES [dbo].[Articles] ([ArticlesID])
GO
EXEC sp_addextendedproperty N'MS_Description', N'A short summary of the article appearing on the main Simple Talk page', 'SCHEMA', N'dbo', 'TABLE', N'ArticleDescriptions', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'Deprecated - do not use', 'SCHEMA', N'dbo', 'TABLE', N'ArticleDescriptions', 'COLUMN', N'ArticlesName'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Deprecated - do not use', 'SCHEMA', N'dbo', 'TABLE', N'ArticleDescriptions', 'COLUMN', N'Description'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Deprecated - do not use', 'SCHEMA', N'dbo', 'TABLE', N'ArticleDescriptions', 'COLUMN', N'Picture'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The description that appears on the main web page', 'SCHEMA', N'dbo', 'TABLE', N'ArticleDescriptions', 'COLUMN', N'ShortDescription'
GO
