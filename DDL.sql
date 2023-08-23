-- Creación de tablas
CREATE TABLE autores (
	nickname CHAR(255) NOT NULL,
	nombre CHAR(255),
	PRIMARY KEY (nickname)
);

CREATE TABLE usuarios (
	nombreCompleto CHAR(255),
	nickname CHAR(255) NOT NULL,
	edad INT,
	email CHAR(255),
	telefono CHAR(31),
	direccion CHAR(255),
	pais CHAR(2),
	passwd CHAR(255),
	rol CHAR(1),
	PRIMARY KEY (nickname)
);

CREATE TABLE juegos (
	id CHAR(31) NOT NULL,
	nombre CHAR(255),
	descCorta CHAR(255),
	descLarga CHAR(255),
	fechaLanzamiento DATE,
	precio DECIMAL(10,2),
	genero CHAR(15),
	edadInicio INT,
	edadFin INT,
	PRIMARY KEY (id)
);

CREATE TABLE tarjeta (
	id_user CHAR(255),
	nombreTarjeta CHAR(255),
	numTarjeta CHAR(19) NOT NULL,
	fecha DATE,
	PRIMARY KEY (numTarjeta),
	FOREIGN KEY (id_user) REFERENCES usuarios(nickname)
);

CREATE TABLE compras (
	id_fac INT NOT NULL AUTO_INCREMENT,
	valor DECIMAL(10,2),
	id_game CHAR(31),
	id_user CHAR(255),
	numTarjeta CHAR(19),
	PRIMARY KEY (id_fac),
	FOREIGN KEY (id_game) REFERENCES juegos(id),
	FOREIGN KEY (id_user) REFERENCES usuarios(nickname)
);

CREATE TABLE biblioteca (
	id_user CHAR(255) NOT NULL,
	id_game CHAR(31) NOT NULL,
	rate INT,
	PRIMARY KEY (id_user, id_game),
	FOREIGN KEY (id_user) REFERENCES usuarios(nickname),
	FOREIGN KEY (id_game) REFERENCES juegos(id)
);

CREATE TABLE listaDeseos (
	id_user CHAR(255) NOT NULL,
	id_game CHAR(31) NOT NULL,
	PRIMARY KEY (id_user, id_game),
	FOREIGN KEY (id_user) REFERENCES usuarios(nickname),
	FOREIGN KEY (id_game) REFERENCES juegos(id)
);

CREATE TABLE autoresJuegos (
	id_game CHAR(31) NOT NULL,
	id_autor CHAR(255) NOT NULL,
	PRIMARY KEY (id_game, id_autor),
	FOREIGN KEY (id_game) REFERENCES juegos(id),
	FOREIGN KEY (id_autor) REFERENCES autores(nickname)
);

CREATE TABLE pais (
	id CHAR(2) NOT NULL,
	nombre CHAR(255),
	PRIMARY KEY (id)
);

CREATE TABLE disponibleJuegosPais (
	id_game CHAR(31) NOT NULL,
	id_pais CHAR(2) NOT NULL,
	PRIMARY KEY (id_game, id_pais),
	FOREIGN KEY (id_game) REFERENCES juegos(id),
	FOREIGN KEY (id_pais) REFERENCES pais(id)
);

CREATE TABLE promociones (
	id_game CHAR(31) NOT NULL,
	fechaIni DATE,
	fechaFin DATE,
	descuento DECIMAL(10,2),
	PRIMARY KEY (id_game),
	FOREIGN KEY (id_game) REFERENCES juegos(id)
);