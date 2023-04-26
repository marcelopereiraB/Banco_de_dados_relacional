CREATE DATABASE ta_marcado;


USE ta_marcado;


CREATE TABLE protocolos(
id INT NOT NULL AUTO_INCREMENT,
descricao VARCHAR(25) NOT NULL,
progresso VARCHAR(15) NOT NULL,
PRIMARY KEY(id)
);


CREATE TABLE responsaveis(
id INT NOT NULL AUTO_INCREMENT,
nome VARCHAR(100) NOT NULL,
cpf VARCHAR(15) NOT NULL,
telefone VARCHAR(20) NOT NULL,
celular VARCHAR(20) NOT NULL,
id_protocolo INT NOT NULL,
PRIMARY KEY(id),
FOREIGN KEY(id_protocolo) REFERENCES protocolos(id)
);



CREATE TABLE motivos(
id INT NOT NULL AUTO_INCREMENT,
descricao VARCHAR(60) NOT NULL,
PRIMARY KEY(id)
);



CREATE TABLE data_hora(
id INT NOT NULL AUTO_INCREMENT,
horario_atendimento TIME NOT NULL,
data_atendimento DATE NOT NULL,
PRIMARY KEY(id)
);



CREATE TABLE tipos_atendimentos(
id INT NOT NULL AUTO_INCREMENT,
descricao VARCHAR(15) NOT NULL,
PRIMARY KEY(id)
);


CREATE TABLE atendimentos(
id INT NOT NULL AUTO_INCREMENT,
id_tipos_atendimentos INT NOT NULL,
id_responsaveis INT NOT NULL,
id_data_hora INT NOT NULL,
id_motivos INT NOT NULL,
PRIMARY KEY (id),
FOREIGN KEY(id_tipos_atendimentos) REFERENCES tipos_atendimentos(id),
FOREIGN KEY(id_responsaveis) REFERENCES responsaveis(id),
FOREIGN KEY(id_data_hora) REFERENCES data_hora(id),
FOREIGN KEY(id_motivos) REFERENCES motivos(id)
);




