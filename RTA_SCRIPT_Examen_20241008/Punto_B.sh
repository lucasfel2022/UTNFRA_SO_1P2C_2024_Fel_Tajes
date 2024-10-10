#!/bin/bash
echo "formatear las particiones"

en vagrant@lfel:for i in $(seq 1 3); do
  sudo mount /dev/sde$((i + 4)) /Examenes-UTN/alumno1/parcial_$i
  sudo mount /dev/sde$((i + 7)) /Examenes-UTN/alumno2/parcial_$i
  sudo mount /dev/sde$((i + 10)) /Examenes-UTN/alumno3/parcial_$i
done
echo "monto las particiones"
for i in $(seq 1 3); do
  sudo mount /dev/sde$((i + 4)) /Examenes-UTN/alumno1/parcial_$i
  sudo mount /dev/sde$((i + 7)) /Examenes-UTN/alumno2/parcial_$i
  sudo mount /dev/sde$((i + 10)) /Examenes-UTN/alumno3/parcial_$i
done
sudo mount /dev/sde14 /Examenes-UTN/profesores


echo "monto las particiones en persistentes"
echo "/dev/sde5 /Examenes-UTN/alumno1/parcial_1 ext4 defaults 0 0" | sudo tee -a /etc/fstab
echo "/dev/sde6 /Examenes-UTN/alumno1/parcial_2 ext4 defaults 0 0" | sudo tee -a /etc/fstab
echo "/dev/sde7 /Examenes-UTN/alumno1/parcial_3 ext4 defaults 0 0" | sudo tee -a /etc/fstab

echo "/dev/sde8 /Examenes-UTN/alumno2/parcial_1 ext4 defaults 0 0" | sudo tee -a /etc/fstab
echo "/dev/sde9 /Examenes-UTN/alumno2/parcial_2 ext4 defaults 0 0" | sudo tee -a /etc/fstab
echo "/dev/sde10 /Examenes-UTN/alumno2/parcial_3 ext4 defaults 0 0" | sudo tee -a /etc/fstab

echo "/dev/sde11 /Examenes-UTN/alumno3/parcial_1 ext4 defaults 0 0" | sudo tee -a /etc/fstab
echo "/dev/sde12 /Examenes-UTN/alumno3/parcial_2 ext4 defaults 0 0" | sudo tee -a /etc/fstab
echo "/dev/sde13 /Examenes-UTN/alumno3/parcial_3 ext4 defaults 0 0" | sudo tee -a /etc/fstab

echo "/dev/sde14 /Examenes-UTN/profesores ext4 defaults 0 0" | sudo tee -a /etc/fstab
