#! /bin/bash

#Variable Fecha
DATE=$(date +%Y%m%d-%H%M%S)

# Eliminar archivos con mas de 7 dias de antiguedad
find /ruta/donde/respalda/* -type f -mtime +7

#####  PLANTILLA DE RESPALDO #####
# Linea de respaldo
tar -cvzpf "/ruta/del/respaldo/"$DATE"-identificador.tar.gz" '/ruta/de/cosas/a/respaldar/' > /root/logs/Diario/$DATE-identificador.log

# Linea de respaldo con salida en consola para Test
tar -cvzpf "/ruta/del/respaldo/"$DATE"-identificador.tar.gz" '/ruta/de/cosas/a/respaldar/' | tee /root/logs/Diario/$DATE-identificador.log