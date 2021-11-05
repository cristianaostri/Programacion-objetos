
insert into juegos(nombre, consola, año, empresa, stock) values('Gta V Grand Theft Auto 5', 'PlayStation4','2013/09/17', 'Rockstar',1 );
insert into juegos(nombre, consola, año, empresa, stock) values( 'Far Cry','PlayStation4','2021/10/07','Ubisoft',2 );
insert into juegos(nombre, consola, año, empresa, stock) values( 'FIFA 2021','PlayStation5','2021/09/30', 'EA Canada',0);
insert into juegos(nombre, consola, año, empresa, stock) values( 'The Legend of Zelda: Breath of the Wild 2','Nintendo Switch','2022/03/19','Nintendo',3 );
insert into juegos(nombre, consola, año, empresa, stock) values( 'Digimon Survive', 'Nintendo Switch','2022/07/04', 'Nintendo',2);

insert into clientes( nombre, apellido, telefono) values ('Luis','Sanchez','1165976431');
insert into clientes( nombre, apellido, telefono) values ('Carlos','Almirante','113451976');
insert into clientes( nombre, apellido, telefono) values ('Ruben','Ramirez','1168431679');
insert into clientes( nombre, apellido, telefono) values ('Cecilia','Bustamante','29948761941');
insert into clientes( nombre, apellido, telefono) values ('Roque','Solo','291645387619');

insert into ventas (nombre, fecha,idCliente,idJuego) values('Far Cry', '2021/08/25', 2, 2);
insert into ventas (nombre, fecha,idCliente,idJuego) values('FIFA 2021', '2021/09/03',1,3);
insert into ventas (nombre, fecha,idCliente,idJuego) values('The Legend of Zelda: Breath of the Wild 2', '2021/05/15',3,4);
insert into ventas (nombre, fecha,idCliente,idJuego) values('Digimon Survive','2021/09/14,5,5');
insert into ventas (nombre, fecha,idCliente,idJuego) values('Gta V Grand Theft Auto 5', '2021/07/25',4,1);


insert into accesorios (consola, juego, joystick, otros, cantidad, precio,) values (  'Wii', 0, 0, 'Palos De Pool Para La Wii', 5, 350);
insert into accesorios (consola, juego, joystick, otros, cantidad, precio,) values ( 'PlayStation5', 0,0, 'casco virtual', 3, 15000);
insert into accesorios (consola, juego, joystick, otros, cantidad, precio,) values ( 'Nintendo Switch', 0, 0, 'Control Inalambrico',0, 2, 5800);
insert into accesorios (consola, juego, joystick, otros, cantidad, precio,) values ( 'Xbox 360', 0,0, 'Control inalambrico', 2, 5790);
insert into accesorios (consola, juego, joystick, otros, cantidad, precio,) values ('Xbox 360',0,0,'microfono',0,18000  );
