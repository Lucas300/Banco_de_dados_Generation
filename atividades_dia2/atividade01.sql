CREATE DATABASE db_generation_game_online; -- CRIANDO O BANCO

USE db_generation_game_online;  -- USANDO O BANCO

-- CRIANDO A TABELA DOS PERSONAGENS
CREATE TABLE  tb_personagens( 
	id bigint AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    idade INT,
    raca VARCHAR(100),
    arma VARCHAR(100),
    poder int,
    id_classes BIGINT,
    FOREIGN KEY (id_classes) REFERENCES tb_classes(id)
);

-- CRIANDO A TABELA DE CLASSES
CREATE TABLE tb_classes(
	id bigint AUTO_INCREMENT PRIMARY KEY,
    nome_classe VARCHAR(100),
    descricao VARCHAR(100)
);
-- INSERINDO OS VALORES DE CLASSES
INSERT INTO tb_classes(nome_classe, descricao) VALUES ("Guerreiro", "Fortes combatentes corpo a corpo.");
INSERT INTO tb_classes(nome_classe, descricao) VALUES ("Mago", "Dominam poderosas magias.");
INSERT INTO tb_classes(nome_classe, descricao) VALUES ("Arqueiro", "Combatentes a distancia.");
INSERT INTO tb_classes(nome_classe, descricao) VALUES ("Cartomante", "Faz advinhações atraves das cartas");
INSERT INTO tb_classes(nome_classe, descricao) VALUES ("Necromante", "Vaga entre o tecido da vida e da morte");

-- INSERINDO OS DADOS DOS PERSONAGENS
INSERT INTO tb_personagens (nome, idade, raca, arma, id_classes, poder) VALUES ("Aragorn", 30, "Humano", "Espada", 1, 2400);
INSERT INTO tb_personagens (nome, idade, raca, arma, id_classes, poder) VALUES ("Gandalf", 80, "Isto", "Cajado", 2, 1000);
INSERT INTO tb_personagens (nome, idade, raca, arma, id_classes, poder) VALUES ("Carmen", 25, "Elfo", "Arco", 3, 2500);
INSERT INTO tb_personagens (nome, idade, raca, arma, id_classes, poder) VALUES ("Gimli", 45, "Anão", "Machado", 1, 1500);
INSERT INTO tb_personagens (nome, idade, raca, arma, id_classes, poder) VALUES ("Compo", 33, "Hobbit", "Adaga", 1, 2000);
INSERT INTO tb_personagens (nome, idade, raca, arma, id_classes, poder) VALUES ("Galadriel", 30, "Elfa", "Varinha", 2, 2500);
INSERT INTO tb_personagens (nome, idade, raca, arma, id_classes, poder) VALUES ("Amagog", 27, "Frodo", "faca", 1, 2200);
INSERT INTO tb_personagens (nome, idade, raca, arma, id_classes, poder) VALUES ("Carmelion", 25, "hibrido de gurila", "punhos", 1, 1400);
INSERT INTO tb_personagens (nome, idade, raca, arma, id_classes, poder) VALUES ("Gargamel", 32, "Vilão smurf", "Varinha", 2, 2500);

-- BUSCANDO OS PERSONAGENS COM O PODER MAIOR QUE 2000
select * from tb_personagens WHERE poder>2000;

-- BUSCANDO OS PERSONAGENS COM O O PODER ENTRE 1000 E 2000
SELECT * FROM tb_personagens WHERE poder BETWEEN 1000 AND 2000;

-- BUSCANDO OS PERSONAGENS QUE TEM A LETRA C  NO NOME
select * from tb_personagens WHERE nome LIKE "%C%";

-- BUSCANDO OS DADOS MESCLANDO OS DADOS DA TABELA DE PERSONAGENS COM A TABELA DE CATEGORIAS
SELECT nome, idade, raca, arma, poder, tb_classes.nome_classe 
FROM tb_personagens INNER JOIN tb_classes 
ON tb_personagens.id_classes = tb_classes.id;

-- BUSCANDO MESCLANDO AS TABELAS MAS TRAZENDO SÓ OS PERSONAGENS DA CATEGORIA ARQUEIRO
SELECT nome, idade, raca, arma, poder, tb_classes.nome_classe 
FROM tb_personagens INNER JOIN tb_classes 
ON tb_personagens.id_classes = tb_classes.id WHERE tb_classes.nome_classe LIKE "%Arqueiro%";


 -- Ignore essa parte - estava testando
SELECT nome, idade, raca, arma, poder, tb_classes.nome_classe 
FROM tb_personagens RIGHT JOIN tb_classes 
ON tb_personagens.id_classes = tb_classes.id;

SELECT nome, idade, raca, arma, poder, tb_classes.nome_classe 
FROM tb_personagens LEFT JOIN tb_classes 
ON tb_personagens.id_classes = tb_classes.id;

drop database db_generation_game_online;