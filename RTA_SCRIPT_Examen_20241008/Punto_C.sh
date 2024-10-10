#!/bin/bash

echo "creo los grupos"

sudo groupadd p1c2_2024_gAlumno
sudo groupadd p1c2_2024_gProfesores

echo "creo los usuarios y los asgino a sus respectivos grupos"

sudo useradd -m -G p1c2_2024_gAlumno p1c2_2024_A1
sudo useradd -m -G p1c2_2024_gAlumno p1c2_2024_A2
sudo useradd -m -G p1c2_2024_gAlumno p1c2_2024_A3
sudo useradd -m -G p1c2_2024_gProfesores p1c2_2024_P1

echo "Asigno permisos a las carpetas"

# Ajustar permisos de las carpetas
sudo chmod 750 /Examenes-UTN/alumno1    
sudo chmod 700 /Examenes-UTN/alumno2    
sudo chmod 755 /Examenes-UTN/alumno3    
sudo chmod 770 /Examenes-UTN/profesores  

echo "por ultimo, genero archivo validar.txt"

# Crear archivos validar.txt con el nombre del usuario
sudo su -c "whoami > /Examenes-UTN/alumno1/validar.txt" p1c2_2024_A1
sudo su -c "whoami > /Examenes-UTN/alumno2/validar.txt" p1c2_2024_A2
sudo su -c "whoami > /Examenes-UTN/alumno3/validar.txt" p1c2_2024_A3
sudo su -c "whoami > /Examenes-UTN/profesores/validar.txt" p1c2_2024_P1


