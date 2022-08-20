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
-- Escreva o comando SQL que execute o solicitado em cada questão abaixo:

-- 1. Lista Nome e salário de todos os Empregados.
-- 2. Lista Nome e Local de todos os Departamentos.
-- 3. Lista Nome, salário e comissão dos Empregados com salario maior que 
-- 1.800.b
-- 4. Lista Nome, divisão e Local dos Departamentos da divisão SUL. 
-- 5. Lista Nome, departamento, salario e cargo dos Empregados com cargo 
-- GER e salário menor que 2.000.
-- 6. Lista todos os dados dos Empregados com cargo ATEND ou salário entre 
-- 1.800 e 2.000.
-- 7. Lista Nome, Salário, comissão e remuneração total (Salário + 
-- Comissão) de todos os empregados. 
-- 8. Lista Nome, Salário, comissão e remuneração total (Salário + 
-- Comissão) de todos os empregados com salário maior que 2.000 ou comissão 
-- maior que 700.
-- 9. Lista Nome, Salário, comissão e remuneração total de todos os 
-- empregados com remuneração total menor que 1.800.
-- 10. Lista Nome e cargo dos Empregados que o nome comece com a letra D.
-- 11. Lista Nome e cargo dos Empregados que o nome tenha N como terceira 
-- letra.
-- 12. Lista Nome e cargo dos Empregados que o nome tenha N (maiúscula ou 
-- minúscula) como terceira letra
-- 13. Lista Nome, Salário, comissão e remuneração total (Salário + 
-- Comissão) de todos os empregados com salário maior que 2.000 ou comissão 
-- maior que 800. Apresenta o resultado classificado em ordem alfabética de 
-- nome.
-- 14. Lista Nome, Salário, comissão e remuneração total (Salário + 
-- Comissão) de todos os empregados com salário maior que 2.000 ou comissão 
-- maior que 800. Apresenta o resultado classificado em ordem crescente de 
-- salario.
-- 15. Lista Nome, Salário, comissão e remuneração total (Salário + 
-- Comissão) de todos os empregados com salário maior que 2.000 ou comissão 
-- maior que 800. Apresenta o resultado classificado em ordem decrescente de 
-- salario.
-- 16. Lista Nome, Salário, comissão e remuneração total (Salário + 
-- Comissão) de todos os empregados com salário maior que 2.000 ou comissão 
-- maior que 800. Apresenta o resultado classificado em ordem crescente de 
-- remuneração total
-- 17. Lista Nome, Salário, comissão e remuneração total de todos os 
-- empregados com salário maior que 2.000 ou comissão maior que 800. 
-- Apresenta o resultado classificado em ordem crescente de departamento e em 
-- cada departamento, em ordem decrescente de salario.
-- P
-- A
-- G
-- E 
-- 18. Lista o maior salário, o menor salário e a média dos salários de 
-- todos os Empregados.
-- 19. Lista o maior salário, o menor salário, a média dos salários e a 
-- quantidade dos Empregados com cargo GER ou VENDAS.
-- 20. Lista o cargo, o maior salário, o menor salário, a média dos 
-- salários e a quantidade dos Empregados para cada cargo
-- 21. Lista o departamento, o maior salário, o menor salário, a média dos 
-- salários e a quantidade dos Empregados para cada departamento
-- 22. Lista o departamento, o maior salário, o menor salário, a média dos 
-- salários e a quantidade dos Empregados para cada departamento, 
-- considerando somente empregados com salário maior que 1.800
-- 23. Lista o departamento, o cargo, o maior salário, o menor salário, a 
-- média dos salários e a quantidade dos Empregados para cada cargo dentro de 
-- cada departamento
-- 24. Lista o departamento, o maior salário, o menor salário, a média dos 
-- salários e a quantidade dos Empregados, apresentando somente departamentos 
-- que tenham pelo menos 5 empregados. 
-- 25. Lista o departamento, o maior salário, o menor salário, a média dos 
-- salários e a quantidade dos Empregados com salário maior que 1.400, 
-- apresentando somente departamentos que tenham pelo menos 3 empregados 
-- nessa condição.
-- 26. Lista todos os dados dos Empregados que não tem comissão (ausência de 
-- valor).
-- 27. Lista nome e salário dos empregados com salário menor que a média dos 
-- salários
-- 28. Lista os códigos de departamento que tenham empregados com salário 
-- maior que a média de todos os salários (sem repetir códigos de 
-- departamento).
-- 29. Lista nome e salário dos empregados que tenham o menor salário em seu 
-- departamento
-- 30. Lista quantos empregados em cada departamento tem salário maior que a 
-- média de todos os salários