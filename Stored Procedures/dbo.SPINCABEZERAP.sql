SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[SPINCABEZERAP]
AS
insert into movimiento.cabezeradetallep (codped, fecha, montototal, codcli)
select cabezerap.codped, cabezerap.fecha, cabezerap.montototal, cabezerap.codcli 
from movimiento.cabezerap
GO
