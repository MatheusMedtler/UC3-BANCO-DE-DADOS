create table Usuario (
	ID_Usuario INT Primary key,
	Email VARCHAR (40), 
	Senha VARCHAR (30),
	Nome_Usuario VARCHAR (30)

	Insert into Usuario (ID_Usuario, Email, Senha, Nome_Usuario)
	Values
	(1,'joao212@gmail.com','Joao3312', 'Joao007'),
	(3,'Marcelo0023@gmail.com','Marcelinho77','MarceloDosSantos'),
	(6,'IsadoraVargas@gmail.com','Isa3002!', 'IsaVargas')



	Alter table Usuario Drop column Email
	alter table Usuario ADD Email VARCHAR (255) NOT NULL
	alter table Usuario add Idade Varchar (50)
	Update Usuario set Idade = 24 where id_usuario = 6
	
	select * from Usuario
)




create table Produtos (
	ID_Produto INT Primary key,
	Nome_Produto VARCHAR (30) NOT NULL,
	Descricao TEXT NULL,
	Preco NUMERIC CHECK (PRECO > 0) NOT NULL,
	Qtde_Estoque SMALLINT DEFAULT 0
	
	insert into Produtos(ID_Produto,Nome_Produto, money,Qtde_Estoque)
	values 
	(3,'Bola de Vôlei',10,10),
	(8,'Agua sem gás', 2,20)

	select 'Bola de vôlei', 10 from Produtos 
	where money > 50
	order by money ASC
 
	Alter table Produtos rename column Preco to money

	select * from produtos 
	delete from Produtos where id_produto = 3

	update produtos set qtde_estoque = 20

	update produtos set qtde_estoque = 15
	
	
);

create table Pedidos (
	ID_Pedido SERIAL PRIMARY KEY,
	ID_Cliente INT NOT NULL REFERENCES Usuario(ID_Usuario),
	ID_Produto INT NOT NULL,
	Qtde smallint NOT NULL,
	FOREIGN KEY (ID_Produto) REFERENCES Produtos(ID_Produto)

	insert into Pedidos (ID_Pedido,ID_Cliente,ID_Produto)
	values
	(22,1,3),
	(11,3,8),
	(32,6,8),
	(14,3,3),
	(24,1,3)
	
	delete from pedidos where ID_Pedido = 22
	delete from pedidos where ID_Pedido = 32

	alter table Pedidos Drop column Qtde

	truncate table Pedidos 
	
	select * from Pedidos


)

	create table Categoria (
	
	
	Drop table Categoria
	
	 select * from Categoria
	)

	