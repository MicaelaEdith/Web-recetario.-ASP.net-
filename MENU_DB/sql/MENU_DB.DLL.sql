create database MENU_DB

CREATE TABLE categorias (
Id INT PRIMARY KEY IDENTITY (1,1) NOT NULL,
Nombre VARCHAR(40) NOT NULL,
)

CREATE TABLE platos (
Id INT PRIMARY KEY IDENTITY (1,1) NOT NULL,
Nombre VARCHAR(40) NOT NULL,
Descripcion varchar(180),
dificultad varchar(15),
receta text,
categoria_id int,
origen varchar(50),
ingredientes text,
costo float
); 

alter table platos 
add foreign key(categoria_id)
references categorias (id);
    