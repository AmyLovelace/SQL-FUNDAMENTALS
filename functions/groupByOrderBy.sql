-- Agrupando sin indicar el nombre de las columnas
-- Cuando se trata de agrupar datos en una consulta SQL, existe una forma de evitar la redundancia de la cláusula SELECT. Por ejemplo, considera la siguiente consulta:

-- SELECT strftime("%Y", fecha_venta) AS año, SUM(monto) FROM ventas GROUP BY strftime("%Y", fecha_venta)

-- Puedes simplificarla de la siguiente manera:

-- SELECT strftime("%Y", fecha_venta) AS año, SUM(monto) FROM ventas GROUP BY 1

-- Esta notación se interpreta como "agrupa por el primer criterio". También es posible aplicar esta sintaxis en la cláusula ORDER BY:

-- SELECT strftime("%Y", fecha_venta) AS año, SUM(monto) FROM ventas GROUP BY 1 ORDER BY 1

-- De esta manera, puedes lograr la misma agrupación y ordenamiento sin repetir la expresión de la cláusula SELECT.

-- Ejercicio
-- Dada la siguiente tabla de usuarios

-- CORREO
-- juan.perez@empresa.com
-- maria.gonzalez@empresa.com
-- carlos.rodriguez@empresa.com
-- ana.martinez@empresa.com
-- luis.garcia@empresa.com
-- carmen.lopez@empresa.com
-- jose.hernandez@empresa.com
-- juan.perez@empresa.com
-- carmen.lopez@empresa.com
-- maria.gonzalez@empresa.com
-- juan.perez@empresa.com
-- maria.gonzalez@empresa.com
-- Crea una consulta que nos muestre cada correo una única vez acompañado del número de veces que se repite. Las columnas deben llevar los nombres "correo" y "repeticiones", respectivamente, y deben estar ordenadas alfabéticamente.


SELECT correo as correo, COUNT(correo) as repeticiones FROM usuarios GROUP BY 1 ORDER BY 1;

-- Agrupando por múltiples columnas
-- En SQL es posible agrupar por múltiples columnas utilizando la siguiente sintaxis:

-- SELECT columna1, columna2, funcion_agrupado(columna3) FROM tabla GROUP BY columna1, columna2

-- Y como aprendimos en el ejercicio anterior, también podemos escribir la consulta de la siguiente manera:

-- SELECT columna1, columna2, funcion_agrupado(columna3) FROM tabla GROUP BY 1, 2

-- Ejercicio
-- Tenemos la siguiente tabla estudiantes

-- CORREO	MATERIA	NOTA
-- estudiante1@ejemplo.com	Matemáticas	8.5
-- estudiante2@ejemplo.com	Matemáticas	9.0
-- estudiante3@ejemplo.com	Matemáticas	7.5
-- estudiante1@ejemplo.com	Ciencias	8.0
-- estudiante2@ejemplo.com	Ciencias	9.5
-- estudiante3@ejemplo.com	Ciencias	7.0
-- estudiante1@ejemplo.com	Historia	8.7
-- estudiante2@ejemplo.com	Historia	9.2
-- estudiante3@ejemplo.com	Historia	7.8
-- Calcula el promedio de cada estudiante en cada materia. Las columnas deben llamarse correo, materia y promedio_notas


SELECT correo,materia, AVG(nota) as promedio_notas FROM estudiantes GROUP BY 1,2;