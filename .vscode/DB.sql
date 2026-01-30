CREATE TABLE clientes (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR NOT NULL,
    apellido VARCHAR UNIQUE NOT NULL,
    edad INT,
    sexo CHAR
);

CREATE TABLE productos (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR NOT NULL,
    descripcion VARCHAR,
    precio DECIMAL(10, 2) NOT NULL,
    stock INT DEFAULT 0
);

CREATE TABLE ventas (
    id INT PRIMARY KEY AUTO_INCREMENT,
    cliente_id INT,
    producto_id INT,
    cantidad INT NOT NULL,
    fecha_venta DATETIME DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (cliente_id) REFERENCES clientes(id),
    FOREIGN KEY (producto_id) REFERENCES productos(id)
);

INSERT INTO clientes (nombre, apellido, edad, sexo) VALUES
('Juan', 'Perez', 30, 'M'),
('Maria', 'Gomez', 25, 'F'),
('Carlos', 'Lopez', 40, 'M');

INSERT INTO productos (nombre, descripcion, precio, stock) VALUES
('Laptop', 'Laptop de alta gama', 1500.00, 10),
('Smartphone', 'Smartphone con buena cámara', 800.00, 20),
('Tablet', 'Tablet para uso diario', 300.00, 15);

INSERT INTO ventas (cliente_id, producto_id, cantidad) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 1),
(1, 2, 1);

SELECT c.nombre, c.apellido, p.nombre AS producto, v.cantidad, v.fecha_venta
FROM ventas v
JOIN clientes c ON v.cliente_id = c.id
JOIN productos p ON v.producto_id = p.id;