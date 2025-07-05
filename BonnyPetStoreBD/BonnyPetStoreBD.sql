Drop database BonnyPetStoreDB;
CREATE DATABASE BonnyPetStoreDB;
USE BonnyPetStoreDB;

CREATE TABLE Categorias(
    Id INT PRIMARY KEY IDENTITY,
    Nombre VARCHAR(100) NOT NULL
);

CREATE TABLE Productos(
    Id INT PRIMARY KEY IDENTITY,
    Nombre VARCHAR(100) NOT NULL,
    Descripcion VARCHAR(MAX),
    Precio DECIMAL(10,2) NOT NULL,
    ImagenUrl VARCHAR(MAX),
    CategoriaId INT NOT NULL,
    FOREIGN KEY (CategoriaId) REFERENCES Categorias(Id)
);

INSERT INTO Categorias (Nombre) VALUES
('Alimentos'),
('Juguetes'),
('Camas'),
('Accesorios'),
('Higiene');

INSERT INTO Productos (Nombre, Descripcion, Precio, ImagenUrl, CategoriaId) VALUES
('Croquetas para perro adulto', 'Croquetas nutritivas para perros adultos medianos', 450.00, 'croquetas1.png', 1),
('Croquetas para perro adulto', 'Croquetas nutritivas para perros adultos medianos', 500.00, 'croquetas2.png', 1),
('Croquetas para perro adulto', 'Croquetas nutritivas para perros adultos medianos', 450.00, 'croquetas3.png', 1),
('Pelota de goma para perro', 'Pelota con textura para entrenamiento y juego', 85.00, 'pelota1.png', 2),
('Pelota de goma para perro', 'Pelota con textura para entrenamiento y juego', 90.00, 'pelota2.png', 2),
('Cama acolchonada', 'Cama suave y lavable para mascotas pequeñas', 320.00, 'cama.png', 3),
('Collar luminoso', 'Collar con luz LED para paseos nocturnos', 150.00, 'collar.png', 4),
('Shampoo antiséptico', 'Shampoo para piel sensible de perros y gatos', 99.00, 'shampoo.png', 5);

SELECT * FROM productos;

SELECT p.Id, p.Nombre, p.Descripcion, p.Precio, p.ImagenUrl, c.Nombre AS Categoria
FROM Productos p
JOIN Categorias c ON p.CategoriaId = c.Id;
