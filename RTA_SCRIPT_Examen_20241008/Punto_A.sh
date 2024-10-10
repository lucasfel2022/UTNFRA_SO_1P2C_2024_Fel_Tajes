#!/bin/bash

echo "creo estructura"

sudo mkdir -p /Examenes-UTN/{alumno_{1..3}/parcial_{1..3},profesores/}

echo "muestro estructura"

sudo tree /Examenes-UTN |column
