CREATE TABLE [movimiento].[CabezeraP]
(
[codped] [char] (3) COLLATE Modern_Spanish_CI_AS NOT NULL,
[fecha] [datetime] NULL,
[montototal] [numeric] (10, 2) NULL,
[codcli] [char] (3) COLLATE Modern_Spanish_CI_AS NOT NULL,
[TipoPed] [char] (10) COLLATE Modern_Spanish_CI_AS NOT NULL CONSTRAINT [DF__CabezeraP__TipoP__70DDC3D8] DEFAULT ('Contado')
) ON [PRIMARY]
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
create trigger [movimiento].[trprejoincabezera]
on [movimiento].[CabezeraP]
after insert
as
exec SPINCABEZERAP
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
create trigger [movimiento].[trprejoincabezerap]
on [movimiento].[CabezeraP]
after insert
as
exec SPINCABEZERAP
GO
ALTER TABLE [movimiento].[CabezeraP] ADD CONSTRAINT [CK_tipoped] CHECK (([tipoped]='Credito' OR [tipoped]='Contado'))
GO
ALTER TABLE [movimiento].[CabezeraP] ADD CONSTRAINT [pk_CabezeraP] PRIMARY KEY CLUSTERED  ([codped]) ON [PRIMARY]
GO
ALTER TABLE [movimiento].[CabezeraP] ADD CONSTRAINT [Solicita] FOREIGN KEY ([codcli]) REFERENCES [catalogo].[Cliente] ([codcli])
GO
