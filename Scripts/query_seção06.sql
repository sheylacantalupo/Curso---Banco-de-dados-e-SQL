use secao06;

select * from funcionarios;

select count(*) from funcionarios;

select count(*), departamento
from funcionarios 
group by departamento
order by 1;

select count(*), sexo
from funcionarios 
group by sexo;

select *  
from funcionarios 
where (departamento = 'Roupas' or departamento ='Filmes');

select nome as Nome, departamento
from funcionarios 
where (departamento = 'Filmes' or departamento ='Lar') 
and sexo = 'Feminino';

select * 
from funcionarios
where sexo = 'Masculino'
or departamento = 'Jardim';





