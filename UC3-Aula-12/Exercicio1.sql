create table Usuario (
	ID_Usuario INT Primary key,
	Email VARCHAR (40),
	Senha VARCHAR (30),
	Nome_Usuario VARCHAR (30)
)




create table Produtos (
	ID_Produto INT Primary key,
	Nome_Produto VARCHAR (30) NOT NULL,
	Descricao TEXT NULL,
	Preco NUMERIC CHECK (PRECO > 0) NOT NULL,
	Qtde_Estoque SMALLINT DEFAULT 0
);

create table Pedidos (
	ID_Pedido SERIAL PRIMARY KEY,
	ID_Cliente INT NOT NULL REFERENCES Usuario(ID_Usuario),
	ID_Produto INT NOT NULL,
	Qtde smallint NOT NULL,
	FOREIGN KEY (ID_Produto) REFERENCES Produtos(ID_Produto)
)