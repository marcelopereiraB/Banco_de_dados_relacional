USE estudos;
	#create
CREATE TABLE tipos_produtos(
id INT NOT NULL AUTO_INCREMENT,
descricao VARCHAR(30) NOT NULL,
PRIMARY KEY(id)
);

CREATE TABLE produtos(
id INT NOT NULL AUTO_INCREMENT,
descricao VARCHAR(50) NOT NULL,
preco DECIMAL(8,2) NOT NULL,
id_tipos_produtos INT NOT NULL,
PRIMARY KEY(id),
FOREIGN KEY(id_tipos_produtos) REFERENCES tipos_produtos(id)
);
 
INSERT INTO tipos_produtos(descricao) VALUES ('Computador');
INSERT INTO tipos_produtos(descricao) VALUES ('impressora');

INSERT INTO produtos(descricao, preco, id_tipos_produtos) VALUES ('Desktop', '1200', 1);
INSERT INTO produtos(descricao, preco, id_tipos_produtos) VALUES ('Laptop', '1800', 1);
INSERT INTO produtos(descricao, preco, id_tipos_produtos) VALUES ('Impr. Jato Tinta', '300', 2);
INSERT INTO produtos(descricao, preco, id_tipos_produtos) VALUES ('Impr. Laser', '500', 2);


                                #DQL
	#select                             
SELECT * FROM tipos_produtos;

SELECT id, descricao FROM tipos_produtos;

SELECT * FROM produtos;

SELECT id, descricao, id_tipos_produtos from produtos;

SELECT cod, descr, pre, ctp from produtos;

SELECT p.id AS cod, p.descricao AS descr, p.preco AS pre, p.id_tipos_produtos AS ctp FROM produtos AS p;

							#DML
	#insert
INSERT INTO produtos(descricao, preco, id_tipos_produtos) VALUES ('ZenBook', '6000', 1);

INSERT INTO produtos VALUES (NULL, 'cartucho', '56', 2);

	#update
UPDATE produtos set preco = 400 WHERE id = 3;

UPDATE produtos set descricao = 'impressora a laser', preco = '800' WHERE id = 4;

#NUNCA ESQUEÇA DE FILTRAR O REGISTO COM O where

    #delete
DELETE FROM produtos AS p WHERE id = 6;
#NUNCA ESQUEÇA DE FILTRAR O REGISTO COM O where

							#DDL
	#create- tabelas e banco

	#alter
ALTER TABLE produtos ADD ano_nascimento INT;
ALTER TABLE produtos ADD mes_nascimento INT NOT NULL;
UPDATE produtos set mes_nascimento = 01 WHERE id = 1;
SELECT * FROM produtos;

	#drop

CREATE TABLE pessoas(
id INT NOT NULL AUTO_INCREMENT,
nome VARCHAR(50) NOT NULL,
idade int NOT NULL,
PRIMARY KEY (id)
);
CREATE DATABASE db;
DROP TABLE pessoas;
DROP DATABASE db;

							#DCL
	#grant
FLUSH PRIVILEGES;
	#revoke
							#DTL
	#begin

START TRANSACTION;
INSERT INTO tipos_produtos (descricao) VALUES ('FARMACIA');
INSERT INTO tipos_produtos (descricao) VALUES ('ESCRITORIO');


COMMIT;
SELECT * FROM tipos_produtos;
	#rollback
ROLLBACK;
