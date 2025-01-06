CREATE DATABASE db_quitanda; -- Criando o Banco de dados

USE db_quitanda; -- usando o Banco de dados

-- Criando a tabela de produtos
CREATE TABLE tb_produtos(
	id BIGINT AUTO_INCREMENT NOT NULL,
    nome VARCHAR(255),
    quantidade INT,
    datavalidade DATE,
	preco DECIMAL(6,2) NOT NULL,
    PRIMARY KEY(id) -- podemos colocar direto na linha 
);
-- Inserindo valores na tabela de produtos
INSERT INTO tb_produtos(nome,quantidade,datavalidade,preco) VALUES ("tomate",100, "2023-12-15", 8.00);
INSERT INTO tb_produtos(nome, quantidade, datavalidade, preco) VALUES ("maçã",20, "2023-12-15", 5.00);
INSERT INTO tb_produtos(nome, quantidade, datavalidade, preco) VALUES ("laranja",50, "2023-12-15", 10.00);
INSERT INTO tb_produtos(nome, quantidade, datavalidade, preco) VALUES ("banana",200, "2023-12-15", 12.00);
INSERT INTO tb_produtos(nome, quantidade, datavalidade, preco) VALUES ("uva",1200, "2023-12-15", 30.00);
INSERT INTO tb_produtos(nome, quantidade, datavalidade, preco) VALUES ("pêra",500, "2023-12-15", 2.99);

-- Exibindo todos os dados da tabela
select * from tb_produtos;

-- Pesquisando de maneira especifica 
SELECT nome,preco from tb_produtos WHERE preco < 10;

SELECT id, nome, preco from tb_produtos WHERE id = 1 OR id =3 ; -- OR -- AND 

-- Alterando uma tabela 
ALTER TABLE tb_produtos MODIFY preco DECIMAL(6,2); 

-- Atualizando os dados da tabela
UPDATE tb_produtos SET preco = 2.99 WHERE preco = 3;

-- Deletando produtos como o ID=2
DELETE FROM tb_produtos WHERE Id = 2;
