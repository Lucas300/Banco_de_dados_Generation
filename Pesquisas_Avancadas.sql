drop database db_quitanda; -- apaga a tabela

CREATE DATABASE db_quitanda;

USE db_quitanda;

CREATE TABLE tb_categorias(
	id bigint AUTO_INCREMENT PRIMARY KEY,
	descricao VARCHAR(255) NOT NULL
);

CREATE TABLE tb_produtos(
    id BIGINT AUTO_INCREMENT,
	nome VARCHAR(255) NOT NULL,
	quantidade INT,
    datavalidade DATE,
	preco DECIMAL(6,2) NOT NULL,
    PRIMARY KEY (id),
    id_categoria BIGINT,
    FOREIGN KEY (id_categoria) REFERENCES tb_categorias(id)
);
-- Inserindo os dados das categorias
INSERT INTO tb_categorias (descricao)
VALUES ("Frutas");

INSERT INTO tb_categorias (descricao)
VALUES ("Verduras");

INSERT INTO tb_categorias (descricao)
VALUES ("Legumes");

INSERT INTO tb_categorias (descricao)
VALUES ("Temperos");

INSERT INTO tb_categorias (descricao)
VALUES ("Ovos");

INSERT INTO tb_categorias (descricao)
VALUES ('Outros');

-- Inserindo os dados dos produtos 
INSERT INTO tb_produtos(nome, quantidade, datavalidade, preco,id_categoria) 
values ("tomate",100, "2023-12-15", 8.00,1);

INSERT INTO tb_produtos(nome, quantidade, datavalidade, preco,id_categoria) 
values ("maçã",20, "2023-12-15", 5.00,1);
INSERT INTO tb_produtos(nome, quantidade, datavalidade, preco,id_categoria) 
values ("laranja",50, "2023-12-15", 10.00,1);
INSERT INTO tb_produtos(nome, quantidade, datavalidade, preco,id_categoria) 
values ("banana",200, "2023-12-15", 12.00,1);
INSERT INTO tb_produtos(nome, quantidade, datavalidade, preco,id_categoria) 
values ("uva",1200, "2023-12-15", 30.00,1);
INSERT INTO tb_produtos(nome, quantidade, datavalidade, preco,id_categoria) 
values ("pêra",500, "2023-12-15", 2.99,1);

INSERT INTO tb_produtos (nome, quantidade, datavalidade, preco, id_categoria)
VALUES ("Batata doce", 2000, "2022-03-09", 10.00, 3);

INSERT INTO tb_produtos (nome, quantidade, datavalidade, preco, id_categoria)
VALUES ("Alface", 300, "2022-03-10", 7.00, 2);

INSERT INTO tb_produtos (nome, quantidade, datavalidade, preco, id_categoria)
VALUES ("Cebola", 1020, "2022-03-08", 5.00, 3);

INSERT INTO tb_produtos (nome, quantidade, datavalidade, preco, id_categoria)
VALUES("Ovo Branco", 1000, "2022-03-07", 15.00, 5);

INSERT INTO tb_produtos (nome, quantidade, datavalidade, preco, id_categoria)
VALUES("Agrião", 1500, "2022-03-06", 3.00, 2);

INSERT INTO tb_produtos (nome, quantidade, datavalidade, preco, id_categoria)
VALUES("Cenoura", 1800, "2022-03-09", 3.50, 3);

INSERT INTO tb_produtos (nome, quantidade, datavalidade, preco, id_categoria)
VALUES ("Pimenta", 1100, "2022-03-15", 10.00, 4);

INSERT INTO tb_produtos (nome, quantidade, datavalidade, preco, id_categoria)
VALUES ("Alecrim", 130, "2022-03-10", 5.00, 4);

INSERT INTO tb_produtos (nome, quantidade, datavalidade, preco, id_categoria)
VALUES ("Manga", 200, "2022-03-07", 5.49, 1);

INSERT INTO tb_produtos (nome, quantidade, datavalidade, preco, id_categoria)
VALUES ("Couve", 100, "2022-03-12", 1.50, 2);

INSERT INTO tb_produtos (nome, quantidade, datavalidade, preco, id_categoria)
VALUES("Rabanete", 1200, "2022-03-15", 13.00, 3);

INSERT INTO tb_produtos (nome, quantidade, datavalidade, preco, id_categoria)
VALUES ("Grapefruit", 3000, "2022-03-13", 50.00, 1);

INSERT INTO tb_produtos (nome, quantidade, preco)
VALUES("Sacola Cinza", 1118, 0.50);

INSERT INTO tb_produtos (nome, quantidade, preco)
VALUES("Sacola Verde", 1118, 0.50);

-- cosultas
select * from tb_produtos;
select * from tb_categorias;
-- buscando por ordem alfabetica , ou crescente 
SELECT * FROM tb_produtos ORDER BY nome ASC;
-- Buscando de Z a A , ou decrescente
SELECT * FROM tb_produtos ORDER BY nome DESC;
-- Buscando dados com valores especificos
SELECT * FROM tb_produtos WHERE preco IN (5.00, 10.00, 15.00);
-- Buscando dentro de um intervalo
SELECT * FROM tb_produtos WHERE preco BETWEEN 5.00 AND 15.00;

SELECT * FROM tb_produtos WHERE nome LIKE "%ra%"; -- Busca todos os itens que contem "ra" na palavra (independete se for no começo da palavra, no meio ou no final)
SELECT * FROM tb_produtos WHERE nome LIKE "ra%"; -- Busca todos os itens que começam com a as letras "ra"
SELECT * FROM tb_produtos WHERE nome LIKE "%ra"; -- Busca todos os itens que terminam com a as letras "ra"

-- INNER JOIN -- busca os dados que tem em comum nas duas tabelas
SELECT nome, preco, quantidade, tb_categorias.descricao
FROM tb_produtos INNER JOIN tb_categorias 
ON tb_produtos.id_categoria = tb_categorias.id;
-- Buscam todos os registros da tabela do lado esquerdo da relação
SELECT nome, preco, quantidade, tb_categorias.descricao
FROM tb_produtos LEFT JOIN tb_categorias 
ON tb_produtos.id_categoria = tb_categorias.id;
-- todos os registros da tabela do lado direito da relação
SELECT nome, preco, quantidade, tb_categorias.descricao
FROM tb_produtos RIGHT JOIN tb_categorias 
ON tb_produtos.id_categoria = tb_categorias.id;