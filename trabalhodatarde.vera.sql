CREATE DATABASE EMPRESA;

USE EMPRESA;


CREATE TABLE FUNCIONARIOS (
    id_funcionario INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50),
    cargo VARCHAR(50),
    data_admissao DATE
);


CREATE TABLE CLIENTES (
    id_cliente INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50),
    morada VARCHAR(40),
    contato VARCHAR(15),
    id_funcionario INT,
    FOREIGN KEY(id_funcionario) REFERENCES FUNCIONARIOS(id_funcionario)
);
-- Inserir dados na tabela FUNCIONARIOS
INSERT INTO FUNCIONARIOS (nome, cargo, data_admissao) 
VALUES 
    ('João Silva', 'Gerente', '2015-06-10'),
    ('Maria Oliveira', 'Assistente Administrativo', '2018-09-15'),
    ('Carlos Pereira', 'Vendedor', '2020-02-20'),
    ('Ana Costa', 'Analista de Sistemas', '2019-11-01'),
    ('Felipe Souza', 'Coordenador de Marketing', '2017-04-25');


INSERT INTO CLIENTES (nome, morada, contato, id_funcionario) 
VALUES 
    ('Lara Costa', 'Avenida da Liberdade, Lisboa', '911234567', 1),
    ('Carlos Andrade', 'Rua São Bento, Porto', '912345678', 2),
    ('Fernanda Martins', 'Rua da Alegria, Braga', '913456789', 3),
    ('Rita Pereira', 'Praça do Comércio, Lisboa', '914567890', 4),
    ('Pedro Almeida', 'Rua da Liberdade, Coimbra', '915678901', 5);
    
SELECT * FROM FUNCIONARIOS;


SELECT * FROM CLIENTES;
 
 SELECT FUNCIONARIOS.NOME
FROM FUNCIONARIOS
INNER JOIN CLIENTES
ON FUNCIONARIOS.id_funcionario = CLIENTES.id_funcionario;
SELECT FUNCIONARIOS.NOME
FROM FUNCIONARIOS
INNER JOIN CLIENTES
ON FUNCIONARIOS.id_funcionario = CLIENTES.id_funcionario;
SELECT FUNCIONARIOS.NOME
FROM FUNCIONARIOS
INNER JOIN CLIENTES
ON FUNCIONARIOS.id_funcionario = CLIENTES.id_funcionario;

SELECT * 
FROM FUNCIONARIOS
INNER JOIN CLIENTES 
ON FUNCIONARIOS.id_funcionario = CLIENTES.id_funcionario;

