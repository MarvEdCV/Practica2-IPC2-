create database hoteles;
use hoteles;

/*CREACION DE TABLAS:*/
create table CLIENTE (
No_ID int NOT NULL,
Nombre varchar(25) NOT NULL,
Apellido varchar(25) NOT NULL,
primary key (No_ID)
);


create table DIAFESTIVO(
nombreFestividad varchar(50) NOT NULL primary KEY
);

create table TIPOHABITACION(
tipo varchar(25) NOT NULL primary key
);

create table PAIS(
NombrePais varchar(50) not null primary key
);

create table CATEGORIA(
NoEstrellas int not null primary key
);

create table HOTEL(
NombreHotel varchar(75) not null,
NoEstrellas int not null,
NombrePais varchar(50),
primary key(NombreHotel,NoEstrellas,NombrePais),
foreign key(NoEstrellas) references CATEGORIA(NoEstrellas),
foreign key(NombrePais) references PAIS(NombrePais)
);

create table HABITACION(
CodigoHabitacion int auto_increment,
NombreHotel varchar(75) not null,
tipo varchar (25) not null,
NoHabitacion int not null,
primary key(CodigoHabitacion),
foreign key(NombreHotel) references HOTEL(NombreHotel),
foreign key(tipo) references TIPOHABITACION(tipo)
);

create table RESERVACION(
codigo_reservacion int auto_increment,
NombreHotel varchar(75) not null,
NoEstrellas int not null,
No_ID int,
nombreFestividad varchar(50),
NombrePais varchar(50) not null,
fecha date not null,
salidaTarde bit,
primary key(codigo_reservacion),
foreign key(NombreHotel) references HOTEL(nombreHotel),
foreign key(NoEstrellas) references HOTEL(NoEstrellas),
foreign key(No_ID) references CLIENTE(No_ID),
foreign key(NombrePais) references HOTEL(NombrePais),
foreign key(nombreFestividad) references DIAFESTIVO(nombreFestividad)
);
alter table RESERVACION add nombre_tipo_habitacion varchar (25) not null;
alter table RESERVACION add foreign key(nombre_tipo_habitacion) references HABITACION(tipo);

/*INSERTS NECESARIOS:*/


insert into CATEGORIA(NoEstrellas) values(3);
insert into CATEGORIA(NoEstrellas) values(4);
insert into CATEGORIA(NoEstrellas) values(5);
insert into TIPOHABITACION (tipo) values ('simple');
insert into PAIS(NombrePais) values('Guatemala');
insert into PAIS(NombrePais) values('USA');
insert into PAIS(NombrePais) values('El Salvador');
insert into PAIS(NombrePais) values('Nicaragua');
insert into PAIS(NombrePais) values('Honduras');
insert into PAIS(NombrePais) values('Costa Rica');
insert into PAIS(NombrePais) values('Panama');

insert into HOTEL(NombreHotel,NoEstrellas,NombrePais) values('Santa Elena',3,'Guatemala');
insert into HOTEL(NombreHotel,NoEstrellas,NombrePais) values('Puente viejo',3,'Guatemala');
insert into HOTEL(NombreHotel,NoEstrellas,NombrePais) values('Colinas',3,'Guatemala');
insert into HOTEL(NombreHotel,NoEstrellas,NombrePais) values('Piedras verdes',3,'Guatemala');
insert into HOTEL(NombreHotel,NoEstrellas,NombrePais) values('Santa Cecilia',3,'Guatemala');
insert into HOTEL(NombreHotel,NoEstrellas,NombrePais) values('El amanecer',3,'El Salvador');
insert into HOTEL(NombreHotel,NoEstrellas,NombrePais) values('Soluna',3,'El Salvador');
insert into HOTEL(NombreHotel,NoEstrellas,NombrePais) values('Monte alto',3,'El Salvador');
insert into HOTEL(NombreHotel,NoEstrellas,NombrePais) values('Dulce brisa',3,'El Salvador');
insert into HOTEL(NombreHotel,NoEstrellas,NombrePais) values('El Canton',3,'El Salvador');
insert into HOTEL(NombreHotel,NoEstrellas,NombrePais) values('El atarceder',3,'Honduras');
insert into HOTEL(NombreHotel,NoEstrellas,NombrePais) values('Dulcesito',3,'Honduras');
insert into HOTEL(NombreHotel,NoEstrellas,NombrePais) values('Corte feliz',3,'Honduras');
insert into HOTEL(NombreHotel,NoEstrellas,NombrePais) values('Saruta',3,'Honduras');
insert into HOTEL(NombreHotel,NoEstrellas,NombrePais) values('El aventon',3,'Honduras');


insert into HABITACION(NombreHotel,tipo,NoHabitacion) values('Santa Elena','simple',1);
insert into HABITACION(NombreHotel,tipo,NoHabitacion) values('Santa Elena','simple',2);
insert into HABITACION(NombreHotel,tipo,NoHabitacion) values('Santa Elena','individual',3);
insert into HABITACION(NombreHotel,tipo,NoHabitacion) values('Santa Elena','individual',4);

insert into HABITACION(NombreHotel,tipo,NoHabitacion) values('Puente viejo','simple',1);
insert into HABITACION(NombreHotel,tipo,NoHabitacion) values('Puente viejo','simple',2);
insert into HABITACION(NombreHotel,tipo,NoHabitacion) values('Puente viejo','individual',3);
insert into HABITACION(NombreHotel,tipo,NoHabitacion) values('Puente viejo','individual',4);

insert into HABITACION(NombreHotel,tipo,NoHabitacion) values('Colinas','simple',1);
insert into HABITACION(NombreHotel,tipo,NoHabitacion) values('Colinas','simple',2);
insert into HABITACION(NombreHotel,tipo,NoHabitacion) values('Colinas','individual',3);
insert into HABITACION(NombreHotel,tipo,NoHabitacion) values('Colinas','individual',4);

insert into HABITACION(NombreHotel,tipo,NoHabitacion) values('Piedras verdes','simple',1);
insert into HABITACION(NombreHotel,tipo,NoHabitacion) values('Piedras verdes','simple',2);
insert into HABITACION(NombreHotel,tipo,NoHabitacion) values('Piedras verdes','individual',3);
insert into HABITACION(NombreHotel,tipo,NoHabitacion) values('Piedras verdes','individual',4);

insert into HABITACION(NombreHotel,tipo,NoHabitacion) values('Santa Cecilia','simple',1);
insert into HABITACION(NombreHotel,tipo,NoHabitacion) values('Santa Cecilia','simple',2);
insert into HABITACION(NombreHotel,tipo,NoHabitacion) values('Santa Cecilia','individual',3);
insert into HABITACION(NombreHotel,tipo,NoHabitacion) values('Santa Cecilia','individual',4);

