-- Exercícios crie as procedures conforme as específicações abaixo:
CREATE TABLE Departamento(
	idDepto int NOT NULL,
   	NomeDepto varchar(15) NOT NULL,
    Gerente int NOT NULL,
    Divisao varchar(10) NOT NULL,
    Local varchar(15) NOT NULL,
  	PRIMARY KEY (IdDepto)
)
CREATE TABLE Empregado(
    IdEmpregado int NOT NULL,
    NomeEmpregado varchar(20) NOT NULL,
    IdDepto int NULL,
    Cargo varchar(6) NOT NULL,
    Tempo_Emp int NULL,
    Salario decimal(10,2) NULL,
    Comissao decimal(10,2) NULL,
    PRIMARY KEY (IdEmpregado)
)
-- OK ==============================================================================
-- Item: 82
-- Nome: DepartamentoUpdate
-- Paramêtros de Entrada: @idDepto int, @NomeDepto varchar(15), @Gerente int, @Divisao varchar(10), @Local varchar(15)
-- Paramêtros de Saída: NULL
-- Descrição: Alterar os dados relativos ao @idDepto
CREATE PROCEDURE DepartamentoUpdate(
	@idDepto int, 
    @NomeDepto varchar(15), 
    @Gerente int, 
    @Divisao varchar(10), 
    @Local varchar(15)
)
AS
    UPDATE
        Departamento
    SET
        idDepto = @idDepto, 
        NomeDepto = @NomeDepto, 
        Gerente = @Gerente, 
        Divisao = @Divisao, 
        Local = @Local
    WHERE 
        idDepto = @idDepto

EXECUTE DepartamentoUpdate 2000, 'VENDAS', 1005,'SUL','SP'


INSERT INTO Departamento VALUES(2000, 'VENDAS', 1005,'NORTE','São Paulo')
INSERT INTO Departamento VALUES(2000, 'VENDAS', 1005,'NORTE','São Paulo')

-- OK ================================================================================
-- Item: 83  
-- Nome: DepartamentoDelete
-- Paramêtros de Entrada: @idDepto int
-- Paramêtros de Saída: @TotalDepartamentos
-- Descrição: Excluir o departamento relativo ao @idDepto, e retornar o total de departamentos através de @TotalDepartamentos
CREATE PROCEDURE DepartamentoDelete(
    @idDepto int,
    @TotalDepartamentos int OUTPUT
)
AS  
    DELETE 
        FROM DEPARTAMENTO
        WHERE idDepto = @idDepto

    SELECT @TotalDepartamentos = COUNT(*) FROM Departamento

DECLARE @TotalDepartamentos int
EXECUTE DepartamentoDelete 2003, @TotalDepartamentos OUTPUT
SELECT @TotalDepartamentos 'Total Departamentos'


-- Item: 84 OK ===================================================================
-- Nome: EmpregadoInsert
-- Paramêtros de Entrada: @IdEmpregado int, @NomeEmpregado varchar(20), @IdDepto int, @Cargo varchar(6), @Tempo_Emp int, @Salario decimal(10,2), @Comissao decimal(10,2)
-- Paramêtros de Saída: @TotalEmpregados
-- Descrição: Incluir um empregado, e retornar o total de empregados através de @TotalEmpregados
CREATE PROCEDURE EmpregadoInsert(
    @IdEmpregado int, 
    @NomeEmpregado varchar(20), 
    @IdDepto int, 
  	@Cargo varchar(6), 
    @Tempo_Emp int, 
  	@Salario decimal(10,2), 
    @Comissao decimal(10,2),
    @TotalEmpregados int OUTPUT
)
AS
    INSERT INTO Empregado(
        IdEmpregado,
        NomeEmpregado,
        IdDepto,
        Cargo,
        Tempo_Emp,
        Salario,
        Comissao
    )
    VALUES(
        @IdEmpregado,
        @NomeEmpregado,
        @IdDepto,
        @Cargo,
        @Tempo_Emp,
        @Salario,
        @Comissao
    )
    SELECT @TotalEmpregados = COUNT(*) FROM Empregado 

DECLARE @TotalEmpregados int 
EXECUTE EmpregadoInsert 1009, 'Leticia', 2000,'VENDAS', 3, 2500, 500, @TotalEmpregados output
SELECT @TotalEmpregados 'TotalEmpregados'

-- OK ==================================================================================
-- Item: 85
-- Nome: EmpregadoUpdate
-- Paramêtros de Entrada: @IdEmpregado int, @NomeEmpregado varchar(20), @IdDepto int, @Cargo varchar(6), @Tempo_Emp int, @Salario decimal(10,2), @Comissao decimal(10,2)
-- Paramêtros de Saída: NULL
-- Descrição: Alterar os dados relativos ao @IdEmpregado
CREATE PROCEDURE EmpregadoUpdate(
    @IdEmpregado int, 
    @NomeEmpregado varchar(20), 
    @IdDepto int, 
    @Cargo varchar(6), 
    @Tempo_Emp int, 
    @Salario decimal(10,2), 
    @Comissao decimal(10,2)
)
AS
    UPDATE
        Empregado
    SET 
        IdEmpregado  = @IdEmpregado,
        NomeEmpregado = @NomeEmpregado,
        IdDepto = @IdDepto,
        Cargo = @Cargo,
        Tempo_Emp = @Tempo_Emp,
        Salario = @Salario,
        Comissao = @Comissao
    WHERE
        IdEmpregado = @IdEmpregado

EXECUTE EmpregadoUpdate 1000, 'Carolina Silva', 2001, 'TI', 2, 2000, 1000

-- OK ======================================================================
-- Item: 86 
-- Nome: EmpregadoDelete
-- Paramêtros de Entrada: @IdEmpregado int
-- Paramêtros de Saída: @TotalEmpregados
-- Descrição: Excluir o empregado relativo ao @IdEmpregado, e retornar o total de empregados através de @TotalEmpregados
CREATE PROCEDURE EmpregadoDelete(
    @IdEmpregado int,
    @TotalEmpregados int OUTPUT
)
AS
    DELETE
        FROM Empregado
        WHERE IdEmpregado = @IdEmpregado

    SELECT @TotalEmpregados = COUNT(*) FROM EMPREGADO

DECLARE @TotalEmpregados int
EXECUTE EmpregadoDelete 1006, @TotalEmpregados OUTPUT
SELECT @TotalEmpregados 'Total Empregados'

-- OK =================================================================================
-- Item: 87 
-- Nome: EmpregadoSelect
-- Paramêtros de Entrada: NULL
-- Paramêtros de Saída: NULL
-- Descrição: Retornar todos os dados dados da tabela Empregado
CREATE PROCEDURE EmpregadoSelect
AS
    SELECT *
    FROM Empregado
GO

EXECUTE EmpregadoSelect