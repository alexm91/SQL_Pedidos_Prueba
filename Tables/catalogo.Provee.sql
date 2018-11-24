CREATE TABLE [catalogo].[Provee]
(
[codprov] [char] (3) COLLATE Modern_Spanish_CI_AS NOT NULL,
[codpro] [char] (3) COLLATE Modern_Spanish_CI_AS NOT NULL,
[Stock] [smallint] NULL
) ON [Secundario]
GO
ALTER TABLE [catalogo].[Provee] ADD CONSTRAINT [pk_Provee] PRIMARY KEY CLUSTERED  ([codprov], [codpro]) ON [Secundario]
GO
ALTER TABLE [catalogo].[Provee] ADD CONSTRAINT [ProveeProducto] FOREIGN KEY ([codpro]) REFERENCES [catalogo].[Producto] ([codpro])
GO
ALTER TABLE [catalogo].[Provee] ADD CONSTRAINT [ProveeProveedor] FOREIGN KEY ([codprov]) REFERENCES [catalogo].[Proveedor] ([codprov])
GO
