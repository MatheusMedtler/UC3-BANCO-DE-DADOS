
--Exercico 1
create table historico_salarial (
 id_historico Serial primary key,
 id_usuario int not null,FOREIGN KEY (id_usuario) references usuario(id_usuario),
 data_alteracao date,
 salario money
)

select * from historico_salarial

--Exercicio 2
create or replace function atualizacao_salario()RETURNS
Trigger as $$ begin
insert into historico_salarial(ID_usuario,data_alteracao,salario)
values (NEW.ID_usuario,NOW(),NEW.salarioo);
return null;
end;
$$language plpgsql;

--Exercicio 3

create or replace trigger trigger_atualiza_salario
after insert or update on usuario
for each row 
execute function atualizacao_salario() 

update usuario set salarioo = '10900' where id_usuario = 1

select * from historico_salarial
select * from usuario
alter table usuario alter column salario type money

alter table usuario add salarioo money 

alter table usuario drop column salario

update usuario set salarioo = 2000

--Exercico 4 

update usuario set salarioo = '3500' where id_usuario = 1
update usuario set salarioo = '4000' where id_usuario = 9
update usuario set salarioo = '50000' where id_usuario = 4
select * from historico_salarial


--Exercicio 5

create table Preco_Produto (
 id_historicoPreco Serial primary key,
 id_produto int not null,FOREIGN KEY (id_produto) references  produtos(id_produto),
 data_alteracao date,
 salario money
)

create or replace function atualizacao_Preco()RETURNS
Trigger as $$ begin
insert into Preco_produto(ID_produto,data_alteracao,salario)
values (NEW.ID_produto,NOW(),NEW.money);
return null;
end;
$$language plpgsql;


create or replace trigger trigger_atualiza_preco
after insert or update on produtos
for each row 
execute function atualizacao_Preco() 


select * from Preco_Produto
update produtos set money = '100' where id_produto = 8
select * from Preco_Produto
select * from produtos