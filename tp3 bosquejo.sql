create database Libreria;
use  Libreria;

create table titulo(
id int primary key auto_increment,
titulo varchar(80) not null,
categoria enum ('Cientifico', 'Literatura', 'de_viaje', 'Biografias', 'Poetico', 'Novela', 'Comedia', 'Drama', 'Musica'. 'Comic', 'Dibujo', 'Tecnologia') not null,
precio float unsigned not null,
comentario varchar(200),
año date,
pelicula boolean,
series boolean
);

create table Autor(
id int auto_increment primary key,
titulo_id int auto_increment foreign key,
nombre varchar(15),
apellido varchar(15),
ciudad varchar(20),
pais varchar(20),
libros_escritos libros escritos
);

create table Tiendas (
id int auto_increment primary key,
nombre varchar(20) not null,
direccion  varchar(20) not null,
ciudad  varchar(15) not null,
pais  varchar(15) not null,
cp   int unsigned not null
);

create table compras(
tienda_id int auto_increment foreign key,
cantidad int,
terminos de pago enum ('Debito', 'Cedito', 'Mercadopago', 'Efectivo', 'otros'),
fecha de pago  date,
titulo_id int primary key auto_increment,
precio float,
tipoDescuento enum (10%, 20%, 50%,75%,80%) foreign key
);

create table ofertas(
titulo_id int foreign key,
compras_TipoDescuento enum (10%, 20%, 50%,75%,80%) primary key,
tienda_id  int foreign key not null,
autor_id  int foreign key
);

create table Gratuitos(
titulo varchar(30), primary key,
formato enum(pdf,epub),
autor_id int auto_increment primary key,
email_Propietario varchar(30));









