# Sistema de Gestión de Matrículas y Control de Pensiones

**Institución:** Colegio Gimnasio Los Almendros (ficticio) – NIT simulado 900.456.789-1
**Versión:** 0.1 (Entrega 1)

## Descripción
Aplicación web para administrar las matrículas y el recaudo de pensiones de un colegio de educación primaria (transición a quinto), con los acudientes como actores centrales del proceso.

## Problema que resuelve
El colegio maneja hoy matrículas y pensiones en hojas de cálculo y recibos en papel, con duplicidad de datos, errores en descuentos, cartera desactualizada y sin trazabilidad de pagos. Este sistema centraliza la información en una base de datos con control de acceso por roles y auditoría.

## Integrantes
- Josue Barragan (@JOZUEX)
- Nombre 2 (@usuario_github)

## Tecnologías
- Python 3.12 y Django 6.1
- PostgreSQL 18
- Argon2id para el hash de contraseñas
- Git y GitHub

## Requisitos de instalación
- Python 3.10 o superior
- PostgreSQL 16 o superior
- Git

## Instalación

### 1. Descargar el proyecto
```bash
git clone https://github.com/JOZUEX/SistemaGestionMatriculas-ColegioLosAlmendros.git
cd SistemaGestionMatriculas-ColegioLosAlmendros
```

### 2. Crear la base de datos
Editar `database/create_database.sql` (reemplazar la clave) y ejecutar como superusuario:
```bash
psql -U postgres -h localhost -f database/create_database.sql
```

### 3. Configurar variables de entorno
Copiar `.env.example` a `.env` y completar `DB_PASSWORD` y `SECRET_KEY`:
```bash
copy .env.example .env
```

### 4. Instalar dependencias
```bash
python -m venv venv
venv\Scripts\activate
pip install -r requirements.txt
```

### 5. Crear tablas y ejecutar
```bash
python manage.py migrate
python manage.py runserver
```
Abrir http://127.0.0.1:8000

## Estado del proyecto
- [x] Estructura del proyecto y conexión a base de datos (Entrega 1)
- [ ] Módulos académico, matrículas y finanzas (Entrega 2)
- [ ] Reportes, pruebas y versión final (Entrega 3)

## Prompts usados y tipo de IA
- IA utilizada: Claude (Anthropic)
- Los prompts se documentan en `documentation/prompts_ia.md`