CREATE TABLE enderecos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    codigo_postal VARCHAR(10) NOT NULL,
    nome VARCHAR(100) NOT NULL,
    INDEX (codigo_postal, nome)
);

INSERT INTO enderecos (codigo_postal, nome) VALUES 
(1000, 'Lisboa'),
(4150, 'Porto');
