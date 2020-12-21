create database hoteles;
use hoteles;

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
NombreHotel varchar(75) not null,
NoEstrellas int not null,
NombrePais varchar(50) not null,
No_ID int not null,
nombreFestividad varchar(50),
fecha date not null,
salidaTarde bit,
primary key(NombreHotel,NoEstrellas,NombrePais,No_ID),
foreign key(NombreHotel) references HOTEL(nombreHotel),
foreign key(NoEstrellas) references HOTEL(NoEstrellas),
foreign key(NombrePais) references HOTEL(NombrePais),
foreign key(No_ID) references CLIENTE(No_ID),
foreign key(nombreFestividad) references DIAFESTIVO(nombreFestividad)
);


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

select * from HABITACION;
select * from HOTEL;

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

insert into HABITACION(NombreHotel,tipo,NoHabitacion) values('','simple',1);
insert into HABITACION(NombreHotel,tipo,NoHabitacion) values('','simple',2);
insert into HABITACION(NombreHotel,tipo,NoHabitacion) values('','individual',3);
insert into HABITACION(NombreHotel,tipo,NoHabitacion) values('','individual',4);




select count(NombreHotel) as 'Cantidad de hoteles', NombrePais from HOTEL group by NombrePais;




