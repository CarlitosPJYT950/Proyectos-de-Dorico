CREATE TABLE programacion (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR NOT NULL,
    descripcion VARCHAR,
    fecha_inicio DATE,
    fecha_fin DATE
);

CREATE TABLE desarrolladores (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR NOT NULL,
    apellido VARCHAR NOT NULL,
    especialidad VARCHAR
);

INSERT INTO programacion (nombre, descripcion, fecha_inicio, fecha_fin) VALUES
('Proyecto A', 'Desarrollo de una aplicación web', '2024-01-01', '2024-06-30'),
('Proyecto B', 'Desarrollo de una aplicación móvil', '2024-02-15', '2024-08-15');
INSERT INTO desarrolladores (nombre, apellido, especialidad) VALUES
('Ana', 'Martinez', 'Frontend'),
('Luis', 'Rodriguez', 'Backend'),
('Sofia', 'Garcia', 'Fullstack');

SELECT p.nombre AS proyecto, d.nombre AS desarrollador, d.especialidad
FROM programacion p
JOIN desarrolladores d ON p.id = d.id;