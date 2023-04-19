CREATE DATABASE agregacao;

USE agregacao;

CREATE TABLE categoria(
	id INT NOT NULL AUTO_INCREMENT,
	nome VARCHAR(60) NOT NULL,
	PRIMARY KEY(id)
);

CREATE TABLE produtos(
	id INT NOT NULL AUTO_INCREMENT,
	descricao VARCHAR(60) NOT NULL,
	preco_venda DECIMAL(8,2) NOT NULL,
	preco_custo DECIMAL(8,2) NOT NULL,
	id_categoria INT NOT NULL,
    PRIMARY KEY(id),
    FOREIGN KEY(id_categoria) REFERENCES categoria(id)
);


INSERT INTO categoria(nome) VALUES ('Material Escolar');
INSERT INTO categoria(nome) VALUES ('Acessório Informática');
INSERT INTO categoria(nome) VALUES ('Material Escritorio');
INSERT INTO categoria(nome) VALUES ('Game');



INSERT INTO produtos(descricao, preco_venda, preco_custo, id_categoria) VALUES ('Caderno', '5.45', '2.30', 1);
INSERT INTO produtos(descricao, preco_venda, preco_custo, id_categoria) VALUES ('Caneta', '1.20', '0.45', 1);
INSERT INTO produtos(descricao, preco_venda, preco_custo, id_categoria) VALUES ('Pendrive 32GB', '120.54', '32.55', 2);
INSERT INTO produtos(descricao, preco_venda, preco_custo, id_categoria) VALUES ('Mouse', '17.00', '4.30', 2);

	             #Funções de agregação
                 
	#max - maior
SELECT MAX(preco_venda) FROM produtos;

	#min - menor
SELECT MIN(preco_venda) AS 'Preço minimo' FROM produtos;

	#avg - calcula a média
SELECT AVG(preco_venda) FROM  produtos;

	#round - arredonda valor
SELECT ROUND(AVG(preco_venda),2) FROM  produtos;

	#count
SELECT COUNT(preco_venda) AS quantidade FROM  produtos WHERE id_categoria = 1;

	#group by
SELECT id_categoria, MAX(preco_venda) FROM produtos GROUP BY id_categoria;

	#having
SELECT id_categoria, MAX(preco_venda) FROM produtos GROUP BY id_categoria HAVING MAX(preco_venda) > 10;
		#teste
        
 SELECT p.descricao, p.preco_venda
	FROM produtos AS p, (SELECT id FROM  produtos WHERE preco_venda = '120.54') AS C1
    WHERE p.id = C1.id;
