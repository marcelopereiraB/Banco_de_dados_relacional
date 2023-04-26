CREATE DATABASE agrupamento;

USE agrupamento;

CREATE TABLE tipos(
	id INT NOT NULL AUTO_INCREMENT,
	nome VARCHAR(60) NOT NULL,
	PRIMARY KEY(id)
);

CREATE TABLE fabricantes(
	id INT NOT NULL AUTO_INCREMENT,
	nome VARCHAR(60) NOT NULL,
	PRIMARY KEY(id)
);

CREATE TABLE produtos(
	id INT NOT NULL AUTO_INCREMENT,
	nome VARCHAR(60) NOT NULL,
	id_fabricante INT NOT NULL,
	quantidade INT NOT NULL,
	id_tipo INT NOT NULL,
    PRIMARY KEY(id),
    FOREIGN KEY(id_fabricante) REFERENCES fabricantes(id),
    FOREIGN KEY(id_tipo) REFERENCES tipos(id)
);


INSERT INTO tipos (nome) VALUES ('Console');
INSERT INTO tipos (nome) VALUES ('Notebook');
INSERT INTO tipos (nome) VALUES ('Celular');
INSERT INTO tipos (nome) VALUES ('Smartphone');
INSERT INTO tipos (nome) VALUES ('Sofá');
INSERT INTO tipos (nome) VALUES ('Armário');
INSERT INTO tipos (nome) VALUES ('Refrigerador');

INSERT INTO fabricantes (nome) VALUES ('Sony');
INSERT INTO fabricantes (nome) VALUES ('Dell');
INSERT INTO fabricantes (nome) VALUES ('Microsoft');
INSERT INTO fabricantes (nome) VALUES ('Samsung');
INSERT INTO fabricantes (nome) VALUES ('Apple');
INSERT INTO fabricantes (nome) VALUES ('Beline');
INSERT INTO fabricantes (nome) VALUES ('Magno');
INSERT INTO fabricantes (nome) VALUES ('CCE');
INSERT INTO fabricantes (nome) VALUES ('Nintendo');

INSERT INTO produtos (nome, id_fabricante, quantidade, id_tipo) VALUES ('Playstation 3', 1, 100, 1);
INSERT INTO produtos (nome, id_fabricante, quantidade, id_tipo) VALUES ('Core 2 Duo 4GB RAM 500GB HD', 2, 200, 2);
INSERT INTO produtos (nome, id_fabricante, quantidade, id_tipo) VALUES ('Xbox 360 120GB', 3, 350, 1);
INSERT INTO produtos (nome, id_fabricante, quantidade, id_tipo) VALUES ('GT-I6220 Quad band', 4, 300, 3);
INSERT INTO produtos (nome, id_fabricante, quantidade, id_tipo) VALUES ('iPhone 4 32GB', 5, 50, 4);
INSERT INTO produtos (nome, id_fabricante, quantidade, id_tipo) VALUES ('Playstation 2', 1, 100, 1);
INSERT INTO produtos (nome, id_fabricante, quantidade, id_tipo) VALUES ('Sofá Estofado', 6, 200, 5);
INSERT INTO produtos (nome, id_fabricante, quantidade, id_tipo) VALUES ('Armário de Serviço', 7, 50, 6);
INSERT INTO produtos (nome, id_fabricante, quantidade, id_tipo) VALUES ('Refrigerador 420L', 8, 200, 7);
INSERT INTO produtos (nome, id_fabricante, quantidade, id_tipo) VALUES ('Wii 120GB', 8, 250, 1);


SELECT * FROM produtos;

SELECT p.id, p.nome AS produtos, f.nome AS Marca, p.quantidade AS estoque, t.nome AS Tipo
	FROM produtos AS p, tipos AS t, fabricantes AS f
		where p.id_fabricante = f.id and p.id_tipo = t.id;
    
    
           #funções de agrupamento e ordenação
    
    #group by
    
SELECT t.nome AS Tipo, f.nome AS Fabricante, SUM(p.quantidade) AS 'Quantidade em Estoque' 
	FROM tipos AS t, fabricantes AS f, produtos AS p 
		WHERE t.id = p.id_tipo AND f.id = p.id_fabricante 
		GROUP BY t.nome, f.nome;
        
    #having
    
SELECT t.nome AS Tipo, f.nome AS fabricante, SUM(p.quantidade) AS 'Quantidade em estoque'
	FROM tipos AS t, fabricantes AS f, produtos AS p
		WHERE t.id = p.id_tipo AND f.id = p.id_fabricante
		GROUP BY t.nome, f.nome
		HAVING SUM(p.quantidade) > 200;
    
    #order by asc
    
    SELECT id, nome, id_tipo, id_fabricante,
    quantidade FROM produtos ORDER BY id ASC;
    
    #order by desc
    
     SELECT id, nome, id_tipo, id_fabricante, quantidade FROM produtos ORDER BY id DESC;
 
        
		