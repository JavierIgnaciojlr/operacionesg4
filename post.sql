\c jlopez 
DROP DATABASE posts;
-- DROP TABLE post;
CREATE DATABASE posts;
\c posts
CREATE TABLE post(
        id SERIAL,
        userName VARCHAR(30),
        createdAt DATE,
        content VARCHAR,
        descripcion VARCHAR,
        PRIMARY KEY (id)
);
\dt 

INSERT INTO post (userName, createdAt, content, descripcion)
VALUES('Javier', '08-04-2021', 'Como sabes?', 'Es cuando');
INSERT INTO post (userName, createdAt, content, descripcion)
VALUES('Carlos', '09-04-2021', 'Que?', 'Eso que');
INSERT INTO post (userName, createdAt, content, descripcion)
VALUES('Maria', '10-04-2021', 'Viste que?', 'No habia visto que');


SELECT * FROM post;

ALTER TABLE post ADD title VARCHAR(20);
SELECT  * FROM post;

UPDATE post SET title ='Dinosaurios' WHERE id = 1;
UPDATE post SET title ='Leones' WHERE id = 2;
UPDATE post SET title ='cucarachas' WHERE id = 3;
SELECT  * FROM post;

INSERT INTO post (userName, createdAt, content, descripcion, title)
VALUES('Roberto Carlos', '2021-04-11', 'Un gato cae', 'cayo al agua', 'murio');
INSERT INTO post (userName, createdAt, content, descripcion, title)
VALUES('Kaka', '2021-04-11', 'Un perro cae', 'cayo al vacio', 'vivio');
INSERT INTO post (userName, createdAt, content, descripcion, title)
VALUES('Neymar', '2021-04-11', 'Una tortuga cae', 'cayo al fuego', 'rip');
SELECT * FROM post;

DELETE FROM post WHERE userName = 'Carlos';
SELECT * FROM post;

INSERT INTO post (userName, createdAt, content, descripcion, title)
VALUES('Carlos','2021-04-11','Jamás', 'quedarse', 'es personal');
SELECT * FROM post;