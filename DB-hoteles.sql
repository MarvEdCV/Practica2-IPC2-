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



