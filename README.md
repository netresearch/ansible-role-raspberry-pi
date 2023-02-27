# Ansible roles for basic Raspberry Pi setup

## Effects

This role is going to:
- remove galculator, geany, geany-common, gpicview, idle, idle3, idle-python2.7, idle-python3.5, minecraft-pi, nuscratch, omxplayer, scratch, vlc
- install bashlight and git
- upgrade all packages (```bash aptitude upgrade full ```)
- remove all unneeded dependencies (```bash apt-get autoremove ```)
- remove all unneeded deb files (```bash apt autoclean ```)


## Requirements

Ansible >= 2.5

Raspbian (with ssh-server enabled and key copied) >= stretch

## Setting up a Raspberry Pi

 1. Download the image "Raspbian Stretch with Desktop" from `https://www.raspberrypi.org/downloads/raspbian/`.
 2. Unzip the .zip file which contains the image with `The Unarchiver (Mac) or Unzip (Linux)`.
 3. Download Etcher from `https://www.balena.io/etcher/` and install it.
 4. Connect an SD card reader with the SD card inside.
 5. Open Etcher and select from your hard drive the Raspberry Pi .img file you wish to write to the SD card.
 6. Select the SD card you wish to write your image to.
 7. Review your selections and click 'Flash!' to begin writing data to the SD card.
 8. Open a terminal, change into the boot directory of the µSD-card and execute `sudo touch ssh`.
 9. Put the µSD-card into the Pi and plug in the µ-USB-cable for power.
10. `Enjoy!`
