-- =====================================================
-- Script de creación de la base de datos
-- Colegio Gimnasio Los Almendros
-- Ejecutar como superusuario (postgres):
--   psql -U postgres -h localhost -f database/create_database.sql
-- IMPORTANTE: reemplazar CAMBIAR_POR_CLAVE_SEGURA antes de ejecutar
-- =====================================================

CREATE USER usuario_app WITH PASSWORD 'losalmendros123';

CREATE DATABASE colegio_almendros
    OWNER usuario_app
    ENCODING 'UTF8';

ALTER USER usuario_app CREATEDB;