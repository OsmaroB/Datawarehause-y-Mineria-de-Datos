create database floristeria_fiorella

use floristeria_fiorella

create table productos(
id varchar(75),
rosas int,
claveles int,
macetas int,
tierra int,
girasoles int,
hortencia int,
globos int,
tarjetas int,
orquideas int,
carmesi int,
lirios int,
aurora int,
tulipanes int,
liston int,
departamento varchar(15)
)

select * from productos

--venta de productos en el pais
select
	sum(rosas) as ventas_rosas,
	sum(claveles) as ventas_claveles,
	sum(macetas) as vetas_macetas,
	sum(tierra) as ventas_tierra,
	sum(girasoles) as ventas_girasoles,
	sum(hortencia) as ventas_hortencia,
	sum(globos) as ventas_globos,
	sum(tarjetas) as ventass_tarjetas,
	sum(orquideas) as ventas_orquideas,
	sum(carmesi) as ventas_carmesi,
	sum(lirios) as ventas_lirios,
	sum(aurora) as ventas_aurura,
	sum(tulipanes) as ventas_tulipanes,
	sum(liston) as ventass_liston
from productos

--venta de productos san salvador
--venta de productos en el pais
select
	sum(rosas) as ventas_rosas,
	sum(claveles) as ventas_claveles,
	sum(macetas) as vetas_macetas,
	sum(tierra) as ventas_tierra,
	sum(girasoles) as ventas_girasoles,
	sum(hortencia) as ventas_hortencia,
	sum(globos) as ventas_globos,
	sum(tarjetas) as ventass_tarjetas,
	sum(orquideas) as ventas_orquideas,
	sum(carmesi) as ventas_carmesi,
	sum(lirios) as ventas_lirios,
	sum(aurora) as ventas_aurura,
	sum(tulipanes) as ventas_tulipanes,
	sum(liston) as ventass_liston
from productos where departamento='San Salvador'

--venta de productos santa ana
select
	sum(rosas) as ventas_rosas,
	sum(claveles) as ventas_claveles,
	sum(macetas) as vetas_macetas,
	sum(tierra) as ventas_tierra,
	sum(girasoles) as ventas_girasoles,
	sum(hortencia) as ventas_hortencia,
	sum(globos) as ventas_globos,
	sum(tarjetas) as ventass_tarjetas,
	sum(orquideas) as ventas_orquideas,
	sum(carmesi) as ventas_carmesi,
	sum(lirios) as ventas_lirios,
	sum(aurora) as ventas_aurura,
	sum(tulipanes) as ventas_tulipanes,
	sum(liston) as ventass_liston
from productos where departamento='Santa Ana'

--venta de productos san miguel
select
	sum(rosas) as ventas_rosas,
	sum(claveles) as ventas_claveles,
	sum(macetas) as vetas_macetas,
	sum(tierra) as ventas_tierra,
	sum(girasoles) as ventas_girasoles,
	sum(hortencia) as ventas_hortencia,
	sum(globos) as ventas_globos,
	sum(tarjetas) as ventass_tarjetas,
	sum(orquideas) as ventas_orquideas,
	sum(carmesi) as ventas_carmesi,
	sum(lirios) as ventas_lirios,
	sum(aurora) as ventas_aurura,
	sum(tulipanes) as ventas_tulipanes,
	sum(liston) as ventass_liston
from productos where departamento='San Miguel'

--mejores combinaciones pais
select concat(
	convert(varchar(1), rosas),', ',
	convert(varchar(1), claveles),', ',
	convert(varchar(1), macetas),', ',
	convert(varchar(1), tierra),', ',
	convert(varchar(1), girasoles),', ',
	convert(varchar(1), hortencia),', ',
	convert(varchar(1), globos),', ',
	convert(varchar(1), tarjetas),', ',
	convert(varchar(1), orquideas),', ',
	convert(varchar(1), carmesi),', ',
	convert(varchar(1), lirios),', ',
	convert(varchar(1), aurora),', ',
	convert(varchar(1), tulipanes),', ',
	convert(varchar(2), liston)) as combinacion
	,COUNT(*) as cantidad
from productos
group by rosas,claveles,macetas,tierra,girasoles,hortencia,
globos,tarjetas,orquideas,carmesi,lirios,aurora,tulipanes,liston


--mejores combinaciones san salavdor
select concat(
	convert(varchar(1), rosas),', ',
	convert(varchar(1), claveles),', ',
	convert(varchar(1), macetas),', ',
	convert(varchar(1), tierra),', ',
	convert(varchar(1), girasoles),', ',
	convert(varchar(1), hortencia),', ',
	convert(varchar(1), globos),', ',
	convert(varchar(1), tarjetas),', ',
	convert(varchar(1), orquideas),', ',
	convert(varchar(1), carmesi),', ',
	convert(varchar(1), lirios),', ',
	convert(varchar(1), aurora),', ',
	convert(varchar(1), tulipanes),', ',
	convert(varchar(2), liston)) as combinacion
	,COUNT(*) as cantidad
from productos where departamento='San Salvador'
group by rosas,claveles,macetas,tierra,girasoles,hortencia,
globos,tarjetas,orquideas,carmesi,lirios,aurora,tulipanes,liston


--mejores combinaciones santa ana
select concat(
	convert(varchar(1), rosas),', ',
	convert(varchar(1), claveles),', ',
	convert(varchar(1), macetas),', ',
	convert(varchar(1), tierra),', ',
	convert(varchar(1), girasoles),', ',
	convert(varchar(1), hortencia),', ',
	convert(varchar(1), globos),', ',
	convert(varchar(1), tarjetas),', ',
	convert(varchar(1), orquideas),', ',
	convert(varchar(1), carmesi),', ',
	convert(varchar(1), lirios),', ',
	convert(varchar(1), aurora),', ',
	convert(varchar(1), tulipanes),', ',
	convert(varchar(2), liston)) as combinacion
	,COUNT(*) as cantidad
from productos where departamento='Santa Ana'
group by rosas,claveles,macetas,tierra,girasoles,hortencia,
globos,tarjetas,orquideas,carmesi,lirios,aurora,tulipanes,liston


--mejores combinaciones san miguel
select concat(
	convert(varchar(1), rosas),', ',
	convert(varchar(1), claveles),', ',
	convert(varchar(1), macetas),', ',
	convert(varchar(1), tierra),', ',
	convert(varchar(1), girasoles),', ',
	convert(varchar(1), hortencia),', ',
	convert(varchar(1), globos),', ',
	convert(varchar(1), tarjetas),', ',
	convert(varchar(1), orquideas),', ',
	convert(varchar(1), carmesi),', ',
	convert(varchar(1), lirios),', ',
	convert(varchar(1), aurora),', ',
	convert(varchar(1), tulipanes),', ',
	convert(varchar(2), liston)) as combinacion
	,COUNT(*) as cantidad
from productos where departamento='San Miguel'
group by rosas,claveles,macetas,tierra,girasoles,hortencia,
globos,tarjetas,orquideas,carmesi,lirios,aurora,tulipanes,liston
