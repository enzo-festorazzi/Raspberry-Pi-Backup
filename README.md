![](images/front.png)

# <div align="center">Automatizar backup's periodicos en Raspberry Pi

* Paso 1: Descargar "pishrink.sh" y "Backup.sh"  
* Paso 2: Instalar "pishrink.sh" y "Backup.sh"
* Paso 3: Dar permisos de ejecución a "pishrink.sh" y "Backup.sh"
* Paso 4: Modificar valores "RUTA_ABSOLUTA_DEL_BAKCUP" y "NOMBRE_DEL_ARCHIVO_DEL_BACKUP" en "Backup.sh"
* Paso 5: Programar tarea
  
## Comandos ##
```bash 
wget https://github.com/enzobusca/Raspberry-Pi-Backup/blob/main/Backup.sh | wget https://github.com/enzobusca/Raspberry-Pi-Backup/blob/main/pishrink.sh
sudo mv pishrink.sh /usr/local/bin/ | sudo mv Bakcup.sh /usr/local/bin/
sudo chmod +x /usr/local/bin/pishrink.sh  | sudo chmod +x /usr/local/bin/Bakcup.sh
sudo nano /usr/local/bin/Backup.sh
sudo echo "/etc/crontab 59 23 * * 1 /usr/local/bin/Backup.sh >> 
```
