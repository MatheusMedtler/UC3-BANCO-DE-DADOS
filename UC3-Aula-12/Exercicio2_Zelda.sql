
CREATE TABLE Personagens (
    ID_Personagem INT PRIMARY KEY,
    Nome Char (30),
    Raca Char (20)
);

CREATE TABLE Itens (
    ID_Item INT PRIMARY KEY,
    Nome Char (30),
    Tipo Char (25),
    Efeito Char (50),
    Raridade Char (30)
);

CREATE TABLE Locais (
    ID_Number INT PRIMARY KEY,
    Descricao Char (40),
    Tipo Char (30),
    Nome Char (20)
);

CREATE TABLE Hilian (
    Agilidade Char (40),
    Forca Char (20),
    Caracteristicas Char (30),
    fk_Personagens__ID_Personagem INT PRIMARY KEY
);

CREATE TABLE Zoro (
    Caracteristicas Char (25),
    Agilidade Char (30),
    Estamina Char (50),
    Forca Char (25),
    fk_Personagens__ID_Personagem INT PRIMARY KEY
);

CREATE TABLE Goran (
    Resistencia Char (30),
    Regeneracao Char (20),
    fk_Personagens__ID_Personagem INT PRIMARY KEY
);

CREATE TABLE Relaciona (
    fk_Personagens__ID_Personagem INT,
    fk_Personagens__ID_Personagem_ INT
);

CREATE TABLE Tem (
    fk_Personagens__ID_Personagem INT,
    fk_Itens_ID_Item INT
);

CREATE TABLE Possui (
    fk_Personagens__ID_Personagem INT,
    fk_Locais_ID INT,
    Quantidade Char (20)
);
 
