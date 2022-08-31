-- Considere as tabelas EMPREGADO e DEPARTAMENTO conforme abaixo:
Departamento
( 
    IdDepto integer NOT NULL,
    NomeDepto varchar(15) NOT NULL,
    Gerente integer NOT NULL,
    Divisao varchar(10) NOT NULL,
    Local varchar(15) NOT NULL,
    PRIMARY KEY (IdDepto)
)
Empregado
(
    IdEmpregado integer NOT NULL,
    NomeEmpregado varchar(20) NOT NULL,
    IdDepto integer NOT NULL,
    Cargo varchar(6) NOT NULL,
    Tempo_Emp integer NULL,
    Salario decimal(10,2) NULL,
    Comissao decimal(10,2) NULL,
    PRIMARY KEY (IdEmpregado)
)
-- Escreva o comando SQL que execute o solicitado em cada questão abaixo:

-- 33.Listar a coluna Divisao da tabela Departamento.
select Divisao
from Departamento;

-- 34.Listar a coluna Divisao da tabela Departamento, porém mostre somente linhas distintas (sem repetição).
select distinct Divisao
from Departamento;

-- 35.Crie uma cosulta que faça a concatenação entre as colunas Divisao e Local da tabela Departamento, para separar as colunas utilize ‘ – ‘. Crie o um alias para coluna ‘Divisão + Local‘
select Divisao + '-' + local As 'Divisão + Local'
from Departamento;

-- 36.Crie uma consulta que liste as colunas: NomeEmpregado e Salario da tabela Empregado. Crie as seguintes colunas calculadas
-- Descrição               Formúla          Alias
-- 10% a mais do Salario   Salario * 1.1   ‘Salário Mais 10%’
-- 20% a mais do Salario   Salario * 1.2   ‘Salário Mais 20%’
-- 10% a menos do Salario  Salario * 0.9   ‘Salário Menos 10%’
-- 20% a menos do Salario  Salario * 0.8   ‘Salário Menos 20%
select NomeEmpregado, Salario
from Empregado;
-- 37.Crie uma consulta que liste as colunas: NomeEmpregado e Salario da tabela Empregado. Crie as seguintes colunas calculadas:
-- Descricao: Salario Total           
-- Formula: Salario + Comissao     
-- Alias: ‘Salário Total’

-- Descricao: Salario Total Anual     
-- Formula: (Salario + Comissao) * 12      
-- Alias: ‘Salário Total Anual’

-- Descricao: Imposto de Renda ( 5 % do Salário Total)
-- Formula: (Salario + Comissao) * .05 
-- Alias: ‘Valor Desconto Imposto de Renda’

-- Descricao: Desconto Plano de Saúde (2 % do Salário Total )
-- Formula: (Salario + Comissao) * .02 
-- Alias: ‘Valor Desconto Plano de Saúde’

-- Descricao: Desconto Alimentação (1.5 % do Salário Total )
-- Formula: (Salario + Comissao) * .015 
-- Alias: ‘Valor Desconto Alimentação’

-- Descricao: Salário Liquido ( Salário Total – Soma dos Descontos)
-- Formula: (Salario + Comissao) - ((Salario + Comissao) * (.05 + .02 + .015))
-- Alias: ‘Salário Liquido’

-- Descricao: Salário Diário 
-- Formula: Salario / 30 
-- Alias: ‘Salário Diário’

-- Descricao: Salário por Hora 
-- Formula: Salario / 30 / 8 
-- Alias: ‘Salário por Hora’

-- Descricao: Salário por Minuto 
-- Formula: Salario / 30 / 8 / 60 
-- Alias: ‘Salário por Minuto’

-- Descricao: Salário por Segundo 
-- Formula: Salario / 30 / 8 / 60 / 60 
-- Alias: ‘Salário por Segundo
--Observação: Os valores NULOS devem ser tranformados em ZERO