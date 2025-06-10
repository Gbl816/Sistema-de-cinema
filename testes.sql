SELECT * FROM filme; --  todas as colunas da table filme

SELECT codigo FROM filme; -- apenas a coluno codigo 

SELECT titulo, genero from filme; -- as colunas titulo e genero

SELECT titulo, genero FROM filme WHERE genero IN ('Animação', 'Comédia'); -- Obter todos os filmes que sejam de Animação ou Comédia

SELECT titulo, genero FROM filme ORDER BY titulo ASC; --  Mostrar o nome e gênero de todos os filmes ordenados alfabeticamente por título

SELECT s.num_sessao, f.titulo, sa.tipo_sala
FROM sessao s
JOIN filme f ON s.codigo = f.codigo
JOIN sala sa ON s.num_sala = sa.num_sala; --  Listar o número de sessão, título do filme e tipo de sala

SELECT s.num_sessao, f.titulo, COUNT(i.num_ingresso) AS ingressos_vendidos
FROM sessao s
JOIN filme f ON s.codigo = f.codigo
LEFT JOIN ingresso i ON s.num_sessao = i.num_sessao
GROUP BY s.num_sessao, f.titulo; -- Mostrar todas as sessões com o nome do filme e o número de ingressos vendidos

SELECT f.titulo
FROM filme f
LEFT JOIN sessao s ON f.codigo = s.codigo
WHERE s.num_sessao IS NULL; -- . Mostrar os filmes que ainda não têm sessões marcadas

SELECT AVG(valor_ingresso) AS media_valor_ingresso FROM ingresso; --  Calcular a média de preço dos ingressos vendidos em todas as sessões


SELECT s.num_sessao, SUM(i.valor_ingresso) AS total_arrecadado
FROM sessao s
JOIN ingresso i ON s.num_sessao = i.num_sessao
GROUP BY s.num_sessao; -- Mostrar o total arrecadado por sessão

SELECT MAX(valor_ingresso) AS maior_valor, MIN(valor_ingresso) AS menor_valor
FROM ingresso; -- Exibir o maior e o menor valor de ingresso vendido

SELECT genero, COUNT(*) AS quantidade
FROM filme
GROUP BY genero; -- Mostrar quantos filmes existem por cada gênero

SELECT num_sessao, data_exibicao, horario FROM sessao WHERE data_exibicao > '2025-06-05'; -- Listar sessões que ocorrerão depois de 2025-06-05

SELECT num_ingresso, num_assento, valor_ingresso
FROM ingresso
ORDER BY valor_ingresso DESC; --  Exibir os ingressos vendidos em ordem decrescente de valor

UPDATE sala SET capacidade = 250 WHERE num_sala = 3; -- Atualizar a capacidade da sala 3 para 250 lugares

DELETE FROM ingresso WHERE num_sessao = 2; -- Deletar todos os ingressos de uma sessão específica (exemplo: sessão 2)

UPDATE filme SET classificacao_indicativa = '18' WHERE titulo = 'Furiosa: Uma Saga Mad Max'; -- Alterar a classificação indicativa de um filme

DELETE FROM filme WHERE codigo = 10; -- Remover um filme do catálogo (exemplo: filme de código 10)

SELECT s.num_sessao, f.titulo, sa.tipo_sala, s.data_exibicao
FROM sessao s
JOIN filme f ON s.codigo = f.codigo
JOIN sala sa ON s.num_sala = sa.num_sala
WHERE f.genero = 'Drama' AND sa.tipo_sala = '3D'; -- Mostrar sessões de filmes de "Drama" em salas "3D"

SELECT AVG(duracao_minutos) AS media_duracao
FROM filme
WHERE genero = 'Ação'; -- Calcular a média de duração dos filmes de "Ação"

SELECT i.num_ingresso, i.num_assento, i.valor_ingresso, f.titulo
FROM ingresso i
JOIN sessao s ON i.num_sessao = s.num_sessao
JOIN filme f ON s.codigo = f.codigo; -- Mostrar todos os ingressos e o filme correspondente

SELECT titulo, duracao_minutos FROM filme WHERE duracao_minutos > 120; -- Selecionar filmes com duração maior que 120 minutos

SELECT num_sessao, num_sala, data_exibicao, horario 
FROM sessao 
WHERE codigo = 1; -- Filtrar sessões de um filme específico (por exemplo, código 1)

SELECT num_ingresso, num_assento, valor_ingresso 
FROM ingresso 
WHERE num_sessao = 1; --  Listar todos os ingressos vendidos para a sessão 1

SELECT num_sessao, COUNT(*) AS total_ingressos
FROM ingresso
GROUP BY num_sessao; -- Total de ingressos vendidos por sessão

SELECT num_sessao, AVG(valor_ingresso) AS valor_medio
FROM ingresso
GROUP BY num_sessao; -- Valor médio do ingresso por sessão

SELECT DISTINCT s.num_sessao, f.titulo, i.valor_ingresso
FROM sessao s
JOIN ingresso i ON s.num_sessao = i.num_sessao
JOIN filme f ON s.codigo = f.codigo
WHERE i.valor_ingresso > 50; -- Sessões com ingresso mais caro que 50
 
SELECT f.titulo, s.data_exibicao, s.horario
FROM filme f
JOIN sessao s ON f.codigo = s.codigo
ORDER BY s.data_exibicao ASC, s.horario ASC; -- Filmes e suas sessões ordenados pela data e horário

SELECT s.num_sessao, f.titulo, s.data_exibicao, s.horario
FROM sessao s
JOIN filme f ON s.codigo = f.codigo
WHERE f.genero = 'Ação'; -- Buscar sessões de filmes do gênero "Ação"

SELECT s.num_sessao, f.titulo, sa.capacidade, s.data_exibicao, s.horario
FROM sessao s
JOIN filme f ON s.codigo = f.codigo
JOIN sala sa ON s.num_sala = sa.num_sala; --  Visualizar as sessões e a capacidade da sala


SELECT s.num_sessao, f.titulo, sa.tipo_sala, s.data_exibicao, s.horario
FROM sessao s
JOIN filme f ON s.codigo = f.codigo
JOIN sala sa ON s.num_sala = sa.num_sala
WHERE sa.tipo_sala = 'IMAX'; -- Sessões com salas do tipo 'IMAX'

SELECT COUNT(*) AS total_ingressos_vendidos FROM ingresso; -- Número total de ingressos vendidos no cinema

INSERT INTO filme (codigo, titulo, genero, duracao_minutos, classificacao_indicativa) 
VALUES (11, 'Novo Filme', 'Drama', 120, '14'); -- Inserir um novo filme (exemplo)






























