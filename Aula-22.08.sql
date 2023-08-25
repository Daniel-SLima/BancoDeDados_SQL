-- Comentario
# Comentario
-- Precisa do ; (Ponto e vírgula) no final de cada comando.

-- Criar um banco de dados
CREATE DATABASE Empresa;

-- Mostra banco de dados no computador.
SHOW DATABASES;

-- Usar, Selecionar um banco de dados.
USE Empresa;

-- Criar uma tabela com nome "Cliente".
CREATE TABLE Empresa.Cliente(
	Nome VARCHAR(255),
	Telefone VARCHAR(22),
	Email VARCHAR(255)
); 

INSERT INTO Empresa.Cliente(Nome,Telefone,Email)
VALUES ('Daniel','(71) 99534-5678','daniel@senai.com');

INSERT INTO Empresa.Cliente(Nome,Telefone,Email)
VALUES ('Paulo','(71) 96845-3218','paulo@senai.com');

INSERT INTO Empresa.Cliente(Nome,Telefone,Email)
VALUES ('Lucas','(21) 92145-3254','lucas@senai.com');

-- Selecionar/Mostrar os dados da tabela
SELECT Nome,Telefone,Email 
FROM Empresa.Clientes;

-- Atualizar um registro'
UPDATE Empresa.Cliente 
SET Nome = "Felipe";
-- WHERE

-- Apagar tabela Clientes
DROP TABLE Cliente;

CREATE TABLE Empresa.Clientes(
	Id INT NOT NULL,
    Nome VARCHAR(255) NOT NULL,
    Telefone VARCHAR(22) NOT NULL,
    Email VARCHAR(255) NOT NULL,
	PRIMARY KEY(Id)
);
INSERT INTO Empresa.Clientes(Id,Nome,Telefone,Email)
VALUES ('1','Daniel','(71) 99534-5678','daniel@senai.com');

INSERT INTO Empresa.Clientes(Id,Nome,Telefone,Email)
VALUES ('2','Paulo','(71) 96845-3218','paulo@senai.com');

INSERT INTO Empresa.Clientes(Id,Nome,Telefone,Email)
VALUES ('6','Pedro','(21) 92145-3254','lucas@senai.com');

SELECT Id,Nome,Telefone,Email 
FROM Empresa.Clientes;

DROP TABLE Empresa.Clientes;

#----------------------------------------------------------------------------------- AULA 2 --------------------------------------------------------------------------------------#
# Criando Banco de Dados
CREATE DATABASE Empresa2;

# Amostrando o banco de dados.
SHOW DATABASES;

# Acessando o banco de dados.
USE Empresa2;

# Criando Tabela.
CREATE TABLE Empresa2.Clientes(
	Id INT NOT NULL,
	Nome VARCHAR(255) NOT NULL,
    Tel VARCHAR(22) NOT NULL,
    Email VARCHAR(255) NOT NULL
);

# Inserindo registros na tabela.
INSERT INTO Empresa2.Clientes(Id,Nome,Tel,Email)
VALUES (1,"Daniel","(71)98765-4321","Daniel2@senai.com");

# Mostrar registros na tabela.
SELECT * FROM Empresa2.Clientes;

# Mostrar Nome e Email do cliente.
SELECT Email, Nome FROM Empresa2.Clientes;

INSERT INTO Empresa2.Clientes(Id,Nome,Tel,Email)
VALUES (1,"Daniel","(71)93216-5498","Daniel2@senai.com");

DROP TABLE Empresa2.Clientes;

CREATE TABLE Empresa2.Clientes(
	Id INT AUTO_INCREMENT,
	Nome VARCHAR(255) NOT NULL,
    Tel VARCHAR(22) NOT NULL,
    Email VARCHAR(255) NOT NULL,
	PRIMARY KEY(Id)
);

INSERT INTO Empresa2.Clientes(Nome,Tel,Email)
VALUES ("Daniel","(71)93216-5498","Daniel2@senai.com");

INSERT INTO Empresa2.Clientes(Nome,Tel,Email)
VALUES ("Daniel","(71)93216-5498","Daniel2@senai.com");

UPDATE Empresa2.Clientes
SET Email= "Danielatualizado@senai.com" WHERE ID = 2;

UPDATE Empresa2.Clientes
SET Email= "DanielMudanças@senai.com" WHERE ID = "3";


SELECT Id ,Nome, Email FROM Empresa2.Clientes;

# Apagando um registro completo
DELETE FROM Empresa2.clientes
WHERE ID = 2;

SELECT * FROM Empresa2.clientes;

#----------------------------------------------------- Atividade 22/08/2023 -------------------------------------------------------------------------#
CREATE DATABASE LIVRARIA;

USE LIVRARIA;

