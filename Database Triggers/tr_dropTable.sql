SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE TRIGGER [tr_dropTable]   
ON DATABASE   
FOR DROP_TABLE   
AS   
   PRINT 'No se puede eliminar ninguna tabla
		Ponerse en contacto con el administrador'   
   ROLLBACK; 
GO
