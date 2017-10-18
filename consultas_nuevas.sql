

/* Cantidad de empleados con más de 2 faltas en el mes actual */
CREATE VIEW numer_faltas AS
  (SELECT count(*)
  FROM jornada j
  WHERE j.f_mes > 2 and j.mes = 'octubre' and j.año = 2017);

/* Promedio de horas trabajadas por “empleados por hora” por año y mes (e.g. Febrero/2002). */
DELIMITER //
CREATE PROCEDURE empleados_por_hora(mes varchar(12), año int)
BEGIN
  SELECT avg(e.cantidad_de_horas_trabajadas)
      FROM empleado e, cargo p, area a, funcion f, categoria c, jornada j
      WHERE e.id_cargo = p.id_cargo and e.tipo_de_jornada like '%hora%'
      and j.numero_legajo = e.numero_legajo and j.mes = mes and j.año = año;
END;//
DELIMITER;

/* Promedio de monto pagado a “empleados por hora” por año y
mes (sueldo se calcula => horas trabajadas * valor hora). */
SELECT a.nombre_area
    FROM area a, empleado e, cargo ca
    WHERE e.id_cargo = ca.id_cargo AND ca.id_area = a.id_area
    and e.nombre like 'Oberbrunner%';

/* Todos los empleados que venden horas a la empresa, es decir
que además de empleados mensuales sean empleados por hora. */
CREATE VIEW vende_horas AS
  (SELECT e.nombre
  FROM empleado e
  WHERE e.tipo_de_jornada like 'hora-fijo');

/* Dar en forma de tabla el curriculum de los empleados que son jefes (debería haber pocos) */
CREATE VIEW curriculum AS
  SELECT e.nombre, cv.fecha_inicio_cargo_previo, cv.fecha_fin_cargo_previo,
  p.nombre_cargo
  FROM empleado e, cargo p, cv
  WHERE e.numero_legajo = cv.numero_legajo AND p.id_cargo = cv.id_cargo
  and e.jefe = 1;

/* Recibos de sueldo del último año comprendido entre Agosto/año anterior y
Agosto/año actual de un empleado en particular. */
SELECT e.nombre
    FROM categoria c, empleado e, cargo ca
    WHERE e.id_cargo = ca.id_cargo AND ca.id_categoria = c.id_categoria
    and c.nombre_categoria like 'quas%';

/* Sueldo promedio por categoría, área y función de los empleados trabajando actualmente. */
DELIMITER //
CREATE PROCEDURE promedio_c_a_f(OUT sueldo_categoria int, OUT sueldo_area int, OUT sueldo_funcion int)
  BEGIN
  SELECT avg(f.sueldo_por_hora_f * e.cantidad_de_horas_trabajadas) INTO sueldo_funcion
  FROM empleado e, cargo p, funcion f, jornada j
  WHERE e.id_cargo = p.id_cargo AND p.id_funcion = f.id_funcion;
  SELECT avg(c.sueldo_por_hora_c * e.cantidad_de_horas_trabajadas) INTO sueldo_categoria
  FROM empleado e, cargo p, funcion f, categoria c
  WHERE e.id_cargo = p.id_cargo AND p.id_categoria = c.id_categoria;
  SELECT avg(a.sueldo_por_hora_a * e.cantidad_de_horas_trabajadas) INTO sueldo_area
  FROM empleado e, cargo p, funcion f, area a
  WHERE e.id_cargo = p.id_cargo AND p.id_funcion = a.id_area;
  and ;
END; //
DELIMITER;

/* Cantidad de empleados por categoría, área y función. */
DELIMITER //
CREATE PROCEDURE cant_empleados(OUT num_categoria int, OUT num_area int, OUT num_funcion int)
  BEGIN
  SELECT count(*) INTO num_funcion
  FROM empleado e, cargo p, funcion f, jornada j
  WHERE e.id_cargo = p.id_cargo AND p.id_funcion = f.id_funcion;
  SELECT count(*) INTO num_categoria
  FROM empleado e, cargo p, funcion f, categoria c
  WHERE e.id_cargo = p.id_cargo AND p.id_categoria = c.id_categoria;
  SELECT count(*) INTO num_area
  FROM empleado e, cargo p, funcion f, area a
  WHERE e.id_cargo = p.id_cargo AND p.id_funcion = a.id_area;
  and ;
END; //
DELIMITER;


/* Cantidad de faltas por año por área, función y categoría de todos los empleados fijos. */


/* Promedio de faltas de todos los empleados fijos por mes. */
DELIMITER //
CREATE PROCEDURE faltas_mes(OUT enero int, OUT febrero int, OUT marso int, OUT abril int
  OUT mayo int, OUT junio int, OUT julio int , OUT agosto int, OUT septiembre int, OUT octubre int, OUT noviembre int
  OUT diciembre int)
  SELECT avg(j.f_mes) into enero
  FROM empleado e, jornada j
  WHERE e.numero_legajo = j.numero_legajo AND j.mes like 'enero'
  and e.tipo_de_jornada like '%fijo%';

  SELECT avg(j.f_mes) into febrero
  FROM empleado e, jornada j
  WHERE e.numero_legajo = j.numero_legajo AND j.mes like 'febrero'
  and e.tipo_de_jornada like '%fijo%';

  SELECT avg(j.f_mes) into marso
  FROM empleado e, jornada j
  WHERE e.numero_legajo = j.numero_legajo AND j.mes like 'marso'
  and e.tipo_de_jornada like '%fijo%';

  SELECT avg(j.f_mes) into abril
  FROM empleado e, jornada j
  WHERE e.numero_legajo = j.numero_legajo AND j.mes like 'abril'
  and e.tipo_de_jornada like '%fijo%';

  SELECT avg(j.f_mes) into mayo
  FROM empleado e, jornada j
  WHERE e.numero_legajo = j.numero_legajo AND j.mes like 'mayo'
  and e.tipo_de_jornada like '%fijo%';

  SELECT avg(j.f_mes) into junio
  FROM empleado e, jornada j
  WHERE e.numero_legajo = j.numero_legajo AND j.mes like 'junio'
  and e.tipo_de_jornada like '%fijo%';

  SELECT avg(j.f_mes) into julio
  FROM empleado e, jornada j
  WHERE e.numero_legajo = j.numero_legajo AND j.mes like 'julio'
  and e.tipo_de_jornada like '%fijo%';

  SELECT avg(j.f_mes) into agosto
  FROM empleado e, jornada j
  WHERE e.numero_legajo = j.numero_legajo AND j.mes like 'agosto'
  and e.tipo_de_jornada like '%fijo%';

  SELECT avg(j.f_mes) into septiembre
  FROM empleado e, jornada j
  WHERE e.numero_legajo = j.numero_legajo AND j.mes like 'septiembre'
  and e.tipo_de_jornada like '%fijo%';

  SELECT avg(j.f_mes) into octubre
  FROM empleado e, jornada j
  WHERE e.numero_legajo = j.numero_legajo AND j.mes like 'octubre'
  and e.tipo_de_jornada like '%fijo%';

  SELECT avg(j.f_mes) into noviembre
  FROM empleado e, jornada j
  WHERE e.numero_legajo = j.numero_legajo AND j.mes like 'noviembre'
  and e.tipo_de_jornada like '%fijo%';

  SELECT avg(j.f_mes) into diciembre
  FROM empleado e, jornada j
  WHERE e.numero_legajo = j.numero_legajo AND j.mes like 'diciembre'
  and e.tipo_de_jornada like '%fijo%';
END; //
DELIMITER;

/* Menor y mayor cantidad de faltas por empleado por mes. */
