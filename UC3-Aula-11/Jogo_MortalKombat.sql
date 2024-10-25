CREATE TABLE Usuario (
    ID_Usuario INT PRIMARY KEY,
    Email Char (40),
    Senha Char (30),
    Data_de_Nacimento Date,
    Telefone INT
);

CREATE TABLE Partida (
    ID_Partida INT PRIMARY KEY,
    FK_ID_Cenario INT,
    FK_ID_Personagem INT,
    Movimentos Char (30),
    Pontuacao INT
);

CREATE TABLE Cenario (
    ID_Cenario INT  PRIMARY KEY,
    FK_ID_Partida INT,
    Lugar Char (30),
    Arma CHAR (20),
    Musica CHAR (30),
    Interacao CHAR (50),
    Clima CHAR (50)
);

CREATE TABLE Personagem (
    ID_Personagem INT PRIMARY KEY,
    Vida INT,
    Poder INT,
    Golpes INT,
    Especiais INT,
    Força INT,
    Historia CHAR (100),
    Energia INT,
    Fala CHAR (60),
    Roupas CHAR (50),
    Combos CHAR (40),
    Dano INT
);

CREATE TABLE Jogo (
    ID_Jogo INT PRIMARY KEY,
    FK_ID_Cenario INT,
    FK_ID_Personagem INT,
    FK_ID_Partida INT,
    FK_ID_Usuario INT
);

CREATE TABLE Ranking (
    ID_Ranking INT PRIMARY KEY,
    Partidas_Vencidas INT,
    Numero_de_Derotas INT,
    Posicao_no_Ranking INT,
    Pontuacao INT,
    Historico CHAR (40)
);

