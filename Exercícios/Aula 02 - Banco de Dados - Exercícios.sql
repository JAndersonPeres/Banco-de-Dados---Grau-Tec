CREATE TABLE livros(
    id_livro INT PRIMARY KEY AUTO_INCREMENT,
    titulo VARCHAR(100) NOT NULL,
    autor VARCHAR(50),
    edicao INT
);

CREATE TABLE clientes(
    id_cliente INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(50) NOT NULL,
    fone VARCHAR(20) NOT NULL,
    email VARCHAR(50) NOT NULL,
    endereco VARCHAR(100) NOT NULL
);

CREATE TABLE retiradas(
    id_retirada INT PRIMARY KEY AUTO_INCREMENT,
    id_livro INT NOT NULL,
    id_cliente INT NOT NULL,
    dataRetirada DATE,
    dataDevolucao DATE NOT NULL,
    FOREIGN KEY (id_livro) REFERENCES livros(id_livro),
    FOREIGN KEY (id_cliente) REFERENCES clientes(id_cliente)
);

DESCRIBE livros;
DESCRIBE clientes;
DESCRIBE retiradas;