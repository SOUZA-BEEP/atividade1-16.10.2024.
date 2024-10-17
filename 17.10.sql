CREATE DATABASE IF NOT EXISTS ARMAZENA;

USE ARMAZENA;

CREATE TABLE IF NOT EXISTS vendas (

    id_nif INT NOT NULL,
    
    id_item INT NOT NULL AUTO_INCREMENT,
    
    cod_prod VARCHAR(50) NULL,
    
    valor_unit DECIMAL(10, 2) NULL,
    
    quantidade INT NULL,
    
    desconto DECIMAL(5, 2) NULL,
    
    PRIMARY KEY (id_item)
);
