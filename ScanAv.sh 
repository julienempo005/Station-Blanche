#!/bin/bash
# @Author: Julien Salineres
# @Date:   22-Nov-2016
# @Email:  julien.salineres@aprias.com
# @Project:
# @Last modified by:   Thierry Rangeard
# @Last modified time: 22-Nov-2016

RAPPORT=$HOME/"RapportAntivirus.txt"
PATH=$"/run/media/*"

if [ -f $RAPPORT ];
then
rm $RAPPORT
> $RAPPORT
else
> $RAPPORT
fi
/usr/bin/clear
echo "Scan de l'antivirus En cours ..."
echo "------------------------------------------------ ">> $RAPPORT
echo "CLAMAV ">> $RAPPORT
echo "------------------------------------------------ ">> $RAPPORT
/usr/bin/clamscan  --infected --recursive --remove  $PATH >> $RAPPORT
/usr/bin/clear
echo  "Scan de l'antivirus 25% "
echo "------------------------------------------------ ">> $RAPPORT
echo "COMODO ">> $RAPPORT
echo "------------------------------------------------ ">> $RAPPORT
/opt/COMODO/cmdscan -s $PATH >> $RAPPORT
/usr/bin/clear
echo "Scan de l'antivirus 50% "
echo "------------------------------------------------ ">> $RAPPORT
echo "FPROT ">> $RAPPORT
echo "------------------------------------------------ ">> $RAPPORT
/usr/local/bin/fpscan --disinfect -y $PATH | /usr/bin/tail -n -13 >> $RAPPORT
/usr/bin/clear
echo "Scan de l'antivirus 75% "
echo "------------------------------------------------ ">> $RAPPORT
echo "SOPHOS ">> $RAPPORT
echo "------------------------------------------------ ">> $RAPPORT
/opt/sophos-av/bin/savscan -remove $PATH  | /usr/bin/tail -n -6 >> $RAPPORT
/usr/bin/clear
echo "Scan de l'antivirus terminé !"
