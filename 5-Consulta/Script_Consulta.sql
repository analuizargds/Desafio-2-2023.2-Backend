-- -------- < DETRAN > --------
--
--                    SCRIPT CONSULTA
--
-- ---------------------------------------------------------

USE detran; 


-- A) Apresentar todos os dados dos veículos de um determinado proprietário (informado pelo usuário através do CPF);
SELECT * FROM VEICULO WHERE cpfProprietario = '15962725206';

-- B) Consultar proprietário(s) por qualquer parte do nome;
SELECT * FROM PROPRIETARIO WHERE nome LIKE '%cio%';

-- C) Mostrar os dados da infração e do veículo que tiveram infrações cadastradas no Detran em um período (ou data) no padrão DE... ATÉ...;
SELECT * FROM INFRACAO INNER JOIN VEICULO ON placa = placaVeiculo WHERE placaVeiculo = 'IQQ2954' AND dataInfracao BETWEEN '2016-11-03' AND '2017-01-01';

-- D) Pesquisar o número de veículos que foram cadastrados em cada modelo, ordenando pelo número de veículos em ordem decrescente;
SELECT codModelo, COUNT(*) as total_modelos FROM VEICULO WHERE codModelo IS NOT NULL GROUP BY codModelo ORDER BY COUNT(*) DESC;