insert into HABITACION(NombreHotel,tipo,NoHabitacion) values('El amanecer','simple',1);
insert into HABITACION(NombreHotel,tipo,NoHabitacion) values('El amanecer','simple',2);
insert into HABITACION(NombreHotel,tipo,NoHabitacion) values('El amanecer','individual',3);
insert into HABITACION(NombreHotel,tipo,NoHabitacion) values('El amanecer','individual',4);

insert into HABITACION(NombreHotel,tipo,NoHabitacion) values('Soluna','simple',1);
insert into HABITACION(NombreHotel,tipo,NoHabitacion) values('Soluna','simple',2);
insert into HABITACION(NombreHotel,tipo,NoHabitacion) values('Soluna','individual',3);
insert into HABITACION(NombreHotel,tipo,NoHabitacion) values('Soluna','individual',4);

insert into HABITACION(NombreHotel,tipo,NoHabitacion) values('Monte alto','simple',1);
insert into HABITACION(NombreHotel,tipo,NoHabitacion) values('Monte alto','simple',2);
insert into HABITACION(NombreHotel,tipo,NoHabitacion) values('Monte alto','individual',3);
insert into HABITACION(NombreHotel,tipo,NoHabitacion) values('Monte alto','individual',4);

insert into HABITACION(NombreHotel,tipo,NoHabitacion) values('Dulce brisa','simple',1);
insert into HABITACION(NombreHotel,tipo,NoHabitacion) values('Dulce brisa','simple',2);
insert into HABITACION(NombreHotel,tipo,NoHabitacion) values('Dulce brisa','individual',3);
insert into HABITACION(NombreHotel,tipo,NoHabitacion) values('Dulce brisa','individual',4);

insert into HABITACION(NombreHotel,tipo,NoHabitacion) values('El Canton','simple',1);
insert into HABITACION(NombreHotel,tipo,NoHabitacion) values('El Canton','simple',2);
insert into HABITACION(NombreHotel,tipo,NoHabitacion) values('El Canton','individual',3);
insert into HABITACION(NombreHotel,tipo,NoHabitacion) values('El Canton','individual',4);

insert into HABITACION(NombreHotel,tipo,NoHabitacion) values('El atarceder','simple',1);
insert into HABITACION(NombreHotel,tipo,NoHabitacion) values('El atarceder','simple',2);
insert into HABITACION(NombreHotel,tipo,NoHabitacion) values('El atarceder','individual',3);
insert into HABITACION(NombreHotel,tipo,NoHabitacion) values('El atarceder','individual',4);

insert into HABITACION(NombreHotel,tipo,NoHabitacion) values('Dulcesito','simple',1);
insert into HABITACION(NombreHotel,tipo,NoHabitacion) values('Dulcesito','simple',2);
insert into HABITACION(NombreHotel,tipo,NoHabitacion) values('Dulcesito','individual',3);
insert into HABITACION(NombreHotel,tipo,NoHabitacion) values('Dulcesito','individual',4);

insert into HABITACION(NombreHotel,tipo,NoHabitacion) values('Corte feliz','simple',1);
insert into HABITACION(NombreHotel,tipo,NoHabitacion) values('Corte feliz','simple',2);
insert into HABITACION(NombreHotel,tipo,NoHabitacion) values('Corte feliz','individual',3);
insert into HABITACION(NombreHotel,tipo,NoHabitacion) values('Corte feliz','individual',4);

insert into HABITACION(NombreHotel,tipo,NoHabitacion) values('Saruta','simple',1);
insert into HABITACION(NombreHotel,tipo,NoHabitacion) values('Saruta','simple',2);
insert into HABITACION(NombreHotel,tipo,NoHabitacion) values('Saruta','individual',3);
insert into HABITACION(NombreHotel,tipo,NoHabitacion) values('Saruta','individual',4);

insert into HABITACION(NombreHotel,tipo,NoHabitacion) values('El aventon','simple',1);
insert into HABITACION(NombreHotel,tipo,NoHabitacion) values('El aventon','simple',2);
insert into HABITACION(NombreHotel,tipo,NoHabitacion) values('El aventon','individual',3);
insert into HABITACION(NombreHotel,tipo,NoHabitacion) values('El aventon','individual',4);

insert into HOTEL(NombreHotel,NoEstrellas,NombrePais) values('Acaricias',4,'Guatemala');
insert into HOTEL(NombreHotel,NoEstrellas,NombrePais) values('Alfajor',4,'Guatemala');
insert into HOTEL(NombreHotel,NoEstrellas,NombrePais) values('Colinas 2',4,'Guatemala');
insert into HOTEL(NombreHotel,NoEstrellas,NombrePais) values('Piedras rojas',4,'Guatemala');
insert into HOTEL(NombreHotel,NoEstrellas,NombrePais) values('Santa Teresa',4,'Guatemala');
insert into HOTEL(NombreHotel,NoEstrellas,NombrePais) values('Locus',4,'El Salvador');
insert into HOTEL(NombreHotel,NoEstrellas,NombrePais) values('Rumania',4,'El Salvador');
insert into HOTEL(NombreHotel,NoEstrellas,NombrePais) values('Monte everest',4,'El Salvador');
insert into HOTEL(NombreHotel,NoEstrellas,NombrePais) values('Dulce',4,'El Salvador');
insert into HOTEL(NombreHotel,NoEstrellas,NombrePais) values('El toston',4,'El Salvador');
insert into HOTEL(NombreHotel,NoEstrellas,NombrePais) values('Rodada',4,'Honduras');
insert into HOTEL(NombreHotel,NoEstrellas,NombrePais) values('Dolce',4,'Honduras');
insert into HOTEL(NombreHotel,NoEstrellas,NombrePais) values('Corte ingles',4,'Honduras');
insert into HOTEL(NombreHotel,NoEstrellas,NombrePais) values('Roolin',4,'Honduras');
insert into HOTEL(NombreHotel,NoEstrellas,NombrePais) values('Stonks',4,'Honduras');

insert into HABITACION(NombreHotel,tipo,NoHabitacion) values('Acaricias','simple',1);
insert into HABITACION(NombreHotel,tipo,NoHabitacion) values('Acaricias','simple',2);
insert into HABITACION(NombreHotel,tipo,NoHabitacion) values('Acaricias','individual',3);
insert into HABITACION(NombreHotel,tipo,NoHabitacion) values('Acaricias','individual',4);

insert into HABITACION(NombreHotel,tipo,NoHabitacion) values('Alfajor','simple',1);
insert into HABITACION(NombreHotel,tipo,NoHabitacion) values('Alfajor','simple',2);
insert into HABITACION(NombreHotel,tipo,NoHabitacion) values('Alfajor','individual',3);
insert into HABITACION(NombreHotel,tipo,NoHabitacion) values('Alfajor','individual',4);

