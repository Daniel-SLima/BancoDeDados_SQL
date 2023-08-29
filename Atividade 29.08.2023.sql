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

#--- Atividade 29/08/2023 ----#
#1 - Trazer o nome do livro, autor e valor Kindle somente de livros com valores menores que R$ 40,00;
SELECT LIVRO, AUTOR, VALOR_KINDLE FROM LIVRARIA.TABELA_LIVROS WHERE VALOR_KINDLE < 40;

#2 - Trazer o nome do livro e autor onde o ano de publicação seja maior que 2017, a editora seja Sextante e o sexo do autor seja feminino;
SELECT LIVRO, AUTOR FROM LIVRARIA.TABELA_LIVROS WHERE ANO > 2017 AND EDITORA = "Sextante" AND GENERO = "Feminino";

#3 - Trazer o nome do livro e editora de livros com mais de 200 página;
SELECT LIVRO, EDITORA FROM LIVRARIA.TABELA_LIVROS WHERE NUMERO_PAGINAS > 200;

#4 -  Trazer o nome do livro, número de páginas do livro e autores que começam com a letra "C";
SELECT LIVRO, NUMERO_PAGINAS, AUTOR FROM LIVRARIA.TABELA_LIVROS WHERE AUTOR LIKE 'C%'; 

#5 - Trazer o nome do autor, editora e ano de publicação dos livros que tenham autores do sexo masculino e tenham sido publicados pela editora Alta Books;
SELECT AUTOR, EDITORA, ANO FROM LIVRARIA.TABELA_LIVROS WHERE GENERO = "Masculino" and EDITORA = "Alta Books";

#6 - Trazer o nome do livro, do autor, número de páginas, editora, ano de publicação e valor com capa comum com valores acima de R$ 50,00;
SELECT LIVRO, AUTOR, NUMERO_PAGINAS, EDITORA, ANO, VALOR_CAPA FROM LIVRARIA.TABELA_LIVROS WHERE VALOR_CAPA > 50;

#7 - Trazer o nome do livro, editora e valor capa comum onde o nome do autor comece com Nathalia;
SELECT LIVRO, EDITORA, VALOR_CAPA FROM LIVRARIA.TABELA_LIVROS WHERE AUTOR LIKE "Nathalia%";

#8 - Trazer o nome do livro, autor, número de páginas dos livros publicados até 2017;
SELECT LIVRO, AUTOR, NUMERO_PAGINAS FROM LIVRARIA.TABELA_LIVROS WHERE ANO <= 2017;

#9 - Trazer o nome dos autores com livros publicados pela editora Sextante com mais de 200 páginas;
SELECT AUTOR FROM LIVRARIA.TABELA_LIVROS WHERE EDITORA = "Sextante" AND NUMERO_PAGINAS > 200;

#10 - Trazer o nome do livro, autores, valor com capa comum com valor maior que R$ 30,00 na editora Sextante;
SELECT LIVRO, AUTOR, VALOR_CAPA FROM LIVRARIA.TABELA_LIVROS WHERE VALOR_CAPA > 30 AND EDITORA = 'Sextante';