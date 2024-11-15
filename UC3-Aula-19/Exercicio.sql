select id_pedido, nome_usuario,nome_produto,qtde_estoque
from pedidos 
join produtos
on pedidos.id_produto = produtos.id_produto
join usuario
on pedidos.id_cliente = usuario.id_usuario

/*Exercicios*/

/*1*/
select id_pedido, us.id_usuario, nome_produto, nome_usuario,pedidos.qtde_produtos
from pedidos
join  produtos
on pedidos.id_produto = produtos.id_produto
join usuario us
on pedidos.id_cliente= us.id_usuario
where us.id_usuario = 1

select * from usuario

/*2*/
create table categoria(
id_categoria int primary key,
nome_categoria int)

alter table produtos add id_categoria int references categoria(id_categoria)

