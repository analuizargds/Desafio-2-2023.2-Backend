-- -------- < DETRAN > --------
--
--                    SCRIPT FISICO
--
-- ---------------------------------------------------------

CREATE DATABASE detran;
USE detran;

CREATE TABLE PROPRIETARIO
(
	cpf BIGINT NOT NULL,
    nome VARCHAR(100) NOT NULL,
    sexo VARCHAR(10) NOT NULL,
    dataNascimento DATE NOT NULL,
    idade INT NOT NULL,
    bairro VARCHAR(50) NOT NULL,
    cidade VARCHAR(50) NOT NULL,
    estado VARCHAR(2) NOT NULL,
    
    CONSTRAINT proprietario_PK PRIMARY KEY (cpf)
)ENGINE = InnoDB;

CREATE TABLE TELEFONE
(
	cpfProprietario BIGINT NOT NULL,
    telefone BIGINT NOT NULL,
    
    CONSTRAINT telefone_PK PRIMARY KEY (telefone),
    CONSTRAINT telefone_proprietario_FK FOREIGN KEY (cpfProprietario) REFERENCES PROPRIETARIO (cpf)
)ENGINE = InnoDB;

CREATE TABLE MODELO
(
	codModelo INT NOT NULL,
    modelo VARCHAR(50) NOT NULL,
    
    CONSTRAINT modelo_PK PRIMARY KEY (codModelo)
)ENGINE = InnoDB;

CREATE TABLE CATEGORIA 
(
	codCategoria INT NOT NULL,
    categoria VARCHAR(50) NOT NULL,
    
    CONSTRAINT categoria_PK PRIMARY KEY (codCategoria)
)ENGINE = InnoDB;

CREATE TABLE VEICULO
(
	placa VARCHAR(7) NOT NULL,
    chassi VARCHAR(30) NOT NULL,
    corPredominante VARCHAR(20) NOT NULL,
    AnoFabricacao INT NOT NULL,
    cpfProprietario BIGINT NOT NULL,
    codModelo INT NOT NULL,
    codCategoria INT NOT NULL,
    
    CONSTRAINT veiculo_PK PRIMARY KEY (placa),
    CONSTRAINT veiculo_proprietario_FK FOREIGN KEY (cpfProprietario) REFERENCES PROPRIETARIO (cpf),
    CONSTRAINT veiculo_modelo_FK FOREIGN KEY (codModelo) REFERENCES MODELO (codModelo),
    CONSTRAINT veiculo_categoria_FK FOREIGN KEY (codCategoria) REFERENCES CATEGORIA (codCategoria)
    
)ENGINE = InnoDB;

CREATE TABLE TIPOINFRACAO
(
	codInfracao VARCHAR(6) NOT NULL,
    nome VARCHAR(100) NOT NULL,
    valor DECIMAL(6,2) NOT NULL,
    
    CONSTRAINT tipoInfracao_PK PRIMARY KEY (codInfracao)
)ENGINE = InnoDB;

CREATE TABLE AGENTE 
(
	matriculaFuncional INT NOT NULL,
    nome VARCHAR(100) NOT NULL,
    dataContratacao DATE NOT NULL,
    tempoServico INT NOT NULL,
    
    CONSTRAINT agente_PK PRIMARY KEY (matriculaFuncional)
)ENGINE = InnoDB;

CREATE TABLE LUGAR
(
	codLugar INT NOT NULL,
    latitude DECIMAL(10,8) NOT NULL,
    longitude DECIMAL (10,8) NOT NULL,
    velocidadePermitida INT NOT NULL,
    
    CONSTRAINT lugar_pk PRIMARY KEY (codLugar)
    
)ENGINE = InnoDB; 

CREATE TABLE INFRACAO 
(
	idInfracao INT NOT NULL AUTO_INCREMENT,
    placaVeiculo VARCHAR(7) NOT NULL,
    dataInfracao DATE NOT NULL,
    tipoInfracao VARCHAR(6) NOT NULL,
    codLugar INT NOT NULL,
    velocidade INT DEFAULT 0,
    matAgente INT NOT NULL,
    
    CONSTRAINT infracao_pk PRIMARY KEY (idInfracao),
    CONSTRAINT infracao_placa_fk FOREIGN KEY (placaVeiculo) REFERENCES VEICULO (placa), 
    CONSTRAINT infracao_local_FK FOREIGN KEY (codLugar) REFERENCES LUGAR (codLugar),
    CONSTRAINT infracao_tipoInfracao_FK FOREIGN KEY (tipoInfracao) REFERENCES TIPOINFRACAO (codInfracao),
    CONSTRAINT infracao_agente_FK FOREIGN KEY (matAgente) REFERENCES AGENTE (matriculaFuncional)
)ENGINE = InnoDB AUTO_INCREMENT = 1;
