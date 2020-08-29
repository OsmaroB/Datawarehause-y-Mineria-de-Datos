create database spa_diego

use spa_diego

create table clientes(
id varchar(75),
sexo bit,
ingresos decimal(7,2),
prom_visit decimal (4,2),
edad int,
sauna int,
masaje int,
hidro int,
yoga int
)

--cantidad de hombre 
select 
    case when sexo=0  then 'Masculio'
	else 'Femenino'
	end as sexo,
	count(*) as cantidad
from clientes group by sexo;


--top 50 clientes que generan mas ingresos
select top 50
	id,
	(ingresos*prom_visit) as ingreso_visita
from clientes order by ingreso_visita desc

--cantidad de servicio brindado segun tipo
select
	sum(sauna) as cantidad_sauna,
	sum(masaje) as cantidad_masaje,
	sum(hidro) as cantidad_hidro,
	sum(yoga) as cantidad_yoga
from clientes
