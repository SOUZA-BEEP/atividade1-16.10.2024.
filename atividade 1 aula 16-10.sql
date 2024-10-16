
CREATE DATABASE brasil;

USE brasil;

CREATE TABLE cidades (
    codigo_postal VARCHAR(10) PRIMARY key,
    nome VARCHAR(100) not null,
    estado VARCHAR(50) not null,
    INDEX idx_nome (nome)
);
