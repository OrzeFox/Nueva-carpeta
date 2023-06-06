# U-know-latin
1-CONCEPTO DE BASES DE DATOS RELACIONAL:

La base de datos relacional utiliza un conjunto de tablas relacionadas entre sí mediante claves primarias y claves externas. 
La clave primaria es un campo único que identifica de manera exclusiva cada registro en una tabla,
mientras que la clave externa establece una relación entre dos tablas basada en el valor de una columna común.

Las operaciones más comunes realizadas en una base de datos relacional son la inserción, consulta, actualización y eliminación de datos.
Estas operaciones se llevan a cabo utilizando lenguajes de consulta como SQL (Structured Query Language).

Una base de datos relacional organiza los datos en tablas relacionadas entre sí mediante claves primarias y externas, lo que proporciona una estructura flexible y eficiente para almacenar y recuperar información de manera confiable.

2-Esta base de datos de MySQL se llama "u-know" y consta de varias tablas relacionadas entre sí.
A continuacion son cada una de las tablas y sus columnas principales:

.Tabla "user":

Columnas: id, username, email, password, create_time, credit_balance.
Esta tabla almacena información de los usuarios, como su nombre de usuario, correo electrónico, contraseña, fecha de creación y saldo de crédito.

.Tabla "content":

Columnas: id, title, description, price, author_id, updated_at, categorie, dificulty, sales, aproved.
Esta tabla almacena información sobre los contenidos, como el título, descripción, precio, autor, fecha de actualización, categoría, dificultad, ventas y aprobación.

.Tabla "comments":

Columnas: id, content_id, text, user_id.
Esta tabla almacena los comentarios realizados en los contenidos, relacionando el comentario con el contenido y el usuario correspondiente.

.Tabla "purchase":

Columnas: id, user_id, purchasecol.
Esta tabla registra las compras realizadas por los usuarios, relacionando la compra con el usuario correspondiente.

.Tabla "purchase_has_content":

Columnas: id, purchase_id, content_id.
Esta tabla establece la relación entre las compras y los contenidos, registrando qué contenidos se incluyeron en cada compra.

.Tabla "rating":

Columnas: id, content_id, user_id, value.
Esta tabla almacena las calificaciones dadas por los usuarios a los contenidos, relacionando la calificación con el contenido y el usuario correspondiente.

.Tabla "wallet":

Columnas: id, balance, user_id.
Esta tabla registra el saldo de la billetera de cada usuario.
Cada tabla tiene sus respectivas claves primarias y restricciones de clave externa para mantener la integridad de los datos y establecer relaciones entre las tablas.

2- Algunas de las consultas que podemos realizar:

-Obtener el título y la descripción de los cursos cuyo precio es mayor a 150:
```sql
            SELECT title, description FROM content WHERE price > 150; 
```
-Obtener el número total de cursos por categoría:
```sql
            SELECT categorie, COUNT(*) as total_cursos FROM content GROUP BY categorie;
```
-Obtener el título y la descripción de los cursos aprobados de nivel “Difícil”:
```sql
            SELECT title, description FROM content WHERE aproved = 1 AND dificulty = 'Difícil'; 
```
-Selecciona los campos id, title y price de la tabla content y los ordena en orden ascendente según el valor de price.
```sql
            SELECT id, title, price fROM content ORDER BY (price) asc;
```

-Actualiza el valor del campo price a 500 cambia el precio del contenido con el ID 2 y lo establece en 500.
```sql
            UPDATE `mydb`.`content` SET `price` = '500' WHERE (`id` = '2');
```
