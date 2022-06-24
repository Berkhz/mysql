-- Criando o primeiro banco de dados
create database cadastro; -- Cria um banco de dados
drop database cadastro -- Exclui um banco de dados

create table pessoas ( -- Cria uma tabela no banco de dados
    nome varchar(30),
    idade varchar(3),
    sexo varchar(1),
    peso float,
    altura float,
    nacionalidade varchar(20) 
);

describe pessoas;

-- Melhorando a Estrutura do Banco de Dados
create database cadastro
default character set utf8 -- Constraint
default collate utf8_general_ci -- Collation 
