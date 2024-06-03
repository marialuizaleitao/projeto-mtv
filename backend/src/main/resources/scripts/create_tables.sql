CREATE DATABASE QUEIMAS_BANCO;
USE QUEIMAS_BANCO;
 
CREATE TABLE CLIENTE (
    ID_CLIENTE INT NOT NULL AUTO_INCREMENT,
    NOME VARCHAR(255) NOT NULL,
    CPF CHAR(11) NOT NULL,
    TELEFONE VARCHAR(15),
    CONSTRAINT CLIENTE_PK PRIMARY KEY (ID_CLIENTE)
);
 
CREATE TABLE PECA (
    ID_PECA INT NOT NULL AUTO_INCREMENT,
    TAMANHO VARCHAR(50) NOT NULL,
    TIPO_PECA VARCHAR(50) NOT NULL,
    ID_CLIENTE INT NOT NULL,
    ESTAGIO VARCHAR(50) NOT NULL,
    VALOR_TOTAL DECIMAL(5 , 2 ),
    CONSTRAINT PECA_PK PRIMARY KEY (ID_PECA),
    CONSTRAINT CLIENTE_PK FOREIGN KEY (ID_CLIENTE)
        REFERENCES CLIENTE (ID_CLIENTE)
);
 
CREATE TABLE QUEIMA (
    ID_QUEIMA INT NOT NULL AUTO_INCREMENT,
    DATA_QUEIMA DATE NOT NULL,
    TIPO_QUEIMA VARCHAR(50) NOT NULL,
    TEMPERATURA_ALCANCADA INT NOT NULL,
    ID_PECA INT NOT NULL,
    FORNO VARCHAR(50) NOT NULL,
    PRECO_QUEIMA DECIMAL(5 , 2 ) NOT NULL,
    CONSTRAINT QUEIMA_PK PRIMARY KEY (ID_QUEIMA),
    CONSTRAINT QUEIMA_PK FOREIGN KEY (ID_PECA)
        REFERENCES PECA (ID_PECA)
);