insert into HABITACION(NombreHotel,tipo,NoHabitacion) values('Colinas 2','simple',1);
insert into HABITACION(NombreHotel,tipo,NoHabitacion) values('Colinas 2','simple',2);
insert into HABITACION(NombreHotel,tipo,NoHabitacion) values('Colinas 2','individual',3);
insert into HABITACION(NombreHotel,tipo,NoHabitacion) values('Colinas 2','individual',4);

insert into HABITACION(NombreHotel,tipo,NoHabitacion) values('Piedras rojas','simple',1);
insert into HABITACION(NombreHotel,tipo,NoHabitacion) values('Piedras rojas','simple',2);
insert into HABITACION(NombreHotel,tipo,NoHabitacion) values('Piedras rojas','individual',3);
insert into HABITACION(NombreHotel,tipo,NoHabitacion) values('Piedras rojas','individual',4);

insert into HABITACION(NombreHotel,tipo,NoHabitacion) values('Santa Teresa','simple',1);
insert into HABITACION(NombreHotel,tipo,NoHabitacion) values('Santa Teresa','simple',2);
insert into HABITACION(NombreHotel,tipo,NoHabitacion) values('Santa Teresa','individual',3);
insert into HABITACION(NombreHotel,tipo,NoHabitacion) values('Santa Teresa','individual',4);

insert into HABITACION(NombreHotel,tipo,NoHabitacion) values('Locus','simple',1);
insert into HABITACION(NombreHotel,tipo,NoHabitacion) values('Locus','simple',2);
insert into HABITACION(NombreHotel,tipo,NoHabitacion) values('Locus','individual',3);
insert into HABITACION(NombreHotel,tipo,NoHabitacion) values('Locus','individual',4);

insert into HABITACION(NombreHotel,tipo,NoHabitacion) values('Stonks','simple',1);
insert into HABITACION(NombreHotel,tipo,NoHabitacion) values('Stonks','simple',2);
insert into HABITACION(NombreHotel,tipo,NoHabitacion) values('Stonks','individual',3);
insert into HABITACION(NombreHotel,tipo,NoHabitacion) values('Stonks','individual',4);

insert into HABITACION(NombreHotel,tipo,NoHabitacion) values('Rumania','simple',1);
insert into HABITACION(NombreHotel,tipo,NoHabitacion) values('Rumania','simple',2);
insert into HABITACION(NombreHotel,tipo,NoHabitacion) values('Rumania','individual',3);
insert into HABITACION(NombreHotel,tipo,NoHabitacion) values('Rumania','individual',4);

insert into HABITACION(NombreHotel,tipo,NoHabitacion) values('Monte everest','simple',1);
insert into HABITACION(NombreHotel,tipo,NoHabitacion) values('Monte everest','simple',2);
insert into HABITACION(NombreHotel,tipo,NoHabitacion) values('Monte everest','individual',3);
insert into HABITACION(NombreHotel,tipo,NoHabitacion) values('Monte everest','individual',4);

insert into HABITACION(NombreHotel,tipo,NoHabitacion) values('Dulce','simple',1);
insert into HABITACION(NombreHotel,tipo,NoHabitacion) values('Dulce','simple',2);
insert into HABITACION(NombreHotel,tipo,NoHabitacion) values('Dulce','individual',3);
insert into HABITACION(NombreHotel,tipo,NoHabitacion) values('Dulce','individual',4);

insert into HABITACION(NombreHotel,tipo,NoHabitacion) values('El toston','simple',1);
insert into HABITACION(NombreHotel,tipo,NoHabitacion) values('El toston','simple',2);
insert into HABITACION(NombreHotel,tipo,NoHabitacion) values('El toston','individual',3);
insert into HABITACION(NombreHotel,tipo,NoHabitacion) values('El toston','individual',4);

insert into HABITACION(NombreHotel,tipo,NoHabitacion) values('Rodada','simple',1);
insert into HABITACION(NombreHotel,tipo,NoHabitacion) values('Rodada','simple',2);
insert into HABITACION(NombreHotel,tipo,NoHabitacion) values('Rodada','individual',3);
insert into HABITACION(NombreHotel,tipo,NoHabitacion) values('Rodada','individual',4);

insert into HABITACION(NombreHotel,tipo,NoHabitacion) values('Dolce','simple',1);
insert into HABITACION(NombreHotel,tipo,NoHabitacion) values('Dolce','simple',2);
insert into HABITACION(NombreHotel,tipo,NoHabitacion) values('Dolce','individual',3);
insert into HABITACION(NombreHotel,tipo,NoHabitacion) values('Dolce','individual',4);

insert into HABITACION(NombreHotel,tipo,NoHabitacion) values('Corte ingles','simple',1);
insert into HABITACION(NombreHotel,tipo,NoHabitacion) values('Corte ingles','simple',2);
insert into HABITACION(NombreHotel,tipo,NoHabitacion) values('Corte ingles','individual',3);
insert into HABITACION(NombreHotel,tipo,NoHabitacion) values('Corte ingles','individual',4);

insert into HABITACION(NombreHotel,tipo,NoHabitacion) values('Roolin','simple',1);
insert into HABITACION(NombreHotel,tipo,NoHabitacion) values('Roolin','simple',2);
insert into HABITACION(NombreHotel,tipo,NoHabitacion) values('Roolin','individual',3);
insert into HABITACION(NombreHotel,tipo,NoHabitacion) values('Roolin','individual',4);


insert into HOTEL(NombreHotel,NoEstrellas,NombrePais) values('Leon',5,'Guatemala');
insert into HOTEL(NombreHotel,NoEstrellas,NombrePais) values('Cahul',5,'Guatemala');
insert into HOTEL(NombreHotel,NoEstrellas,NombrePais) values('Cilindroas 2',5,'Guatemala');
insert into HOTEL(NombreHotel,NoEstrellas,NombrePais) values('Rajilla',5,'Guatemala');
insert into HOTEL(NombreHotel,NoEstrellas,NombrePais) values('Trujillo',5,'Guatemala');
insert into HOTEL(NombreHotel,NoEstrellas,NombrePais) values('Lotus',5,'El Salvador');
insert into HOTEL(NombreHotel,NoEstrellas,NombrePais) values('Rostana',5,'El Salvador');
insert into HOTEL(NombreHotel,NoEstrellas,NombrePais) values('Monte x',5,'El Salvador');
insert into HOTEL(NombreHotel,NoEstrellas,NombrePais) values('Barranquilla',5,'El Salvador');
insert into HOTEL(NombreHotel,NoEstrellas,NombrePais) values('El Paso',5,'El Salvador');
insert into HOTEL(NombreHotel,NoEstrellas,NombrePais) values('Round',5,'Honduras');
insert into HOTEL(NombreHotel,NoEstrellas,NombrePais) values('Rancho',5,'Honduras');
insert into HOTEL(NombreHotel,NoEstrellas,NombrePais) values('Corte',5,'Honduras');
insert into HOTEL(NombreHotel,NoEstrellas,NombrePais) values('Flamingo',5,'Honduras');
insert into HOTEL(NombreHotel,NoEstrellas,NombrePais) values('Star',5,'Honduras');

