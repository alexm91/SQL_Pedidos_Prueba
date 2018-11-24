CREATE TABLE [catalogo].[Ciudad]
(
[codciu] [char] (3) COLLATE Modern_Spanish_CI_AS NOT NULL,
[nombre] [varchar] (40) COLLATE Modern_Spanish_CI_AS NULL
) ON [Secundario]
GO
ALTER TABLE [catalogo].[Ciudad] ADD CONSTRAINT [pk_Ciudad] PRIMARY KEY CLUSTERED  ([codciu]) ON [Secundario]
GO
