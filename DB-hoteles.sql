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
NoEstrellas int not null,
tipo varchar (25) not null,
NoHabitacion int not null,
primary key(NoEstrellas,tipo),
foreign key(NoEstrellas) references CATEGORIA (NoEstrellas),
foreign key(tipo) references TIPOHABITACION(tipo)
);



