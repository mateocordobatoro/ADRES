# Análisis de la Distribución y Diversidad de Prestadores de Servicios de Salud en Colombia

Autor: Mateo Córdoba Toro

---

## Descripción del Repositorio

Este repositorio contiene el código R utilizado para el análisis de la distribución y diversidad de prestadores de servicios de salud en Colombia. Se utilizan datos de municipios y prestadores para explorar la concentración geográfica y la variedad de tipos de prestadores de servicios de salud en diferentes regiones del país.

## Paquetes Utilizados

- DBI
- RSQLite
- dplyr
- readxl
- stringr
- stringi
- tidyr
- ggplot2
- sf
- rnaturalearth
- rnaturalearthdata

## Configuración y Preparación de Datos

El código se conecta a una base de datos SQLite, carga los datos de municipios y prestadores desde archivos Excel, y luego realiza consultas SQL para preparar los datos necesarios para el análisis.

## Análisis Realizado

- Visualización de la concentración de prestadores de salud por departamento en Colombia.
- Análisis de correlación entre la población de un municipio y el número de prestadores de servicios de salud.
- Modelos de regresión para entender la influencia de la población y la superficie geográfica en la cantidad de prestadores de salud.
- Evaluación de la diversidad de tipos de prestadores de servicios de salud en diferentes regiones del país.

## Conclusiones

El análisis destaca la distribución desigual de prestadores de servicios de salud en Colombia, con áreas urbanas densamente pobladas mostrando una mayor concentración y diversidad de prestadores. Se sugiere implementar políticas que promuevan la inclusión y diversificación de prestadores en áreas menos desarrolladas para mejorar el acceso equitativo a servicios de salud a nivel nacional.

