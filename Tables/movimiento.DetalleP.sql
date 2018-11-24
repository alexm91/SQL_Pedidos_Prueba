CREATE TABLE [movimiento].[DetalleP]
(
[numlinea] [tinyint] NOT NULL,
[preciou] [numeric] (7, 2) NULL,
[cantidad] [smallint] NULL,
[codped] [char] (3) COLLATE Modern_Spanish_CI_AS NOT NULL,
[codpro] [char] (3) COLLATE Modern_Spanish_CI_AS NOT NULL
) ON [PRIMARY]
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE TRIGGER [movimiento].[tr_montoTotal] 
ON [movimiento].[DetalleP]
AFTER insert, update
AS
	BEGIN
        UPDATE     movimiento.cabezeraP
        SET        montototal = (select sum(cantidad*preciou) from movimiento.DetalleP 
								where movimiento.detallep.codped = i.codped)
		from inserted as i
		WHERE		movimiento.cabezerap.codped = i.codped
       
    END
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
create trigger [movimiento].[trprejoindetallep]
on [movimiento].[DetalleP]
after insert
as
exec SPINDETALLEP
GO
ALTER TABLE [movimiento].[DetalleP] ADD CONSTRAINT [pk_DetalleP] PRIMARY KEY CLUSTERED  ([numlinea], [codped]) ON [PRIMARY]
GO
ALTER TABLE [movimiento].[DetalleP] ADD CONSTRAINT [perteneceproducto] FOREIGN KEY ([codpro]) REFERENCES [catalogo].[Producto] ([codpro])
GO
ALTER TABLE [movimiento].[DetalleP] ADD CONSTRAINT [tienedetalle] FOREIGN KEY ([codped]) REFERENCES [movimiento].[CabezeraP] ([codped])
GO
