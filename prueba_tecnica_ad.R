library(DBI)
library(RSQLite)
library(dplyr)
library(readxl)
library(stringr)
library(stringi)
library(tidyr)


# Conectar a una nueva base de datos SQLite
con <- dbConnect(RSQLite::SQLite(), "myDB.sqlite")


# Cargar datos de Municipios.xlsx a SQLite
Municipios <- read_excel("Municipios.xlsx")
Prestadores <- read_excel("Prestadores.xlsx")
cod_municipios <- read_excel("cod_municipios.xlsx")


### pre ajuste de aux de cod_municipios

cod_municipios <- cod_municipios %>%
  rename(Depmun = `Código Municipio`,
         nom_dpto = `Nombre Departamento`,
         nom_muni = `Nombre Municipio`) %>%
  group_by(nom_dpto, nom_muni,Depmun) %>% 
  summarise(Latitud = mean(Latitud, na.rm = TRUE),
            Longitud = mean(Longitud, na.rm = TRUE))


# Cargar datos como tablas en SQLite
dbWriteTable(con, "municipios", Municipios, overwrite = TRUE)
dbWriteTable(con, "prestadores", Prestadores, overwrite = TRUE)
dbWriteTable(con, "cod_municipios", cod_municipios, overwrite = TRUE)

# analisis exploratorios 


query <- "
SELECT 
    SUBSTRING(p.codigo_habilitacion, 1, 5) AS Depmun,
    p.nits_nit AS nit,
    p.nombre_prestador,
    p.depa_nombre,
    p.muni_nombre AS nom_municipio,
    p.clpr_nombre AS tipo_profesional,
    p.habilitado,
    p.clase_persona,
    p.naju_nombre,
    t2.*
FROM 
    prestadores p
LEFT JOIN 
    (
        SELECT 
            cm.nom_dpto,
            cm.nom_muni,
            cm.Depmun,
            cm.Longitud,
            cm.Latitud,
            m.Depmun,
            m.Superficie,
            m.Poblacion,
            m.Region
        FROM 
            municipios m
        LEFT JOIN 
            cod_municipios cm 
        ON 
            m.Depmun = cm.Depmun

    ) t2 
ON 
    Depmun = t2.Depmun
"

dbGetQuery(con, query)

################## reeemplazar por query 




t1 <- cod_municipios %>% 
  distinct(`Código Municipio`, `Nombre Departamento`, `Nombre Municipio`) %>%
  rename(Depmun = `Código Municipio`,
         nom_dpto = `Nombre Departamento`,
         nom_muni = `Nombre Municipio`) %>% 
  left_join(Municipios, by = "Depmun") %>% 
  select(Depmun, nom_dpto, nom_muni, Superficie, Poblacion, Region)


Prestadores %>% 
  mutate(Depmun = substr(codigo_habilitacion, 1, 5)) %>%
  







