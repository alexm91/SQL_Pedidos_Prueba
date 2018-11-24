CREATE TABLE [catalogo].[Telprov]
(
[numtelf] [char] (10) COLLATE Modern_Spanish_CI_AS NOT NULL,
[codprov] [char] (3) COLLATE Modern_Spanish_CI_AS NOT NULL
) ON [Secundario]
GO
ALTER TABLE [catalogo].[Telprov] ADD CONSTRAINT [pk_Telprov] PRIMARY KEY CLUSTERED  ([numtelf], [codprov]) ON [Secundario]
GO
ALTER TABLE [catalogo].[Telprov] ADD CONSTRAINT [disponede] FOREIGN KEY ([codprov]) REFERENCES [catalogo].[Proveedor] ([codprov]) ON DELETE CASCADE ON UPDATE CASCADE
GO
