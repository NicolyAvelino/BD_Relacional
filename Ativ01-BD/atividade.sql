-- Considere as tabelas EMPREGADO e DEPARTAMENTO conforme abaixo:
Departamento( 
    IdDeptoint NOT NULL,
    NomeDepto varchar(15)NOT NULL,
    Gerente int         NOT NULL,
    Divisao varchar(10) NOT NULL,
    Local varchar(15) NOT NULL,
    PRIMARY KEY (IdDepto)
)
    
Empregado(
    IdEmpregadoint NOT NULL,
    NomeEmpregado varchar(20) NOT NULL,
    IdDeptoint NOT NULL,
    Cargo varchar(6) NOT NULL,
    Tempo_Emp     int   NULL,
    Salario decimal(10,2) NULL,
    Comissao decimal(10,2) NULL
    PRIMARY KEY (IdEmpregado)
)
-- Feito no SQLiteStudio ================================================================================================

-- Escreva o comando SQL que execute o solicitado em cada questão abaixo:

-- 1. Lista Nome e salário de todos os Empregados.
select NomeEmpregado,Salario 
from Empregado;

-- 2. Lista Nome e Local de todos os Departamentos.
select NomeDepto, Local 
from Departamento;

-- 3. Lista Nome, salário e comissão dos Empregados com salario maior que 1.800.
select NomeEmpregado,Salario > 1.800,Comissao 
from Empregado; --verificar se não é melhor usar where ex 3 ==================================================

-- 4. Lista Nome, divisão e Local dos Departamentos da divisão SUL. 
select NomeDepto,Local,Divisao 
from Departamento 
where Divisao="SUL";

-- 5. Lista Nome, departamento, salario e cargo dos Empregados com cargo GER e salário menor que 2.000.
select NomeEmpregado,IdDepto,Salario,Cargo 
from Empregado 
where Cargo="GER" and Salario < 2000;

-- 6. Lista todos os dados dos Empregados com cargo ATEND ou salário entre 1.800 e 2.000.
select * 
from Empregado 
where (Cargo="ATEND") or (Salario >= 1800 and Salario <= 2000);

-- 7. Lista Nome, Salário, comissão e remuneração total (Salário +  Comissão) de todos os empregados. 
select NomeEmpregado,Salario,Comissao, Salario + Comissao As "Remuneracao Total" 
from Empregado;

-- 8. Lista Nome, Salário, comissão e remuneração total (Salário + Comissão) de todos os empregados com salário maior que 2.000 ou comissão maior que 700.
select NomeEmpregado,Salario,Comissao, Salario + Comissao As "Remuneracao Total" 
from Empregado 
where (Salario > 2000) or (Comissao > 700);

-- 9. Lista Nome, Salário, comissão e remuneração total de todos os empregados com remuneração total menor que 1.800.
select NomeEmpregado,Salario,Comissao, Salario + Comissao As "Remuneracao Total" 
from Empregado 
where (Salario + Comissao) < 1800;

-- 10. Lista Nome e cargo dos Empregados que o nome comece com a letra D.
select NomeEmpregado, Cargo 
from Empregado 
where NomeEmpregado Like "D%";

-- 11. Lista Nome e cargo dos Empregados que o nome tenha N como terceira letra.=========================================
select NomeEmpregado, Cargo 
from Empregado 
where NomeEmpregado Like "%N%";

-- 12. Lista Nome e cargo dos Empregados que o nome tenha N (maiúscula ou minúscula) como terceira letra
select NomeEmpregado, Cargo 
from Empregado 
where NomeEmpregado Like "%N%";

-- 13. Lista Nome, Salário, comissão e remuneração total (Salário +  Comissão) de todos os empregados com salário maior que 2.000 ou comissão maior que 800. Apresenta o resultado classificado em ordem alfabética de nome.
select NomeEmpregado,Salario,Comissao, Salario + Comissao As "Remuneracao Total" 
from Empregado 
where (Salario > 2000) or (Comissao > 800) 
order by NomeEmpregado;

-- 14. Lista Nome, Salário, comissão e remuneração total (Salário + Comissão) de todos os empregados com salário maior que 2.000 ou comissão maior que 800. Apresenta o resultado classificado em ordem crescente de  salario.
select NomeEmpregado,Salario,Comissao, Salario + Comissao As "Remuneracao Total" 
from Empregado 
where (Salario > 2000) or (Comissao > 800) 
order by Salario;

-- 15. Lista Nome, Salário, comissão e remuneração total (Salário + Comissão) de todos os empregados com salário maior que 2.000 ou comissão maior que 800. Apresenta o resultado classificado em ordem decrescente de salario.
select NomeEmpregado,Salario,Comissao, Salario + Comissao As "Remuneracao Total" 
from Empregado 
where (Salario > 2000) or (Comissao > 800) 
order by Salario desc;

