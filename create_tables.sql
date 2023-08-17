create table autores (
	nickname char(255),
	nombre char(255));

create table usuarios (
	nombreCompleto char(255),
	nickname char(255),
	edad int,
	email char(255),
	telefono char(31),
	direccion char(255),
	pais char(2),
	passwd char(255),
	rol char(1));

create table juegos (
	id char(31),
	nombre char(255),
	descCorta char(255),
	descLarga char(255),
	fechaLanzamiento date,
	precio decimal(10,2),
	genero char(15),
	edadInicio int,
	edadFin int);

create table tarjeta (
	id_user char(255),
	nombreTarjeta char(255),
	numTarjeta char(19),
	fecha date);

create table compras (
	id_fac int,
	valor decimal(10,2),
	id_game char(31),
	id_user char(255),
	numTarjeta char(19));

create table biblioteca (
	id_user char(255),
	id_game char(31),
	rate int);

create table listaDeseos (
	id_user char(255),
	id_game char(31));

create table autoresJuegos (
	id_game char(31),
	id_autor char(255));

create table pais (
	id char(2),
	nombre char(255));

create table disponibleJuegosPais (
	id_game char(31),
	id_pais char(2));

create table promociones (
	id_game char(31),
	fechaIni date,
	fechaFin date,
	descuento decimal(10,2));