-- Criando o primeiro banco de dados
CREATE DATABASE cadastro; -- Cria um banco de dados
DROP DATABASE cadastro -- Exclui um banco de dados

CREATE TABLE pessoas ( -- Cria uma tabela no banco de dados
    nome VARCHAR(30), -- VARCHAR = texto de comprimento variável (CHAR = texto de comprimento fixo)
    idade VARCHAR(3),
    sexo VARCHAR(1),
    peso FLOAT,
    altura FLOAT,
    nacionalidade VARCHAR(20) 
);

describe TABLE; 

-- Melhorando a Estrutura do Banco de Dados
CREATE DATABASE cadastro
DEFAULT CHARACTER SET utf8 -- Constraint
DEFAULT COLLATE utf8_general_ci -- Collation 

CREATE TABLE pessoas (
    nome VARCHAR(30) NOT NULL,
    nascimento DATE,
    sexo enum('M','F'),
    peso DECIMAL(5,2),
    altura DECIMAL(3,2),
    nacionalidade VARCHAR(20) DEFAULT 'Brasil'
)DEFAULT CHARSET  = utf8;