#!/bin/bash

# Settings
BACKUP_PATH="RUTA_ABSOLUTA_DEL_BAKCUP"
BACKUP_ANTAL="3"
BACKUP_NAME="NOMBRE_DEL_ARCHIVO_DEL_BACKUP"
BACKUP_DATO=$(date +%d-%m-%Y)

# Backup Image
dd if=/dev/mmcblk0 of=${BACKUP_PATH}/${BACKUP_NAME}.${BACKUP_DATO}.img bs=1MB

# PiShrink
sudo pishrink.sh ${BACKUP_PATH}/${BACKUP_NAME}.${BACKUP_DATO}.img

# Delete if there are more than ${BACKUP_ANTAL}
pushd ${BACKUP_PATH}; ls -tr ${BACKUP_PATH}/${BACKUP_NAME}* | head -n -${BACKUP_ANTAL} | xargs rm; popd
