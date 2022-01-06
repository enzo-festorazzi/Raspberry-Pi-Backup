# <div align="center">Backup Raspberry Pi
<p align="center">
<img src="images/front.png">
</p>

# <div align="center">Automatizar backup's periódicos en Raspberry Pi

## Comandos ##
* Paso 1: Descargar "pishrink.sh" y "Backup.sh"  
```bash
wget https://github.com/enzobusca/Raspberry-Pi-Backup/raw/main/Backup.sh https://github.com/enzobusca/Raspberry-Pi-Backup/raw/main/pishrink.sh
```
* Paso 2: Instalar "pishrink.sh" y "Backup.sh"
```bash
sudo mv pishrink.sh /usr/local/bin/ | sudo mv Backup.sh /usr/local/bin/
```  
* Paso 3: Dar permisos de ejecución a "pishrink.sh" y "Backup.sh"
```bash
sudo chmod +x /usr/local/bin/pishrink.sh  | sudo chmod +x /usr/local/bin/Backup.sh
```
* Paso 4: Modificar valores "```RUTA_ABSOLUTA_DEL_BAKCUP```" y "```NOMBRE_DEL_ARCHIVO_DEL_BACKUP```" en "Backup.sh"
```bash
sudo nano /usr/local/bin/Backup.sh
```
* Paso 5: Programar tarea. (La línea ejecutara el backup todos los domingos). <a href="https://crontab.guru" target="_blank">Ayuda</a>
```bash
sudo crontab -e
59 23 * * 0 /usr/local/bin/Backup.sh
```
* Paso 6: Reiniciar servicios Cron.
```bash
sudo systemctl restart cron
```
  
## Agradecimientos ##
Quiero agradecer a <a href="https://github.com/Drewsif/" target="_blank">@Drewsif</a> por <a href="https://github.com/Drewsif/PiShrink" target="_blank">PiShrink</a> y a <a href="https://github.com/The-Exterminator" target="_blank">@The-Exterminator</a> por este articulo <a href="https://github.com/The-Exterminator/PiShrink-to-Crontab" target="_blank">PiShrink-to-Crontab</a>.

Imágenes de <a href="https://iconduck.com/" target="_blank">Iconduck</a>.