insert into HABITACION(NombreHotel,tipo,NoHabitacion) values('Leon','simple',1);
insert into HABITACION(NombreHotel,tipo,NoHabitacion) values('Leon','simple',2);
insert into HABITACION(NombreHotel,tipo,NoHabitacion) values('Leon','individual',3);
insert into HABITACION(NombreHotel,tipo,NoHabitacion) values('Leon','individual',4);

insert into HABITACION(NombreHotel,tipo,NoHabitacion) values('Cahul','simple',1);
insert into HABITACION(NombreHotel,tipo,NoHabitacion) values('Cahul','simple',2);
insert into HABITACION(NombreHotel,tipo,NoHabitacion) values('Cahul','individual',3);
insert into HABITACION(NombreHotel,tipo,NoHabitacion) values('Cahul','individual',4);

insert into HABITACION(NombreHotel,tipo,NoHabitacion) values('Cilindroas 2','simple',1);
insert into HABITACION(NombreHotel,tipo,NoHabitacion) values('Cilindroas 2','simple',2);
insert into HABITACION(NombreHotel,tipo,NoHabitacion) values('Cilindroas 2','individual',3);
insert into HABITACION(NombreHotel,tipo,NoHabitacion) values('Cilindroas 2','individual',4);

insert into HABITACION(NombreHotel,tipo,NoHabitacion) values('Rajilla','simple',1);
insert into HABITACION(NombreHotel,tipo,NoHabitacion) values('Rajilla','simple',2);
insert into HABITACION(NombreHotel,tipo,NoHabitacion) values('Rajilla','individual',3);
insert into HABITACION(NombreHotel,tipo,NoHabitacion) values('Rajilla','individual',4);

insert into HABITACION(NombreHotel,tipo,NoHabitacion) values('Trujillo','simple',1);
insert into HABITACION(NombreHotel,tipo,NoHabitacion) values('Trujillo','simple',2);
insert into HABITACION(NombreHotel,tipo,NoHabitacion) values('Trujillo','individual',3);
insert into HABITACION(NombreHotel,tipo,NoHabitacion) values('Trujillo','individual',4);

insert into HABITACION(NombreHotel,tipo,NoHabitacion) values('Lotus','simple',1);
insert into HABITACION(NombreHotel,tipo,NoHabitacion) values('Lotus','simple',2);
insert into HABITACION(NombreHotel,tipo,NoHabitacion) values('Lotus','individual',3);
insert into HABITACION(NombreHotel,tipo,NoHabitacion) values('Lotus','individual',4);

insert into HABITACION(NombreHotel,tipo,NoHabitacion) values('Rostana','simple',1);
insert into HABITACION(NombreHotel,tipo,NoHabitacion) values('Rostana','simple',2);
insert into HABITACION(NombreHotel,tipo,NoHabitacion) values('Rostana','individual',3);
insert into HABITACION(NombreHotel,tipo,NoHabitacion) values('Rostana','individual',4);

insert into HABITACION(NombreHotel,tipo,NoHabitacion) values('Monte x','simple',1);
insert into HABITACION(NombreHotel,tipo,NoHabitacion) values('Monte x','simple',2);
insert into HABITACION(NombreHotel,tipo,NoHabitacion) values('Monte x','individual',3);
insert into HABITACION(NombreHotel,tipo,NoHabitacion) values('Monte x','individual',4);

insert into HABITACION(NombreHotel,tipo,NoHabitacion) values('Barranquilla','simple',1);
insert into HABITACION(NombreHotel,tipo,NoHabitacion) values('Barranquilla','simple',2);
insert into HABITACION(NombreHotel,tipo,NoHabitacion) values('Barranquilla','individual',3);
insert into HABITACION(NombreHotel,tipo,NoHabitacion) values('Barranquilla','individual',4);

insert into HABITACION(NombreHotel,tipo,NoHabitacion) values('El Paso','simple',1);
insert into HABITACION(NombreHotel,tipo,NoHabitacion) values('El Paso','simple',2);
insert into HABITACION(NombreHotel,tipo,NoHabitacion) values('El Paso','individual',3);
insert into HABITACION(NombreHotel,tipo,NoHabitacion) values('El Paso','individual',4);

insert into HABITACION(NombreHotel,tipo,NoHabitacion) values('Round','simple',1);
insert into HABITACION(NombreHotel,tipo,NoHabitacion) values('Round','simple',2);
insert into HABITACION(NombreHotel,tipo,NoHabitacion) values('Round','individual',3);
insert into HABITACION(NombreHotel,tipo,NoHabitacion) values('Round','individual',4);

insert into HABITACION(NombreHotel,tipo,NoHabitacion) values('Rancho','simple',1);
insert into HABITACION(NombreHotel,tipo,NoHabitacion) values('Rancho','simple',2);
insert into HABITACION(NombreHotel,tipo,NoHabitacion) values('Rancho','individual',3);
insert into HABITACION(NombreHotel,tipo,NoHabitacion) values('Rancho','individual',4);

insert into HABITACION(NombreHotel,tipo,NoHabitacion) values('Corte','simple',1);
insert into HABITACION(NombreHotel,tipo,NoHabitacion) values('Corte','simple',2);
insert into HABITACION(NombreHotel,tipo,NoHabitacion) values('Corte','individual',3);
insert into HABITACION(NombreHotel,tipo,NoHabitacion) values('Corte','individual',4);

insert into HABITACION(NombreHotel,tipo,NoHabitacion) values('Flamingo','simple',1);
insert into HABITACION(NombreHotel,tipo,NoHabitacion) values('Flamingo','simple',2);
insert into HABITACION(NombreHotel,tipo,NoHabitacion) values('Flamingo','individual',3);
insert into HABITACION(NombreHotel,tipo,NoHabitacion) values('Flamingo','individual',4);

insert into HABITACION(NombreHotel,tipo,NoHabitacion) values('Star','simple',1);
insert into HABITACION(NombreHotel,tipo,NoHabitacion) values('Star','simple',2);
insert into HABITACION(NombreHotel,tipo,NoHabitacion) values('Star','individual',3);
insert into HABITACION(NombreHotel,tipo,NoHabitacion) values('Star','individual',4);


insert into DIAFESTIVO(nombreFestividad) values('Navidad');
insert into DIAFESTIVO(nombreFestividad) values('Día de las madres');
insert into DIAFESTIVO(nombreFestividad) values('Día de la independencia');

