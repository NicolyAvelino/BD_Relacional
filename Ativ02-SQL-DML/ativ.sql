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
select Divisao || ' - ' || local As 'Divisão + Local'
from Departamento;

-- 36.Crie uma consulta que liste as colunas: NomeEmpregado e Salario da tabela Empregado. Crie as seguintes colunas calculadas:                        
-- valores null tranformar para 0
UPDATE Empregado
SET Salario = 0
WHERE Salario is NULL;

-- Descrição: 10% a mais do Salario   
-- Formúla: Salario * 1.1   
-- Alias: ‘Salário Mais 10%’
select NomeEmpregado, Salario, Salario * 1.1 As 'Salário Mais 10%'
from Empregado;


-- Descrição: 20% a mais do Salario   
-- Formúla: Salario * 1.2   
-- Alias: ‘Salário Mais 20%’
select NomeEmpregado, Salario, Salario * 1.2 As 'Salário Mais 20%'
from Empregado;

-- Descrição: 10% a menos do Salario  
-- Formúla: Salario * 0.9   
-- Alias: ‘Salário Menos 10%’
select NomeEmpregado, Salario, Salario * 0.9 As 'Salário Menos 10%'
from Empregado;

-- Descrição: 20% a menos do Salario  
-- Formúla: Salario * 0.8   
-- Alias: ‘Salário Menos 20%
select NomeEmpregado, Salario, Salario * 0.8 As 'Salário Menos 20%'
from Empregado;

-- 37.Crie uma consulta que liste as colunas: NomeEmpregado e Salario da tabela Empregado. Crie as seguintes colunas calculadas:
-- Descricao: Salario Total           
-- Formula: Salario + Comissao     
-- Alias: ‘Salário Total’
select NomeEmpregado, Salario, Salario + Comissao As 'Salário Total'
from Empregado;

-- Descricao: Salario Total Anual     
-- Formula: (Salario + Comissao) * 12      
-- Alias: ‘Salário Total Anual’
select NomeEmpregado, Salario, (Salario + Comissao) * 12 As 'Salário Total Anual'
from Empregado;

-- Descricao: Imposto de Renda ( 5 % do Salário Total)
-- Formula: (Salario + Comissao) * .05 
-- Alias: ‘Valor Desconto Imposto de Renda’
select NomeEmpregado, Salario, (Salario + Comissao) * .05 As 'Valor Desconto Imposto de Renda'
from Empregado;

-- Descricao: Desconto Plano de Saúde (2 % do Salário Total )
-- Formula: (Salario + Comissao) * .02 
-- Alias: ‘Valor Desconto Plano de Saúde’
select NomeEmpregado, Salario, (Salario + Comissao) * .02 As 'Valor Desconto Plano de Saúde'
from Empregado;

-- Descricao: Desconto Alimentação (1.5 % do Salário Total )
-- Formula: (Salario + Comissao) * .015 
-- Alias: ‘Valor Desconto Alimentação’
select NomeEmpregado, Salario, (Salario + Comissao) * .015 As 'Valor Desconto Alimentação'
from Empregado;

-- Descricao: Salário Liquido ( Salário Total – Soma dos Descontos)
-- Formula: (Salario + Comissao) - ((Salario + Comissao) * (.05 + .02 + .015))
-- Alias: ‘Salário Liquido’
select NomeEmpregado, Salario, (Salario + Comissao) - ((Salario + Comissao) * (.05 + .02 + .015)) As 'Salário Liquido'
from Empregado;

-- Descricao: Salário Diário 
-- Formula: Salario / 30 
-- Alias: ‘Salário Diário’
select NomeEmpregado, Salario,Salario / 30 As 'Salário Diário'
from Empregado;

-- Descricao: Salário por Hora 
-- Formula: Salario / 30 / 8 
-- Alias: ‘Salário por Hora’
select NomeEmpregado, Salario,Salario / 30 / 8 As 'Salário por Hora'
from Empregado;

-- Descricao: Salário por Minuto 
-- Formula: Salario / 30 / 8 / 60 
-- Alias: ‘Salário por Minuto’
select NomeEmpregado, Salario,Salario / 30 / 8 / 60 As 'Salário por Minuto'
from Empregado;

-- Descricao: Salário por Segundo 
-- Formula: Salario / 30 / 8 / 60 / 60 
-- Alias: ‘Salário por Segundo
select NomeEmpregado, Salario, Salario / 30 / 8 / 60 / 60 As 'Salário por Segundo'
from Empregado;
--Observação: Os valores NULOS devem ser tranformados em ZERO