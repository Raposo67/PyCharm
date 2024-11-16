#!/bin/bash

################### INSTALAÇÃO ###################
#apt update
clear
#sleep 3
echo -e """		     ,@@@@@@@@@@@@@@@@&
                  *@@@@&@@@@@@@@@@@@@@@@@@
                  @@@     @@@@@@@@@@@@@@@@@
                  @@@@@(@@@@@@@@@@@@@@@@@@@
                  @@@@@@@@@@@@@@@@@@@@@@@@@
           %&@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ ,@@@@@%.
       @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ *@@@@@@@@@
     .@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ *@@@@@@@@@@
     @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@% @@@@@@@@@@@@
    .@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@  @@@@@@@@@@@@@.
    (@@@@@@@@@@@@@@@%                  .@@@@@@@@@@@@@@@@(
    .@@@@@@@@@@@@@  @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@.
     @@@@@@@@@@@% @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
      @@@@@@@@@@, @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
       @@@@@@@@@, @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
          *#%%%%. @@@@@@@@@@@@%%%%%%%%%%%%%%%%%%%#/
                  @@@@@@@@@@@@@@@@@@@@@@@@@
                  @@@@@@@@@@@@@@@@@@%,%@@@@
                  @@@@@@@@@@@@@@@@@     @@@
                   &@@@@@@@@@@@@@@@@@@@@@&
                       #@@@@@@@@@@@@@# """
echo ""
echo "  	        [+] INSTALAÇÃO PYTHON [+]"
echo ""
echo "[1] PYCHARM"
echo "[2] PYTHON VENV"
echo "[00] EXIT"
echo ""
read -p "[+] >> " resposta
##################################################

################## PYCHARM #######################
if [ $resposta == 1 ];then
 clear
 apt install wget
 apt install python3
 ###################
 if [ "$?" -gt  0 ]; then
  echo "ocorreu um erro algum erro"
  exit
 else
  clear
  sleep 3
  echo "OK"
 fi
 ###################
 sleep 2
 wget -O pycharm.tar.gz https://download.jetbrains.com/python/pycharm-professional-2024.3-aarch64.tar.gz


 sleep 2
 ###################
 if [ "$?" -gt  0 ]; then
  echo "ocorreu um erro algum erro"
  exit
 else
  sleep 2
  echo "OK"
 fi
 ###################

 tar -xvzf pycharm.tar.gz

 ###################
 if [ "$?" -gt  0 ]; then
  echo "ocorreu um erro algum erro"
  exit
 else
  sleep 2
  echo "OK"
 fi
 ###################
 clear
 sleep 2
 echo -n "$(pwd)/pycharm-2024.3/bin/pycharm.sh" > pycharm && chmod 777 pycharm && cp pycharm /bin/
 if [ "$?" -gt  0 ]; then
  echo "ocorreu um erro algum erro"
  exit
 else
  clear
  sleep 2
  echo "[+] PYCHARM INSTALADO COM SUCESSO [+]"
  echo ""
  echo "[+] pycharm		inicie o pycharm"
  echo ""
  echo "É PRECISO QUE VOCÊ ESTEJA NO AMBIENTE VISUAL DO LINUX, ANTES DE EXECULTAR O COMANDO"
 fi
########################################################

################### PYTHON VENV ########################
elif [ $resposta == 2 ]; then
 apt update

 if [ "$?" -gt  0 ]; then
  echo "ocorreu um erro algum erro"
  exit
 else
  clear
  sleep 2
  echo "OK"
 fi

 apt install -y python3-venv
 if [ "$?" -gt  0 ]; then
  echo "ocorreu um erro algum erro"
  exit
 else
  clear
  sleep 2
  echo "OK"
 fi
 echo "		[+] PYTHON VENV [+]"
 echo ""
 read -p "NOME DO USUARIO: " usuario
 sleep 2
 python3 -m venv $usuario
 if [ "$?" -gt  0 ]; then
  echo "ocorreu um erro algum erro"
  exit
 else
  clear
  sleep 2
  echo "OK"
 fi
 echo -e "#\!/bin/bash\nsource $(pwd)/$usuario/bin/activate" > $usuario.sh
 chmod 777 $usuario.sh
 mv $usuario /bin/
 if [ "$?" -gt  0 ]; then
  echo "ocorreu um erro algum erro"
  exit
 else
  clear
  sleep 2
  echo "	   [+] PYTHON VENV INSTALADO [+]"
  echo ""
  echo "[+] $usuario         entra no usuario"
  echo "[+] deactivate       sai do usuario"
 fi
########################################################

###################### EXIT #############################

elif [ $resposta == "00" ]; then
 exit
else
 echo "resposta invalida!"
 exit 0
fi

#########################################################
