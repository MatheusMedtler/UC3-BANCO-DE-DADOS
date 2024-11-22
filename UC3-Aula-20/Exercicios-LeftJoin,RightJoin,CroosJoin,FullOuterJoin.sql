select nome_produto, nome_categoria
from produtos
	left join Categoria
	on produtos.ID_categoria = categoria.Id_categoria

	select * from produtos

	insert into Categoria (id_categoria, nome_categoria)
	values 
	(8, 'Brinquedo'),
	(3,'Bebidas')

	select * from usuario

	create table categoria(
	id_categoria int primary key,
	nome_categoria varchar(80) not null
	)

	
	update produtos set id_categoria =3 where id_produto = 8






	select nome_usuario,Id_pedido
	from usuario
	right join Pedidos 
	on usuario.Id_usuario = pedidos.id_pedido


	select nome_produto,nome_usuario
	from produtos 
	cross join usuario


	select nome_produto,nome_categoria
	from produtos 
	full outer join categoria
	on produtos.id_categoria = categoria.id_categoria


/*EXERCICIOS*/
/*1*/

select nome_produto, nome_categoria
from categoria
	left join produtos 
	on produtos.ID_categoria = categoria.Id_categoria
	
	/*2*/

	select nome_usuario,Id_pedido
	from usuario
	right join Pedidos 
	on usuario.Id_usuario = pedidos.id_pedido



	/*3*/

	select nome_produto,nome_categoria
	from produtos 
	cross join categoria
	where nome_categoria = 'Brinquedo'

	/*4*/

	select id_pedido,nome_categoria, nome_produto
	from pedidos
	full outer join produtos
	on produtos.id_produto = pedidos.id_produto
	full outer join categoria 
	on produtos.id_categoria = categoria.id_categoria

	
	
	