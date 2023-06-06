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

## User
| Columna        | Descripción                             |
|----------------|-----------------------------------------|
| id             | Identificador único del usuario          |
| username       | Nombre de usuario del usuario            |
| email          | Correo electrónico del usuario           |
| password       | Contraseña del usuario                   |
| create_time    | Fecha y hora de creación del usuario     |
| credit_balance | Saldo de crédito del usuario             |

## Categoria
| Columna        | Descripción                             |
|----------------|-----------------------------------------|
| id             | Identificador único de la categoría      |
| categorie_name | Nombre de la categoría                   |

## Dificultad
| Columna         | Descripción                             |
|-----------------|-----------------------------------------|
| id              | Identificador único de la dificultad     |
| dificulty_level | Nivel de dificultad                      |

## Contenido
| Columna            | Descripción                             |
|--------------------|-----------------------------------------|
| id                 | Identificador único del contenido        |
| author_id          | Identificador único del autor            |
| title              | Título del contenido                     |
| description        | Descripción del contenido                |
| price              | Precio del contenido                     |
| updated_at         | Fecha y hora de actualización del contenido |
| categorie_id       | Identificador único de la categoría      |
| dificulty_id       | Identificador único de la dificultad     |
| sales              | Cantidad de ventas del contenido         |
| aproved            | Aprobación del contenido (0 o 1)         |

## Comentario
| Columna            | Descripción                             |
|--------------------|-----------------------------------------|
| id                 | Identificador único del comentario       |
| content_comments_id| Identificador único del contenido asociado al comentario |
| text               | Texto del comentario                     |
| user_id            | Identificador único del usuario que realizó el comentario |
| created_at         | Fecha y hora de creación del comentario   |

## Compra
| Columna        | Descripción                             |
|----------------|-----------------------------------------|
| id             | Identificador único de la compra         |
| user_id        | Identificador único del usuario que realizó la compra |
| purchaseDate   | Fecha y hora de la compra                |

## Relacion Compra contenido
| Columna        | Descripción                             |
|----------------|-----------------------------------------|
| id             | Identificador único de la relación entre compra y contenido |
| purchase_id    | Identificador único de la compra asociada |
| content_id     | Identificador único del contenido asociado |

## Rating
| Columna            | Descripción                             |
|--------------------|-----------------------------------------|
| id                 | Identificador único del rating           |
| content_rating_id  | Identificador único del contenido asociado al rating |
| user_rating_id     | Identificador único del usuario que realizó el rating |
| value              | Valor del rating (0 a 5)                 |

## Mensajes
| Columna        | Descripción                             |
|----------------|-----------------------------------------|
| id             | Identificador único del mensaje          |
| sender_id      | Identificador único del remitente del mensaje |
| receiver_id    | Identificador único del destinatario del mensaje |
| content        | Contenido del mensaje                    |
| timestamp      | Fecha y hora del mensaje                 |

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
