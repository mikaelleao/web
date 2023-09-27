CREATE DATABASE LOGIN_VETERINARIO;
   DEFAULT CHARACTER SET UTF8
   COLLATE ulf8 general ci;

USE  LOGIN_VETERINARIO;
CREATE TABLE CLIENTE (
    codigo cliente int auto INCREMENT PRIMARY KEY,
    codigo tipo cliente int not null,
    nome cliente VARCHAR(200) NOT NULL,
    telefone INT NOT NULL,
    gmail(11)unsigned zerofill NOT NULL UNIQUE,
	codigo cliente int auto INCREMENT PRIMARY KEY,
    nome cliente VARCHAR(200) NOT NULL,
    atimento INT NOT NULL,
    consulta(11)unsigned zerofill NOT NULL UNIQUE,
    FOREIGN KEY(Codigo_tipo_cliente) references tipo_cliente(codigo_tipo_cliente);