CREATE DATABASE cars;

USE cars;

CREATE TABLE modelo (
    codmod INT PRIMARY KEY,
    carro VARCHAR(10) NOT NULL,
    bmw VARCHAR(10) NOT NULL
);

CREATE TABLE clientes (
    nif INT PRIMARY KEY,
    nom VARCHAR(20) NOT NULL,
    dtnasc DATE NOT NULL,
    telefone VARCHAR(15),
    email VARCHAR(50),
    endereco VARCHAR(100),
    sexo CHAR(1)
);

CREATE TABLE veiculo (
    matricula VARCHAR(8) PRIMARY KEY,
    modelo_codmod INT NOT NULL,
    clientes_nif INT NOT NULL,
    cor VARCHAR(10),
    FOREIGN KEY (modelo_codmod) REFERENCES modelo(codmod),
    FOREIGN KEY (clientes_nif) REFERENCES clientes(nif)
);

CREATE TABLE estacionamento (
    num INT PRIMARY KEY,
    piso INT NOT NULL,
    capacidade INT NOT NULL,
    localizacao VARCHAR(50),
    tipo VARCHAR(20),
    horario_abertura TIME,
    horario_fechamento TIME
);

CREATE TABLE estaciona (
    cod INT PRIMARY KEY,
    estacionamento_num INT NOT NULL,
    veiculo_matricula VARCHAR(8) NOT NULL,
    dataentrada DATE NOT NULL,
    datasaida DATE,
    horaentrada TIME NOT NULL,
    horasaida TIME,
    FOREIGN KEY (estacionamento_num) REFERENCES estacionamento(num),
    FOREIGN KEY (veiculo_matricula) REFERENCES veiculo(matricula)
);

INSERT INTO modelo (codmod, carro, bmw) 
VALUES (1, 'Series 3', 'BMW'), 
       (2, 'Civic', 'Honda'), 
       (3, 'A4', 'Audi');

INSERT INTO clientes (nif, nom, dtnasc, telefone, email, endereco, sexo) 
VALUES (123456789, 'João Silva', '1990-05-10', '912345678', 'joao@gmail.com', 'Rua A, 123', 'M'), 
       (987654321, 'Maria Santos', '1985-03-22', '911234567', 'maria@gmail.com', 'Rua B, 456', 'F');

INSERT INTO estacionamento (num, piso, capacidade, localizacao, tipo, horario_abertura, horario_fechamento) 
VALUES (1, 0, 50, 'Centro Comercial', 'Subterrâneo', '08:00:00', '22:00:00'), 
       (2, 1, 100, 'Shopping Norte', 'Superfície', '07:00:00', '23:00:00');

INSERT INTO veiculo (matricula, modelo_codmod, clientes_nif, cor) 
VALUES ('AA1234BB', 1, 123456789, 'Preto'), 
       ('CC5678DD', 2, 987654321, 'Branco');

INSERT INTO estaciona (cod, estacionamento_num, veiculo_matricula, dataentrada, datasaida, horaentrada, horasaida) 
VALUES (1, 1, 'AA1234BB', '2024-11-27', '2024-11-27', '09:00:00', '12:00:00'), 
       (2, 2, 'CC5678DD', '2024-11-27', '2024-11-27', '14:00:00', '16:00:00');


SELECT veiculo.matricula, cliente.nome
FROM veiculo
JOIN cliente ON veiculo.cliente_NIF = cliente.NIF;

#B
SELECT cliente.NIF, cliente.nome
FROM veiculo
JOIN cliente ON veiculo.cliente_NIF = cliente.NIF
WHERE veiculo.matricula = '21-FC-41';

#C
SELECT veiculo.matricula
FROM estaciona
JOIN veiculo ON estaciona.veiculo_matricula = veiculo.matricula
WHERE estaciona.cod = 1;

#D
SELECT veiculo.matricula, YEAR(estaciona.dataentrada) AS year
FROM estaciona
JOIN veiculo ON estaciona.veiculo_matricula = veiculo.matricula
WHERE estaciona.cod = 1;

#E
SELECT estaciona.dataentrada, estaciona.datasaida
FROM estaciona
WHERE estaciona.veiculo_matricula = '70-20-ZH';

#F
SELECT cliente.nome
FROM veiculo
JOIN cliente ON veiculo.cliente_NIF = cliente.NIF
WHERE veiculo.modelo_codmod = 1;

#G
SELECT estaciona.veiculo_matricula, estaciona.horaentrada, estaciona.horasaida
FROM estaciona
WHERE veiculo_matricula LIKE '%S%';

#H
SELECT cliente.nome
FROM estaciona
JOIN veiculo ON estaciona.veiculo_matricula = veiculo.matricula
JOIN cliente ON veiculo.cliente_NIF = cliente.NIF
WHERE estaciona.estacionamento_num = 2;