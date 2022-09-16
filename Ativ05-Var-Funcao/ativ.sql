-- 75. Criar uma função
-- – f_MesExtenso (@mes int) RETURN varchar(20)
-- – A função deve receber um valor inteiro (@mes)
-- – E deve retornar o mês correspondente por extenso
-- • Exemplo
-- ▪ 1 = Jan
-- ▪ 2 = Fev
-- ▪ 3 = Mar
-- – Se @mes < 1 ou > 12
-- • Retornar “Mês Inválido!”
CREATE FUNCTION f_MesExtenso(@mes int)
RETURNS varchar(20)
AS
BEGIN 
    if(@mes < 1 or @mes > 12)
        return “Mês Inválido!”
    

-- 76. Criar uma função
-- – f_DiaSemanaExtenso (@dia int) RETURN varchar(20)
-- – A função deve receber um valor inteiro (@dia)
-- – E deve retornar o dia correspondente por extenso
-- • Exemplo
-- ▪ 1 = Dom
-- ▪ 2 = Seg
-- ▪ 3 = Ter
-- – Se @dia < 1 ou > 7
-- • Retornar “Dia Inválido!”

-- 77. Criar uma função
-- – f_ParImpar (@numero int) RETURN varchar(10)
-- – A função deve receber um valor inteiro (@numero)
-- – E deve retornar se o numero é “Par” ou “Ímpar”
CREATE FUNCTION f_ParImpar(@numero int)
RETURNS varchar(10)
AS
BEGIN 
    if(@numero % 2 == 0)
        return “Par”
    return “Ímpar”
END
    

-- 78. Criar uma função
-- – f_Percentual (@valor decimal(10,2), @perc decimal(5,2))
-- RETURN decimal(10,2)
-- – Receber dois parâmetros, sendo um valor e um percentual,
-- calcular o valor percentual relativo ao valor informado e
-- retornar esse valor

-- 79. Criar uma função
-- - f_UltimoNome (@nome varchar(200) ) RETURN decimal(200)
-- – Receber um nome e retornar apenas o último nome
-- – Exemplo:
-- • João da Silva retornar o último nome Silva
-- • Maria Joaquina Santos retornar o último nome Santos
