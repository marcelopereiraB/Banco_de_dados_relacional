USE ta_marcado;

INSERT INTO motivos(descricao) VALUES ('Declarações');
INSERT INTO motivos(descricao) VALUES ('Vem');
INSERT INTO motivos(descricao) VALUES ('Carteira de estudante');
INSERT INTO motivos(descricao) VALUES ('Siepe');
INSERT INTO motivos(descricao) VALUES ('Outro');

SELECT * FROM motivos;

INSERT INTO protocolos(descricao) VALUES ('2001/1/2;3');
INSERT INTO protocolos(descricao) VALUES ('2001/1/2;4');
INSERT INTO protocolos(descricao) VALUES ('2001/1/2;5');
INSERT INTO protocolos(descricao) VALUES ('2001/1/2;6');
INSERT INTO protocolos(descricao) VALUES ('2001/1/2;7');
INSERT INTO protocolos(descricao) VALUES ('2001/1/2;8');
INSERT INTO protocolos(descricao) VALUES ('2001/1/2;9');

SELECT * FROM protocolos;

INSERT INTO responsaveis(nome, cpf, telefone, celular, id_protocolos) VALUES ('marcelo pereira','111.111.111-11', '81 913421288', '81 924342', 1 );
INSERT INTO responsaveis(nome, cpf, telefone, celular, id_protocolos) VALUES ('marcelo pereira','111.111.111-11', '81 913421288', '81 924342', 7);
INSERT INTO responsaveis(nome, cpf, telefone, celular, id_protocolos) VALUES ('marcio silva','222.222.222-22', '81 9154333', '81 929234672', 2);
INSERT INTO responsaveis(nome, cpf, telefone, celular, id_protocolos) VALUES ('fernando pereira','333.333.333-33', '81 957665', '81 92565292', 3);
INSERT INTO responsaveis(nome, cpf, telefone, celular, id_protocolos) VALUES ('ana alicepereira','444.444.444-44', '81 9123488', '81 92756752', 4);
INSERT INTO responsaveis(nome, cpf, telefone, celular, id_protocolos) VALUES ('alex pereira','555.555.555-55', '81 91238218', '81 97888292', 5);
INSERT INTO responsaveis(nome, cpf, telefone, celular, id_protocolos) VALUES ('alana sales','666.666.666-66', '81 2338288', '81 98765692', 6);

SELECT * FROM responsaveis;

SELECT r.nome AS NOME, r.cpf AS CPF, r.telefone AS Fone, p.descricao AS PROTOCOLO
	from responsaveis AS r INNER JOIN protocolos AS p
	ON r.id_protocolos = p.id;