CREATE TABLE LIVRARIA.TABELA_LIVROS(
 ID INT AUTO_INCREMENT , 
 LIVRO VARCHAR(255) NOT NULL,
 AUTOR VARCHAR(255) NOT NULL,
 GENERO VARCHAR(10) NOT NULL,
 NUMERO_PAGINAS INT NOT NULL,
 EDITORA VARCHAR(255) NOT NULL,
 VALOR_CAPA FLOAT NOT NULL,
 VALOR_KINDLE FLOAT NOT NULL,
 ANO INT NOT NULL,
 PRIMARY KEY(ID)
);

DROP TABLE LIVRARIA.TABELA_LIVROS;


INSERT INTO LIVRARIA.TABELA_LIVROS(LIVRO, AUTOR, GENERO, NUMERO_PAGINAS, EDITORA, VALOR_CAPA, VALOR_KINDLE, ANO)
VALUES ("Lua azul", "Daniel Lima", "Masculino", 357, "Lua Azul", 47.50, 27.20, 2022);

SELECT * FROM LIVRARIA.TABELA_LIVROS;

UPDATE LIVRARIA.TABELA_LIVROS
SET EDITORA = "Universo Estrelado" WHERE ID = 1;

INSERT INTO LIVRARIA.TABELA_LIVROS(LIVRO, AUTOR, GENERO, NUMERO_PAGINAS, EDITORA, VALOR_CAPA, VALOR_KINDLE, ANO)
VALUES ("Pai Rico,Pai Pobre", "Robert T. Kiyosaki", "Masculino", 336, "Alta Books", 61.53, 58.45, 2018);

INSERT INTO LIVRARIA.TABELA_LIVROS(LIVRO, AUTOR, GENERO, NUMERO_PAGINAS, EDITORA, VALOR_CAPA, VALOR_KINDLE, ANO)
VALUES ("Mindset", "Carol S. Dweck", "Feminino", 312, "Objetiva", 38.99, 14.95, 2017);

INSERT INTO LIVRARIA.TABELA_LIVROS(LIVRO, AUTOR, GENERO, NUMERO_PAGINAS, EDITORA, VALOR_CAPA, VALOR_KINDLE, ANO)
VALUES ("Como fazer amigos e influenciar pessoas", "Dale Carnagie", "Masculino", 256, "Sextante", 38.99, 33.24, 2019);

INSERT INTO LIVRARIA.TABELA_LIVROS(LIVRO, AUTOR, GENERO, NUMERO_PAGINAS, EDITORA, VALOR_CAPA, VALOR_KINDLE, ANO)
VALUES ("A Cabana", "William P.Young", "Masculino", 240, "Arqueiro", 39.99, 17.90, 2008);

INSERT INTO LIVRARIA.TABELA_LIVROS(LIVRO, AUTOR, GENERO, NUMERO_PAGINAS, EDITORA, VALOR_CAPA, VALOR_KINDLE, ANO)
VALUES ("O Poder do Hábito", "Charles Duhigg", "Masculino", 408, "Objetiva", 42.99, 29.90, 2012);

INSERT INTO LIVRARIA.TABELA_LIVROS(LIVRO, AUTOR, GENERO, NUMERO_PAGINAS, EDITORA, VALOR_CAPA, VALOR_KINDLE, ANO)
VALUES ("Código Limpo", "Robet C. Martin", "Masculino", 425, "Alta Books", 91.99, 87.39, 2009);

INSERT INTO LIVRARIA.TABELA_LIVROS(LIVRO, AUTOR, GENERO, NUMERO_PAGINAS, EDITORA, VALOR_CAPA, VALOR_KINDLE, ANO)
VALUES ("Essencialismo", "Greg McKeown", "Masculino", 272, "Sextante", 53.58, 33.24, 2015);

INSERT INTO LIVRARIA.TABELA_LIVROS(LIVRO, AUTOR, GENERO, NUMERO_PAGINAS, EDITORA, VALOR_CAPA, VALOR_KINDLE, ANO)
VALUES ("Me Poupe!", "Nathalia Arcuri", "Feminino", 176, "Sextante", 32.86, 17.09, 2018);

INSERT INTO LIVRARIA.TABELA_LIVROS(LIVRO, AUTOR, GENERO, NUMERO_PAGINAS, EDITORA, VALOR_CAPA, VALOR_KINDLE, ANO)
VALUES ("Comece pelo Porquê", "Simon Sinek", "Masculino", 256, "Sextante", 50.58, 24.90, 2018);

INSERT INTO LIVRARIA.TABELA_LIVROS(LIVRO, AUTOR, GENERO, NUMERO_PAGINAS, EDITORA, VALOR_CAPA, VALOR_KINDLE, ANO)
VALUES ("O Alquimista", "Paulo Coelho", "Masculino", 206, "Paralela", 24.70, 14.70, 2017);

SELECT * FROM LIVRARIA.TABELA_LIVROS;




