# Análisis de la Distribución y Diversidad de Prestadores de Servicios de Salud en Colombia

Autor: Mateo Córdoba Toro

---

## Descripción del Repositorio

Este repositorio contiene el código R utilizado para el análisis de la distribución y diversidad de prestadores de servicios de salud en Colombia. Se utilizan datos de municipios y prestadores para explorar la concentración geográfica y la variedad de tipos de prestadores de servicios de salud en diferentes regiones del país.

En el siguiente link se encuentra el video explicativo del análisis realizado: [Video Explicativo](https://www.loom.com/share/91c290f1d87146e79ac433693c995a5e?sid=f4250f62-bcb8-4a7e-8678-2d7a860e08af)

### Directorio y Descripción de Archivos

Este proyecto contiene diversos archivos necesarios para el análisis de la distribución y diversidad de prestadores de servicios de salud en Colombia. A continuación, se describen los archivos incluidos en el directorio:

- **cod_municipios.xlsx**: Este archivo contiene la codificación de los departamentos y municipios de Colombia. Es utilizado para vincular correctamente los datos de los prestadores y los municipios.

- **mi_base_de_datos.sqlite**: Esta es la base de datos SQLite que se crea para almacenar las tablas de municipios y prestadores, facilitando así las consultas y la manipulación de datos.

- **Municipios.xlsx**: Dataset que incluye información detallada sobre los municipios de Colombia, como superficie, población y región. Este archivo es esencial para el análisis de la distribución de prestadores.

- **Municipios.zip**: Archivo comprimido que contiene el dataset de municipios. Debe ser descomprimido antes de su uso.

- **Prestadores.xlsx**: Dataset que proporciona información sobre los prestadores de servicios de salud en Colombia, incluyendo su ubicación y tipo de servicio prestado.

- **Prestadores.zip**: Archivo comprimido que contiene el dataset de prestadores. Debe ser descomprimido antes de su uso.

- **Prueba técnica Analista de datos.pdf**: Documento que describe la prueba técnica a desarrollar. Proporciona detalles sobre los objetivos y el alcance del análisis.

- **PruebaTecnicaAnalistaDatos.docx**: Informe en formato Word que contiene el análisis realizado. 

---

Esta estructura de directorio y la descripción de archivos proporcionan una visión clara de los recursos disponibles para llevar a cabo el análisis de la distribución y diversidad de prestadores de servicios de salud en Colombia.

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

