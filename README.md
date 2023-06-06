# U-know-latin

1- Algunas de las consultas que podemos realizar:

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
