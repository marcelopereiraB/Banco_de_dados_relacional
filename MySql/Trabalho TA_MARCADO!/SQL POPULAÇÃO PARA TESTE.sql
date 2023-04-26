USE ta_marcado;

INSERT INTO motivos(descricao) VALUES ('Declarações');
INSERT INTO motivos(descricao) VALUES ('Vem');
INSERT INTO motivos(descricao) VALUES ('Carteira de estudante');
INSERT INTO motivos(descricao) VALUES ('Siepe');


SELECT * FROM motivos;

INSERT INTO protocolos(descricao, progresso) VALUES ('2001/1/2;3', 'Em Andamento');
INSERT INTO protocolos(descricao, progresso) VALUES ('2001/1/2;4', 'Concluido');
INSERT INTO protocolos(descricao, progresso) VALUES ('2001/1/2;5', 'Em Andamento');
INSERT INTO protocolos(descricao, progresso) VALUES ('2001/1/2;6', 'Em Andamento');


SELECT * FROM protocolos;

INSERT INTO responsaveis(nome, cpf, telefone, celular, id_protocolo) VALUES ('marcelo pereira','111.111.111-11', '81 913421288', '81 924342', 1 );
INSERT INTO responsaveis(nome, cpf, telefone, celular, id_protocolo) VALUES ('marcelo pereira','111.111.111-11', '81 913421288', '81 924342', 2);
INSERT INTO responsaveis(nome, cpf, telefone, celular, id_protocolo) VALUES ('marcio silva','222.222.222-22', '81 9154333', '81 929234672', 3);
INSERT INTO responsaveis(nome, cpf, telefone, celular, id_protocolo) VALUES ('fernando pereira','333.333.333-33', '81 957665', '81 92565292', 4);

SELECT * FROM responsaveis;


INSERT INTO data_hora(horario_atendimento, data_atendimento) VALUES ('17:34', '2023-02-24');
INSERT INTO data_hora(horario_atendimento, data_atendimento) VALUES ('15:36', '2023-03-16');
INSERT INTO data_hora(horario_atendimento, data_atendimento) VALUES ('13:54', '2023-09-21');
INSERT INTO data_hora(horario_atendimento, data_atendimento) VALUES ('19:12', '2023-12-26');

SELECT * FROM data_hora;


INSERT INTO tipos_atendimentos(descricao) VALUES ('Presencial');
INSERT INTO tipos_atendimentos(descricao) VALUES ('Remoto');

SELECT * FROM tipos_atendimentos;

INSERT INTO atendimentos (id_tipos_atendimentos, id_responsaveis, id_data_hora, id_motivos) VALUES ('1','1','1','1');
INSERT INTO atendimentos (id_tipos_atendimentos, id_responsaveis, id_data_hora, id_motivos) VALUES ('2','2','2','2');
INSERT INTO atendimentos (id_tipos_atendimentos, id_responsaveis, id_data_hora, id_motivos) VALUES ('1','3','3','3');
INSERT INTO atendimentos (id_tipos_atendimentos, id_responsaveis, id_data_hora, id_motivos) VALUES ('2','4','4','4');