#!/bin/bash
# Script para crear la estructura asimétrica en el home del usuario

echo "Creo el directorio principal"
mkdir -p ~/Estructura_Asimetrica/correo
mkdir -p ~/Estructura_Asimetrica/clientes

echo " Creo archivos cartas_ del 1 al 100 en ambas carpetas"
for i in $(seq 1 100); do
  touch ~/Estructura_Asimetrica/correo/cartas_$i
  touch ~/Estructura_Asimetrica/clientes/cartas_$i
done

echo "Creo archivos carteros_ del 1 al 10 solo en correo"
for i in $(seq 1 10); do
  touch ~/Estructura_Asimetrica/correo/carteros_$i
done

echo "muestro la estructura creada con exito"

tree ~/Estructura_Asimetrica