insert into CLIENTE(No_ID,Nombre,Apellido) values(1234,'Rolando','Vasquez');
insert into CLIENTE(No_ID,Nombre,Apellido) values(2345,'Randy','Veliz');
insert into CLIENTE(No_ID,Nombre,Apellido) values(3456,'Rony','Sosa');
insert into CLIENTE(No_ID,Nombre,Apellido) values(4567,'Dilan','Lopez');
insert into CLIENTE(No_ID,Nombre,Apellido) values(5678,'Robert','Cajal');
insert into CLIENTE(No_ID,Nombre,Apellido) values(6789,'William','Lancerio');
insert into CLIENTE(No_ID,Nombre,Apellido) values(7890,'Alexandra','Calel');
insert into CLIENTE(No_ID,Nombre,Apellido) values(8901,'Marvin','Palencia');
insert into CLIENTE(No_ID,Nombre,Apellido) values(9012,'Rosario','Betancourt');
insert into CLIENTE(No_ID,Nombre,Apellido) values(0123,'Candy','Sapata');


insert into RESERVACION(NombreHotel,NoEstrellas,No_ID,NombrePais,fecha,nombre_tipo_habitacion,salidaTarde,nombreFestividad) values('Santa Elena',3,'1234','Guatemala','2010-06-12','simple',0,null);
insert into RESERVACION(NombreHotel,NoEstrellas,No_ID,NombrePais,fecha,nombre_tipo_habitacion,salidaTarde,nombreFestividad) values('Santa Elena',3,'1234','Guatemala','2011-09-15','simple',0,'Día de la independencia');
insert into RESERVACION(NombreHotel,NoEstrellas,No_ID,NombrePais,fecha,nombre_tipo_habitacion,salidaTarde,nombreFestividad) values('Santa Elena',3,'1234','Guatemala','2015-06-25','individual',1,null);
insert into RESERVACION(NombreHotel,NoEstrellas,No_ID,NombrePais,fecha,nombre_tipo_habitacion,salidaTarde,nombreFestividad) values('Locus',4,'1234','El Salvador','2000-07-22','simple',1,null);
insert into RESERVACION(NombreHotel,NoEstrellas,No_ID,NombrePais,fecha,nombre_tipo_habitacion,salidaTarde,nombreFestividad) values('Locus',4,'1234','El Salvador','2002-05-10','individual',0,'Día de las madres');
insert into RESERVACION(NombreHotel,NoEstrellas,No_ID,NombrePais,fecha,nombre_tipo_habitacion,salidaTarde,nombreFestividad) values('Locus',4,'1234','El Salvador','1989-11-22','simple',0,null);
insert into RESERVACION(NombreHotel,NoEstrellas,No_ID,NombrePais,fecha,nombre_tipo_habitacion,salidaTarde,nombreFestividad) values('Leon',5,'1234','Guatemala','2012-11-22','individual',0,null);
insert into RESERVACION(NombreHotel,NoEstrellas,No_ID,NombrePais,fecha,nombre_tipo_habitacion,salidaTarde,nombreFestividad) values('Leon',5,'1234','Guatemala','2010-12-24','individual',0,'Navidad');
insert into RESERVACION(NombreHotel,NoEstrellas,No_ID,NombrePais,fecha,nombre_tipo_habitacion,salidaTarde,nombreFestividad) values('Leon',5,'1234','Guatemala','2020-09-22','simple',0,null);
insert into RESERVACION(NombreHotel,NoEstrellas,No_ID,NombrePais,fecha,nombre_tipo_habitacion,salidaTarde,nombreFestividad) values('Star',5,'1234','Honduras','1999-12-01','simple',0,null);

insert into RESERVACION(NombreHotel,NoEstrellas,No_ID,NombrePais,fecha,nombre_tipo_habitacion,salidaTarde,nombreFestividad) values('Santa Elena',3,2345,'Guatemala','1980-12-15','individual',0,null);
insert into RESERVACION(NombreHotel,NoEstrellas,No_ID,NombrePais,fecha,nombre_tipo_habitacion,salidaTarde,nombreFestividad) values('Santa Elena',3,2345,'Guatemala','1990-09-15','individual',0,'Día de la independencia');
insert into RESERVACION(NombreHotel,NoEstrellas,No_ID,NombrePais,fecha,nombre_tipo_habitacion,salidaTarde,nombreFestividad) values('Santa Elena',3,2345,'Guatemala','1995-06-25','individual',1,null);
insert into RESERVACION(NombreHotel,NoEstrellas,No_ID,NombrePais,fecha,nombre_tipo_habitacion,salidaTarde,nombreFestividad) values('Locus',4,2345,'El Salvador','2000-07-22','individual',1,null);
insert into RESERVACION(NombreHotel,NoEstrellas,No_ID,NombrePais,fecha,nombre_tipo_habitacion,salidaTarde,nombreFestividad) values('Locus',4,2345,'El Salvador','2002-05-10','individual',0,'Día de las madres');
insert into RESERVACION(NombreHotel,NoEstrellas,No_ID,NombrePais,fecha,nombre_tipo_habitacion,salidaTarde,nombreFestividad) values('Locus',4,2345,'El Salvador','2005-11-22','individual',0,null);
insert into RESERVACION(NombreHotel,NoEstrellas,No_ID,NombrePais,fecha,nombre_tipo_habitacion,salidaTarde,nombreFestividad) values('Leon',5,2345,'Guatemala','2009-11-22','individual',0,null);
insert into RESERVACION(NombreHotel,NoEstrellas,No_ID,NombrePais,fecha,nombre_tipo_habitacion,salidaTarde,nombreFestividad) values('Leon',5,2345,'Guatemala','2010-12-24','individual',0,'Navidad');
insert into RESERVACION(NombreHotel,NoEstrellas,No_ID,NombrePais,fecha,nombre_tipo_habitacion,salidaTarde,nombreFestividad) values('Leon',5,2345,'Guatemala','2015-09-22','individual',0,null);
insert into RESERVACION(NombreHotel,NoEstrellas,No_ID,NombrePais,fecha,nombre_tipo_habitacion,salidaTarde,nombreFestividad) values('Star',5,2345,'Honduras','2020-12-01','individual',0,null);

