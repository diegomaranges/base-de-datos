/*mysql -uubd17_g7 -poow2We3s -h172.18.7.140
mysql -uubd17_g7 -poow2We3s -h172.18.7.140 < databse.sql
https://www.w3schools.com/sql/default.asp*/
/*use bd17_g7;*/

CREATE TABLE funcion(
    id_funcion int NOT NULL AUTO_INCREMENT,
    nombre_funcion varchar(100) NOT NULL,
    PRIMARY KEY (id_funcion)
)ENGINE=InnoDB;

CREATE TABLE area(
    id_area int NOT NULL AUTO_INCREMENT,
    nombre_area varchar(100) NOT NULL,
    PRIMARY KEY (id_area)
)ENGINE=InnoDB;

CREATE TABLE categoria(
    id_categoria int NOT NULL AUTO_INCREMENT,
    nombre_categoria varchar(100) NOT NULL,
    PRIMARY KEY (id_categoria)
)ENGINE=InnoDB;

CREATE TABLE cargo(
    id_cargo int NOT NULL AUTO_INCREMENT,
    nombre_cargo varchar(100) NOT NULL,
    sueldo_por_hora int NOT NULL,
    sueldo_por_mes int NOT NULL,
    PRIMARY KEY (id_cargo),
    id_funcion int,
    id_area int,
    id_categoria int,
    FOREIGN KEY (id_funcion) REFERENCES funcion(id_funcion),
    FOREIGN KEY (id_area) REFERENCES area(id_area),
    FOREIGN KEY (id_categoria) REFERENCES categoria(id_categoria)
)ENGINE=InnoDB;

CREATE TABLE empleado(
    numero_legajo int NOT NULL AUTO_INCREMENT,
    nombre varchar(100) NOT NULL,
    dni int NOT NULL,
    estado varchar(100) NOT NULL,
    cantidad_de_horas_trabajadas int NOT NULL,
    tipo_de_turno varchar(100) NOT NULL,
    fecha_de_ingreso date NOT NULL,
    calle varchar(100) NOT NULL,
    numero int NOT NULL,
    barrio varchar(100) NOT NULL,
    ciudad varchar(100) NOT NULL,
    depto int,
    fecha_de_inicio_cargo_actual date NOT NULL,
    id_cargo int,
    cantidad_faltas_mes int,
    PRIMARY KEY (numero_legajo),
    FOREIGN KEY (id_cargo) REFERENCES cargo(id_cargo)
)ENGINE=InnoDB;

CREATE TABLE cv(
    id_cv int NOT NULL AUTO_INCREMENT,
    fecha_inicio_cargo_previo date NOT NULL,
    fecha_fin_cargo_previo date NOT NULL,
    id_cargo int,
    numero_legajo int,
    PRIMARY KEY (id_cv),
    FOREIGN KEY (id_cargo) REFERENCES cargo(id_cargo),
    FOREIGN KEY (numero_legajo) REFERENCES empleado(numero_legajo)
)ENGINE=InnoDB;

CREATE TABLE legajo(
    id_legajo int NOT NULL AUTO_INCREMENT,
    empleo_previo varchar(100),
    numero_contacto int,
    numero_legajo int,
    PRIMARY KEY (id_legajo),
    FOREIGN KEY (numero_legajo) REFERENCES empleado(numero_legajo)
)ENGINE=InnoDB;

CREATE TABLE telefono(
    numero int NOT NULL AUTO_INCREMENT,
    numero_legajo int,
    PRIMARY KEY (numero),
    FOREIGN KEY (numero_legajo) REFERENCES empleado(numero_legajo)
)ENGINE=InnoDB;

CREATE TABLE usuario(
    id_usuario int NOT NULL AUTO_INCREMENT,
    nombre_de_usuario varchar(100) NOT NULL,
    email varchar(100) NOT NULL,
    contraseña varchar(100) NOT NULL,
    fecha_de_inicio_cargo_actual date NOT NULL,
    numero_legajo int,
    PRIMARY KEY (id_usuario),
    FOREIGN KEY (numero_legajo) REFERENCES empleado(numero_legajo)
)ENGINE=InnoDB;

CREATE TABLE permiso(
    id_permiso int NOT NULL AUTO_INCREMENT,
    tipo varchar(100) NOT NULL,
    id_usuario int,
    PRIMARY KEY (id_permiso),
    FOREIGN KEY (id_usuario) REFERENCES usuario(id_usuario)
)ENGINE=InnoDB;

CREATE TABLE historial(
    id_historial int NOT NULL AUTO_INCREMENT,
    fecha date NOT NULL,
    hora time NOT NULL,
    salario_previo int NOT NULL,
    salario_actual int NOT NULL,
    numero_legajo int,
    PRIMARY KEY (id_historial),
    FOREIGN KEY (numero_legajo) REFERENCES empleado(numero_legajo)
)ENGINE=InnoDB;

CREATE TABLE modifico_historial(/*5*/
    id_modifico_historial int NOT NULL AUTO_INCREMENT,
    id_historial int,
    id_usuario int,
    PRIMARY KEY (id_modifico_historial),
    FOREIGN KEY (id_usuario) REFERENCES usuario(id_usuario),
    FOREIGN KEY (id_historial) REFERENCES historial(id_historial)
)ENGINE=InnoDB;

CREATE TABLE jornada(
    id_jornada int NOT NULL AUTO_INCREMENT,
    mes varchar(12) NOT NULL,
    horario_de_salida time NOT NULL,
    horario_de_entrada time NOT NULL,
    numero_legajo int,
    PRIMARY KEY (id_jornada),
    FOREIGN KEY (numero_legajo) REFERENCES empleado(numero_legajo)
)ENGINE=InnoDB;

CREATE TABLE premio(
    id_premio int NOT NULL AUTO_INCREMENT,
    tipo varchar(100) NOT NULL,
    fecha_premio date NOT NULL,
    nombre_premio varchar(100) NOT NULL,
    descripcion varchar(100) NOT NULL,
    mensual_anual varchar(100) NOT NULL,
    numero_legajo int,
    PRIMARY KEY (id_premio),
    FOREIGN KEY (numero_legajo) REFERENCES empleado(numero_legajo)
)ENGINE=InnoDB;
