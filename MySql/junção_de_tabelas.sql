CREATE DATABASE juncao;

USE juncao;

CREATE TABLE profissoes(
	id INT NOT NULL AUTO_INCREMENT,
	cargo VARCHAR(60) NOT NULL,
	PRIMARY KEY(id)
);

CREATE TABLE clientes(
	id INT NOT NULL AUTO_INCREMENT,
	nome VARCHAR(60) NOT NULL,
	data_nascimento DATE NOT NULL,
	telefone VARCHAR(10) NOT NULL,
	id_profissoes INT NOT NULL,
	PRIMARY KEY (id),
	FOREIGN KEY (id_profissoes) REFERENCES profissoes(id)
);

CREATE TABLE consumidor(
	id INT NOT NULL AUTO_INCREMENT,
	nome VARCHAR(50) NOT NULL,
	contato VARCHAR(60) NOT NULL, 
	endereco VARCHAR(100) NOT NULL,
	cidade VARCHAR(100) NOT NULL,
	cep VARCHAR(20) NOT NULL,
	pais VARCHAR(50) NOT NULL,
	PRIMARY KEY (id)
);



INSERT INTO profissoes (cargo) VALUES ('Programador');
INSERT INTO profissoes (cargo) VALUES ('Analista de sistemas');
INSERT INTO Profissoes (cargo) VALUES ('Suporte');
INSERT INTO profissoes (cargo) VALUES ('Gerente');

SELECT * FROM profissoes;

INSERT INTO clientes (nome, data_nascimento, telefone, id_profissoes) VALUES ('Fernando', '1989-2-25', '995343267' , 1);
INSERT INTO clientes (nome, data_nascimento, telefone, id_profissoes) VALUES ('Daivid', '1998-08-18', '877778978', 2);
INSERT INTO clientes (nome, data_nascimento, telefone, id_profissoes) VALUES ('JULIUS', '1990-07-01', '98776767', 3);
INSERT INTO clientes (nome, data_nascimento, telefone, id_profissoes) VALUES ('Alex', '1890-06-05', '8288282', 1);

SELECT * FROM clientes;



INSERT INTO consumidor (nome, contato, endereco, cidade, cep, pais) VALUES ('marcelo', '9999999', 'ruajoaoaoao', 'camaragibe', '5645632', 'BR');
INSERT INTO consumidor (nome, contato, endereco, cidade, cep, pais) VALUES ('fernando', '88888888', 'rua viNagra', 'recife', '737373', 'EUA');
INSERT INTO consumidor (nome, contato, endereco, cidade, cep, pais) VALUES ('Renata', '7777777', 'magiadau', 'recife', '9999978', 'US');
	
SELECT * FROM consumidor;



	# junção de tabelas 

SELECT c.id, c.nome AS NOME, c.telefone, p.cargo AS CARGO
	FROM clientes AS c, profissoes AS p
    WHERE p.id = c.id_profissoes ;
    
	#inner Join

SELECT c.id, c.nome AS NOME, c.telefone, p.cargo AS CARGO
	FROM clientes AS c INNER JOIN profissoes AS p
    on c.id_profissoes = p.id;
    
	#left outer join

SELECT * FROM clientes
LEFT OUTER JOIN profissoes
ON clientes.id_profissoes = profissoes.id;

	#right outer join
	
SELECT * FROM  clientes
RIGHT OUTER JOIN profissoes
ON clientes.id_profissoes = profissoes.id;

	# full outer join( não funciona no mysql, mas temos uma forma de fazer a mesma coisa)

SELECT * FROM clientes
FULL OUTER JOIN profissoes
ON clientes.id_profissoes = profissoes.id;

	# o full outer join no mysql

SELECT * FROM clientes
LEFT OUTER JOIN profissoes
ON clientes.id_profissoes = profissoes.id
UNION
SELECT * FROM clientes
RIGHT OUTER JOIN profissoes
ON clientes.id_profissoes = profissoes.id;

	#cross Join
	
SELECT c.id, c.nome, c.data_nascimento, c.telefone, p.cargo
		FROM clientes as c
        CROSS JOIN profissoes AS p WHERE c.id = 1;
        
	#self join
    
SELECT a.nome AS consumidor1, b.nome AS consumidor2, a.cidade
FROM consumidor AS a
INNER JOIN consumidor AS b
ON a.id <> b.id
AND a.cidade = b.cidade
ORDER BY a.cidade;

	


