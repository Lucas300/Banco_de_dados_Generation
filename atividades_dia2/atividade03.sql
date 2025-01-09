CREATE DATABASE db_farmacia_bem_estar; -- CRIANDO O BANCO

use db_farmacia_bem_estar; -- USANDO O BANCO

-- CRIANDO A TABELA DE CATEGORIAS
CREATE TABLE tb_categorias (
    id BIGINT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nome_categoria VARCHAR(50),
    descricao_categoria VARCHAR(255)
);

-- CRIANDO A TABELA DE PRODUTOS
CREATE TABLE tb_produtos(
	id BIGINT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	nome VARCHAR(50),
	preco DECIMAL(6,2) NOT NULL,
    descricao VARCHAR(255),
    quantidade INT,
	data_validade date,
    id_categoria BIGINT,
    FOREIGN KEY(id_categoria) REFERENCES tb_categorias(id)
);

-- INSERINDO OS DADOS DAS CATEGORIAS
INSERT INTO tb_categorias (descricao_categoria, nome_categoria) VALUES ('Medicamentos de Receita', 'Farmacia');
INSERT INTO tb_categorias (descricao_categoria, nome_categoria) VALUES  ('Medicamentos de Venda Livre', 'Farmacia');
INSERT INTO tb_categorias (descricao_categoria, nome_categoria) VALUES ('Produtos de Higiene Pessoal', 'Higiene');
INSERT INTO tb_categorias (descricao_categoria, nome_categoria) VALUES ('Produtos para Bebês', 'Infantil');

-- INSERINDO OS DADOS DOS PRODUTOS
INSERT INTO tb_produtos (nome, descricao, preco, quantidade, data_validade, id_categoria) VALUES ('Dipirona', 'Comprimido 500mg para dor de cabeça', 3.99, 200, '2024-12-31', 1);
INSERT INTO tb_produtos (nome, descricao, preco, quantidade, data_validade, id_categoria) VALUES ('Paracetamol', 'Comprimido 750mg para febre', 4.50, 150, '2025-01-15', 1);
INSERT INTO tb_produtos (nome, descricao, preco, quantidade, data_validade, id_categoria) VALUES ('Shampoo Anticaspa', 'Shampoo para cabelos oleosos', 12.90, 80, '2024-11-30', 3);
INSERT INTO tb_produtos (nome, descricao, preco, quantidade, data_validade, id_categoria) VALUES ('Fraldas Descartáveis P', 'Fraldas tamanho P', 39.90, 50, '2024-10-15', 4);
INSERT INTO tb_produtos (nome, descricao, preco, quantidade, data_validade, id_categoria) VALUES ('Leite em Pó', 'Leite infantil para recém-nascidos', 59.90, 30, '2024-12-01', 4);
INSERT INTO tb_produtos (nome, descricao, preco, quantidade, data_validade, id_categoria) VALUES ('Protetor Solar FPS 30', 'Protetor solar facial', 60.90, 100, '2025-06-30', 3);
INSERT INTO tb_produtos (nome, descricao, preco, quantidade, data_validade, id_categoria) VALUES ('Vitamina C', 'Comprimido efervescente', 19.90, 70, '2025-03-31', 2);
INSERT INTO tb_produtos (nome, descricao, preco, quantidade, data_validade, id_categoria) VALUES ('Antiácido', 'Comprimido para azia', 9.90, 120, '2025-02-28', 2);
INSERT INTO tb_produtos (nome, descricao, preco, quantidade, data_validade, id_categoria) VALUES ('Lenços Umedecidos', 'Lenços para bebê', 52.90, 90, '2024-11-15', 4);
INSERT INTO tb_produtos (nome, descricao, preco, quantidade, data_validade, id_categoria) VALUES ('Sabonete Líquido', 'Sabonete para corpo', 7.99, 150, '2025-01-31', 3);

-- SELECIONANDO OS PRODUTOS COM O PREÇO MAIOR QUE 50 REAIS
SELECT * FROM tb_produtos WHERE preco > 50.00;

-- SELECIONANDO OS PRODUTOS QUE TEM O PREÇO ENTRE 5 E 60 REAIS
SELECT * FROM tb_produtos WHERE preco BETWEEN 5.00 AND 60.00;

-- BUSCANDO PRODUTOS QUE TEM A LETRA "C" NO NOME
SELECT * FROM tb_produtos WHERE nome LIKE "%C%";

-- MESCLANDO AS DUAS TABELAS NA BUSCA
SELECT nome, descricao, data_validade ,preco, quantidade, tb_categorias.nome_categoria
FROM tb_produtos INNER JOIN tb_categorias 
ON tb_produtos.id_categoria = tb_categorias.id;

-- MESCLANDO AS TABELAS E TRAZENDO OS PRODUTOS QUE ESTÃO NA CATEGORIA "FARMACIA"
SELECT nome, descricao, data_validade ,preco, quantidade, tb_categorias.nome_categoria
FROM tb_produtos INNER JOIN tb_categorias 
ON tb_produtos.id_categoria = tb_categorias.id WHERE tb_categorias.nome_categoria LIKE "%Farmacia%";

drop database db_farmacia_bem_estar;