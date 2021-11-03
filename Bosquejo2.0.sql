drop database if exists Libreria;
create database Libreria;
use  Libreria;

create table titulos(
id int primary key auto_increment not null,
titulo varchar(30) not null,
categoria enum ('Cientifico', 'Literatura', 'de_viaje', 'Biografias', 'Poetico', 'Novela', 'Comedia', 'Drama', 'Musica', 'Comic', 'Dibujo', 'Tecnologia') not null,
precio float unsigned not null,
comentario varchar(200),
anio int,
pelicula boolean,
series boolean,
idGratuito boolean
);

create table autores(
id int auto_increment primary key,
idTitulo int not null,
nombre varchar(15),
apellido varchar(15),
ciudad varchar(20),
pais varchar(20)

);

create table compras(
id int not null auto_increment primary key,
idTienda int not null,
cantidad int unsigned,
precio float,
terminos_de_pago enum ('Debito', 'Cedito', 'Mercadopago', 'Efectivo', 'otros'),
fecha varchar(30),
idTitulo  int not null,
idOfertas boolean not null

);



create table tiendas (
id int auto_increment primary key,
idOferta enum ('P10%', 'P20%', 'P50%','P75%','P80%'),
nombre varchar(20) not null,
direccion  varchar(20) not null,
ciudad  varchar(15) not null,
pais  varchar(15) not null,
cp   char(5)  not null


);



create table ofertas(
id int auto_increment primary key,
compras_TipoDescuento enum ('P10%', 'P20%', 'P50%','P75%','P80%'),
idTitulo int not null,
idTienda int not null,
idAutor int not null

);

create table gratuitos(
id int not null primary key,
idAutor int not null,
titulo varchar(30),
formato enum('PDF','EPUB'),
email_propietario varchar(30)

);
drop table compras;
insert into titulos ( titulo, categoria, precio, comentario, anio, pelicula, series) values
('Mis Primos', 'Drama', 2900, 'Un libro interesante', 2021,false,false);

insert into autores (idTitulo, nombre, apellido, ciudad, pais) values
( 1,'Chinua', 'Achebe','kano','Nigeria');

insert into compras (idTienda, cantidad, precio, terminos_de_pago,fecha, idTitulo,idOferta) values
(1,5,900,'Debito','3 de noviembre', 1,' ');

insert into tiendas  ( idCompra, nombre, direccion, ciudad, pais, cp) values
(1,'Cuspide libros', 'Vicente Lopez 2050', 'Buenos Aires', 1128);

insert into ofertas (compras_TipoDescuento) values
('P20%'); 


alter table titulos add constraint FK_titulos_idGratuito  foreign key(idGratuito) references gratuitos (id);
 -- alter table 
  -- titulo 
 alter table autores add constraint FK_autores_idTitulo foreign key(idTitulo) references titulos(id);
   
  alter table compras add constraint FK_compras_idTienda  foreign key(idTienda) references tiendas(id);
   alter table compras add constraint FK_compras_idOferta foreign key(idOferta) references ofertas(id);
    alter table compras add constraint FK_compras_idTitulo foreign key(idTitulo) references titulos(id);
  
  
alter table tiendas  add constraint FK_tiendas_idCompra foreign key(idCompra) references compras(id);

alter table ofertas add constraint FK_ofertas_idTitulo foreign key(idTitulo) references titulos(id);
 alter table ofertas add constraint FK_ofertas_idTienda foreign key(idTitulo) references tiendas(id);
alter table ofertas add constraint FK_ofertas_idAutor foreign key(idTitulo) references autores(id);

alter table gratuitos add constraint FK_gratuitos_idAutor foreign key(idAutor) references autores(id);
  
 --  foreign key(id_tienda) references tienda(id),
 -- foreign key(id_ofertas) references ofertas (id),
-- foreign key(id_titulo) references titulos(id)
     
 -- tiendas 
--  foreign key(id_compra) references compras(id)

  --  ofertas
  -- foreign key(id_titulo) references titulos(id),
-- foreign key(id_tienda) references tiendas(id),
-- foreign key(id_autor) references autores(id)

--  gratuitos
-- foreign key(id_autor) references autores(id) 



