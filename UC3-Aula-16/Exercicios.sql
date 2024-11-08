select count(*) from usuario 

select * from Usuario

select count(*) as clientes_mulheres from usuario
where genero = 'feminino'

select count(*) from usuario

select * from pedidos

select count(*) as pedidos_feitos from pedidos 
select count(qtde_produtos) from pedidos where id_pedido= 14
select count (*) as quantos_produtos from pedidos where id_produto = 8
select count(distinct id_cliente) from pedidos

alter table pedidos add qtde_produtos VARCHAR (50)
update pedidos set qtde_produtos = 15

select avg(salariO::numeric) as MediaSalarial from usuario

select * from usuario



select avg (money) as PrecoMedio from produtos

select avg (qtde_produtos::numeric) from pedidos

select avg (num_pedidos) from(select id_cliente, count (id_cliente) as num_pedidos 
from pedidos group by id_cliente) as pedidos_por_usuario


select avg (salario::numeric) from usuario

select sum(money/3) from produtos

select avg(salariO::numeric) as MediaSalarial from usuario WHERE genero = 'masculino'
select avg(salariO::numeric) as MediaSalarial from usuario WHERE genero = 'feminino'

select (select count (*) as usuario_feminino from usuario where genero = 'feminino'), 
(select count (*) as usuario_masculino from usuario where genero = 'masculino')


select * from usuario

