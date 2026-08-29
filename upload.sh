#!/bin/bash

####################################################################################################################
read -rsp $'Presione cualquier tecla o espere 5 segundos para continuar  \n' -n 1 -t 2;
git pull origin main
 
# definir variables para fecha y tiempo
date_stamp=$(date +"%Y_%m_%d_%H_%M_%S")
# echo $date_stamp
echo "git add ."
git add .

echo "git commit -m $date_stamp"
git commit -m "$date_stamp"

echo "git branch -M main"
git branch -M main

echo "https://github.com/GuidoRiosCiaffaroni/TALLER-DE-DEEP-LEARNING.git"
#git remote add https://github.com/GuidoRiosCiaffaroni/TALLER-DE-DEEP-LEARNING.git
echo "git push -u origin main"
git push -u origin main