CREATE TABLE [movimiento].[CabezeraDetalleP]
(
[codped] [char] (3) COLLATE Modern_Spanish_CI_AS NULL,
[fecha] [datetime] NULL,
[montototal] [numeric] (10, 2) NULL,
[codcli] [char] (3) COLLATE Modern_Spanish_CI_AS NULL,
[numlinea] [tinyint] NULL,
[preciou] [numeric] (7, 2) NULL,
[cantidad] [smallint] NULL,
[codpro] [char] (3) COLLATE Modern_Spanish_CI_AS NULL
) ON [PRIMARY]
GO