insert into RESERVACION(NombreHotel,NoEstrellas,No_ID,NombrePais,fecha,nombre_tipo_habitacion,salidaTarde,nombreFestividad) values('Santa Elena',3,3456,'Guatemala','1900-05-01','simple',0,null);
insert into RESERVACION(NombreHotel,NoEstrellas,No_ID,NombrePais,fecha,nombre_tipo_habitacion,salidaTarde,nombreFestividad) values('Santa Elena',3,3456,'Guatemala','2000-09-15','simple',0,'Día de la independencia');
insert into RESERVACION(NombreHotel,NoEstrellas,No_ID,NombrePais,fecha,nombre_tipo_habitacion,salidaTarde,nombreFestividad) values('Santa Elena',3,3456,'Guatemala','1986-02-25','simple',1,null);
insert into RESERVACION(NombreHotel,NoEstrellas,No_ID,NombrePais,fecha,nombre_tipo_habitacion,salidaTarde,nombreFestividad) values('Locus',4,3456,'El Salvador','2000-08-22','simple',1,null);
insert into RESERVACION(NombreHotel,NoEstrellas,No_ID,NombrePais,fecha,nombre_tipo_habitacion,salidaTarde,nombreFestividad) values('Locus',4,3456,'El Salvador','2020-05-10','simple',0,'Día de las madres');
insert into RESERVACION(NombreHotel,NoEstrellas,No_ID,NombrePais,fecha,nombre_tipo_habitacion,salidaTarde,nombreFestividad) values('Locus',4,3456,'El Salvador','1990-11-22','simple',0,null);
insert into RESERVACION(NombreHotel,NoEstrellas,No_ID,NombrePais,fecha,nombre_tipo_habitacion,salidaTarde,nombreFestividad) values('Leon',5,3456,'Guatemala','2014-12-12','simple',0,null);
insert into RESERVACION(NombreHotel,NoEstrellas,No_ID,NombrePais,fecha,nombre_tipo_habitacion,salidaTarde,nombreFestividad) values('Leon',5,3456,'Guatemala','2000-12-24','simple',0,'Navidad');
insert into RESERVACION(NombreHotel,NoEstrellas,No_ID,NombrePais,fecha,nombre_tipo_habitacion,salidaTarde,nombreFestividad) values('Leon',5,3456,'Guatemala','2019-09-22','simple',0,null);
insert into RESERVACION(NombreHotel,NoEstrellas,No_ID,NombrePais,fecha,nombre_tipo_habitacion,salidaTarde,nombreFestividad) values('Star',5,3456,'Honduras','1995-12-01','simple',0,null);

insert into RESERVACION(NombreHotel,NoEstrellas,No_ID,NombrePais,fecha,nombre_tipo_habitacion,salidaTarde,nombreFestividad) values('Santa Elena',3,4567,'Guatemala','1980-12-24','individual',0,'Navidad');
insert into RESERVACION(NombreHotel,NoEstrellas,No_ID,NombrePais,fecha,nombre_tipo_habitacion,salidaTarde,nombreFestividad) values('Santa Elena',3,4567,'Guatemala','2011-09-15','individual',0,'Día de la independencia');
insert into RESERVACION(NombreHotel,NoEstrellas,No_ID,NombrePais,fecha,nombre_tipo_habitacion,salidaTarde,nombreFestividad) values('Santa Elena',3,4567,'Guatemala','1985-12-24','individual',1,'Navidad');
insert into RESERVACION(NombreHotel,NoEstrellas,No_ID,NombrePais,fecha,nombre_tipo_habitacion,salidaTarde,nombreFestividad) values('Locus',4,4567,'El Salvador','1990-12-24','individual',1,'Navidad');
insert into RESERVACION(NombreHotel,NoEstrellas,No_ID,NombrePais,fecha,nombre_tipo_habitacion,salidaTarde,nombreFestividad) values('Locus',4,4567,'El Salvador','2002-05-10','individual',0,'Día de las madres');
insert into RESERVACION(NombreHotel,NoEstrellas,No_ID,NombrePais,fecha,nombre_tipo_habitacion,salidaTarde,nombreFestividad) values('Locus',4,4567,'El Salvador','1992-12-24','individual',0,'Navidad');
insert into RESERVACION(NombreHotel,NoEstrellas,No_ID,NombrePais,fecha,nombre_tipo_habitacion,salidaTarde,nombreFestividad) values('Leon',5,4567,'Guatemala','1995-12-24','simple',0,'Navidad');
insert into RESERVACION(NombreHotel,NoEstrellas,No_ID,NombrePais,fecha,nombre_tipo_habitacion,salidaTarde,nombreFestividad) values('Leon',5,4567,'Guatemala','2010-12-24','simple',0,'Navidad');
insert into RESERVACION(NombreHotel,NoEstrellas,No_ID,NombrePais,fecha,nombre_tipo_habitacion,salidaTarde,nombreFestividad) values('Leon',5,4567,'Guatemala','2000-12-24','simple',0,'Navidad');
insert into RESERVACION(NombreHotel,NoEstrellas,No_ID,NombrePais,fecha,nombre_tipo_habitacion,salidaTarde,nombreFestividad) values('Star',5,4567,'Honduras','2020-12-24','simple',0,'Navidad');

insert into RESERVACION(NombreHotel,NoEstrellas,No_ID,NombrePais,fecha,nombre_tipo_habitacion,salidaTarde,nombreFestividad) values('Santa Elena',3,5678,'Guatemala','1980-05-10','individual',1,'Día de las madres');
insert into RESERVACION(NombreHotel,NoEstrellas,No_ID,NombrePais,fecha,nombre_tipo_habitacion,salidaTarde,nombreFestividad) values('Santa Elena',3,5678,'Guatemala','2011-09-15','individual',1,'Día de la independencia');
insert into RESERVACION(NombreHotel,NoEstrellas,No_ID,NombrePais,fecha,nombre_tipo_habitacion,salidaTarde,nombreFestividad) values('Santa Elena',3,5678,'Guatemala','1985-05-10','individual',1,'Día de las madres');
insert into RESERVACION(NombreHotel,NoEstrellas,No_ID,NombrePais,fecha,nombre_tipo_habitacion,salidaTarde,nombreFestividad) values('Locus',4,5678,'El Salvador','1989-05-10','individual',1,'Día de las madres');
insert into RESERVACION(NombreHotel,NoEstrellas,No_ID,NombrePais,fecha,nombre_tipo_habitacion,salidaTarde,nombreFestividad) values('Locus',4,5678,'El Salvador','2002-05-10','individual',1,'Día de las madres');
insert into RESERVACION(NombreHotel,NoEstrellas,No_ID,NombrePais,fecha,nombre_tipo_habitacion,salidaTarde,nombreFestividad) values('Locus',4,5678,'El Salvador','1995-05-10','individual',1,'Día de las madres');
insert into RESERVACION(NombreHotel,NoEstrellas,No_ID,NombrePais,fecha,nombre_tipo_habitacion,salidaTarde,nombreFestividad) values('Leon',5,5678,'Guatemala','2012-05-10','simple',1,'Día de las madres');
insert into RESERVACION(NombreHotel,NoEstrellas,No_ID,NombrePais,fecha,nombre_tipo_habitacion,salidaTarde,nombreFestividad) values('Leon',5,5678,'Guatemala','2010-12-24','simple',1,'Navidad');
insert into RESERVACION(NombreHotel,NoEstrellas,No_ID,NombrePais,fecha,nombre_tipo_habitacion,salidaTarde,nombreFestividad) values('Leon',5,5678,'Guatemala','2020-12-24','simple',1,'Navidad');
insert into RESERVACION(NombreHotel,NoEstrellas,No_ID,NombrePais,fecha,nombre_tipo_habitacion,salidaTarde,nombreFestividad) values('Star',5,5678,'Honduras','1999-12-24','simple',1,'Navidad');





