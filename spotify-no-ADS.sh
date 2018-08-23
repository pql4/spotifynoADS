#!/bin/sh
echo "+-----------------------------------------------------------------------------+"
echo "|   _____             __  _ ____            _   __      ___    ____  _____     |"
echo "|  / ___/____  ____  / /_(_) __/_  __      / | / /___  /   |  / __ \/ ___/     |"
echo "|  \__ \/ __ \/ __ \/ __/ / /_/ / / /_____/  |/ / __ \/ /| | / / / /\__ \      |"
echo "| ___/ / /_/ / /_/ / /_/ / __/ /_/ /_____/ /|  / /_/ / ___ |/ /_/ /___/ /      |"
echo "|/____/ .___/\____/\__/_/_/  \__, /     /_/ |_/\____/_/  |_/_____//____/       |"
echo "|    /_/                    /____/                                             |"
echo "|                                                                              |"  
echo "| Encoded by .pqL                                                              |"
echo "| pql@pql.email                                                                |"
echo "+-----------------------------------------------------------------------------+"
echo
echo
echo "Tem certeza que deseja remover Anuncios do Spotify [s/n]"
read YESNO
sleep 1
if [[ $YESNO = 's' ]]; then
    echo "### Verificando permissões de root ###"
    sleep 3
else
    echo "Bom Garoto ;D"
    exit
fi
_r00t=$(whoami)
if [[ $_r00t = root ]]; then
    sleep 2
    echo "### Removendo os anuncios do Spotify ###"
    cat <<EOF>> /etc/hosts

#by .pqL
0.0.0.0 pubads.g.doubleclick.net
0.0.0.0 securepubads.g.doubleclick.net
0.0.0.0 http://www.googletagservices.com
0.0.0.0 gads.pubmatic.com
0.0.0.0 ads.pubmatic.com
0.0.0.0 spclient.wg.spotify.com
EOF
sleep 4
echo "+---------------------------------------------------------------+"
echo "|           Os anuncios do SPOTIFY foram removidos!             |"
echo "+---------------------------------------------------------------+"
else
    echo "### Você não está logado como ROOT ###"
fi