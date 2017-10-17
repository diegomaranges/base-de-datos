

/* Cantidad de empleados con más de 2 faltas en el mes actual */
SELECT * FROM empleado WHERE nombre like 'Ortiz%';

/* Promedio de horas trabajadas por “empleados por hora” por año y mes (e.g. Febrero/2002). */
SELECT c.nombre_categoria
    FROM categoria c, empleado e, cargo ca
    WHERE e.id_cargo = ca.id_cargo AND ca.id_categoria = c.id_categoria
    and e.nombre like 'Sim%';

/* Promedio de monto pagado a “empleados por hora” por año y
mes (sueldo se calcula => horas trabajadas * valor hora). */
SELECT a.nombre_area
    FROM area a, empleado e, cargo ca
    WHERE e.id_cargo = ca.id_cargo AND ca.id_area = a.id_area
    and e.nombre like 'Oberbrunner%';

/* Todos los empleados que venden horas a la empresa, es decir
que además de empleados mensuales sean empleados por hora. */
SELECT f.nombre_funcion
    FROM funcion f, empleado e, cargo ca
    WHERE e.id_cargo = ca.id_cargo AND ca.id_funcion = f.id_funcion
    and e.nombre like 'McKenzie%';

/* Dar en forma de tabla el curriculum de los empleados que son jefes (debería haber pocos) */
SELECT e.nombre
    FROM area a, empleado e, cargo ca
    WHERE e.id_cargo = ca.id_cargo AND ca.id_area = a.id_area
    and a.nombre_area like 'nam%';

/* Recibos de sueldo del último año comprendido entre Agosto/año anterior y
Agosto/año actual de un empleado en particular. */
SELECT e.nombre
    FROM categoria c, empleado e, cargo ca
    WHERE e.id_cargo = ca.id_cargo AND ca.id_categoria = c.id_categoria
    and c.nombre_categoria like 'quas%';

/* Sueldo promedio por categoría, área y función de los empleados trabajando actualmente. */
SELECT e.nombre
    FROM funcion f, empleado e, cargo ca
    WHERE e.id_cargo = ca.id_cargo AND ca.id_funcion = f.id_funcion
    and f.nombre_funcion like 'explicabo%';

/* Cantidad de empleados por categoría, área y función. */
SELECT c.nombre_categoria, a.nombre_area, f.nombre_funcion
    FROM empleado e, cargo ca, funcion f, area a, categoria c, cv
    WHERE e.id_cargo = cv.id_cargo and e.id_cargo = ca.id_cargo
    and ca.id_funcion = f.id_funcion and ca.id_area = a.id_area
    and ca.id_categoria = c.id_categoria and e.nombre like 'Oberbrunner%'
    and cv.fecha_inicio_cargo_previo like '19%';


/* Cantidad de faltas por año por área, función y categoría de todos los empleados fijos. */


/* Promedio de faltas de todos los empleados fijos por mes. */


/* Menor y mayor cantidad de faltas por empleado por mes. */