create or replace view produtos_comprados as 
	select PE.id_pedido as numero_pedido, nome_usuario,nome_produto,PE.qtde_produtos  as quantidade,PE.Qtde_produtos*money as fatura
	from pedidos PE
	inner join produtos
	on PE.ID_produto = Produtos.Id_produto
	inner join Usuario
	on PE.Id_cliente = Usuario.Id_usuario

	select * from produt 

/*Exercicio*/
/*1*/

create or replace view Produtos_categorias as
select nome_produto as nome_categoria 
from produtos
inner join categoria
on produtos.id_categoria = categoria.id_categoria

select * from categoria
select * from Produtos_categorias

alter table categoria alter column nome_categoria type VarChar (50) 

/*2*/

create or replace view pedidos_feitos as
select id_pedido,nome_usuario
from usuario
right join pedidos
on usuario.id_usuario = pedidos.id_cliente


select * from pedidos_feitos

select * from usuario
select * from pedidos

/*3*/

create or replace view produtos_comprador as
select pe.id_pedido as numero_pedido, nome_usuario,nome_produto,pe.qtde_produtos,pe.qtde_produtos *money as fatura
from pedidos pe
inner join produtos
on pe.id_produto = produtos.id_produto
full outer join usuario
on pe.id_cliente = usuario.id_usuario

select * from produtos_comprador


/*Exercicio*/ 
create index on Usuario(id_usuario)

create index on Produtos using hash(ID_produto)

create index on Pedidos using hash(id_pedido)

	