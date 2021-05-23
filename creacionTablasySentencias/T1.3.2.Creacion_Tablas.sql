CREATE TABLE 'pacientes' ('' INTEGER,'Id_paciente' REAL,'Fecha_confirmacion' TEXT,'Edad' INTEGER,'Genero' TEXT,'Ciudad' TEXT,'Distrito' TEXT,'Estado' TEXT,'Estado_actual' TEXT,'Nacionalidad' TEXT,'Fecha_cambio_estado' TEXT);
CREATE TABLE 'estados' ('' INTEGER,'Estado' TEXT,'Confirmados' INTEGER,'Recuperados' INTEGER,'Muertes' INTEGER,'Codigo_estado' TEXT);
CREATE TABLE 'distritos' ('' INTEGER,'Estado' TEXT,'Confirmados' INTEGER,'Recuperados' INTEGER,'Muertes' INTEGER,'Codigo_estado' TEXT,'Codigo_distrito' TEXT, 'Distrito' TEXT);
CREATE TABLE 'paises' ('' INTEGER,'Pais' TEXT,'Casos' REAL);