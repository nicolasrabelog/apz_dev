/* Alternando os registros das tabelas */

update `bd_caso_estudo_vendas`.`tb_cli`
set cli_nome = 'Novo Nome Cliente',
where cli_cod = 1;
select * from tb_cli;

/* Deletando registros de banco de dados */
delete from `bd_caso_estudo_vendas`.`tb_prod`
where prod_cod = 3;

/*Consultando registro e selecionando colunas */
select prod_cod, prod_forn_cod, prod_desc, prod_vlr
from `bd_caso_estudo_vendas`.`tb_prod`
where prod_cod = 3;


/*Consultar todos registros das tabelas*/
select * from tb_cli;
order by cli_nome asc;

select 
* from bd_caso_estudo_vendas.tb_func
inner join  bd_caso_estudo_vendas.tb_depto
	on depto_cod = func_depto

  select cli_cod,cli_nome,func_nome
 from bd_caso_estudo_vendas.tb_compra
 inner join bd_caso_estudo_vendas.tb_func
	on func_cod = compra_func_cod
inner join bd_caso_estudo_vendas.tb_cli
	on cli_cod = compra_qtd_cod;

/*Clausulas, operadores e funcoes*/

select * from bd_caso_estudo_vendas.tb_func
where func_nome like '%Pedro%';

select compra_cod
from bd_caso_estudo_vendas. tb_prod_comp
group by compra_cod;

  select * 
  from bd_caso_estudo_vendas.tb_prod
  where prod_vlr between 10 and 25;

select sum(prod_vlr)
from bd_caso_estudo_vendas.tb_prod;

select avg(prod_vlr)
from bd_caso_estudo_vendas.tb_prod
