CREATE DATABASE cinema;

USE cinema;

CREATE TABLE categoria_cinema (
    id_categoria INT PRIMARY KEY,
    nome_categoria VARCHAR(40),
    descricao TEXT,
    data_criacao DATE
);

CREATE TABLE sports (
    id_cinema INT PRIMARY KEY,
    nome_cinema VARCHAR(40),
    categoria_id INT,
    ano_lancamento YEAR,
    diretor VARCHAR(40),
    FOREIGN KEY (categoria_id) REFERENCES categoria_cinema(id_categoria)
);

CREATE TABLE drama (
    id_cinema INT PRIMARY KEY,
    nome_cinema VARCHAR(40),
    categoria_id INT,
    ano_lancamento YEAR,
    diretor VARCHAR(40),
    FOREIGN KEY (categoria_id) REFERENCES categoria_cinema(id_categoria)
);

#ercersio 1 
select filme.nome
from filme
left join categoria
on categoria.id_categoria = filme.id_filme
where categoria