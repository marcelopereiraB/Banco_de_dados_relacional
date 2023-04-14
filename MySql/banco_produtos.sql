USE estudos;

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
                                
SELECT * FROM tipos_produtos;

SELECT id, descricao FROM tipos_produtos;

SELECT * FROM produtos;

SELECT id, descricao, id_tipos_produtos from produtos;

SELECT cod, descr, pre, ctp from produtos;

SELECT p.id AS cod, p.descricao AS descr, p.preco AS pre, p.id_tipos_produtos AS ctp FROM produtos AS p;