/*DISTRITOS:*/
SELECT distrito, MAX(confirmados) FROM distritos WHERE distrito != 'Unknown';
SELECT distrito, MAX(muertes) FROM distritos WHERE distrito != 'Unknown';
SELECT distrito, MAX(recuperados) FROM distritos WHERE distrito != 'Unknown';
SELECT distrito,confirmados,muertes,recuperados, muertes*100.0 / (confirmados*1.0+muertes*1.0+recuperados*1.0) FROM distritos;
SELECT distrito,confirmados,muertes,recuperados, recuperados*100.0 / (confirmados*1.0+muertes*1.0+recuperados*1.0) FROM distritos;
SELECT SUM(confirmados)/COUNT(*) FROM distritos;
SELECT SUM(muertes)/COUNT(*) FROM distritos;
SELECT SUM(recuperados)/COUNT(*) FROM distritos;

/*ESTADOS:*/
SELECT estado, MAX(confirmados) FROM estados WHERE estado != 'Total';
SELECT estado, MAX(muertes) FROM estados WHERE estado != 'Total';
SELECT estado, MAX(recuperados) FROM estados WHERE estado != 'Total';
SELECT estado,confirmados,muertes,recuperados, muertes*100.0 / (confirmados*1.0+muertes*1.0+recuperados*1.0) FROM estados;
SELECT estado,confirmados,muertes,recuperados, recuperados*100.0 / (confirmados*1.0+muertes*1.0+recuperados*1.0) FROM estados;
SELECT SUM(confirmados)/COUNT(*) FROM estados;
SELECT SUM(muertes)/COUNT(*) FROM estados;
SELECT SUM(recuperados)/COUNT(*) FROM estados;

/*PACIENTES:*/
SELECT nacionalidad,COUNT(nacionalidad) FROM pacientes GROUP BY nacionalidad;
SELECT edad,COUNT(edad) FROM pacientes GROUP BY edad ORDER BY COUNT(edad);
SELECT genero,COUNT(genero) FROM pacientes GROUP BY genero ORDER BY COUNT(genero);

/*PAISES:*/
SELECT pais,MAX(casos) FROM paises;
SELECT pais, MIN(casos) FROM paises WHERE pais != 'Nationality' AND pais != 'Removed due to change in bulletin';

