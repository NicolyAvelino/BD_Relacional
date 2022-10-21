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
ON Movimentacao
AFTER INSERT 
AS
    IF(Movimentacao.TipoMov = 'E')
        UPDATE Movimentacao SET Produto.QtdeProduto = Produto.QtdeProduto + Movimentacao.QtdeMov
    IF(Movimentacao.TipoMov = 'S')
        UPDATE Movimentacao SET Produto.QtdeProduto = Produto.QtdeProduto - Movimentacao.QtdeMov

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
ALTER TRIGGER tr_AtualizaEstoque_I
ON Movimentacao
AFTER INSERT 
AS
    IF(Produto.PrecoUnitMinProduto > Movimentacao.PrecoUnitMov)
        Produto.PrecoUnitMinProduto = Movimentacao.PrecoUnitMov
    IF(Produto.PrecoUnitMaxProduto < Movimentacao.PrecoUnitMov)
        Produto.PrecoUnitMaxProduto = Movimentacao.PrecoUnitMov
    
    Produto.PrecoUnitMedProduto = (Produto.PrecoUnitMinProduto + Produto.PrecoUnitMaxProduto)/2

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
    IF(Movimentacao.TipoMov = 'E')
        Produto.QtdeProduto -= Movimentacao.QtdeMov
    IF(Movimentacao.TipoMov = 'S')
        Produto.QtdeProduto += Movimentacao.QtdeMov


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
AFTER UPDATE
AS
    IF(Movimentacao.TipoMov = 'E')
        Produto.QtdeProduto -= Movimentacao.QtdeMov
    IF(Movimentacao.TipoMov = 'S')
        Produto.QtdeProduto += Movimentacao.QtdeMov