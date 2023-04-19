CREATE DATABASE estudos02;

USE estudos02;

CREATE TABLE tipos_produto(
	id INT NOT NULL AUTO_INCREMENT,
	descricao VARCHAR(60) NOT NULL,
	PRIMARY KEY (id)
);
 
CREATE TABLE produtos(
	id INT NOT NULL AUTO_INCREMENT,
	descricao VARCHAR(60) NOT NULL,
	preco DECIMAL(8,2) NOT NULL,
	id_tipos_produto INT NOT NULL,
	PRIMARY KEY (id),
	FOREIGN KEY(id_tipos_produto) REFERENCES tipos_produto(id)
);

INSERT INTO tipos_produto (descricao) VALUES ('Computador');
INSERT INTO tipos_produto (descricao) VALUES ('Impressora');

INSERT INTO produtos (descricao, preco, id_tipos_produto) VALUES ('desktop', 1900, 1);
INSERT INTO produtos (descricao, preco, id_tipos_produto) VALUES ('macBokk', 4000, 1);
INSERT INTO produtos (descricao, preco, id_tipos_produto) VALUES ('impre. jato', 2300, 2);
INSERT INTO produtos (descricao, preco, id_tipos_produto) VALUES ('impre. laser', 2780, 2);

SELECT * FROM produtos;

			#filtros de consultas com where
SELECT * FROM produtos WHERE id_tipos_produto = 1;
SELECT * FROM produtos WHERE preco < 2000 AND descricão = 'descktop';
