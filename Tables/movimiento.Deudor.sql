CREATE TABLE [movimiento].[Deudor]
(
[codcli] [char] (6) COLLATE Modern_Spanish_CI_AS NOT NULL,
[codigogarante] [char] (6) COLLATE Modern_Spanish_CI_AS NOT NULL,
[limitecredito] [numeric] (10, 2) NULL,
[saldodeudor] [numeric] (10, 2) NULL
) ON [PRIMARY]
GO
ALTER TABLE [movimiento].[Deudor] ADD CONSTRAINT [CK_limite] CHECK (([saldodeudor]<=[limitecredito]))
GO
