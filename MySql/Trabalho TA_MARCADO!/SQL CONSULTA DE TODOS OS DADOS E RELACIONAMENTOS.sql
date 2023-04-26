USE ta_marcado;

SELECT r.id, r.nome, r.cpf, r.telefone, p.descricao, p.progresso, m.descricao,
 dh.horario_atendimento, dh.data_atendimento, t.descricao
	FROM responsaveis AS r , protocolos AS p, motivos AS m, data_hora AS dh, tipoS_atendimentos AS t;
    
         
         SELECT r.id, r.nome AS 'Nome', r.cpf AS 'CPF', r.telefone AS 'Telefone', p.descricao AS 'Protocolos', p.progresso, dh.horario_atendimento AS 'Horário de atendimento',
dh.data_atendimento AS 'Data de atentimento', m.descricao AS 'Motivos', ta.descricao AS 'Tipo de atendimento'
      FROM responsaveis AS r , protocolos AS p, data_hora AS dh, motivos AS m, tipos_atendimentos AS ta, atendimentos as ate
	     WHERE r.id_protocolo = p.id AND ate.id_tipos_atendimentos = ta.id AND ate.id_responsaveis = r.id AND ate.id_data_hora = dh.id AND ate.id_motivos = m.id;
 
 SELECT * FROM atendimentos;