CREATE DATABASE GestionGastos;
GO

USE GestionGastos;
GO

CREATE TABLE Usuarios (
    Id INT PRIMARY KEY IDENTITY(1,1),
    Nombre NVARCHAR(100) NOT NULL,
    Email NVARCHAR(100) NOT NULL UNIQUE,
    PasswordHash NVARCHAR(MAX) NOT NULL,
    FechaRegistro DATETIME NOT NULL DEFAULT GETDATE()
);


CREATE TABLE Categorias (
    Id INT PRIMARY KEY IDENTITY(1,1),
    Nombre NVARCHAR(100) NOT NULL,
    Descripcion NVARCHAR(255)
);


CREATE TABLE Monedas (
    Id INT PRIMARY KEY IDENTITY(1,1),
    Codigo NVARCHAR(10) NOT NULL,
    Nombre NVARCHAR(50) NOT NULL,
    Simbolo NVARCHAR(10) NOT NULL
);

CREATE TABLE Gastos (
    Id INT PRIMARY KEY IDENTITY(1,1),
    UsuarioId INT NOT NULL,
    CategoriaId INT NOT NULL,
    MonedaId INT NOT NULL,
    Monto DECIMAL(18,2) NOT NULL,
    Fecha DATETIME NOT NULL,
    Descripcion NVARCHAR(255),

    FOREIGN KEY (UsuarioId) REFERENCES Usuarios(Id),
    FOREIGN KEY (CategoriaId) REFERENCES Categorias(Id),
    FOREIGN KEY (MonedaId) REFERENCES Monedas(Id)
);

CREATE TABLE Presupuestos (
    Id INT PRIMARY KEY IDENTITY(1,1),
    UsuarioId INT NOT NULL,
    CategoriaId INT NOT NULL,
    MonedaId INT NOT NULL,
    Limite DECIMAL(18,2) NOT NULL,
    FechaInicio DATETIME NOT NULL,
    FechaFin DATETIME NOT NULL,

    FOREIGN KEY (UsuarioId) REFERENCES Usuarios(Id),
    FOREIGN KEY (CategoriaId) REFERENCES Categorias(Id),
    FOREIGN KEY (MonedaId) REFERENCES Monedas(Id)
);

-- Índices recomendados para claves foráneas
CREATE INDEX IX_Gastos_UsuarioId ON Gastos(UsuarioId);
CREATE INDEX IX_Gastos_CategoriaId ON Gastos(CategoriaId);
CREATE INDEX IX_Gastos_MonedaId ON Gastos(MonedaId);

CREATE INDEX IX_Presupuestos_UsuarioId ON Presupuestos(UsuarioId);
CREATE INDEX IX_Presupuestos_CategoriaId ON Presupuestos(CategoriaId);
CREATE INDEX IX_Presupuestos_MonedaId ON Presupuestos(MonedaId);





