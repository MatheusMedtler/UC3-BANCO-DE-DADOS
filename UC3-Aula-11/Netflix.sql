create table Usuario (
	ID_Usuario INT Primary key,
	Email Char (30)
	Senha char (40)
	)

create table Episodio (
    ID_episodio int PRIMARY KEY,
    Duracao_episodio Char (30),
    Sinopse_episodio Char (35),
    fk_Serie_fk_Conteudo_ID_conteudo int
);

 create table Genero (
	ID_Genero int primary key, 
	Nome_do_genero Char (26),
    Descricao Char (50)	
);

create table Avaliacao (
    ID_avaliacao int PRIMARY KEY,
    Nota int,
    Comentario Char (100),
    Data_avaliacao int,
    fk_Usuario_ID_usuario int
);

create table Assinaturas (
    ID_assinatura INT PRIMARY KEY,
    Tipo_de_plano Char (40),
    Data_inicio INT,
    Status Char (20),
    Pagamento Char (20),
    Valor_mensal Char (15),
    fk_Usuario_ID_usuario INT
);

CREATE TABLE Legenda (
    ID_legenda INT PRIMARY KEY,
    Idioma Char (25),
    Fonte Char (30),
    fk_Conteudo_ID_conteudo INT
); 

create table Conteudo (
    ID_conteudo INT PRIMARY KEY,
    Duracao Char (10),
    Tipo_de_conteudo Char (12),
    Trailer Char (50)
);

create table Filme (
    tipo_filme Char (16),
    Duracao_filme Char (27),
    fk_Conteudo_ID_conteudo INT PRIMARY KEY
);

create table Serie (
    Temporada INT,
    fk_Conteudo_ID_conteudo INT PRIMARY KEY
);

CREATE TABLE Vizualizacao_Assiste (
    fk_Usuario_ID_usuario INT,
    fk_Conteudo_ID_conteudo INT
);

CREATE TABLE E__Assoc__1_vera (
    fk_Usuario_ID_usuario INT,
    fk_Conteudo_ID_conteudo INT
);

CREATE TABLE Tem (
    fk_Genero_ID_genero INT,
    fk_Conteudo_ID_conteudo INT
);

CREATE TABLE Tem1 (
    fk_Conteudo_ID_conteudo INT,
    fk_Avaliacao_ID_avaliacao INT
);


