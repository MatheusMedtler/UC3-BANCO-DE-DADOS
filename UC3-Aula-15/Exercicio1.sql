create table Usuario (
	ID_Usuario INT Primary key,
	Email VARCHAR (40),
	Senha VARCHAR (30),
	Nome_Usuario VARCHAR (30)
)
	alter table Usuario add column Genero Char (20)
	alter table Usuario add column Salario Char (20)

	insert into Usuario (id_usuario,senha,nome_usuario,email,idade,genero,salario)
	values
	(9,'331232','Felipe', 'felipedossantos@gmail.com',22, 'masculino',2.000),
	(8,'0021232','Junior','JuniorFernandes@gmail.com',30, 'masculino', 2.500),
	(4, 'Felipe002','Felipe','FelipeFagundes@gmail.com',20, 'masculino',1.500),
	
	alter table Usuario add column CPF Char (11)
	update Usuario set cpf = 33222300332 where id_usuario = 1
	update Usuario set cpf = 00244298721 where id_usuario = 4
	update Usuario set cpf = 72308963387 where id_usuario = 8
	update Usuario set cpf = 99231222159 where id_usuario = 9
	update Usuario set cpf = 47477398312 where id_usuario = 6
	update Usuario set cpf = 00298378420 where id_usuario = 3
	update Usuario set genero = 'masculino' where id_usuario = 1
	update usuario set genero = 'feminino' where id_usuario = 6
	update usuario set genero = 'masculino' where id_usuario = 3
	update usuario set salario = 3000 where id_usuario = 1
	update usuario set salario = 2000 where id_usuario = 3
	update usuario set salario = 3200 where id_usuario = 6
		update usuario set nome_usuario = 'Julia' where id_usuario = 8
		update usuario set genero = 'feminino' where id_usuario = 8
		
	select * from Usuario
	select distinct nome_usuario from usuario		
	select distinct from usuario	
	select nome_usuario,cpf from usuario
	select nome_usuario,cpf from usuario where genero= 'feminino' order by nome_usuario desc

	select nome_usuario, salario from usuario where genero = 'masculino' and
salario < 3000
	



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