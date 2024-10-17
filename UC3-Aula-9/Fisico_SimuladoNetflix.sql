/* Logico_SimuladoNetflix: */

CREATE TABLE Genero (
    ID_genero Number (3) PRIMARY KEY,
    Nome_do_genero Char (26),
    Descricao Char (50)
);

CREATE TABLE Episodio (
    ID_episodio Number (3) PRIMARY KEY,
    Duracao_episodio Char (30),
    Sinopse_episodio Char (35),
    fk_Serie_fk_Conteudo_ID_conteudo Number (3)
);

CREATE TABLE Avaliacao (
    ID_avaliacao Number (3) PRIMARY KEY,
    Nota Number (3),
    Comentario Char (100),
    Data_avaliacao Number (6),
    fk_Usuario_ID_usuario Number (3)
);

CREATE TABLE Assinaturas (
    ID_assinatura Number (3) PRIMARY KEY,
    Tipo_de_plano Char (15),
    Data_inicio Number (6),
    Status Char (20),
    Pagamento Char (20),
    Valor_mensal Char (15),
    fk_Usuario_ID_usuario Number (3)
);

CREATE TABLE Legenda (
    ID_legenda Number (3) PRIMARY KEY,
    Idioma Char (25),
    Fonte Char (30),
    fk_Conteudo_ID_conteudo Number (3)
);

CREATE TABLE Usuario (
    ID_usuario Number (3) PRIMARY KEY,
    Email Char (25),
    Senha Char (25),
    Nome Char (40),
    Data_de_nascimento Number (6)
);

CREATE TABLE Conteudo (
    ID_conteudo Number (3) PRIMARY KEY,
    Duracao Char (10),
    Tipo_de_conteudo Char (12),
    Trailer Char (50)
);

CREATE TABLE Filme (
    tipo_filme Char (16),
    Duracao_filme Char (27),
    fk_Conteudo_ID_conteudo Number (3) PRIMARY KEY
);

CREATE TABLE Serie (
    Temporada Number (2),
    fk_Conteudo_ID_conteudo Number (3) PRIMARY KEY
);

CREATE TABLE Vizualizacao_Assiste (
    fk_Usuario_ID_usuario Number (3),
    fk_Conteudo_ID_conteudo Number (3)
);

CREATE TABLE E__Assoc__1_vera (
    fk_Usuario_ID_usuario Number (3),
    fk_Conteudo_ID_conteudo Number (3)
);

CREATE TABLE Tem (
    fk_Genero_ID_genero Number (3),
    fk_Conteudo_ID_conteudo Number (3)
);

CREATE TABLE Tem (
    fk_Conteudo_ID_conteudo Number (3),
    fk_Avaliacao_ID_avaliacao Number (3)
);
 
ALTER TABLE Episodio ADD CONSTRAINT FK_Episodio_2
    FOREIGN KEY (fk_Serie_fk_Conteudo_ID_conteudo)
    REFERENCES Serie (fk_Conteudo_ID_conteudo)
    ON DELETE RESTRICT;
 
ALTER TABLE Avaliacao ADD CONSTRAINT FK_Avaliacao_2
    FOREIGN KEY (fk_Usuario_ID_usuario)
    REFERENCES Usuario (ID_usuario)
    ON DELETE RESTRICT;
 
ALTER TABLE Assinaturas ADD CONSTRAINT FK_Assinaturas_2
    FOREIGN KEY (fk_Usuario_ID_usuario)
    REFERENCES Usuario (ID_usuario)
    ON DELETE RESTRICT;
 
ALTER TABLE Legenda ADD CONSTRAINT FK_Legenda_2
    FOREIGN KEY (fk_Conteudo_ID_conteudo)
    REFERENCES Conteudo (ID_conteudo)
    ON DELETE RESTRICT;
 
ALTER TABLE Filme ADD CONSTRAINT FK_Filme_2
    FOREIGN KEY (fk_Conteudo_ID_conteudo)
    REFERENCES Conteudo (ID_conteudo)
    ON DELETE CASCADE;
 
ALTER TABLE Serie ADD CONSTRAINT FK_Serie_2
    FOREIGN KEY (fk_Conteudo_ID_conteudo)
    REFERENCES Conteudo (ID_conteudo)
    ON DELETE CASCADE;
 
ALTER TABLE Vizualizacao_Assiste ADD CONSTRAINT FK_Vizualizacao_Assiste_1
    FOREIGN KEY (fk_Usuario_ID_usuario)
    REFERENCES Usuario (ID_usuario);
 
ALTER TABLE Vizualizacao_Assiste ADD CONSTRAINT FK_Vizualizacao_Assiste_2
    FOREIGN KEY (fk_Conteudo_ID_conteudo)
    REFERENCES Conteudo (ID_conteudo);
 
ALTER TABLE E__Assoc__1_vera ADD CONSTRAINT FK_E__Assoc__1_vera_1
    FOREIGN KEY (fk_Usuario_ID_usuario)
    REFERENCES Usuario (ID_usuario);
 
ALTER TABLE E__Assoc__1_vera ADD CONSTRAINT FK_E__Assoc__1_vera_2
    FOREIGN KEY (fk_Conteudo_ID_conteudo)
    REFERENCES Conteudo (ID_conteudo);
 
ALTER TABLE Tem ADD CONSTRAINT FK_Tem_1
    FOREIGN KEY (fk_Genero_ID_genero)
    REFERENCES Genero (ID_genero)
    ON DELETE RESTRICT;
 
ALTER TABLE Tem ADD CONSTRAINT FK_Tem_2
    FOREIGN KEY (fk_Conteudo_ID_conteudo)
    REFERENCES Conteudo (ID_conteudo)
    ON DELETE RESTRICT;
 
ALTER TABLE Tem ADD CONSTRAINT FK_Tem_1
    FOREIGN KEY (fk_Conteudo_ID_conteudo)
    REFERENCES Conteudo (ID_conteudo)
    ON DELETE SET NULL;
 
ALTER TABLE Tem ADD CONSTRAINT FK_Tem_2
    FOREIGN KEY (fk_Avaliacao_ID_avaliacao)
    REFERENCES Avaliacao (ID_avaliacao)
    ON DELETE SET NULL;