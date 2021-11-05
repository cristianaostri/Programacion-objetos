drop database CasaDeVideoJuegos;
create database CasaDeVideoJuegos;
use CasadeVideoJuegos;

drop table if exists juegos;
drop table if exists stock;
drop table if exists historiais;
drop table if exists usuarios;
drop table if exists proveedores;

create table juegos(
id int auto_increment primary key,
nombre varchar (50) not null,
consola enum('PlayStation4', 'PlayStation5', 'Xbox 360', 'Wii', 'Nintendo DS','PlayStation Portable Go', 'Nintendo Switch'),
año date,
empresa varchar(50)
);

create table stocks(
id int auto_increment primary key,
nombre varchar(50) not null,
consola enum('PlayStation4', 'PlayStation5', 'Xbox 360', 'Wii', 'Nintendo DS','PlayStation Portable Go', 'Nintendo Switch'),
cantidad int not null,
precio double not null,
fecha date not null,
idJuego int not null,
idAccesorio int not null
);

create table historiais(
id int auto_increment  primary key not null,
nombre varchar(50),
fecha date,
idCliente int not null,
idJuego int not null,
idAccesorio int not null
);



create table clientes(
id int auto_increment primary key,
nombre varchar(30) not null,
apellido varchar(30) not null,
telefono varchar(20)
);

create table proveedores(
id int auto_increment primary key,
nombre varchar(30) not null,
direccion varchar(30) not null,
telefono int not null,
consola enum('PlayStation4', 'PlayStation5', 'Xbox 360', 'Wii', 'Nintendo DS','PlayStation Portable Go', 'Nintendo Switch')
);

create table accesorios(
id int auto_increment primary key,
consola enum('PlayStation4', 'PlayStation5', 'Xbox 360', 'Wii', 'Nintendo DS','PlayStation Portable Go', 'Nintendo Switch'),
juego boolean,
joystick boolean,
otros varchar(50),
cantidad int not null,
precio double
);

alter table stocks add constraint FK_stocks_idJuego  foreign key(idJuego) references juegos (id);
alter table stocks add constraint FK_stocks_idAccesorio  foreign key(idAccesorio) references accesorios (id);

alter table historiais add constraint FK_historiais_idCliente foreign key(idCliente) references clientes (id);
alter table historiais add constraint FK_historiais_idJuego foreign key(idJuego) references juegos (id);
alter table historiais add constraint FK_historiais_idAccesorio foreign key(idAccesorio) references accesorios (id);



insert into juegos(nombre, consola, año, empresa) values('Gta V Grand Theft Auto 5', 'PlayStation4','2013/09/17', 'Rockstar' );
insert into juegos(nombre, consola, año, empresa) values( 'Far Cry','PlayStation4','2021/10/07','Ubisoft' );
insert into juegos(nombre, consola, año, empresa) values( 'FIFA 2021','PlayStation5','2021/09/30', 'EA Canada');
insert into juegos(nombre, consola, año, empresa) values( 'The Legend of Zelda: Breath of the Wild 2','Nintendo Switch','2022/03/19','Nintendo' );
insert into juegos(nombre, consola, año, empresa) values( 'Digimon Survive', 'Nintendo Switch','2022/07/04', 'Nintendo');

insert into clientes( nombre, apellido, telefono) values ('Luis','Sanchez','1165976431');
insert into clientes( nombre, apellido, telefono) values ('Carlos','Almirante','113451976');
insert into clientes( nombre, apellido, telefono) values ('Ruben','Ramirez','1168431679');
insert into clientes( nombre, apellido, telefono) values ('Cecilia','Bustamante','29948761941');
insert into clientes( nombre, apellido, telefono) values ('Roque','Solo','291645387619');

insert into historiais (nombre,fecha,idCliente,idJuego) values('Far Cry', '2021/08/25', 2, 3);



insert into accesorios (consola, juego, joystick, otros, cantidad, precio) values (  'Wii', 0, 0, 'Palos De Pool Para La Wii', 5, 350);


insert into stocks(nombre, consola, cantidad, precio, fecha, idJuego, IdAccesorio) values ('Gta V Grand Theft Auto 5', 'PlayStation4', 3, 4000, '2021/09/15',1,0);
