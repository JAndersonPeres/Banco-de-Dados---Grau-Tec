CREATE DATABASE loja_eletronicos;
USE loja_eletronicos;

CREATE TABLE produtos(
	id INT PRIMARY KEY AUTO_INCREMENT,
    nome_produto VARCHAR(50) NOT NULL,
    marca VARCHAR(30),
    preco DECIMAL(10,2) NOT NULL
);

DESCRIBE produtos;

INSERT INTO produtos(nome_produto,marca,preco) VALUES
('Mouse','Dell',89.50),
('Teclado',null,29.90),
('Monitor','Samsung',518.00);

SELECT * FROM produtos;

CREATE TABLE funcionarios(
	id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(50) NOT NULL,
    cargo VARCHAR(20) NOT NULL
);

INSERT INTO funcionarios(nome,cargo) VALUES
('Carlos Eduardo','Supervisor'),
('Marcos','Operador'),
('Paulo Silva','Operador'),
('Antônio José','Serviços Gerais'),
('Pedro Marcos','Operador de Máquina');

SELECT * FROM funcionarios;

UPDATE funcionarios SET cargo = 'Gerente' WHERE id=1;
DELETE FROM funcionarios WHERE id=5;
SELECT nome AS NOME, cargo AS CARGO FROM funcionarios;

CREATE TABLE catalogo_filmes(nome VARCHAR(10) PRIMARY KEY);

DROP TABLE catalogo_filmes;

CREATE TABLE catalogo_filmes(
	id INT PRIMARY KEY AUTO_INCREMENT,
    titulo VARCHAR(50) NOT NULL,
    ano_lancamento INT NOT NULL
);

INSERT INTO catalogo_filmes(titulo,ano_lancamento) VALUES
('O Auto da Compadecida',2000),
('Harry Potter e a Pedra Filosofal',2001),
('Harry Potter e a Câmara Secreta',2002),
('Harry Potter e o Prisioneiro de Azkaban',2004),
('Harry Potter e o Cálice de Fogo',2005),
('Harry Potter e a Ordem da Fênix',2007),
('Harry Potter e o Enigma do Príncipe',2009),
('Harry Potter e as Relíquias da Morte - Parte 1',2010),
('Harry Potter e as Relíquias da Morte - Parte 2',2011),
('Náufrago',2000),
('Todo Mundo em Pânico',2000);

SELECT * FROM catalogo_filmes WHERE ano_lancamento=2000;