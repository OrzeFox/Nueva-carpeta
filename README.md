# U-know-latin
1-CONCEPTO DE BASES DE DATOS RELACIONAL:

La base de datos relacional utiliza un conjunto de tablas relacionadas entre sí mediante claves primarias y claves externas. 
La clave primaria es un campo único que identifica de manera exclusiva cada registro en una tabla,
mientras que la clave externa establece una relación entre dos tablas basada en el valor de una columna común.

Las operaciones más comunes realizadas en una base de datos relacional son la inserción, consulta, actualización y eliminación de datos.
Estas operaciones se llevan a cabo utilizando lenguajes de consulta como SQL (Structured Query Language).

Una base de datos relacional organiza los datos en tablas relacionadas entre sí mediante claves primarias y externas, lo que proporciona una estructura flexible y eficiente para almacenar y recuperar información de manera confiable.

2- Algunas de las consultas que podemos realizar:

-Obtener el título y la descripción de los cursos cuyo precio es mayor a 20:
            SELECT title, description FROM content WHERE price > 20; 
  
-Obtener el número total de cursos por categoría:
            SELECT categorie, COUNT(*) as total_cursos FROM content GROUP BY categorie;

-Obtener el título y la descripción de los cursos aprobados de nivel “Difícil”:
            SELECT title, description FROM content WHERE aproved = 1 AND dificulty = 'Difícil'; 

-Selecciona los campos id, title y price de la tabla content y los ordena en orden ascendente según el valor de price.
            SELECT id, title, price fROM content ORDER BY (price) asc;

-Actualiza el valor del campo price a 500 cambia el precio del contenido con el ID 2 y lo establece en 500.
            UPDATE `mydb`.`content` SET `price` = '500' WHERE (`id` = '2');
