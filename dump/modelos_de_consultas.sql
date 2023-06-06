-- SELECT content.title,  categorie.categorie_name
-- FROM content
-- LEFT JOIN categorie ON content.categorie_id = categorie.id;

-- SELECT c.title, ca.categorie_name
-- FROM `content` AS c
-- INNER JOIN `categorie` AS ca ON c.categorie_id = ca.id;

-- SELECT c.title, ca.dificulty_level
-- FROM `content` AS c
-- INNER JOIN `dificulty` AS ca ON c.dificulty_id = ca.id;

SELECT title, description FROM content WHERE price > 150;