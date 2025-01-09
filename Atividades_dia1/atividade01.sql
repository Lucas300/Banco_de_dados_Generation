
-- Criando o banco de dados
CREATE DATABASE db_rh;

-- Usando o banco de dados
USE db_rh;

-- Criando a tabela de colaboradores
CREATE TABLE tb_colaboradores (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    cargo VARCHAR(50) NOT NULL,
    salario DECIMAL(10,2),
    email VARCHAR(100) NOT NULL,
    departamento VARCHAR(100)
);

-- Inserindo os 5 Registros
INSERT INTO tb_colaboradores(nome,cargo,salario,email,departamento) VALUES ("Lucas Daniel","Desenvolvedor junior", 4000.00, "ludaniel.sd@gmail.com","TI");
INSERT INTO tb_colaboradores(nome,cargo,salario,email,departamento) VALUES ("Gustavo","Suporte de TI", 1990.00, "gustavo@gmail.com","TI");
INSERT INTO tb_colaboradores(nome,cargo,salario,email,departamento) VALUES ("Denner","Desenvolvedor pleno", 7000.00, "Denner.anime@gmail.com","TI");
INSERT INTO tb_colaboradores(nome,cargo,salario,email,departamento) VALUES ("Amanda","Analista de RH", 2500.00, "amanda.rock@gmail.com","RH");
INSERT INTO tb_colaboradores(nome,cargo,salario,email,departamento) VALUES ("João","QA", 1900.00, "joao_martin@gmail.com","TI");

-- Buscando os colaboradores que ganham mais que 2000 
SELECT * FROM tb_colaboradores where salario > 2000.00;

-- Buscando os colaboradores que ganham menos que 2000
SELECT * FROM tb_colaboradores where salario < 2000.00;

-- Atualizando um registro (Dando um Aumento para amanda)
UPDATE tb_colaboradores SET salario = 2850.00 WHERE id = 4;

