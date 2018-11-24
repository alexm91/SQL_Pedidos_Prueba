CREATE TABLE [catalogo].[Proveedor]
(
[codprov] [char] (3) COLLATE Modern_Spanish_CI_AS NOT NULL,
[nomprov] [varchar] (40) COLLATE Modern_Spanish_CI_AS NULL
) ON [Secundario]
GO
ALTER TABLE [catalogo].[Proveedor] ADD CONSTRAINT [pk_Proveedor] PRIMARY KEY CLUSTERED  ([codprov]) ON [Secundario]
GO
