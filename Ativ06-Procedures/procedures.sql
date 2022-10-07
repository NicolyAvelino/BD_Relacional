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

-- Item: 82
-- Nome: DepartamentoUpdate
-- Paramêtros de Entrada: @idDepto int, @NomeDepto varchar(15), @Gerente int, @Divisao varchar(10), @Local varchar(15)
-- Paramêtros de Saída: NULL
-- Descrição: Alterar os dados relativos ao @idDepto
ALTER PROCEDURE DepartamentoUpdate(
	@idDepto int, @NomeDepto varchar(15), @Gerente int, @Divisao varchar(10), @Local varchar(15)
)
AS



-- Item: 83
-- Nome: DepartamentoDelete
-- Paramêtros de Entrada: @idDepto int
-- Paramêtros de Saída: @TotalDepartamentos
-- Descrição: Excluir o departamento relativo ao @idDepto, e retornar o total de departamentos através de @TotalDepartamentos
CREATE PROCEDURE DepartamentoDelete(
    @idDepto int
)
AS  
    SELECT 
        idDepto,
        COUNT(*) AS TotalDepartamentos,
    FROM Empregado
    GROUP BY idDepto
    

-- Item: 84
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
    @Comissao decimal(10,2)
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

Execute EmpregadoInsert 1000, 'Carolina', 2000,'VENDAS', 2, 1500, 500

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
    

-- Item: 86
-- Nome: EmpregadoDelete
-- Paramêtros de Entrada: @IdEmpregado int
-- Paramêtros de Saída: @TotalEmpregados
-- Descrição: Excluir o empregado relativo ao @IdEmpregado, e retornar o total de empregados através de @TotalEmpregados


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

execute EmpregadoSelect