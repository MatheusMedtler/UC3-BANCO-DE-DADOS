
CREATE TABLE Personagem (
    Nome CHAR(30),
    ID_Personagem NUMERIC(3) PRIMARY KEY,
    Idade NUMERIC(3),
    Etnia CHAR(30),
    Profissao CHAR(30),
    Genero CHAR(20),
    fk_Tratamento_ID_Tratamento NUMERIC(3) 
	

insert into Personagem (id_personagem,Nome,Idade,Etnia,Profissao,Genero)
	values 
	(123,'Chris',22,'Moreno','Fotografo','Masculino')

	select * from Personagem
	); 

	

CREATE TABLE Tratamento (
    Nome_Tratamento CHAR(20),
    ID_Tratamento NUMERIC(3) PRIMARY KEY,
    Descricao CHAR(100)
);
	insert into Tratamento (id_Tratamento,Nome_Tratamento,Descricao)
	values 
	(124,'Nome','teste')

	select * from Tratamento



CREATE TABLE Familia (
    ID_Familia NUMERIC(3) PRIMARY KEY,
    Nome_Familia CHAR(50)
);

	insert into Familia(ID_Familia,Nome_Familia)
	values
	(122,'Teste')
	select * from Familia


CREATE TABLE Contexto_Sociocultural (
    Cultura CHAR(100),
    Classe_Social CHAR(50),
    Valores CHAR(30),
    Etnia CHAR(20),
    ID_Contexto NUMERIC(3) PRIMARY KEY,
    fk_Familia_ID_Familia NUMERIC(3),
    fk_Personagem_ID_Personagem NUMERIC(3)
);
	insert into Contexto_Sociocultural (Cultura,Classe social,Valores,Etnia,)


	
CREATE TABLE MembroFamilia_Tem (
    Parentesco_Familia CHAR(30),
    fk_Personagem_ID_Personagem NUMERIC(3),
    fk_Familia_ID_Familia NUMERIC(3)
);
 
ALTER TABLE Personagem ADD CONSTRAINT FK_Personagem_2
    FOREIGN KEY (fk_Tratamento_ID_Tratamento)
    REFERENCES Tratamento (ID_Tratamento)
    ON DELETE RESTRICT;
 
ALTER TABLE Contexto_Sociocultural ADD CONSTRAINT FK_Contexto_Sociocultural_2
    FOREIGN KEY (fk_Familia_ID_Familia)
    REFERENCES Familia (ID_Familia)
    ON DELETE RESTRICT;
 
ALTER TABLE Contexto_Sociocultural ADD CONSTRAINT FK_Contexto_Sociocultural_3
    FOREIGN KEY (fk_Personagem_ID_Personagem)
    REFERENCES Personagem (ID_Personagem)
    ON DELETE RESTRICT;
 
ALTER TABLE MembroFamilia_Tem ADD CONSTRAINT FK_MembroFamilia_Tem_1
    FOREIGN KEY (fk_Personagem_ID_Personagem)
    REFERENCES Personagem (ID_Personagem);
 
ALTER TABLE MembroFamilia_Tem ADD CONSTRAINT FK_MembroFamilia_Tem_2
    FOREIGN KEY (fk_Familia_ID_Familia)
    REFERENCES Familia (ID_Familia);