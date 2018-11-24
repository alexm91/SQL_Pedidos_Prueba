CREATE TABLE [movimiento].[Pagos]
(
[codigocli] [char] (6) COLLATE Modern_Spanish_CI_AS NOT NULL,
[fechapago] [datetime] NULL,
[valorPago] [numeric] (10, 2) NOT NULL
) ON [PRIMARY]
GO
