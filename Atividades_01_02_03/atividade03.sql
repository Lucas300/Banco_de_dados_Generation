-- Criando o Banco de Dados
CREATE DATABASE db_escola;
-- Usando o Banco de dados
USE db_escola;

-- Criando a tabela de Alunos
CREATE TABLE tb_alunos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome_aluno VARCHAR(100) NOT NULL,
    idade INT NOT NULL,
    serie INT,
    turma CHAR NOT NULL,
    nota DECIMAL(10,1) NOT NULL	
);

-- Inserindo os 8 Alunos
INSERT INTO tb_alunos(nome_aluno,idade,serie,turma,nota) VALUES ("Lucas",15, 1 , 'B',7.1);
INSERT INTO tb_alunos(nome_aluno,idade,serie,turma,nota) VALUES ("Gustavo",17, 3 , 'A',6.9);
INSERT INTO tb_alunos(nome_aluno,idade,serie,turma,nota) VALUES ("Denner",16, 2 , 'C',8.1);
INSERT INTO tb_alunos(nome_aluno,idade,serie,turma,nota) VALUES ("Gabriel",14, 8 , 'A',6.4);
INSERT INTO tb_alunos(nome_aluno,idade,serie,turma,nota) VALUES ("Maria",15, 1 , 'B',8.4);
INSERT INTO tb_alunos(nome_aluno,idade,serie,turma,nota) VALUES ("João",16, 2 , 'B',6.1);
INSERT INTO tb_alunos(nome_aluno,idade,serie,turma,nota) VALUES ("Ana",17, 3 , 'B',4.4);
INSERT INTO tb_alunos(nome_aluno,idade,serie,turma,nota) VALUES ("Juliana",15, 1 , 'C',9.4);

-- Buscando os alunos com a nota maior que 7
SELECT * FROM tb_alunos WHERE nota > 7.0;
-- Buscando os alunos com a nota menor que 7
SELECT * FROM tb_alunos WHERE nota < 7.0;

-- Atualizando a nota do Gustavo - Ele fez um trabalho para complementar a nota
UPDATE tb_alunos SET nota = 7.1 WHERE id = 2;
