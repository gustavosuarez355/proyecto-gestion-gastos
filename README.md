# 💸 Sistema de Gestión de Gastos

Este proyecto es un sistema básico para la gestión de gastos personales, donde los usuarios pueden registrar sus gastos, asociarlos a categorías y manejar diferentes monedas.

## 📁 Estructura del Proyecto

/proyecto-gestion-gastos
│
├── /scripts
│   ├── create_database.sql     # Script para crear la base de datos y sus tablas
│   └── seed_data.sql           # Script con datos semilla (Monedas y Categorías)
│
└── README.md                   # Documentación general del proyecto


## 🛠️ Requisitos

- SQL Server (cualquier versión compatible con Transact-SQL)
- SSMS (SQL Server Management Studio) o Azure Data Studio
- Git y cuenta en GitHub

## 🧱 Modelo de Datos

El sistema contiene las siguientes tablas principales:

- **Usuarios**: Información básica de los usuarios del sistema.
- **Monedas**: Tipos de monedas disponibles.
- **Categorías**: Clasificación de los gastos.
- **Gastos**: Registro de todos los gastos realizados por los usuarios.
- **Presupuestos**: Límites establecidos para controlar gastos por categoría y tiempo.

Las tablas están normalizadas y se relacionan por medio de claves foráneas, garantizando integridad y consistencia de los datos.

## 🧪 Instrucciones de uso

1. Clona el repositorio:
   ```bash
   git clone https://github.com/gustavosuarez355/proyecto-gestion-gastos.git
   ```


