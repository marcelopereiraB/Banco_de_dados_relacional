USE estudos02;


SELECT * FROM produtos;
SELECT * FROM tipos_produto;

#consulta em multiplas tabelas

SELECT p.id, p.descricao, p.preco, tp.descricao 
	FROM produtos AS p, tipos_produto AS tp
    WHERE p.id_tipos_produto = tp.id; # filtro, referencia de tabelas
    
SELECT p.id, p.descricao AS 'produtos', p.preco AS 'Preço $', tp.descricao AS 'tipos de produtos' 
	FROM produtos AS p, tipos_produto AS tp
    WHERE p.id_tipos_produto = tp.id;