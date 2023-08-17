alter table dbo.autores
alter column nickname char(255) not null;
go

alter table dbo.autores 
add constraint PK_Autores_nickname primary key clustered (nickname);

alter table dbo.usuarios
alter column nickname char(255) not null;
go

alter table dbo.usuarios
add constraint PK_Usuarios_nickname primary key clustered (nickname);

alter table dbo.juegos
alter column id char(31) not null;
go

alter table dbo.juegos
add constraint PK_Juegos_id primary key clustered (id);

alter table dbo.tarjeta
alter column numTarjeta char(19) not null;
go

alter table dbo.tarjeta
add constraint PK_Juegos_numTarjeta primary key clustered (numTarjeta);

alter table dbo.compras
alter column id_fac int not null;
go

alter table dbo.compras
add constraint PK_Compras_id_fac primary key clustered (id_fac);

alter table dbo.biblioteca
alter column id_user char(255) not null;
alter table dbo.biblioteca
alter column id_game char(31) not null;
go

alter table dbo.biblioteca
add constraint PK_Biblioteca_id primary key clustered (id_user, id_game);

alter table dbo.listaDeseos
alter column id_user char(255) not null;
alter table dbo.listaDeseos
alter column id_game char(31) not null;
go

alter table dbo.listaDeseos
add constraint PK_ListaDeseos_id primary key clustered (id_user, id_game);

alter table dbo.autoresJuegos
alter column id_game char(31) not null;
alter table dbo.autoresJuegos
alter column id_autor char(255) not null;
go

alter table dbo.autoresJuegos
add constraint PK_AutoresJuegos_id primary key clustered (id_game, id_autor);

alter table dbo.pais
alter column id char(2) not null;
go

alter table dbo.pais
add constraint PK_Pais_id primary key clustered (id);

alter table dbo.disponibleJuegosPais
alter column id_game char(31) not null;
alter table dbo.disponibleJuegosPais
alter column id_pais char(2) not null;
go

alter table dbo.disponibleJuegosPais
add constraint PK_DisponibleJuegosPais_id primary key clustered (id_game, id_pais);

alter table dbo.promociones
alter column id_game char(31) not null;
go

alter table dbo.promociones
add constraint PK_Promociones_id_game primary key clustered (id_game);