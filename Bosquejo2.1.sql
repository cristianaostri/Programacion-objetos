drop database if exists Libreria;
create database Libreria;
use  Libreria;

drop table if exists autores;
drop table if exists compras;
drop table if exists tiendas;
drop table if exists titulos;


create table titulos(
id int primary key auto_increment not null,
titulo varchar(30) not null,
categoria enum ('Cientifico', 'Literatura', 'de_viaje', 'Biografias', 'Poetico', 'Novela', 'Comedia', 'Drama', 'Musica', 'Comic', 'Dibujo', 'Tecnologia') not null,
precio float unsigned not null,
comentario varchar(500),
anio int,
pelicula boolean,
series boolean,
idAutor int not null
);

create table autores(
id int auto_increment primary key,
nombre varchar(15),
apellido varchar(15),
ciudad varchar(20),
pais varchar(20),
idTitulo int not null
);

create table compras(
id int not null auto_increment primary key,
cantidad int unsigned,
precio float,
terminos_de_pago enum ('Debito', 'Cedito', 'Mercadopago', 'Efectivo', 'otros'),
fecha date ,
idTitulo  int not null,
idTienda int not null
);



create table tiendas (
id int auto_increment primary key,
nombre varchar(20) not null,
direccion  varchar(20) not null,
ciudad  varchar(15) not null,
pais  varchar(15) not null,
cp   char(5)  not null,
idCompra int not null

);


/*
create table ofertas(
id int auto_increment primary key,
compras_TipoDescuento enum ('P10%', 'P20%', 'P50%','P75%','P80%'),
idTitulo int not null,
idTienda int not null,
idAutor int not null

);

create table gratuitos(
id int not null auto_increment primary key,
titulo varchar(30),
formato enum('PDF','EPUB'),
email_propietario varchar(30),
idAutor int not null
);
*/

-- alter table titulos add constraint FK_titulos_idGratuito  foreign key(idGratuito) references gratuitos(id);
alter table titulos add constraint FK_titulos_idAutor foreign key(idAutor) references Autores(id);
 
 alter table autores add constraint FK_autores_idTitulo foreign key(idTitulo) references titulos(id);
   
  alter table compras add constraint FK_compras_idTienda  foreign key(idTienda) references tiendas(id);
  
    alter table compras add constraint FK_compras_idTitulo foreign key(idTitulo) references titulos(id);
  
  
alter table tiendas  add constraint FK_tiendas_idCompra foreign key(idCompra) references compras(id);

-- alter table ofertas add constraint FK_ofertas_idTitulo foreign key(idTitulo) references titulos(id);
 -- alter table ofertas add constraint FK_ofertas_idTienda foreign key(idTitulo) references tiendas(id);
-- alter table ofertas add constraint FK_ofertas_idAutor foreign key(idTitulo) references autores(id);

-- alter table gratuitos add constraint FK_gratuitos_idAutor foreign key(idAutor) references autores(id);
  
  describe autores;
  describe compras;
  describe gratuitos;
  describe ofertas;
  describe tiendas;
  describe titulos;




