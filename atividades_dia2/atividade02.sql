CREATE DATABASE db_pizzaria_legal;-- CRIANDO O BANCO

USE db_pizzaria_legal; -- USANDO O BANCO

-- CRIANDO A TABELA CATEGORIAS
CREATE TABLE tb_categorias (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome_categoria VARCHAR(200) NOT NULL,
    descricao_categoria TEXT NOT NULL
);
-- CRIANDO A TABELA DAS PIZZAS
CREATE TABLE tb_pizzas (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome_pizza VARCHAR(200) NOT NULL,
    descricao TEXT NOT NULL,
    preco DECIMAL(6,2) NOT NULL,
    tamanho VARCHAR(10) NOT NULL,
    id_categoria BIGINT,
    FOREIGN KEY (id_categoria) REFERENCES tb_categorias(id)
);
-- INSERINDO OS DADOS DAS CATEGORIAS
INSERT INTO tb_categorias (nome_categoria, descricao_categoria) VALUES ("Clássicas", "Pizzas tradicionais com ingredientes básicos.");
INSERT INTO tb_categorias (nome_categoria, descricao_categoria) VALUES ("Vegetarianas", "Pizzas sem carne, com diversos tipos de legumes e queijos.");
INSERT INTO tb_categorias (nome_categoria, descricao_categoria) VALUES ("Especiais", "Pizzas com combinações inusitadas e ingredientes especiais.");
INSERT INTO tb_categorias (nome_categoria, descricao_categoria) VALUES ("Doces", "Pizzas com sabores doces, perfeitas para a sobremesa.");
INSERT INTO tb_categorias (nome_categoria, descricao_categoria) VALUES ("Veganas", "Pizzas sem ingredientes de origem animal.");

-- INSERINDO OS DADOS DAS PIZZAS
INSERT INTO tb_pizzas (nome_pizza, descricao, preco, tamanho, id_categoria) VALUES ("Marguerita", "Molho de tomate, mussarela e manjericão.", 45.50, "Média", 1);
INSERT INTO tb_pizzas (nome_pizza, descricao, preco, tamanho, id_categoria) VALUES ("Portuguesa", "Molho de tomate, mussarela, presunto, cebola, ovo e azeitona.",53.00, "Grande", 1);
INSERT INTO tb_pizzas (nome_pizza, descricao, preco, tamanho, id_categoria) VALUES ("Calabresa", "Molho de tomate, mussarela e calabresa.", 40.00, "Média", 1);
INSERT INTO tb_pizzas (nome_pizza, descricao, preco, tamanho, id_categoria) VALUES ("Vegetariana", "Molho de tomate, mussarela, palmito, tomate seco e rúcula.", 50.00, "Grande", 2);
INSERT INTO tb_pizzas (nome_pizza, descricao, preco, tamanho, id_categoria) VALUES ("Quatro Queijos", "Molho de tomate, mussarela, gorgonzola, provolone e parmesão.", 56.00, "Grande", 2);
INSERT INTO tb_pizzas (nome_pizza, descricao, preco, tamanho, id_categoria) VALUES ("Frango com Catupiry", "Molho de tomate, mussarela, frango desfiado e catupiry.", 46.00, "Média", 1);
INSERT INTO tb_pizzas (nome_pizza, descricao, preco, tamanho, id_categoria) VALUES ("Nutella com Banana", "Recheio de Nutella e banana.", 35.00, "Pequena", 4);
INSERT INTO tb_pizzas (nome_pizza, descricao, preco, tamanho, id_categoria) VALUES ("Romeu e Julieta", "Recheio de goiabada e queijo.", 32.00, "Média", 4);

-- BUSCANDO PIZZAS COM O VALOR SUPERIOR A 45
SELECT * FROM tb_pizzas WHERE preco > 45.00;

-- BUSCANDO PIZZA QUE OS PREÇOS ESTÃO ENTRE 50 E 100 REAIS
SELECT * FROM tb_pizzas WHERE preco BETWEEN 50.00 AND 100.00;

-- BUSCANDO PIZZAS QUE TENHAM "M" NO NOME
SELECT * FROM tb_pizzas WHERE nome_pizza LIKE "%M%";

-- MESCLANDO A TABELA DE PIZZA E CATEGORIAS
SELECT nome_pizza, descricao, preco, tamanho, tb_categorias.nome_categoria 
FROM tb_pizzas INNER JOIN tb_categorias 
ON tb_pizzas.id_categoria = tb_categorias.id;

-- MESCLANDO AS TABELAS E TRAZENDO SOMENTE AS PIZZAS DA CATEGORIA "DOCE"
SELECT nome_pizza, descricao, preco, tamanho, tb_categorias.nome_categoria 
FROM tb_pizzas INNER JOIN tb_categorias 
ON tb_pizzas.id_categoria = tb_categorias.id WHERE tb_categorias.nome_categoria LIKE "%Doces%";

DROP DATABASE db_pizzaria_legal;  