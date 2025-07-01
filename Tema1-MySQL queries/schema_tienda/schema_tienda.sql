

DROP DATABASE IF EXISTS tienda;
CREATE DATABASE tienda CHARACTER SET utf8mb4;
USE tienda;

CREATE TABLE fabricante (
  codigo INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  nombre VARCHAR(100) NOT NULL
);

CREATE TABLE producto (
  codigo INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  nombre VARCHAR(100) NOT NULL,
  precio DOUBLE NOT NULL,
  codigo_fabricante INT UNSIGNED NOT NULL,
  FOREIGN KEY (codigo_fabricante) REFERENCES fabricante(codigo)
);

INSERT INTO fabricante VALUES(1, 'Asus');
INSERT INTO fabricante VALUES(2, 'Lenovo');
INSERT INTO fabricante VALUES(3, 'Hewlett-Packard');
INSERT INTO fabricante VALUES(4, 'Samsung');
INSERT INTO fabricante VALUES(5, 'Seagate');
INSERT INTO fabricante VALUES(6, 'Crucial');
INSERT INTO fabricante VALUES(7, 'Gigabyte');
INSERT INTO fabricante VALUES(8, 'Huawei');
INSERT INTO fabricante VALUES(9, 'Xiaomi');

INSERT INTO producto VALUES(1, 'Disco duro SATA3 1TB', 86.99, 5);
INSERT INTO producto VALUES(2, 'Memoria RAM DDR4 8GB', 120, 6);
INSERT INTO producto VALUES(3, 'Disco SSD 1 TB', 150.99, 4);
INSERT INTO producto VALUES(4, 'GeForce GTX 1050Ti', 185, 7);
INSERT INTO producto VALUES(5, 'GeForce GTX 1080 Xtreme', 755, 6);
INSERT INTO producto VALUES(6, 'Monitor 24 LED Full HD', 202, 1);
INSERT INTO producto VALUES(7, 'Monitor 27 LED Full HD', 245.99, 1);
INSERT INTO producto VALUES(8, 'Portátil Yoga 520', 559, 2);
INSERT INTO producto VALUES(9, 'Portátil Ideapd 320', 444, 2);
INSERT INTO producto VALUES(10, 'Impresora HP Deskjet 3720', 59.99, 3);
INSERT INTO producto VALUES(11, 'Impresora HP Laserjet Pro M26nw', 180, 3);

-- ej 1:

select  nombre from producto;

-- ej 2:
select  nombre,precio from producto;

-- ej 3
select * from producto;

-- ej 4
alter table producto add tipo_moneda varchar(30);
update producto set tipo_moneda ='EUR' where codigo = 1;
update producto set tipo_moneda ='USD' where codigo = 2;
update producto set tipo_moneda ='EUR' where codigo = 3;
update producto set tipo_moneda ='EUR' where codigo = 4;
update producto set tipo_moneda ='USD' where codigo = 5;
update producto set tipo_moneda ='EUR' where codigo = 6;
update producto set tipo_moneda ='EUR' where codigo = 7;
update producto set tipo_moneda ='USD' where codigo = 8;
update producto set tipo_moneda ='EUR' where codigo = 9;
update producto set tipo_moneda ='EUR' where codigo = 10;
update producto set tipo_moneda ='USD' where codigo = 11;
SELECT nombre,
 precio as 'precio original',
 tipo_moneda ,
 case 
   when tipo_moneda = 'USD' then round(precio*0.9174, 2)
   else precio
 end as precio_en_EUR,
 case 
   when tipo_moneda ='EUR' then round(precio*1.08, 2)
   else precio
  end as precio_en_USD
 from producto;

-- 1 USD = 0.9174 EUR
-- 1 EUR = 1.08 USD

-- ej 5

select nombre as 'nombre del producto ',
  case
   when tipo_moneda ='USD' then round(precio*0.9174,2)
   else precio
   end 'euros',
  case
   when tipo_moneda ='EUR' then round(precio*1.08,2)
   else precio
   end 'dolares estadounidenses'
    
 from producto;

-- ej 6
-- update producto
-- set nombre= upper(nombre); modifica de forma permanente la tabla
select upper(nombre) as 'nombre de producto',precio from producto;

-- ej 7
-- update producto
-- set nombre= lower(nombre);
select lower(nombre) as 'nombre de producto',precio from producto;

-- ej 8
 select
    nombre as 'nombre del fabricante', 
   upper(substring(nombre, 1, 2)) AS 'primeros dos caracteres en mayúsculas'
from fabricante;
-- ej 9
select nombre,
 round(precio,0) as 'precio redondeado'
 from producto;
 -- ej 10 
 select nombre,
 truncate(precio,0) as 'precio truncado'
 from producto;
 -- ej 11 
 select  codigo_fabricante from producto;
 
 -- ej 12
 select  distinct  codigo_fabricante from producto;

-- ej 13
select  nombre  
from fabricante
order by nombre asc ;

-- ej 14 
select  nombre  
from fabricante
order by nombre desc ;

-- ej 15 
select  nombre  , precio
from producto
order by nombre asc
,precio desc ;

-- ej 16
select  codigo,nombre 
from fabricante
limit 5;

-- ej 17
select  codigo,nombre 
from fabricante
limit 2 offset 3;