insert into RESERVACION(NombreHotel,NoEstrellas,No_ID,NombrePais,fecha,nombre_tipo_habitacion,salidaTarde,nombreFestividad) values('Santa Elena',3,'6789','Guatemala','2010-06-12','simple',0,null);
insert into RESERVACION(NombreHotel,NoEstrellas,No_ID,NombrePais,fecha,nombre_tipo_habitacion,salidaTarde,nombreFestividad) values('Santa Elena',3,'6789','Guatemala','2011-09-15','simple',0,'Día de la independencia');
insert into RESERVACION(NombreHotel,NoEstrellas,No_ID,NombrePais,fecha,nombre_tipo_habitacion,salidaTarde,nombreFestividad) values('Santa Elena',3,'6789','Guatemala','2015-06-25','individual',1,null);
insert into RESERVACION(NombreHotel,NoEstrellas,No_ID,NombrePais,fecha,nombre_tipo_habitacion,salidaTarde,nombreFestividad) values('Locus',4,'6789','El Salvador','2000-07-22','simple',1,null);
insert into RESERVACION(NombreHotel,NoEstrellas,No_ID,NombrePais,fecha,nombre_tipo_habitacion,salidaTarde,nombreFestividad) values('Locus',4,'6789','El Salvador','2002-05-10','individual',0,'Día de las madres');
insert into RESERVACION(NombreHotel,NoEstrellas,No_ID,NombrePais,fecha,nombre_tipo_habitacion,salidaTarde,nombreFestividad) values('Locus',4,'6789','El Salvador','1989-11-22','simple',1,null);
insert into RESERVACION(NombreHotel,NoEstrellas,No_ID,NombrePais,fecha,nombre_tipo_habitacion,salidaTarde,nombreFestividad) values('Leon',5,'6789','Guatemala','2012-11-22','individual',0,null);
insert into RESERVACION(NombreHotel,NoEstrellas,No_ID,NombrePais,fecha,nombre_tipo_habitacion,salidaTarde,nombreFestividad) values('Leon',5,'6789','Guatemala','2010-12-24','individual',0,'Navidad');
insert into RESERVACION(NombreHotel,NoEstrellas,No_ID,NombrePais,fecha,nombre_tipo_habitacion,salidaTarde,nombreFestividad) values('Leon',5,'6789','Guatemala','2020-09-22','simple',0,null);
insert into RESERVACION(NombreHotel,NoEstrellas,No_ID,NombrePais,fecha,nombre_tipo_habitacion,salidaTarde,nombreFestividad) values('Star',5,'6789','Honduras','1999-12-01','simple',0,null);

insert into RESERVACION(NombreHotel,NoEstrellas,No_ID,NombrePais,fecha,nombre_tipo_habitacion,salidaTarde,nombreFestividad) values('Santa Elena',3,7890,'Guatemala','1980-12-15','individual',0,null);
insert into RESERVACION(NombreHotel,NoEstrellas,No_ID,NombrePais,fecha,nombre_tipo_habitacion,salidaTarde,nombreFestividad) values('Santa Elena',3,7890,'Guatemala','1990-09-15','individual',0,'Día de la independencia');
insert into RESERVACION(NombreHotel,NoEstrellas,No_ID,NombrePais,fecha,nombre_tipo_habitacion,salidaTarde,nombreFestividad) values('Santa Elena',3,7890,'Guatemala','1995-06-25','individual',1,null);
insert into RESERVACION(NombreHotel,NoEstrellas,No_ID,NombrePais,fecha,nombre_tipo_habitacion,salidaTarde,nombreFestividad) values('Locus',4,7890,'El Salvador','2000-07-22','individual',1,null);
insert into RESERVACION(NombreHotel,NoEstrellas,No_ID,NombrePais,fecha,nombre_tipo_habitacion,salidaTarde,nombreFestividad) values('Locus',4,7890,'El Salvador','2002-05-10','individual',1,'Día de las madres');
insert into RESERVACION(NombreHotel,NoEstrellas,No_ID,NombrePais,fecha,nombre_tipo_habitacion,salidaTarde,nombreFestividad) values('Locus',4,7890,'El Salvador','2005-11-22','individual',0,null);
insert into RESERVACION(NombreHotel,NoEstrellas,No_ID,NombrePais,fecha,nombre_tipo_habitacion,salidaTarde,nombreFestividad) values('Leon',5,7890,'Guatemala','2009-11-22','individual',0,null);
insert into RESERVACION(NombreHotel,NoEstrellas,No_ID,NombrePais,fecha,nombre_tipo_habitacion,salidaTarde,nombreFestividad) values('Leon',5,7890,'Guatemala','2010-12-24','individual',0,'Navidad');
insert into RESERVACION(NombreHotel,NoEstrellas,No_ID,NombrePais,fecha,nombre_tipo_habitacion,salidaTarde,nombreFestividad) values('Leon',5,7890,'Guatemala','2015-09-22','individual',1,null);
insert into RESERVACION(NombreHotel,NoEstrellas,No_ID,NombrePais,fecha,nombre_tipo_habitacion,salidaTarde,nombreFestividad) values('Star',5,7890,'Honduras','2020-12-01','individual',0,null);

insert into RESERVACION(NombreHotel,NoEstrellas,No_ID,NombrePais,fecha,nombre_tipo_habitacion,salidaTarde,nombreFestividad) values('Santa Elena',3,8901,'Guatemala','1900-05-01','simple',1,null);
insert into RESERVACION(NombreHotel,NoEstrellas,No_ID,NombrePais,fecha,nombre_tipo_habitacion,salidaTarde,nombreFestividad) values('Santa Elena',3,8901,'Guatemala','2000-09-15','simple',0,'Día de la independencia');
insert into RESERVACION(NombreHotel,NoEstrellas,No_ID,NombrePais,fecha,nombre_tipo_habitacion,salidaTarde,nombreFestividad) values('Santa Elena',3,8901,'Guatemala','1986-02-25','simple',1,null);
insert into RESERVACION(NombreHotel,NoEstrellas,No_ID,NombrePais,fecha,nombre_tipo_habitacion,salidaTarde,nombreFestividad) values('Locus',4,8901,'El Salvador','2000-08-22','simple',1,null);
insert into RESERVACION(NombreHotel,NoEstrellas,No_ID,NombrePais,fecha,nombre_tipo_habitacion,salidaTarde,nombreFestividad) values('Locus',4,8901,'El Salvador','2020-05-10','simple',0,'Día de las madres');
insert into RESERVACION(NombreHotel,NoEstrellas,No_ID,NombrePais,fecha,nombre_tipo_habitacion,salidaTarde,nombreFestividad) values('Locus',4,8901,'El Salvador','1990-11-22','simple',0,null);
insert into RESERVACION(NombreHotel,NoEstrellas,No_ID,NombrePais,fecha,nombre_tipo_habitacion,salidaTarde,nombreFestividad) values('Leon',5,8901,'Guatemala','2014-12-12','simple',0,null);
insert into RESERVACION(NombreHotel,NoEstrellas,No_ID,NombrePais,fecha,nombre_tipo_habitacion,salidaTarde,nombreFestividad) values('Leon',5,8901,'Guatemala','2000-12-24','simple',0,'Navidad');
insert into RESERVACION(NombreHotel,NoEstrellas,No_ID,NombrePais,fecha,nombre_tipo_habitacion,salidaTarde,nombreFestividad) values('Leon',5,8901,'Guatemala','2019-09-22','simple',1,null);
insert into RESERVACION(NombreHotel,NoEstrellas,No_ID,NombrePais,fecha,nombre_tipo_habitacion,salidaTarde,nombreFestividad) values('Star',5,8901,'Honduras','1995-12-01','simple',1,null);

