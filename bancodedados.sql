create database cadastro; -- Cria um banco de dados;
drop database cadastro -- Exclui um banco de dados;

create table pessoas (
    nome varchar(30),
    idade varchar(3),
    sexo varchar(1),
    peso float,
    altura float,
    nacionalidade varchar(20) 
);