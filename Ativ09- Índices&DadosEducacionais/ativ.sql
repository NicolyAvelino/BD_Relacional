-- PASSOS:
-- A. Importar dados do site do INEP – Censo da Educação Superior – ano base 2021
-- https://www.gov.br/inep/pt-br/acesso-a-informacao/dados-abertos/microdados/censo-da-educacao-superior

-- B. Importar os dados da cidade, cuja primeira letra seja igual a primeira letra do seu nome. Exemplo: Marcos = cidade Manaus que tem o nome início pelo primeira letra do seu nome.

-- C. Utilizar o Excel para gerar o Script, utilizando a função concatenar do Excel, filtrar apenas a cidade pesquisada
-- Exemplo: =CONCATENAR("insert aluno (municipio, qt_matricula) values ('";G3113;"',";BT3113;")")

-- D. Criar uma tabela com os dados
-- ESTRUTURA
-- UF
-- CIDADE
-- QT_MATRICULA

-- D. Criar um índice para o nome da cidade

-- E. Apresentar a estrutura da tabela

-- G. Qual a quantidade de linhas

-- H. Qual o total de alunos matriculados para sua cidade

-- comando excel
=CONCATENAR("insert aluno(sg_uf, no_municipio, qt_matricula) values('";A400995;"','";B400995;"',";C400995;")")
insert aluno(sg_uf, no_municipio, qt_matricula) values('RS','Não-Me-Toque',6)

-- 106. Comando SQL para criação da estrutura da tabela.
CREATE TABLE aluno(
	sg_uf char(2),
  	no_municipio varchar(100),
  	qt_matricula int
)
insert aluno(sg_uf, no_municipio, qt_matricula) values('RS','Não-Me-Toque',6)
insert aluno(sg_uf, no_municipio, qt_matricula) values('RS','Não-Me-Toque',3)
insert aluno(sg_uf, no_municipio, qt_matricula) values('RS','Não-Me-Toque',2)
insert aluno(sg_uf, no_municipio, qt_matricula) values('RS','Não-Me-Toque',1)
insert aluno(sg_uf, no_municipio, qt_matricula) values('RS','Não-Me-Toque',4)
insert aluno(sg_uf, no_municipio, qt_matricula) values('RS','Não-Me-Toque',2)
insert aluno(sg_uf, no_municipio, qt_matricula) values('RS','Não-Me-Toque',1)
insert aluno(sg_uf, no_municipio, qt_matricula) values('RS','Não-Me-Toque',1)
insert aluno(sg_uf, no_municipio, qt_matricula) values('RS','Não-Me-Toque',2)
insert aluno(sg_uf, no_municipio, qt_matricula) values('RS','Não-Me-Toque',6)
insert aluno(sg_uf, no_municipio, qt_matricula) values('RS','Não-Me-Toque',68)
insert aluno(sg_uf, no_municipio, qt_matricula) values('RS','Não-Me-Toque',10)
insert aluno(sg_uf, no_municipio, qt_matricula) values('RS','Não-Me-Toque',20)
insert aluno(sg_uf, no_municipio, qt_matricula) values('RS','Não-Me-Toque',15)
insert aluno(sg_uf, no_municipio, qt_matricula) values('RS','Não-Me-Toque',5)
insert aluno(sg_uf, no_municipio, qt_matricula) values('RS','Não-Me-Toque',5)
insert aluno(sg_uf, no_municipio, qt_matricula) values('RS','Não-Me-Toque',12)
insert aluno(sg_uf, no_municipio, qt_matricula) values('RS','Não-Me-Toque',16)
insert aluno(sg_uf, no_municipio, qt_matricula) values('RS','Não-Me-Toque',11)
insert aluno(sg_uf, no_municipio, qt_matricula) values('RS','Não-Me-Toque',1)
insert aluno(sg_uf, no_municipio, qt_matricula) values('RS','Não-Me-Toque',24)
insert aluno(sg_uf, no_municipio, qt_matricula) values('RS','Não-Me-Toque',7)
insert aluno(sg_uf, no_municipio, qt_matricula) values('RS','Não-Me-Toque',2)
insert aluno(sg_uf, no_municipio, qt_matricula) values('RS','Não-Me-Toque',4)
insert aluno(sg_uf, no_municipio, qt_matricula) values('RS','Não-Me-Toque',14)
insert aluno(sg_uf, no_municipio, qt_matricula) values('RS','Não-Me-Toque',3)
insert aluno(sg_uf, no_municipio, qt_matricula) values('RS','Não-Me-Toque',65)
insert aluno(sg_uf, no_municipio, qt_matricula) values('RS','Não-Me-Toque',46)
insert aluno(sg_uf, no_municipio, qt_matricula) values('RS','Não-Me-Toque',5)
insert aluno(sg_uf, no_municipio, qt_matricula) values('RS','Não-Me-Toque',2)
insert aluno(sg_uf, no_municipio, qt_matricula) values('RS','Não-Me-Toque',25)
insert aluno(sg_uf, no_municipio, qt_matricula) values('RS','Não-Me-Toque',4)
insert aluno(sg_uf, no_municipio, qt_matricula) values('RS','Não-Me-Toque',1)
insert aluno(sg_uf, no_municipio, qt_matricula) values('RS','Não-Me-Toque',1)
insert aluno(sg_uf, no_municipio, qt_matricula) values('RS','Não-Me-Toque',2)
insert aluno(sg_uf, no_municipio, qt_matricula) values('RS','Não-Me-Toque',1)

-- 107. Comando SQL para criação do índice.
CREATE INDEX idx_aluno ON aluno(sg_uf, no_municipio, qt_matricula)

-- 108. Comando SQL para trazer a quantidade de alunos.
SELECT COUNT(*) AS 'Quantidade de Alunos' FROM aluno -- resposta 36

-- 109. Nome da Cidade e da UF pesquisada.
-- Cidade Não-Me-Toque RS

-- 110. Quantidade de linhas da cidade pesquisada?
SELECT COUNT(*) FROM aluno -- resposta 36

-- 111. Quantidade de alunos matriculados da cidade pesquisada?
SELECT no_municipio, SUM(qt_matricula) AS 'Quantidade de Alunos' 
FROM aluno 
GROUP BY no_municipio -- resposta 397