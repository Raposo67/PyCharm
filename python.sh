#!/bin/bash
# BOA SORTE PRA QUEM VAI EXAMINAR ESSES CODIGOS KKKKKKK
sudo apt update
clear
echo "		[+] INSTALAÇÃO PYTHON [+]"

echo "[1] PYCHARM"
echo "[2] PYTHON VENV"
echo "[3] TODOS"
read -p ">> " resposta
if [ $resposta = 1 ];then
 clear
 wget https://download.jetbrains.com/python/pycharm-professional-2024.1.4-aarch64.tar.gz
 tar -xvzf pycharm-professional-2024.1.4-aarch64.tar.gz
 if [ "$?" == 1 ];then
  tar -xvzf 'pycharm-professional-2024.1.4-aarch64.tar.gz'
 fi
 if [ "$?" == 1 ];then
  tar -xvzf pycharm-professional-2024.1.4-aarch64.tar.gz.1
 fi
 clear
 echo "INICIANDO O PYCHARM..."
 sleep 3
 echo "CERTIFIQUE-SE DE ESTAR NO AMBIEMTE GUI DO SEU LINUX"
 echo -n "$(pwd)/pycharm-2024.1.4/bin/pycharm.sh" > pycharm 
 chmod 777 pycharm
 mv pycharm /bin/
 if [ "$?" == 1 ];then
  pycharm-2024.1.4/bin/pycharm.sh
  echo """ APÓS A INCIAÇÃO DO PYCHARM RECOMENDAMOS QUE VC DE UMA
 OLHADA NO REPOSITORIO E SSGUIR OS RESTOS DAS INSTRUÇÕES BASICAS.
 ~O CAMINHO CURTO NEM SEMPRE É O MAIS PRECISO, MAS O CAMINHO LONGO
 TRAZ MAIS EXPERIENCIAS!~
 https://github.com/Raposo67/python
 PARA ABRIR O PYCHARM USE O COMANDO pycharm"""
 else
  pycharm-2024.1.4/bin/pycharm.sh
  echo """ APÓS A INCIAÇÃO DO PYCHARM RECOMENDAMOS QUE VC DE UMA
 OLHADA NO REPOSITORIO E SSGUIR OS RESTOS DAS INSTRUÇÕES BASICAS.
 ~O CAMINHO CURTO NEM SEMPRE É O MAIS PRECISO, MAS O CAMINHO LONGO
 TRAZ MAIS EXPERIENCIAS!~
 https://github.com/Raposo67/python
 PARA ABRIR O PYCHARM USE O COMANDO `pycharm` """
 fi
 sleep 2
 echo """ APÓS A INCIAÇÃO DO PYCHARM RECOMENDAMOS QUE VC DE UMA
 OLHADA NO REPOSITORIO E SSGUIR OS RESTOS DAS INSTRUÇÕES BASICAS.
 ~O CAMINHO CURTO NEM SEMPRE É O MAIS PRECISO, MAS O CAMINHO LONGO
 TRAZ MAIS EXPERIENCIAS!~
 https://github.com/Raposo67/python
 PARA ABRIR O PYCHARM USE O COMANDO pycharm"""
fi

if [ $resposta == "2" ];then
 clear
 sudo apt install -y python3-venv
 read -p "NOME DO USUARIO: " usuario
 python3 -m venv $usuario
 if [ "$?" == 1 ];then
  python2 -m venv $usuario
 fi
 if [ "$?" == 1];then
  python -m venv $usuario
 fi
 clear
 echo "[+] PYTHON VENV INSTALADO [+]"
fi
if [ $resposta == "3" ];then
clear
 sudo apt install -y python3-venv
 read -p "NOME DO USUARIO: " usuario
 python3 -m venv $usuario
 if [ "$?" == 1 ];then                                                                                                    python2 -m venv $usuario
 fi
 if [ "$?" == 1];then
  python -m venv $usuario
 fi
 clear
 echo "[+] PYTHON VENV INSTALADO [+]"
 sleep 3
 clear
 wget https://download.jetbrains.com/python/pycharm-professional-2024.1.4-aarch64.tar.gz
 tar -xvzf pycharm-professional-2024.1.4-aarch64.tar.gz
 if [ "$?" == 1 ];then
  tar -xvzf 'pycharm-professional-2024.1.4-aarch64.tar.gz'
 fi
 if [ "$?" == 1 ];then
  tar -xvzf pycharm-professional-2024.1.4-aarch64.tar.gz.1
 fi
 clear
 echo "INICIANDO O PYCHARM..."
 sleep 3
 echo "CERTIFIQUE-SE DE ESTAR NO AMBIEMTE GUI DO SEU LINUX"
 echo -n "$(pwd)/pycharm-2024.1.4/bin/pycharm.sh" > pycharm
 chmod 777 pycharm
 mv pycharm /bin/
 if [ "$?" == 1 ];then
  pycharm-2024.1.4/bin/pycharm.sh
  echo """ APÓS A INCIAÇÃO DO PYCHARM RECOMENDAMOS QUE VC DE UMA
 OLHADA NO REPOSITORIO E SSGUIR OS RESTOS DAS INSTRUÇÕES BASICAS.
 ~O CAMINHO CURTO NEM SEMPRE É O MAIS PRECISO, MAS O CAMINHO LONGO
 TRAZ MAIS EXPERIENCIAS!~
 https://github.com/Raposo67/python
 PARA ABRIR O PYCHARM USE O COMANDO pycharm"""
 else
  pycharm-2024.1.4/bin/pycharm.sh
  echo """ APÓS A INCIAÇÃO DO PYCHARM RECOMENDAMOS QUE VC DE UMA
 OLHADA NO REPOSITORIO E SSGUIR OS RESTOS DAS INSTRUÇÕES BASICAS.
 ~O CAMINHO CURTO NEM SEMPRE É O MAIS PRECISO, MAS O CAMINHO LONGO
 TRAZ MAIS EXPERIENCIAS!~
 https://github.com/Raposo67/python
 PARA ABRIR O PYCHARM USE O COMANDO `pycharm` """
 fi
 sleep 2
 echo """ APÓS A INCIAÇÃO DO PYCHARM RECOMENDAMOS QUE VC DE UMA
 OLHADA NO REPOSITORIO E SSGUIR OS RESTOS DAS INSTRUÇÕES BASICAS.
 ~O CAMINHO CURTO NEM SEMPRE É O MAIS PRECISO, MAS O CAMINHO LONGO
 TRAZ MAIS EXPERIENCIAS!~
 https://github.com/Raposo67/python
 PARA ABRIR O PYCHARM USE O COMANDO pycharm"""
fi

