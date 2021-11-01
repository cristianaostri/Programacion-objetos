create database Libreria;
use  Libreria;

create table titulos(
id int primary key auto_increment not null,
titulo varchar(30) not null,
categoria enum ('Cientifico', 'Literatura', 'de_viaje', 'Biografias', 'Poetico', 'Novela', 'Comedia', 'Drama', 'Musica', 'Comic', 'Dibujo', 'Tecnologia') not null,
precio float unsigned not null,
comentario varchar(200),
año date,
pelicula boolean,
series boolean,
id_gratuito boolean not null,
foreign key(id_gratuito) references gratuitos(id)
);

create table autores(
id int auto_increment primary key,
id_titulo int not null,
nombre varchar(15),
apellido varchar(15),
ciudad varchar(20),
pais varchar(20),
foreign key(id_titulo) references titulos(id)
);

create table compras(
id int not null auto_increment primary key,
id_tienda int not null,
cantidad int unsigned,
precio float,
terminos_de_pago enum ('Debito', 'Cedito', 'Mercadopago', 'Efectivo', 'otros'),
fecha date,
id_titulo  int not null,
id_ofertas boolean not null,
foreign key(id_tienda) references tienda(id),
foreign key(id_ofertas) references ofertas (id),
foreign key(id_titulo) references titulos(id)
);



create table tiendas (
id int auto_increment primary key,
id_compra int not null,
nombre varchar(20) not null,
direccion  varchar(20) not null,
ciudad  varchar(15) not null,
pais  varchar(15) not null,
cp   char(5)  not null,
foreign key(id_compra) references compras(id)

);



create table ofertas(
id int auto_increment primary key,
compras_TipoDescuento enum ('P10%', 'P20%', 'P50%','P75%','P80%'),
id_titulo int not null,
id_tienda int not null,
id_autor int not null,
foreign key(id_titulo) references titulos(id),
foreign key(id_tienda) references tiendas(id),
foreign key(id_autor) references autores(id)
);

create table gratuitos(
id int not null primary key,
id_autor int not null,
titulo varchar(30),
formato enum('PDF','EPUB'),
email_propietario varchar(30),
foreign key(id_autor) references autores(id)
);



  /*
   libros escritos por autor
  * /





