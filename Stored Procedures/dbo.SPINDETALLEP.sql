SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
create PROCEDURE [dbo].[SPINDETALLEP]
AS
update movimiento.cabezeradetallep set cabezeradetallep.numlinea=detallep.numlinea, cabezeradetallep.preciou=detallep.preciou,
cabezeradetallep.cantidad=detallep.cantidad, cabezeradetallep.codpro=detallep.codpro 
from movimiento.detallep, movimiento.cabezeradetallep
where detallep.codped=cabezeradetallep.codped
GO
