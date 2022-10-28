CREATE TABLE [dbo].[Movimentacao](
	[idMov] [int] IDENTITY(1,1) NOT NULL,
	[idProduto] [int] NOT NULL,
	[DtMov] [date] NOT NULL,
	[QtdeMov] [int] NOT NULL,
	[PrecoUnitMov] [decimal](10, 2) NOT NULL,
	[TipoMov] [char](1) NOT NULL,
 CONSTRAINT [PK_Movimentacao] PRIMARY KEY CLUSTERED 
(
	[idMov] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

CREATE TABLE [dbo].[Produto](
	[idProduto] [int] IDENTITY(1,1) NOT NULL,
	[DscProduto] [varchar](255) NOT NULL,
	[QtdeIniProduto] [int] NULL,
	[QtdeProduto] [int] NOT NULL,
	[PrecoUnitProduto] [decimal](10, 2) NOT NULL,
	[QtdeMinEstProduto] [int] NULL,
	[QtdeMaxEstProduto] [int] NULL,
	[PrecoUnitMinProduto] [decimal](10, 2) NULL,
	[PrecoUnitMaxProduto] [decimal](10, 2) NULL,
	[PrecoUnitMedProduto] [decimal](10, 2) NULL,
 CONSTRAINT [PK_Produto] PRIMARY KEY CLUSTERED 
(
	[idProduto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

SET IDENTITY_INSERT [dbo].[Movimentacao] ON 
INSERT [dbo].[Movimentacao] ([idMov], [idProduto], [DtMov], [QtdeMov], [PrecoUnitMov], [TipoMov]) VALUES (2, 2, CAST(N'2020-06-06' AS Date), 54, CAST(5.49 AS Decimal(10, 2)), N'E')
INSERT [dbo].[Movimentacao] ([idMov], [idProduto], [DtMov], [QtdeMov], [PrecoUnitMov], [TipoMov]) VALUES (3, 3, CAST(N'2020-06-06' AS Date), 17, CAST(1.78 AS Decimal(10, 2)), N'E')
INSERT [dbo].[Movimentacao] ([idMov], [idProduto], [DtMov], [QtdeMov], [PrecoUnitMov], [TipoMov]) VALUES (4, 4, CAST(N'2020-06-06' AS Date), 22, CAST(2.29 AS Decimal(10, 2)), N'E')
INSERT [dbo].[Movimentacao] ([idMov], [idProduto], [DtMov], [QtdeMov], [PrecoUnitMov], [TipoMov]) VALUES (5, 5, CAST(N'2020-06-06' AS Date), 30, CAST(3.09 AS Decimal(10, 2)), N'E')
INSERT [dbo].[Movimentacao] ([idMov], [idProduto], [DtMov], [QtdeMov], [PrecoUnitMov], [TipoMov]) VALUES (6, 6, CAST(N'2020-06-06' AS Date), 29, CAST(2.99 AS Decimal(10, 2)), N'E')
INSERT [dbo].[Movimentacao] ([idMov], [idProduto], [DtMov], [QtdeMov], [PrecoUnitMov], [TipoMov]) VALUES (7, 7, CAST(N'2020-06-06' AS Date), 22, CAST(2.29 AS Decimal(10, 2)), N'E')
INSERT [dbo].[Movimentacao] ([idMov], [idProduto], [DtMov], [QtdeMov], [PrecoUnitMov], [TipoMov]) VALUES (8, 8, CAST(N'2020-06-06' AS Date), 54, CAST(5.49 AS Decimal(10, 2)), N'E')
INSERT [dbo].[Movimentacao] ([idMov], [idProduto], [DtMov], [QtdeMov], [PrecoUnitMov], [TipoMov]) VALUES (9, 9, CAST(N'2020-06-06' AS Date), 87, CAST(8.79 AS Decimal(10, 2)), N'E')
INSERT [dbo].[Movimentacao] ([idMov], [idProduto], [DtMov], [QtdeMov], [PrecoUnitMov], [TipoMov]) VALUES (10, 10, CAST(N'2020-06-06' AS Date), 65, CAST(6.59 AS Decimal(10, 2)), N'E')
INSERT [dbo].[Movimentacao] ([idMov], [idProduto], [DtMov], [QtdeMov], [PrecoUnitMov], [TipoMov]) VALUES (11, 11, CAST(N'2020-06-06' AS Date), 167, CAST(16.79 AS Decimal(10, 2)), N'E')

SET IDENTITY_INSERT [dbo].[Produto] ON 
INSERT [dbo].[Produto] ([idProduto], [DscProduto], [QtdeIniProduto], [QtdeProduto], [PrecoUnitProduto], [QtdeMinEstProduto], [QtdeMaxEstProduto], [PrecoUnitMinProduto], [PrecoUnitMaxProduto], [PrecoUnitMedProduto]) VALUES (1, N'Achocolatado - Nescau (400g/lata)', 43, 43, CAST(4.39 AS Decimal(10, 2)), 23, 86, CAST(4.39 AS Decimal(10, 2)), CAST(4.39 AS Decimal(10, 2)), CAST(4.39 AS Decimal(10, 2)))
INSERT [dbo].[Produto] ([idProduto], [DscProduto], [QtdeIniProduto], [QtdeProduto], [PrecoUnitProduto], [QtdeMinEstProduto], [QtdeMaxEstProduto], [PrecoUnitMinProduto], [PrecoUnitMaxProduto], [PrecoUnitMedProduto]) VALUES (2, N'Achocolatado - Toddy (400g/lata)', 54, 54, CAST(5.49 AS Decimal(10, 2)), 34, 108, CAST(5.49 AS Decimal(10, 2)), CAST(5.49 AS Decimal(10, 2)), CAST(5.49 AS Decimal(10, 2)))
INSERT [dbo].[Produto] ([idProduto], [DscProduto], [QtdeIniProduto], [QtdeProduto], [PrecoUnitProduto], [QtdeMinEstProduto], [QtdeMaxEstProduto], [PrecoUnitMinProduto], [PrecoUnitMaxProduto], [PrecoUnitMedProduto]) VALUES (3, N'Açúcar refinado (1kg) - Alto Alegre', 17, 17, CAST(1.78 AS Decimal(10, 2)), 20, 34, CAST(1.78 AS Decimal(10, 2)), CAST(1.78 AS Decimal(10, 2)), CAST(1.78 AS Decimal(10, 2)))
INSERT [dbo].[Produto] ([idProduto], [DscProduto], [QtdeIniProduto], [QtdeProduto], [PrecoUnitProduto], [QtdeMinEstProduto], [QtdeMaxEstProduto], [PrecoUnitMinProduto], [PrecoUnitMaxProduto], [PrecoUnitMedProduto]) VALUES (4, N'Açúcar refinado (1kg) - União', 22, 22, CAST(2.29 AS Decimal(10, 2)), 20, 44, CAST(2.29 AS Decimal(10, 2)), CAST(2.29 AS Decimal(10, 2)), CAST(2.29 AS Decimal(10, 2)))
INSERT [dbo].[Produto] ([idProduto], [DscProduto], [QtdeIniProduto], [QtdeProduto], [PrecoUnitProduto], [QtdeMinEstProduto], [QtdeMaxEstProduto], [PrecoUnitMinProduto], [PrecoUnitMaxProduto], [PrecoUnitMedProduto]) VALUES (5, N'Água sanitária - Q Boa (1l)', 30, 30, CAST(3.09 AS Decimal(10, 2)), 10, 60, CAST(3.09 AS Decimal(10, 2)), CAST(3.09 AS Decimal(10, 2)), CAST(3.09 AS Decimal(10, 2)))
INSERT [dbo].[Produto] ([idProduto], [DscProduto], [QtdeIniProduto], [QtdeProduto], [PrecoUnitProduto], [QtdeMinEstProduto], [QtdeMaxEstProduto], [PrecoUnitMinProduto], [PrecoUnitMaxProduto], [PrecoUnitMedProduto]) VALUES (6, N'Água sanitária - Ypê (1l)', 29, 29, CAST(2.99 AS Decimal(10, 2)), 20, 58, CAST(2.99 AS Decimal(10, 2)), CAST(2.99 AS Decimal(10, 2)), CAST(2.99 AS Decimal(10, 2)))
INSERT [dbo].[Produto] ([idProduto], [DscProduto], [QtdeIniProduto], [QtdeProduto], [PrecoUnitProduto], [QtdeMinEstProduto], [QtdeMaxEstProduto], [PrecoUnitMinProduto], [PrecoUnitMaxProduto], [PrecoUnitMedProduto]) VALUES (7, N'Alho (kg)', 22, 22, CAST(2.29 AS Decimal(10, 2)), 20, 44, CAST(2.29 AS Decimal(10, 2)), CAST(2.29 AS Decimal(10, 2)), CAST(2.29 AS Decimal(10, 2)))
INSERT [dbo].[Produto] ([idProduto], [DscProduto], [QtdeIniProduto], [QtdeProduto], [PrecoUnitProduto], [QtdeMinEstProduto], [QtdeMaxEstProduto], [PrecoUnitMinProduto], [PrecoUnitMaxProduto], [PrecoUnitMedProduto]) VALUES (8, N'Amaciante - Baby Soft 2L', 54, 54, CAST(5.49 AS Decimal(10, 2)), 34, 108, CAST(5.49 AS Decimal(10, 2)), CAST(5.49 AS Decimal(10, 2)), CAST(5.49 AS Decimal(10, 2)))
INSERT [dbo].[Produto] ([idProduto], [DscProduto], [QtdeIniProduto], [QtdeProduto], [PrecoUnitProduto], [QtdeMinEstProduto], [QtdeMaxEstProduto], [PrecoUnitMinProduto], [PrecoUnitMaxProduto], [PrecoUnitMedProduto]) VALUES (9, N'Amaciante concentrado - Comfort', 87, 87, CAST(8.79 AS Decimal(10, 2)), 67, 174, CAST(8.79 AS Decimal(10, 2)), CAST(8.79 AS Decimal(10, 2)), CAST(8.79 AS Decimal(10, 2)))


-- 90. Criar uma trigger de “Insert” para a tabela
-- "Movimentacao" chamada “tr_AtualizaEstoque_I”
-- ● Quando for incluida uma nova linha na tabela
-- “Movimentacao”
-- • Se Movimentacao.Tipo ='E'(entrada)
-- Então
-- Somar a Movimentacao.QtdeMov em Produto.QtdeProduto
-- Senão
-- Se Movimentacao.Tipo ='S' (saída)
-- Subtrair a Movimentacao.QtdeMov em
-- Produto.QtdeProduto
CREATE TRIGGER tr_AtualizaEstoque_I
ON dbo.Movimentacao
AFTER INSERT 
AS
BEGIN 
	DECLARE 
	@TipoMov char(1),
	@QtdeMov int,
    
	SELECT @TipoMov = TipoMov, @QtdeMov = QtdeMov From Inserted

    IF @TipoMov = 'E'
		UPDATE Produto 
		SET QtdeProduto = QtdeProduto + @QtdeMov

    IF @TipoMov = 'S'
		UPDATE Produto 
		SET QtdeProduto = QtdeProduto - @QtdeMov

-- 91. Alterar a trigger (“tr_AtualizaEstoque_I”) criada no
-- exercício anterior. Acrescentar a seguinte regra:
-- Se ( Produto.PrecoUnitMinProduto >
-- Movimentacao.PrecoUnitMov )
-- Então
-- Produto.PrecoUnitMinProduto =
-- Movimentacao.PrecoUnitMov
-- Se ( Produto.PrecoUnitMaxProduto <
-- Movimentacao.PrecoUnitMov )
-- Então
-- Produto.PrecoUnitMaxProduto =
-- Movimentacao.PrecoUnitMov
-- Calcular
-- Produto.PrecoUnitMedProduto =
-- (Produto.PrecoUnitMinProduto +
-- Produto.PrecoUnitMaxProduto)/2
ALTER CREATE TRIGGER tr_AtualizaEstoque_I
ON dbo.Movimentacao
AFTER INSERT 
AS
BEGIN 
	DECLARE 
	@TipoMov char(1),
	@QtdeMov int,
	@PrecoUnitMinProduto decimal(10,2),
	@PrecoUnitMaxProduto decimal(10,2),
	@PrecoUnitMov decimal(10,2)
    
	SELECT @TipoMov = TipoMov, @QtdeMov = QtdeMov, @PrecoUnitMinProduto = PrecoUnitMinProduto, @PrecoUnitMov = PrecoUnitMov From Inserted

    IF @TipoMov = 'E'
		UPDATE Produto 
		SET QtdeProduto = QtdeProduto + @QtdeMov

    IF @TipoMov = 'S'
		UPDATE Produto 
		SET QtdeProduto = QtdeProduto - @QtdeMov

    IF(@PrecoUnitMinProduto > @PrecoUnitMov)
		UPDATE Produto
		SET PrecoUnitMinProduto = @PrecoUnitMov
    IF(@PrecoUnitMaxProduto < @PrecoUnitMov)
        UPDATE Produto
		SET PrecoUnitMaxProduto = @PrecoUnitMov
    
    UPDATE Produto
	SET PrecoUnitMedProduto = (@PrecoUnitMinProduto + @PrecoUnitMaxProduto)/2

-- 92. Criar uma trigger de “Delete” para a tabela
-- "Movimentacao" chamada “tr_AtualizaEstoque_D”
-- – Quando for excluida uma linha na tabela
-- “Movimentacao”
-- • Se Movimentacao.Tipo ='E'(entrada)
-- Então
-- Subtrair a Movimentacao.QtdeMov em
-- Produto.QtdeProduto
-- Senão
-- Se Movimentacao.Tipo ='S' (saída)
-- Somar a Movimentacao.QtdeMov em
-- Produto.QtdeProduto

CREATE TRIGGER tr_AtualizaEstoque_D
ON Movimentacao
FOR DELETE 
AS
	DECLARE 
	@TipoMov char(1),
	@QtdeMov int,
    
	SELECT @TipoMov = TipoMov, @QtdeMov = QtdeMov From Inserted

    IF @TipoMov = 'E'
		UPDATE Produto 
		SET QtdeProduto = QtdeProduto - @QtdeMov

    IF @TipoMov = 'S'
		UPDATE Produto 
		SET QtdeProduto = QtdeProduto + @QtdeMov
	
	INSERT Movimentacao (idMov, DtMov, TipoMov,Operacao) SELECT idMov, DtMov=Getdate(), 'Deletado' From Deleted


-- 93. Criar uma trigger de “Update” para a tabela
-- "Movimentacao" chamada “tr_AtualizaEstoque_U”
-- – Quando for excluida uma linha na tabela
-- “Movimentacao”
-- • Se Movimentacao.Tipo ='E'(entrada)
-- Então
-- Subtrair a antiga Movimentacao.QtdeMov em
-- Produto.QtdeProduto
-- Somar a nova Movimentacao.QtdeMov em
-- Produto.QtdeProduto
-- Senão
-- Se Movimentacao.Tipo ='S' (saída)
-- Somar a antiga Movimentacao.QtdeMov antiga em
-- Produto.QtdeProduto
-- Subtrair a nova Movimentacao.QtdeMov em
-- Produto.QtdeProduto

CREATE TRIGGER tr_AtualizaEstoque_U
ON Movimentacao
FOR UPDATE
AS
    DECLARE 
	@TipoMov char(1),
	@QtdeMov int,
	@idMov int
    
	SELECT @TipoMov = TipoMov, @QtdeMov = QtdeMov, @idMov = idMov From Inserted

    IF @TipoMov = 'E'
		UPDATE Produto 
		SET QtdeProduto = QtdeProduto - @QtdeMov
		WHERE idMov = @idMov

    IF @TipoMov = 'S'
		UPDATE Produto 
		SET QtdeProduto = QtdeProduto + @QtdeMov
		WHERE idMov = @idMov