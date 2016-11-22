#!/bin/bash
# @Author: Julien Salineres
# @Date:   22-Nov-2016
# @Email:  julien.salineres@aprias.com
# @Project: Station Blanche Script de mise à jour des antivirus
# @Last modified by:   Thierry Rangeard
# @Last modified time: 22-Nov-2016

/usr/bin/clear

echo "Mise à jour des antivirus ..."
/usr/bin/freshclam
/usr/bin/clear
echo  "Mise à jour des antivirus ... 25%"
/opt/COMODO/cavupdater
/usr/bin/clear
echo "Mise à jour des antivirus ... 50%"
/usr/local/bin/f-prot/fpupdate
/usr/bin/clear
echo "Mise à jour des antivirus ... 75%"
/opt/sophos-av/bin/savupdate
/usr/bin/clear
echo "Mise à jour des antivirus ... 100%"
echo "-----------------------------------"
echo "Etat des mises à jours"
echo "-----------------------------------"
echo "CLAMAV : "
/usr/bin/freshclam -V
echo "-----------------------------------"
echo "COMODO : "
/usr/bin/cat /opt/COMODO/cavver.dat
echo " "
echo "-----------------------------------"
echo "FPUPDATE : "
/usr/local/bin/f-prot/fpupdate --version
echo "-----------------------------------"
echo "SOPHOS : "
/opt/sophos-av/bin/savscan -v | /usr/bin/head -n 12