-- 16. Lista Nome, Salário, comissão e remuneração total (Salário + Comissão) de todos os empregados com salário maior que 2.000 ou comissão maior que 800. Apresenta o resultado classificado em ordem crescente de remuneração total
select NomeEmpregado,Salario,Comissao, Salario + Comissao As "Remuneracao Total" 
from Empregado 
where (Salario > 2000) or (Comissao > 800) 
order by Salario + Comissao;

-- 17. Lista Nome, Salário, comissão e remuneração total de todos os empregados com salário maior que 2.000 ou comissão maior que 800. Apresenta o resultado classificado em ordem crescente de departamento e em cada departamento, em ordem decrescente de salario.
select NomeEmpregado,Salario,Comissao, Salario + Comissao As "Remuneracao Total" 
from Empregado 
where (Salario > 2000) or (Comissao > 800) 
order by IdDepto, Salario desc;

-- 18. Lista o maior salário, o menor salário e a média dos salários de todos os Empregados.
select Max(Salario) As MaiorSalario, Min(Salario) As MenorSalario, Avg(Salario) As MediaSalario
from Empregado;

-- 19. Lista o maior salário, o menor salário, a média dos salários e a quantidade dos Empregados com cargo GER ou VENDAS.
select Max(Salario) As MaiorSalario, Min(Salario) As MenorSalario, Avg(Salario) As MediaSalario, Count(Cargo) As QuantidadeEmpregados
from Empregado
where Cargo="GER" or Cargo="VENDAS";

-- 20. Lista o cargo, o maior salário, o menor salário, a média dos salários e a quantidade dos Empregados para cada cargo.
select Cargo, Max(Salario) As MaiorSalario, Min(Salario) As MenorSalario, Avg(Salario) As MediaSalario, Count(*) As QuantidadeEmpregados
from Empregado
group by Cargo;

-- 21. Lista o departamento, o maior salário, o menor salário, a média dos salários e a quantidade dos Empregados para cada departamento.
select IdDepto, Max(Salario) As MaiorSalario, Min(Salario) As MenorSalario, Avg(Salario) As MediaSalario, Count(*) As QuantidadeEmpregados
from Empregado
group by IdDepto;

-- 22. Lista o departamento, o maior salário, o menor salário, a média dos salários e a quantidade dos Empregados para cada departamento, considerando somente empregados com salário maior que 1.800
select IdDepto, Max(Salario) As MaiorSalario, Min(Salario) As MenorSalario, Avg(Salario) As MediaSalario, Count(*) As QuantidadeEmpregados
from Empregado
where Salario > 1800
group by IdDepto;

-- 23. Lista o departamento, o cargo, o maior salário, o menor salário, a média dos salários e a quantidade dos Empregados para cada cargo dentro de cada departamento.
select IdDepto,Cargo, Max(Salario) As MaiorSalario, Min(Salario) As MenorSalario, Avg(Salario) As MediaSalario, Count(*) As QuantidadeEmpregados
from Empregado
group by IdDepto;

-- 24. Lista o departamento, o maior salário, o menor salário, a média dos salários e a quantidade dos Empregados, apresentando somente departamentos que tenham pelo menos 5 empregados. 
select IdDepto, Max(Salario) As MaiorSalario, Min(Salario) As MenorSalario, Avg(Salario) As MediaSalario, Count(*) As QuantidadeEmpregados
from Empregado
group by IdDepto
having count(*)>=5;

-- 25. Lista o departamento, o maior salário, o menor salário, a média dos salários e a quantidade dos Empregados com salário maior que 1.400, apresentando somente departamentos que tenham pelo menos 3 empregados nessa condição.
select IdDepto, Max(Salario) As MaiorSalario, Min(Salario) As MenorSalario, Avg(Salario) As MediaSalario, Count(*) As QuantidadeEmpregados
from Empregado
where Salario > 1400
group by IdDepto
having count(*)>=3;

-- 26. Lista todos os dados dos Empregados que não tem comissão (ausência de valor).
select * 
from Empregado 
where Comissao is null;

-- 27. Lista nome e salário dos empregados com salário menor que a média dos salários.
select NomeEmpregado, Salario
from Empregado 
where Salario < (select Avg(Salario) from Empregado);

-- 28. Lista os códigos de departamento que tenham empregados com salário maior que a média de todos os salários (sem repetir códigos de departamento).
select distinct IdDepto, Salario
from Empregado 
where Salario > (select Avg(Salario) from Empregado);

-- 29. Lista nome e salário dos empregados que tenham o menor salário em seu departamento
select NomeEmpregado, Salario
from Empregado 
where Salario in (Select Min(Salario) from Empregado);

-- 30. Lista quantos empregados em cada departamento tem salário maior que a média de todos os salários
select count(*) as totalEmpregados, Salario
from Empregado 
where Salario > (select Avg(Salario) from Empregado)
group by IdDepto;