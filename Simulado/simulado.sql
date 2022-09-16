-- Considere as tabelas EMPREGADO e DEPARTAMENTO conforme abaixo:
CREATE TABLE Departamento(
    IdDepto int NOT NULL,
    NomeDepto varchar(15)NOT NULL,
    Gerente int NOT NULL,
    Divisao varchar(10) NOT NULL,
    Local varchar(15) NOT NULL,
    PRIMARY KEY(IdDepto)
)
CREATE TABLE Empregado( 
    IdEmpregado int NOT NULL,
    NomeEmpregado varchar(20) NOT NULL,
    IdDepto int NOT NULL,
    Cargo varchar(6) NOT NULL,
    Tempo_Emp int   NULL,
    Salariodecimal(10,2) NULL,
    Comissaodecimal(10,2) NULL PRIMARY KEY(IdEmpregado)
)
-- 01.Explique o que é DML, DDL, DCL, DTL

-- 02.Faça o comando para criar uma chave estrangeira, entre as tabelas departamento eempregados.
-- 03.Lista Nome, departamento, salario e cargo dos Empregados com cargo GER esalário menor que 2.000.
-- 04.Lista Nome, Salário, comissão e remuneração total  (Salário + Comissão)de todos os empregados com salário maior que 2.000 ou comissão maior que 800. Apresenta o resultado classificado em ordem alfabética de nome.
-- 05.Lista o maior salário, o menor salário e a média dos salários de todosos Empregados.
-- 06.Lista o maior salário, o menor salário, a média dos salários e aquantidade dos Empregados com cargo GER ou VENDAS.
-- 07.Lista  o departamento, o maior salário, o menor salário, a média dossalários e a quantidade dos Empregados para cada departamento,considerando somente empregados com salário maior que 1.800
-- 08.Lista  o departamento, o maior salário, o menor salário, a média dossalários e a quantidade dos Empregados, apresentando somente departamentosque tenham pelo menos 5 empregados.
-- 09.Crie uma consulta que liste as colunas: NomeEmpregado e Salario databela Empregado. Crie as seguintes colunas calculadas:

-- Descrição: 10 % a mais do Salario
-- Formúla: Salario * 1.1
-- Alias: ‘Salário Mais 10%’

-- Descrição: 20 % a mais do Salario
-- Formúla: Salario * 1.2
-- Alias: ‘Salário Mais 20%’

-- Descrição: 10 % a menos do Salario
-- Formúla: Salario * 0.9
-- Alias: ‘Salário Menos 10%’

-- Descrição: 20 % a menos do Salario
-- Formúla: Salario * 0.8
-- Alias: ‘Salário Menos 20%’

-- 11.Explique a linha 4 da questão 10.
-- 12.Explique a linha 6 da questão 10.
-- 13.Explique a linha 9 da questão 10.
-- 14.Criar uma função
--     a.f_DiaSemanaExtenso (@dia int) RETURN varchar(20)
--     b.A função deve receber um valor inteiro (@dia)
--     c.E deve retornar o dia correspondente por extenso
--         i.Exemplo
--             1.1 = Dom
--             2.2 = Seg
--             3.3 = Ter
--         d.Se @dia < 1 ou > 7
--             i.Retornar “Dia Inválido!”
-- 15.Considerando um relacionamento binários 1:n, qual é a alternativapreferido para implementação no modelo físico?
-- 16.Considerando um relacionamento binários n:n, qual é a alternativapreferido para implementação no modelo físico?