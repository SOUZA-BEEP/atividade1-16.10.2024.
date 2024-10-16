CREATE DATABASE hospital;
#foi criado uma base 
USE hospital;
#selecionei a base de dado hospital
CREATE TABLE IDPACIENTES (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    data_nascimento DATE NOT NULL
);
#uma base de pacientes
CREATE TABLE IDMEDICOS (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    especialidade VARCHAR(50)
);
  #consultas
CREATE TABLE IDCONSULTAS (
    id INT AUTO_INCREMENT PRIMARY KEY,
    paciente_id INT,
    medico_id INT,
    data_consulta DATE NOT NULL,
    
);
