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
CREATE FUNCTION f_MesExtenso2(@mes int)
RETURNS varchar(20)
AS
BEGIN
	DECLARE @mesExt varchar(20)
	IF(@mes < 1 or @mes > 12)
    	return 'Mês Inválido!'
  	iF @mes = 1
    	SET @mesExt = 'Janeiro'
    IF @mes = 2
    	SET @mesExt = 'Fevereiro'
    IF @mes = 3
    	SET @mesExt = 'Março'
    IF @mes = 4
    	SET @mesExt = 'Abril'
    IF @mes = 5
    	SET @mesExt = 'Maio'
    IF @mes = 6
    	SET @mesExt = 'Junho'
    IF @mes = 7
    	SET @mesExt = 'Julho'
    IF @mes = 8
    	SET @mesExt = 'Agosto'
    IF @mes = 9
    	SET @mesExt = 'Setembro'
    IF @mes = 10
    	SET @mesExt = 'Outubro'
    IF @mes = 11
    	SET @mesExt = 'Novembro'
    IF @mes = 12
    	SET @mesExt = 'Dezembro'
   	Return @mesExt 
END
-- testar a função
DECLARE @mes int
Set @mes = 8
SELECT dbo.f_MesExtenso2(@mes)

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
CREATE FUNCTION f_DiaSemanaExtenso(@dia int) 
RETURNS varchar(20)
AS
BEGIN 
	DECLARE @diaExt varchar(20)
	IF(@dia < 1 or @dia > 7)
    	return 'Dia Inválido!'
    IF @dia = 1
    	SET @diaExt = 'Domingo'
    IF @dia = 2
    	SEt @diaExt = 'Segunda-Feira'
    If @dia = 3
    	SET @diaExt = 'Terça-Feira'
    IF @dia = 4
    	SEt @diaExt = 'Quarta-feira'
    IF @dia = 5
    	SET @diaExt = 'Quinta-Feira'
    IF @dia = 6
    	Set @diaExt = 'Sexta-Feira'
    IF @dia = 7
    	SET @diaExt = 'Sábado'
    Return @diaExt
END
-- testar a função
DECLARE @dia INT
Set @dia = 6
SELECT dbo.f_DiaSemanaExtenso(@dia)
-- 77. Criar uma função
-- – f_ParImpar (@numero int) RETURN varchar(10)
-- – A função deve receber um valor inteiro (@numero)
-- – E deve retornar se o numero é “Par” ou “Ímpar”

-- criando a funcao com parametri numero
CREATE FUNCTION f_ParImpar(@numero int)
-- retornar tipo varchar
RETURNS varchar(10)
AS
BEGIN 
  -- criando if para verificacao de par ou impar
  IF(@numero % 2 = 0) 
  	return 'Par';
 	return 'Ímpar';
END
-- executar a função
DECLARE @numero int
SET @numero = 13
SELECT dbo.f_ParImpar(@numero)
    

-- 78. Criar uma função
-- – f_Percentual (@valor decimal(10,2), @perc decimal(5,2))
-- RETURN decimal(10,2)
-- – Receber dois parâmetros, sendo um valor e um percentual,
-- calcular o valor percentual relativo ao valor informado e
-- retornar esse valor
-- criando a funcao
CREATE FUNCTION f_Percentual(
  -- passando as variaveis por parametro
  @valor decimal(10,2), 
  @perc decimal(5,2)
)
-- valor a retornar
RETURNS decimal(10,2)
AS 
BEGIN
  -- calculo da função
	return @valor * @perc;
END
-- executar a funçao
DECLARE @valor decimal(10,2)
DECLARE @perc decimal(5,2)
SET @valor = 120
Set @perc = 2
SELECT dbo.f_Percentual(@valor, @perc)

-- 79. Criar uma função
-- - f_UltimoNome (@nome varchar(200) ) RETURN decimal(200)
-- – Receber um nome e retornar apenas o último nome
-- – Exemplo:
-- • João da Silva retornar o último nome Silva
-- • Maria Joaquina Santos retornar o último nome Santos

-- criar a função
CREATE FUNCTION f_UltimoNome(@nome varchar(200))
RETURNS varchar(200)
AS 
BEGIN
	return REVERSE(SUBSTRING(REVERSE(@nome), 0, CHARINDEX(' ', REVERSE(@nome)))) 
END
-- testar a função
DECLARE @nome varchar(200)
SET @nome = 'Maria Joaquina Santos'
SELECT dbo.f_UltimoNome(@nome)