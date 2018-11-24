CREATE TABLE [catalogo].[Cliente]
(
[codcli] [char] (3) COLLATE Modern_Spanish_CI_AS NOT NULL,
[codciu] [char] (3) COLLATE Modern_Spanish_CI_AS NOT NULL,
[garante] [char] (3) COLLATE Modern_Spanish_CI_AS NOT NULL,
[direnvio] [varchar] (80) COLLATE Modern_Spanish_CI_AS NULL,
[credito] [numeric] (7, 2) NULL,
[descuento] [numeric] (5, 2) NULL
) ON [Secundario]
GO
ALTER TABLE [catalogo].[Cliente] ADD CONSTRAINT [CK_credito] CHECK (([credito]<=(2000)))
GO
ALTER TABLE [catalogo].[Cliente] ADD CONSTRAINT [Ck_descuento] CHECK (([descuento]<=(100) AND [descuento]>=(0)))
GO
ALTER TABLE [catalogo].[Cliente] ADD CONSTRAINT [pk_Cliente] PRIMARY KEY CLUSTERED  ([codcli]) ON [Secundario]
GO
ALTER TABLE [catalogo].[Cliente] ADD CONSTRAINT [debetener] FOREIGN KEY ([garante]) REFERENCES [catalogo].[Cliente] ([codcli])
GO
ALTER TABLE [catalogo].[Cliente] ADD CONSTRAINT [Ubicado] FOREIGN KEY ([codciu]) REFERENCES [catalogo].[Ciudad] ([codciu])
GO
