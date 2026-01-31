CREATE TABLE categories (
    id_categorie INT PRIMARY KEY,
    name VARCHAR(50),
    age_min INT,
    age_max INT,
    genre CHAR
);

CREATE TABLE participate (
    id_participate INT PRIMARY KEY,
    name VARCHAR(50),
    last_name VARCHAR(50),
    age INT,
    genre CHAR
);

CREATE TABLE inscription (
    num_inscription INT PRIMARY KEY,
    fec_inscription DATE,
    pay BOOLEAN
);

INSERT INTO categories (id_categorie, name, age_min, age_max, genre) VALUES (1, "Masculine A", 18, 30, 'M'), (2, "Masculine B", 31, 45, 'M'), (3, "Masculine Senior", 46, 60, 'M'), (4, "Femme A", 18, 30, 'F'), (5, "Femme B", 31, 45, 'F'), (6, "Femme Senior", 46, 60, 'F');

INSERT INTO participate (id_participate, name, last_name, age, genre) VALUES (1, "Juan", "Prada", 24, 'M'), (2, "Esteban", "Ospina", 23, 'M'), (3, "Juan", "Ospina", 25, 'M'), (4, "Esteban", "Prada", 22, 'M'), (5, "Juan", "Moreno", 21, 'M'), (6, "Esteban", "Moreno", 20, 'M');

INSERT INTO inscription (num_inscription, fec_inscription, pay) VALUES (1, '2026-01-01', TRUE), (2, '2026-01-02', FALSE), (3, '2026-01-03', TRUE), (4, '2026-01-04', FALSE), (5, '2026-01-05', TRUE), (6, '2026-01-06', FALSE);

SELECT COUNT(*) FROM participate;

SELECT * FROM participate;
SELECT * FROM categories;
SELECT * FROM inscription;

SELECT name, last_name FROM participate JOIN inscription ON num_inscription = id_participate;
SELECT * FROM participate WHERE age BETWEEN 22 AND 25;