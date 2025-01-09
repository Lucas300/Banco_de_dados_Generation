
-- Criando o banco de dados
CREATE DATABASE db_ecommerce;

-- Usando o banco de dados
USE db_ecommerce;

-- Criando a tabela de produtos
CREATE TABLE tb_produtos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome_produto VARCHAR(100) NOT NULL,
    descricao VARCHAR(100) NOT NULL,
    preco DECIMAL(10,2) NOT NULL,
    categoria VARCHAR(50),
    cor VARCHAR(20)
);
-- Inserindo os 5 Registros
INSERT INTO tb_produtos(nome_produto,descricao,preco,categoria,cor) VALUES ("Headset","Fone com microfone imersivo para gamers", 800.00, "PERIFERICOS GAMERS","AZUL");
INSERT INTO tb_produtos(nome_produto,descricao,preco,categoria,cor) VALUES ("Mouse","Mouse sem fio para gamer", 350.00, "PERIFERICOS GAMERS","VERMELHO");
INSERT INTO tb_produtos(nome_produto,descricao,preco,categoria,cor) VALUES ("Teclado","Teclado mecanico para gamers", 550.00, "PERIFERICOS GAMERS","PRETO");
INSERT INTO tb_produtos(nome_produto,descricao,preco,categoria,cor) VALUES ("Energetico Monster","Energetico bom para gamers e e-girls", 15.00, "BEBIDAS GAMERS","LARANJA");
INSERT INTO tb_produtos(nome_produto,descricao,preco,categoria,cor) VALUES ("WebCam","Melhore suas transmissoes",150.00, "HOMEOFFICE","PRETO");

-- buscando produtos com o preço maior que 500
SELECT * FROM tb_produtos WHERE preco > 500;
-- buscando produtos com o preço menor que 500
SELECT * FROM tb_produtos WHERE preco < 500;

-- Atualizando o preço da webcam - Aumentando em 10%
UPDATE  tb_produtos SET preco = 165.00 where id=5;
