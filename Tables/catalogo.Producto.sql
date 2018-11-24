CREATE TABLE [catalogo].[Producto]
(
[codpro] [char] (3) COLLATE Modern_Spanish_CI_AS NOT NULL,
[nomprod] [varchar] (40) COLLATE Modern_Spanish_CI_AS NULL
) ON [Secundario]
GO
ALTER TABLE [catalogo].[Producto] ADD CONSTRAINT [pk_Producto] PRIMARY KEY CLUSTERED  ([codpro]) ON [Secundario]
GO
