#!/bin/bash
echo "muestro la memoria total de mi equipo"

grep MemTotal /proc/meminfo

echo "guardo toda la info en un archivo llamado Filtro_Basico.txt"

grep MemTotal /proc/meminfo > ~/repogit/UTNFRA_SO_1P2C_2024_Fel_Tajes/RTA_ARCHIVOS_Examen_20241008/Filtro_Basico.txt

echo "obtengo el frabricante de chassis y lo agrego al archivo"
sudo dmidecode -t chassis | grep "Manufacturer" >> ~/repogit/UTNFRA_SO_1P2C_2024_Fel_Tajes/RTA_ARCHIVOS_Examen_20241008/Filtro_Basico.txt