insert into RESERVACION(NombreHotel,NoEstrellas,No_ID,NombrePais,fecha,nombre_tipo_habitacion,salidaTarde,nombreFestividad) values('Santa Elena',3,9012,'Guatemala','1980-12-24','individual',1,'Navidad');
insert into RESERVACION(NombreHotel,NoEstrellas,No_ID,NombrePais,fecha,nombre_tipo_habitacion,salidaTarde,nombreFestividad) values('Santa Elena',3,9012,'Guatemala','2011-09-15','individual',0,'Día de la independencia');
insert into RESERVACION(NombreHotel,NoEstrellas,No_ID,NombrePais,fecha,nombre_tipo_habitacion,salidaTarde,nombreFestividad) values('Santa Elena',3,9012,'Guatemala','1985-12-24','individual',1,'Navidad');
insert into RESERVACION(NombreHotel,NoEstrellas,No_ID,NombrePais,fecha,nombre_tipo_habitacion,salidaTarde,nombreFestividad) values('Locus',4,9012,'El Salvador','1990-12-24','individual',1,'Navidad');
insert into RESERVACION(NombreHotel,NoEstrellas,No_ID,NombrePais,fecha,nombre_tipo_habitacion,salidaTarde,nombreFestividad) values('Locus',4,9012,'El Salvador','2002-05-10','individual',0,'Día de las madres');
insert into RESERVACION(NombreHotel,NoEstrellas,No_ID,NombrePais,fecha,nombre_tipo_habitacion,salidaTarde,nombreFestividad) values('Locus',4,9012,'El Salvador','1992-12-24','individual',0,'Navidad');
insert into RESERVACION(NombreHotel,NoEstrellas,No_ID,NombrePais,fecha,nombre_tipo_habitacion,salidaTarde,nombreFestividad) values('Leon',5,9012,'Guatemala','1995-12-24','simple',0,'Navidad');
insert into RESERVACION(NombreHotel,NoEstrellas,No_ID,NombrePais,fecha,nombre_tipo_habitacion,salidaTarde,nombreFestividad) values('Leon',5,9012,'Guatemala','2010-12-24','simple',1,'Navidad');
insert into RESERVACION(NombreHotel,NoEstrellas,No_ID,NombrePais,fecha,nombre_tipo_habitacion,salidaTarde,nombreFestividad) values('Leon',5,9012,'Guatemala','2000-12-24','simple',0,'Navidad');
insert into RESERVACION(NombreHotel,NoEstrellas,No_ID,NombrePais,fecha,nombre_tipo_habitacion,salidaTarde,nombreFestividad) values('Star',5,9012,'Honduras','2020-12-24','simple',0,'Navidad');

insert into RESERVACION(NombreHotel,NoEstrellas,No_ID,NombrePais,fecha,nombre_tipo_habitacion,salidaTarde,nombreFestividad) values('Santa Elena',3,0123,'Guatemala','1980-05-10','individual',0,'Día de las madres');
insert into RESERVACION(NombreHotel,NoEstrellas,No_ID,NombrePais,fecha,nombre_tipo_habitacion,salidaTarde,nombreFestividad) values('Santa Elena',3,0123,'Guatemala','2011-09-15','individual',0,'Día de la independencia');
insert into RESERVACION(NombreHotel,NoEstrellas,No_ID,NombrePais,fecha,nombre_tipo_habitacion,salidaTarde,nombreFestividad) values('Santa Elena',3,0123,'Guatemala','1985-05-10','individual',0,'Día de las madres');
insert into RESERVACION(NombreHotel,NoEstrellas,No_ID,NombrePais,fecha,nombre_tipo_habitacion,salidaTarde,nombreFestividad) values('Locus',4,0123,'El Salvador','1989-05-10','individual',1,'Día de las madres');
insert into RESERVACION(NombreHotel,NoEstrellas,No_ID,NombrePais,fecha,nombre_tipo_habitacion,salidaTarde,nombreFestividad) values('Locus',4,0123,'El Salvador','2002-05-10','individual',0,'Día de las madres');
insert into RESERVACION(NombreHotel,NoEstrellas,No_ID,NombrePais,fecha,nombre_tipo_habitacion,salidaTarde,nombreFestividad) values('Locus',4,0123,'El Salvador','1995-05-10','individual',1,'Día de las madres');
insert into RESERVACION(NombreHotel,NoEstrellas,No_ID,NombrePais,fecha,nombre_tipo_habitacion,salidaTarde,nombreFestividad) values('Leon',5,0123,'Guatemala','2012-05-10','simple',0,'Día de las madres');
insert into RESERVACION(NombreHotel,NoEstrellas,No_ID,NombrePais,fecha,nombre_tipo_habitacion,salidaTarde,nombreFestividad) values('Leon',5,0123,'Guatemala','2010-12-24','simple',0,'Navidad');
insert into RESERVACION(NombreHotel,NoEstrellas,No_ID,NombrePais,fecha,nombre_tipo_habitacion,salidaTarde,nombreFestividad) values('Leon',5,0123,'Guatemala','2020-12-24','simple',1,'Navidad');
insert into RESERVACION(NombreHotel,NoEstrellas,No_ID,NombrePais,fecha,nombre_tipo_habitacion,salidaTarde,nombreFestividad) values('Star',5,0123,'Honduras','1999-12-24','simple',0,'Navidad');


/*CONSULTAS*/

select count(NombreHotel) as 'Cantidad de hoteles', NombrePais from HOTEL group by NombrePais;
select count(NombreHotel) as 'Cantidad de habitaciones', tipo from HABITACION group by tipo;




