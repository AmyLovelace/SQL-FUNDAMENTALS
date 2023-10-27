-- Buscando duplicados
-- Uno de los usos mas recurrentes de HAVING es buscar duplicados. Por ejemplo, dada una tabla de correos ver cuales están más de 1 vez.

-- Ejercicio
-- Se tiene la tabla correos_corporativos

-- CORREO
-- juan.perez@empresa.com
-- maria.gonzalez@empresa.com
-- carlos.rodriguez@empresa.com
-- ana.martinez@empresa.com
-- luis.garcia@empresa.com
-- carmen.lopez@empresa.com
-- jose.hernandez@empresa.com
-- francisco.martin@empresa.com
-- laura.sanchez@empresa.com
-- antonio.diaz@empresa.com
-- juan.perez@empresa.com
-- maria.gonzalez@empresa.com
-- Muestra los correos que aparezcan en más de una ocasión. La tabla resultante debe tener dos columnas: una llamada correo, y otra llamada cuenta_correos que muestra la cantidad de repeticiones correspondiente a cada correo.


SELECT correo, COUNT(correo) as cuenta_correos FROM correos_corporativos GROUP BY 1 HAVING  cuenta_correos >= 2;