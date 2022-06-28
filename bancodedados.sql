-- Criando o primeiro banco de dados
CREATE DATABASE cadastro; -- Cria um banco de dados
DROP DATABASE cadastro -- Exclui um banco de dados
USE cadastro; -- USA O CADASTRO ESPECIFICADO

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
    id INT NOT NULL AUTO_INCREMENT,
    nome VARCHAR(30) NOT NULL,
    nascimento DATE,
    sexo enum('M','F'),
    peso DECIMAL(5,2),
    altura DECIMAL(3,2),
    nacionalidade VARCHAR(20) DEFAULT 'Brasil',
    PRIMARY KEY (id)
)DEFAULT CHARSET  = utf8;

-- Inserindo Dados na Tabela
INSERT INTO pessoas 
(id,nome,nascimento,sexo,peso,altura,nacionalidade)
VALUES
('1', 'Florisvaldo', '1984-01-02', 'M', '78.5', '1.83', 'Brasil'); -- Opcional colocar o 1 quando estiver com o AUTO_INCREMENT
('Maria das Dores', '1990-05-28', 'F', '60.5', '1.67', 'Portugal');
('Brayan', '1987-04-17', 'M', '83.9', '1.83', 'EUA');

SELECT * FROM pessoas

-- Simplificando o INSERT
INSERT INTO pessoas VALUES 
('Valdenice', '1958-10-25', 'F', '51.3', '1.59', 'Venezuela');

SELECT * FROM pessoas
-- Adicionando mais de um campo na tabela , no final de cada um e no ultimo campo ;
INSERT INTO pessoas 
(id,nome,nascimento,sexo,peso,altura,nacionalidade)
VALUES
(DEFAULT, 'Ana', '2002-03-12', 'F', '77.7', '1.72', 'Inglaterra'),
(DEFAULT, 'Marcos', '1998-07-07', 'M', '91.9', '1.95', 'Espanha'),
(DEFAULT, 'Dolores', '1947-05-25', 'F', '60.4', '1.50', 'Brasil');

SELECT * FROM pessoas;

-- Alterando a Estrutura da Tabela (ALTER TABLE e DROP TABLE)
-- Adicionando uma nova Coluna
ALTER TABLE pessoas
ADD COLUMN profissao varchar(10);

-- Removendo uma Coluna
ALTER TABLE pessoas 
DROP COLUMN profissao;

-- Escolhendo a Posição da Coluna 
ALTER TABLE pessoas
ADD COLUMN profissao VARCHAR(10) AFTER nome;

ALTER TABLE pessoas
ADD COLUMN codigo INT FIRST;
-- Modificando Definições
ALTER TABLE pessoas
MODIFY COLUMN profissao VARCHAR(20);
-- Renomeando Coluna
ALTER TABLE pessoas
CHANGE COLUMN profissao prof VARCHAR(20);
-- Mais uma tabela
CREATE TABLE IF NOT EXISTS cursos (
    nome VARCHAR(30) NOT NULL UNIQUE,
    descricao TEXT,
    carga INT UNSIGNED,
    totaulas INT UNSIGNED,
    ano YEAR DEFAULT '2022'
) DEFAULT CHARSET = utf8;
-- Adicionando Chave Primária 
ALTER TABLE cursos
ADD COLUMN idcurso INT FIRST;

ALTER TABLE cursos
ADD PRIMARY KEY(idcurso);
-- Apagando a Tabela
DROP TABLE cursos;