-- -------- < DETRAN > --------
--
--                    SCRIPT POPULA
--
-- Data Criacao ...........: 13/08/2023
-- Autor(es) ..............: Ana Luiza Rodrigues da Silva
-- Banco de Dados .........: MySQL 8.0
-- Base de Dados (nome) ...: aula4exer6; 
--
-- PROJETO => 01 Base de Dados
--         => 09 Tabelas
--      
-- Ultimas Alteracoes
--   13/08/2023 => Populando tabelas
-- ---------------------------------------------------------

USE detran;

INSERT INTO PROPRIETARIO (cpf, nome, sexo, dataNascimento, idade, bairro, cidade, estado) VALUES
	(15962725206, 'Fabricio Manuel', 'Masculino', '1996-12-16', 26, 'Ceilândia', 'Brasília', 'DF'),
	(15962777263, 'Maria Cláudia', 'Feminino', '1993-10-29', 29, 'Samambaia', 'Brasília', 'DF'),
	(10191017285, 'Fernanda Montenegro', 'Feminino', '1997-03-30', 26, 'Samambaia', 'Brasília', 'DF'),
	(33208069483, 'Francisco Inácio', 'Masculino', '1962-06-21', 61, 'Taguatinga', 'Brasília', 'DF'),
	(46279973295, 'Alberto Salomão', 'Masculino', '1966-11-26', 56, 'Taguatinga', 'Brasília', 'DF');
    
INSERT INTO TELEFONE (cpfProprietario, telefone) VALUES 
	(15962725206, 61992937619),
    (15962777263, 61983327116),
    (10191017285, 61991765993),
    (33208069483, 61985028998),
    (46279973295, 61982008679);

INSERT INTO MODELO (codModelo, modelo) VALUES
	(345121, 'Gol GTI'),
    (989876, 'Van Master'),
    (675980, 'Kwid Outsider'),
    (683127, 'Uno mile'),
    (453200, 'CG Start 160');

INSERT INTO CATEGORIA (codCategoria, categoria) VALUES
	(75, 'Automóvel'),
    (10, 'Motocicleta'),
    (24, 'Caminhão'),
    (87, 'Van'),
    (32, 'Ônibus');
    
INSERT INTO VEICULO (placa, chassi, corPredominante, anoFabricacao, cpfProprietario, codModelo, codCategoria) VALUES
	('IQQ2954', '1BA H8SF1A Ae 549498', 'Preto', 2014, 15962725206, 345121, 75),
    ('MUX8911', '2CB G9TG2B Bf 650309', 'Prata', 2023, 15962725206, 675980, 75),
    ('DRG1683', '3DC H0UH3C CG 761410', 'Branco', 2020, 15962725206, 453200, 10),
    ('NCI9817','80t 7Anhh2 7A AG8231', 'Cinza', 2012, 15962777263, 989876, 87),
    ('HWL6275','4cd GfnN7K f1 j56383', 'Vermelho', 2017, 10191017285, 453200, 10),
    ('AUC3551', '7Ve ssV5BK G6 898793', 'Azul', 2010, 33208069483,675980, 75),
    ('MZT4929', '4Pp lC9YpD 34 gg9841', 'Amarelo', 2023, 46279973295, 453200, 10);
    
INSERT INTO TIPOINFRACAO (codInfracao, nome, valor) VALUES
	('605-01', 'Avanço de sinal vermelho', 555.00),
    ('601-75', 'Parada sobre a faixa de pedestres', 100.00),
    ('745-50', 'Excesso de Velocidade', 600.00),
    ('568-10', 'Tráfego pela faixa exclusiva', 743.89),
    ('581-97', 'Tráfego pelo acostamento', 453.50);
    
INSERT INTO AGENTE (matriculaFuncional, nome, dataContratacao, tempoServico) VALUES
	(2147, 'Márcio Portela', '2023-04-05', 4),
    (2248, 'Marcela Mcgowan', '2022-08-01', 12),
    (2349, 'Ana Caetano', '2020-07-03', 37),
    (2450, 'Renato Russo', '2023-07-01', 1),
    (2551, 'Paula Roberta', '2015-03-03', 101);
    
INSERT INTO LUGAR (codLugar, latitude, longitude, velocidadePermitida) VALUES
	(060, -22.123456, -45.678901, 40),
    (001, -23.987654, 46.543210, 80),
    (070, -24.567890, -47.890123, 80),
    (066, -25.432109, -48.765432, 60),
    (050, -25.432109, -48.765432, 50);
    
INSERT INTO INFRACAO (placaVeiculo, dataInfracao, tipoInfracao, codLugar, velocidade, matAgente) VALUES
	('IQQ2954', '2016-09-28', '605-01', 001, 40, 2551),
    ('IQQ2954', '2016-11-28', '605-01', 060, 0, 2551),
    ('IQQ2954', '2017-01-01', '605-01', 066, 120, 2551),
    ('NCI9817', '2020-09-29', '601-75', 060, 0, 2349),
    ('HWL6275', '2023-05-29', '745-50', 070, 100, 2147),
    ('AUC3551', '2022-09-01', '568-10', 050, 40, 2248),
    ('MZT4929', '2023-07-29', '581-97', 066, 60, 2450);
    

    
    