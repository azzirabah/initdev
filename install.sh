#!/bin/bash/
DIR="~/.initdev/"
if [ -d $DIR ]; then
	echo "Le dossier existe deja"
	exit 1
fi

mkdir ${DIR}
cp -r sources/ ${DIR}
cp -r licenses/ ${DIR}
cp -r gitignores/ ${DIR}
cp main.sh ${DIR}/initdev
echo 'export PATH=$PATH:${DIR}initdev' >> ~/.bashrc
